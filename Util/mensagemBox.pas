unit mensagemBox;

interface

function mensagem(head, titu, mens: string; indiceImg:integer;deixarBotaoCancelarVisivel:boolean=false): Boolean;

implementation

uses
  frmMensagem;

function mensagem(head, titu, mens: string; indiceImg:integer;deixarBotaoCancelarVisivel:boolean=false): Boolean;
begin
  formMensagem := TformMensagem.Create(nil);
  formMensagem.head := head;
  formMensagem.titu := titu;
  formMensagem.mens := mens;
  formMensagem.indiceImg := indiceImg;
  formMensagem.pnCancelForm.Visible := deixarBotaoCancelarVisivel;

  formMensagem.ShowModal;

  Result := formMensagem.acaoUsuario;
end;

end.

