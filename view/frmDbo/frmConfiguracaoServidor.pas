unit frmConfiguracaoServidor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, UMudarCorFoco, UMudarCorFocoEdit, Conexao,
  frmDataModule, pf;

type
  TformConfigurarParametrosConexao = class(TForm)
    pnGeral: TPanel;
    pnRight: TPanel;
    btnImgEyes: TSpeedButton;
    pnUser: TPanel;
    labUser: TLabel;
    edtUser: TEdit;
    pnBorderUser: TPanel;
    pnHost: TPanel;
    labHost: TLabel;
    edtHost: TEdit;
    pnBorderHost: TPanel;
    pnBase: TPanel;
    labBase: TLabel;
    pnBorderBase: TPanel;
    edtBase: TEdit;
    pnPort: TPanel;
    labPort: TLabel;
    edtPort: TEdit;
    pnBorderPort: TPanel;
    pnPswd: TPanel;
    labPswd: TLabel;
    edtPswd: TEdit;
    pnBorderPswd: TPanel;
    pnzConectar: TPanel;
    pnBorderBottomConectar: TPanel;
    pnBtnConectar: TPanel;
    btnConectar: TSpeedButton;
    pnaServerConfiguration: TPanel;
    btnSair: TSpeedButton;
    labServerConfiguration: TLabel;
    pnBorderTopConectar: TPanel;
    pnDll: TPanel;
    labDll: TLabel;
    btnDll: TSpeedButton;
    edtDll: TEdit;
    pnBorderDll: TPanel;
    pnLeft: TPanel;
    labWelcomeYellow: TLabel;
    imgLogoHospidata: TImage;
    labVerify: TLabel;
    labFone: TLabel;
    labDoubt: TLabel;
    labWelcomeGray: TLabel;
    labPlease: TLabel;
    panDatabaseConnection: TPanel;
    labDatabaseConnection: TLabel;
    imgListEyes: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDllClick(Sender: TObject);
    procedure btnImgEyesClick(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
  private
    procedure EnterComoTab(var Msg: TMsg; var handled: Boolean);
    procedure centralizarPainelNoForm;
    procedure FocarCursorDoMouseNoProximoCampo(var Key: Char);
    { Private declarations }
  public    { Public declarations }
  end;

var
  formConfigurarParametrosConexao: TformConfigurarParametrosConexao;


implementation

uses
  mensagemBox;

{$R *.dfm}

procedure TformConfigurarParametrosConexao.EnterComoTab(var Msg: TMsg; var handled: Boolean);
begin
  if Msg.message = wm_keydown then
  begin
    if Msg.wparam = vk_return then
    begin
      keybd_event(vk_tab, 0, 0, 0);
    end;
  end;
end;

procedure TformConfigurarParametrosConexao.btnConectarClick(Sender: TObject);
begin
  formDataModule.conexao.Host := edtHost.Text;
  formDataModule.conexao.Base := edtBase.text;
  formDataModule.conexao.Port := edtPort.Text;
  formDataModule.conexao.User := edtUser.Text;
  formDataModule.conexao.Pswd := edtPswd.Text;
  formDataModule.conexao.Dll := edtDll.Text;

  formDataModule.conexao.GravarParametrosDaConexaoNoArquivoIni();

  if formDataModule.Conexao.Conectar then
  begin
    close;
  end
  else
  begin
    mensagem('Falha na Conexão com Banco de Dados', 'Verifique, por favor, o campos preenchidos ou o serviço da base de dados', formDataModule.Conexao.Erro, 0);
  end;
end;

procedure TformConfigurarParametrosConexao.btnDllClick(Sender: TObject);
begin
  edtDll.Text := AbrirCaminhoArq('*.dll', 'Biblioteca', ExtractFilePath(Application.ExeName));
end;

procedure TformConfigurarParametrosConexao.btnImgEyesClick(Sender: TObject);
begin
  if (edtPswd.PasswordChar = '*') then
  begin
    edtPswd.PasswordChar := #0;
    btnImgEyes.Glyph.Assign(nil);
    imgListEyes.GetBitmap(1, btnImgEyes.Glyph);
  end
  else
  begin
    edtPswd.PasswordChar := '*';
    btnImgEyes.Glyph.Assign(nil);
    imgListEyes.GetBitmap(0, btnImgEyes.Glyph);
  end;
end;

procedure TformConfigurarParametrosConexao.btnSairClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TformConfigurarParametrosConexao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TformConfigurarParametrosConexao.FormCreate(Sender: TObject);
begin
  SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE); // Eliminar beep ao pressionar tecla
  TMudaCorFoco.execute(Screen, Application);
  TMudaCorFontFoco.execute(Screen, Application);
  application.onmessage := EnterComoTab;
end;

procedure TformConfigurarParametrosConexao.FormShow(Sender: TObject);
begin
  btnImgEyes.Glyph.Assign(nil);
  imgListEyes.GetBitmap(0, btnImgEyes.Glyph);
  centralizarPainelNoForm();

  if (formDataModule.conexao.LerParametrosDaConexaoDoArquivoIni) then
  begin

    edtHost.Text := formDataModule.conexao.Host;
    edtBase.text := formDataModule.conexao.Base;
    edtPort.Text := formDataModule.conexao.Port;
    edtUser.Text := formDataModule.conexao.User;
    edtPswd.Text := formDataModule.conexao.Pswd;
    edtDll.Text := formDataModule.conexao.Dll;
  end;
end;

procedure TformConfigurarParametrosConexao.centralizarPainelNoForm;
begin
  pnGeral.Left := Round((self.Width - pnGeral.Width) / 2);
  pnGeral.Top := Round((self.Height - pnGeral.Height) / 2);
end;

procedure TformConfigurarParametrosConexao.FocarCursorDoMouseNoProximoCampo(var Key: Char);
begin
  Key := #0;
  Perform(Wm_NextDlgCtl, 0, 0);
end;

end.

