unit frmMensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls;

type
  TformMensagem = class(TForm)
    pnGeral: TPanel;
    shpBackground: TShape;
    pnlBarTop: TPanel;
    labHead: TLabel;
    imagem: TImage;
    pnBtnSave: TPanel;
    btnOk: TSpeedButton;
    btnCancel: TSpeedButton;
    pnCancelForm: TPanel;
    imgList: TImageList;
    ricInfoMensagemErro: TRichEdit;
    ricInfoProgramdor: TRichEdit;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure shpBackgroundMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    acaoUsuario: Boolean;
    head, titu, mens: string;
    indiceImg : integer;
  end;

var
  formMensagem: TformMensagem;


implementation

{$R *.dfm}

procedure TformMensagem.btnCancelClick(Sender: TObject);
begin
  acaoUsuario := False;

  Close;
end;

procedure TformMensagem.btnOkClick(Sender: TObject);
begin
  acaoUsuario := True;

  Close;
end;

procedure TformMensagem.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    btnOkClick(Self);
  end
  else
  begin
    if Key = VK_ESCAPE then
    begin
      btnCancelClick(Self);
    end;
  end;
end;

procedure TformMensagem.FormShow(Sender: TObject);
begin
  acaoUsuario := False;

  labHead.Caption := head;
  ricInfoProgramdor.Text := titu;
  ricInfoMensagemErro.Text := mens;
  imgList.GetBitmap(indiceImg,imagem.Picture.Bitmap);

end;

procedure TformMensagem.shpBackgroundMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  const
    sc_DragMove = $f012;
  begin
    ReleaseCapture;
    Perform(wm_SysCommand, sc_DragMove, 0);
  end;
end;

end.

