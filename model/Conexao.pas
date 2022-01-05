unit Conexao;

interface
uses
 dialogs, System.Classes, vcl.forms, System.SysUtils, zConnection, pf;
type
Tconexao = Class(TObject)
  private
    FErro: string;
    FPort: string;
    FConn: TZConnection;
    FDll: string;
    FBase: string;
    FPswd: string;
    FHost: string;
    FUser: string;
    function popularParametros: boolean;
    function tentarConectar: Boolean;

public
    constructor Create(conector: TZConnection);
    destructor Destroy(); override;
    function Conectar: Boolean;
    function GravarParametrosDaConexaoNoArquivoIni(): boolean;
    function LerParametrosDaConexaoDoArquivoIni(): boolean;
    property Host: string read FHost write FHost;
    property Base: string read FBase write FBase;
    property Port: string read FPort write FPort;
    property User: string read FUser write FUser;
    property Pswd: string read FPswd write FPswd;
    property Conn: TZConnection read FConn write FConn;
    property Dll: string read FDll write FDll;
    property Erro: string read FErro write FErro;
end;

implementation

{ Tconexao }

function Tconexao.Conectar: Boolean;
begin
  result := false;
  if (LerParametrosDaConexaoDoArquivoIni()) then
  begin
    if (popularParametros()) then
    begin
      Result := tentarConectar();
    end;
  end;

end;


function Tconexao.popularParametros(): boolean;
begin
  try
    FConn.Protocol := 'Postgresql';
    FConn.HostName := FHost;
    FConn.Database := FBase;
    if FPort = '' then
      FPort := '5432';

    FConn.Port := StrToInt(FPort);
    FConn.User := FUser;
    FConn.Password := FPswd;
    FConn.LibraryLocation := FDll;
  except
    on e: exception do
    begin
      erro := e.Message;
    end;
  end;
end;

function Tconexao.tentarConectar(): Boolean;
begin
  try
    FConn.Connected := False;
    FConn.Connected := True;
  except
    on e: Exception do
    begin
      FErro := e.Message;
    end;
  end;
  result := FConn.Connected;
end;

constructor Tconexao.Create(conector : TZConnection);
begin
  FConn := conector;
end;

destructor Tconexao.Destroy;
begin
  FConn.Connected := False;

  inherited;
end;

function Tconexao.GravarParametrosDaConexaoNoArquivoIni(): boolean;
const
  secao = 'Conexao';
begin
  GravarIni(secao, 'host', Host);
  GravarIni(secao, 'base', base);
  GravarIni(secao, 'port', Port);
  GravarIni(secao, 'user', user);
  GravarIni(secao, 'pswd', pswd);
  GravarIni(secao, 'dll', Dll);
end;

function Tconexao.LerParametrosDaConexaoDoArquivoIni(): boolean;
const
  secao = 'Conexao';
begin
  if not (FileExists(ExtractFilePath(Application.ExeName) + 'Conf.ini')) then
  begin
    erro := 'Não foi encontrado o arquivo "Conf.ini", o qual mantém os parâmetros para a conexão com o banco de dados';
    result := false;
    exit;
  end;

  host := LerIni(secao, 'host');
  base := LerIni(secao, 'base');
  Port := LerIni(secao, 'port');
  Fuser := LerIni(secao, 'user');
  pswd := LerIni(secao, 'pswd');
  dll := LerIni(secao, 'dll');
  result := true;
end;

end.
