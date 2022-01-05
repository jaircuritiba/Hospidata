{
  Esta unit é cópia da Internet no seguinte endereço:
  https://marcosalles.wordpress.com/2009/09/12/funcao-q-muda-a-cor-quando-muda-o-foco-p-toda-a-aplicacao/
}

unit UMudarCorFoco;

interface

uses
  Controls, forms, classes;

type
  TMudaCorFoco = class(TControl)
  public
    class procedure execute(screen: TScreen; application: TApplication);
  private
    class var FScreen: TScreen;
    class var Fapplication: TApplication;
    class procedure MudarCorFoco(sender: TObject);
    class var property Color; // propriedade protegida
  end;

implementation

uses
  Graphics, ComCtrls, sysUtils;

{ TMudaCorFoco }

class procedure TMudaCorFoco.execute(screen: TScreen;  application: TApplication);
begin
  if not Assigned(screen.OnActiveControlChange) then
  begin
    FScreen := TScreen(screen);
    Fapplication := application;
    FScreen.OnActiveControlChange := TMudaCorFoco.MudarCorFoco;
  end;
end;

class procedure TMudaCorFoco.MudarCorFoco(sender: TObject);
const
{$J+}
  controle: TWinControl = nil;
  CorAnterior: TColor = clWindow;
{$J-}
  CorComFoco: TColor = clSkyBlue;
begin
  try
    if Fapplication.Terminated then
      exit;
    if controle <> nil then
      begin
        TMudaCorFoco(controle).Color := CorAnterior;
      end;
    with FScreen.ActiveForm do
    begin
      if ActiveControl is TWinControl then
      begin
        CorAnterior := TMudaCorFoco(ActiveControl).Color;
        controle := ActiveControl;
        TMudaCorFoco(controle).Color := CorComFoco;
      end;
    end;
  except
    //
  end;
end;

initialization

finalization

if Assigned(TMudaCorFoco.FScreen) then
  if Assigned(TMudaCorFoco.FScreen.OnActiveControlChange) then
    TMudaCorFoco.FScreen.OnActiveControlChange := nil;

end.
