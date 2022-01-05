unit frmPrincipal;

interface

uses
  Vcl.Menus, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Imaging.GIFImg, Vcl.ExtCtrls, UMudarCorFoco, UMudarCorFocoEdit,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup, Vcl.StdCtrls, frmConfiguracaoServidor, frmCadastroDepartamentos, mensagemBox,
  Vcl.ComCtrls, frmDataModule, departamentos, frmCadastroEmpregados, frmRelatorios;

type
  TformPrincipal = class(TForm)
    pnMain: TPanel;
    pnTop: TPanel;
    Panel1: TPanel;
    btnClose: TSpeedButton;
    btnMinMax: TSpeedButton;
    imgHospitadaMV: TImage;
    btnResize: TSpeedButton;
    pnMenuTop: TPanel;
    brnMenuHorizonLines: TSpeedButton;
    pnLeft: TPanel;
    btnEmployees: TSpeedButton;
    btnDepartaments: TSpeedButton;
    btnServer: TSpeedButton;
    btnReport: TSpeedButton;
    btnFinished: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnMinMaxClick(Sender: TObject);
    procedure brnMenuHorizonLinesClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnServerClick(Sender: TObject);
    procedure btnDepartamentsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEmployeesClick(Sender: TObject);
    procedure btnFinishedClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure btnResizeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

    procedure EnterComoTab(var Msg: TMsg; var handled: Boolean);
  public

  end;

var
  formPrincipal: TformPrincipal;


implementation

{$R *.dfm}

procedure ConfigureBrazilRegion;
var
  FormatBr: TFormatSettings;
begin
  // Create new setting and configure for the brazillian format
  FormatBr                     := TFormatSettings.Create;
  FormatBr.DecimalSeparator    := ',';
  FormatBr.ThousandSeparator   := '.';
  FormatBr.CurrencyDecimals    := 2;
  FormatBr.DateSeparator       := '/';
  FormatBr.ShortDateFormat     := 'dd/mm/yyyy';
  FormatBr.LongDateFormat      := 'dd/mm/yyyy';
  FormatBr.TimeSeparator       := ':';
  FormatBr.TimeAMString        := 'AM';
  FormatBr.TimePMString        := 'PM';
  FormatBr.ShortTimeFormat     := 'hh:nn';
  FormatBr.LongTimeFormat      := 'hh:nn:ss';
  FormatBr.CurrencyString      := 'R$';

  // Assign the App region settings to the newly created format
  System.SysUtils.FormatSettings := FormatBr;
end;

procedure TformPrincipal.btnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformPrincipal.btnDepartamentsClick(Sender: TObject);
var
 formDepartamentos : TformDepartamentos;
begin
  try
    formDepartamentos := TformDepartamentos.Create(self);
    formDepartamentos.ShowModal;
  finally
    formDepartamentos.Free;
  end;
end;

procedure TformPrincipal.btnEmployeesClick(Sender: TObject);
var
 formEmpregados  : TformEmpregados;
begin
  try
    formEmpregados := TformEmpregados.Create(self);
    formEmpregados.ShowModal;
  finally
    formEmpregados.Free;
  end;
end;

procedure TformPrincipal.btnMinMaxClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TformPrincipal.btnReportClick(Sender: TObject);
var
 formRelatorios  : TformRelatorios;
begin
  try
    formRelatorios := TformRelatorios.Create(self);
    formRelatorios.ShowModal;
  finally
    formRelatorios.Free;
  end;
end;

procedure TformPrincipal.btnResizeClick(Sender: TObject);
begin
if( formPrincipal.WindowState=wsNormal) then
  formPrincipal.WindowState:=wsMaximized
else
  formPrincipal.WindowState:=wsNormal;
end;

procedure TformPrincipal.EnterComoTab(var Msg: TMsg; var handled: Boolean);
begin
  if Msg.message = wm_keydown then
  begin
    if Msg.wparam = vk_return then
    begin
      keybd_event(vk_tab, 0, 0, 0);
    end;
  end;
end;

procedure TformPrincipal.FormActivate(Sender: TObject);
begin
ConfigureBrazilRegion;
end;

procedure TformPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE); // Eliminar beep ao pressionar tecla
  TMudaCorFoco.execute(Screen, Application);
  TMudaCorFontFoco.execute(Screen, Application);
  application.onmessage := EnterComoTab;
end;

procedure TformPrincipal.btnFinishedClick(Sender: TObject);
begin
if (mensagem('Confirmação', 'Saída do Sistema', 'Confirma a saída desta aplicação?',1, true)) then
begin
  Application.Terminate;
end;
end;

procedure TformPrincipal.btnServerClick(Sender: TObject);
begin
  Application.CreateForm(TformConfigurarParametrosConexao, formConfigurarParametrosConexao);
  formConfigurarParametrosConexao.ShowModal;
end;

procedure TformPrincipal.brnMenuHorizonLinesClick(Sender: TObject);
begin
  if brnMenuHorizonLines.Tag = 0 then
  begin
    pnLeft.Width := 160;
    brnMenuHorizonLines.Tag := 1;
  end
  else
  begin
    pnLeft.Width := 65;
    brnMenuHorizonLines.Tag := 0;
  end
end;

end.

