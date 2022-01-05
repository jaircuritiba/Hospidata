unit UMudarCorFocoEdit;

interface

uses
  Controls, forms, classes;

type
  TMudaCorFontFoco = class(TControl)
  public
    class procedure execute(screen: TScreen; application: TApplication);
  private
    class var FScreen: TScreen;
    class var Fapplication: TApplication;
    class procedure MudarCorFontFoco(sender: TObject);
    class var property Color; // propriedade protegida
  end;

implementation

uses
  Graphics, ComCtrls, sysUtils, dialogs;

{ TMudaCorFontFoco }

class procedure TMudaCorFontFoco.execute(screen: TScreen;
  application: TApplication);
begin
  if not Assigned(screen.OnActiveControlChange) then
  begin
    FScreen := TScreen(screen);
    Fapplication := application;
    FScreen.OnActiveControlChange := TMudaCorFontFoco.MudarCorFontFoco;
  end;
end;

class procedure TMudaCorFontFoco.MudarCorFontFoco(sender: TObject);
const
{$J+}
  controle: TWinControl = nil;
  CorTextoAnterior: TColor = clGray;
{$J-}
  CorTextoComFoco = clBlack;

begin
  try
    if Fapplication.Terminated then
      exit;
    if controle <> nil then
      TMudaCorFontFoco(controle).Color := CorTextoAnterior;
    with FScreen.ActiveForm do
    begin
      if ActiveControl is TWinControl then
      begin
        CorTextoAnterior := TMudaCorFontFoco(ActiveControl).Font.Color;
        controle := ActiveControl;
        TMudaCorFontFoco(controle).Font.Color := CorTextoComFoco;
      end;
    end;
  except
    //
  end;
end;

initialization

finalization

if Assigned(TMudaCorFontFoco.FScreen) then
  if Assigned(TMudaCorFontFoco.FScreen.OnActiveControlChange) then
    TMudaCorFontFoco.FScreen.OnActiveControlChange := nil;

end.
