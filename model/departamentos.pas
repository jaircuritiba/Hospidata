unit departamentos;

interface

uses
  zConnection, zdataset, sysUtils, dialogs, mensagemBox;

type
  TDepartamentos = class(TObject)
  private
    FConexao: tzConnection;
    FId_Departamento: string;
    Fnm_departamento: string;
    FLocal: string;
  public
    property Conexao: TZConnection read FConexao write FConexao;
    property Id_Departamento: string read FId_Departamento write FId_Departamento;
    property nm_Departamento: string read Fnm_departamento write Fnm_departamento;
    property nm_local: string read FLocal write FLocal;

    constructor Create(Conexao: TZConnection);
    destructor Destroy; override;

    function consulta(valorPesquisa: string): TZQuery;
    function InserirOuAlterar(out Erro: string): Boolean;
    procedure deletar(id: integer);
  end;

implementation

var
  qry: TZQuery;


const
  TABELA = 'departamentos';

{ TDepartamentos }

constructor TDepartamentos.Create(Conexao: TZConnection);
begin
  Fconexao := Conexao;
  qry := TZQuery.Create(nil);
  qry.Connection := FConexao;
end;

function TDepartamentos.consulta(valorPesquisa: string): TZQuery;
begin
  try
    FConexao.Connected := false;
    FConexao.Connected := true;

    qry.SQL.Text := 'SELECT * FROM ' + TABELA + ' ' + valorPesquisa;
    if (qry.Connection.Connected = True) then
    begin
      qry.Open;
    end;
  finally
    result := qry;
  end;
end;

procedure TDepartamentos.deletar(id: integer);
begin
  if mensagem('Confirmação', 'Excluir Cadastro', 'Confirma a exclusão deste departamento?', 2, True) then
  begin
    FConexao.Connected := False;
    FConexao.Connected := True;
    var sql := 'DELETE FROM departamentos WHERE id_departamento =' + IntToStr(id);
    FConexao.ExecuteDirect(sql);
  end;
end;

destructor TDepartamentos.Destroy;
begin
  if (Assigned(qry)) then
    FreeAndNil(qry);
  inherited;
end;

function TDepartamentos.InserirOuAlterar(out Erro: string): Boolean;
begin
  try
    FConexao.Connected := False;
    FConexao.Connected := True;
    qry.sql.Clear;

    if (FId_Departamento = '') then
    begin
      qry.SQL.Add('INSERT INTO ' + TABELA + '(nm_departamento, local)');
      qry.SQL.Add(' VALUES(:depto, :local)');
    end
    else
    begin
      qry.SQL.Add('UPDATE ' + TABELA + ' SET');
      qry.SQL.Add(' nm_departamento = :depto,');
      qry.SQL.Add(' local           = :local');
      qry.SQL.Add(' WHERE id_departamento  = :id_depto ');
      qry.ParamByName('id_depto').AsString := FId_Departamento;
    end;

    qry.ParamByName('depto').AsString := Fnm_departamento;
    qry.ParamByName('local').AsString := FLocal;
    qry.ExecSQL;
    result := True;
  except
    on e: exception do
    begin
      Erro := e.Message;
      Result := False;
    end;
  end;
end;

end.

