unit frmDataModule;

interface

uses
  System.SysUtils, System.Classes,  Conexao, empregados, departamentos,
  Data.DB, dialogs,
  ZAbstractConnection, ZConnection;

type
  TformDataModule = class(TDataModule)
    con: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private

  public
    Conexao : TConexao;
    Departamentos : TDepartamentos;
    Empregados : TEmpregados;
  end;

var
  formDataModule: TformDataModule;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TformDataModule.DataModuleCreate(Sender: TObject);
begin
  Conexao := Tconexao.Create(con);
end;

procedure TformDataModule.DataModuleDestroy(Sender: TObject);
begin
  Conexao.Destroy;
end;

end.
