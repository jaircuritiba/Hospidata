program Empresa;

uses
  Vcl.Forms,
  frmPrincipal in 'view\frmPrincipal.pas' {formPrincipal},
  frmDataModule in 'view\frmDbo\frmDataModule.pas' {formDataModule: TDataModule},
  Conexao in 'model\Conexao.pas',
  pf in 'Util\pf.pas',
  mensagemBox in 'Util\mensagemBox.pas',
  frmMensagem in 'view\frmMensagem.pas' {formMensagem},
  frmConfiguracaoServidor in 'view\frmDbo\frmConfiguracaoServidor.pas' {formConfigurarParametrosConexao},
  UMudarCorFoco in 'Util\UMudarCorFoco.pas',
  UMudarCorFocoEdit in 'Util\UMudarCorFocoEdit.pas',
  departamentos in 'model\departamentos.pas',
  empregados in 'model\empregados.pas',
  frmRelatorios in 'view\frmRelatorios.pas' {formRelatorios},
  sqlRelatorios in 'Util\sqlRelatorios.pas',
  frmCadastroDepartamentos in 'view\frmCadastros\frmCadastroDepartamentos.pas' {formDepartamentos},
  frmCadastroEmpregados in 'view\frmCadastros\frmCadastroEmpregados.pas' {formEmpregados},
  frmRelatorioEmpregados in 'view\frmRelatorios\frmRelatorioEmpregados.pas' {formRelatorioDepartamentos};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  formPrincipal.Visible := False;

  Application.CreateForm(TformDataModule, formDataModule);
  if not (formDataModule.Conexao.Conectar()) then
  begin
    mensagem('Falha na Conexão com Banco de Dados', 'A seguir, será apresentada a tela para você ajustar os parâmetros de conexão', formDataModule.Conexao.Erro, 0);
    Application.CreateForm(TformConfigurarParametrosConexao, formConfigurarParametrosConexao);
    formConfigurarParametrosConexao.ShowModal;
    formConfigurarParametrosConexao.Free;
  end;

  formPrincipal.Visible := True;
  Application.Run;
end.
