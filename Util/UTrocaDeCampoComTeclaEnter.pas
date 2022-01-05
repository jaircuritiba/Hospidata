unit UTrocaDeCampoComTeclaEnter;

interface

uses
 Messages, windows, forms, StdCtrls, controls;

procedure userTeclaEnterComoTab( form : TObject ; key : Char );

implementation

procedure userTeclaEnterComoTab( form : TObject ; key : Char );
begin
  if key=#13 then
  begin
     Key := #0;
     TForm(form).Perform(WM_nextdlgctl,0,0);
  end
  else if Key = #27 then
     TForm(form).Perform(WM_nextdlgctl,1,0);
end;

end.
