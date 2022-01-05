unit PF;
{Esta unit PF, forma o conjunto de PROCEDURES e FUNCTIONS. Eu particularmente
 gosto de chamá-la de PratoFeito }
 { :) Jair Dubik :)}

interface

uses
 SysUtils,Forms, StrUtils, IniFiles, dialogs, grids,Graphics,System.Types, Vcl.StdCtrls;

procedure GravarIni(Secao,Parametro : String; Texto : String; NomeArquivo: String = 'Conf.ini');
function LerIni(Secao,Parametro : String; NomeArquivo: String='Conf.ini'):String;
function AbrirCaminhoArq(ExtensaoOuNome: String;
                        Descricao: String = 'Biblioteca';
                        CaminhoInicial : String = 'c:\';
                        Mensagem : String ='Selecione a DLL') : String;
function Encripta(texto: string): string;
function Decripta(texto: string): string;
function FormatarMoeda(valor: string): string;
function TirarEspacosDuplos(wTxt: String): String;
function CaracteresNumericos(t: String): String;
function textoVazio(conteudo: String; campoData : boolean=False): boolean;
function trocavirgppto(valor: string): string; var i:integer;

implementation

procedure GravarIni(Secao,Parametro : String; Texto : String; NomeArquivo: String = 'Conf.ini');
var
  ArqIni: TIniFile;
begin
  if(NomeArquivo = '') then
     NomeArquivo :=  'Conf.ini';
  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+NomeArquivo);
  try
    ArqIni.WriteString(Secao, Parametro, Texto)
  finally
    ArqIni.Free;
  end;
end;

function LerIni(Secao,Parametro : String; NomeArquivo: String='Conf.ini'):String;
var
  ArqIni: TIniFile;
begin
  if(NomeArquivo = '') then
     NomeArquivo :=  'Conf.ini';
  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+NomeArquivo);
  try
    Result := ArqIni.ReadString(Secao, Parametro,'');
  finally
    ArqIni.Free;
  end;
end;

// Exemplos:
// Modo completo - AbrirCaminhoArq('FDB', 'Arquivo Firebird', 'u:\dados\','Por favor! Aponte o arquivo firebird');
// Modo rápido   - AbrirCaminhoArq('FDB');
// Na Extensao se for colocado por exemplo "Nomes.dbf", na tela de diálogo não aparece outro arquivo senão o "Nomes.dbf".
function AbrirCaminhoArq(ExtensaoOuNome: String;
                        Descricao: String = 'Biblioteca';
                        CaminhoInicial : String = 'c:\';
                        Mensagem : String ='Selecione a DLL') : String;
var
   CaminhoArquivo: String;
begin
   // Se algum dos parâmetros vier vazio, mantenho os valores padrões
   if(Descricao = '') then
      begin
         Descricao := 'Base de Dados';
      end;
   if(CaminhoInicial = '') then
      begin
         CaminhoInicial := 'c:\';
      end;
   if(Mensagem = '') then
      begin
         Mensagem := 'Selecione o arquivo';
      end;

   if(Length(ExtensaoOuNome) < 4) then
      begin
         PromptForFileName(CaminhoArquivo,Descricao+' (.'+ExtensaoOuNome+')|*.'+ExtensaoOuNome,'*.'+ExtensaoOuNome,Mensagem,CaminhoInicial,False);
      end
   else
      begin
         PromptForFileName(CaminhoArquivo,Descricao+'('+ExtensaoOuNome+')|'+ExtensaoOuNome,ExtensaoOuNome,Mensagem,CaminhoInicial,False);
      end;
   Result := CaminhoArquivo;
end;

function Encripta(texto: string): string;
var
   sfinal:string;
   i, muda:integer;
begin
     sfinal:='';
     muda := 0;
     for i:=1 to length(texto) do
         begin
         if muda = 9 then
             muda := 1
         else
             inc(muda);
         texto[i]:=chr(ord(texto[i])+muda);
         sfinal:=sfinal+texto[i];
         end;
     Result:=sfinal;
end;

function Decripta(texto: string): string;
var
   sfinal:string;
   i,muda:integer;
begin
     if Texto = '' then
        begin
        Result := '';
        exit;
        end;

     sfinal:='';
     muda := 0;
     for i:=1 to length(Texto) do
         begin
         if muda = 9 Then
             muda := 1
         else
             inc(muda);
         Texto[i]:=chr(ord(Texto[i])-muda);
         sfinal:=sfinal+Texto[i];
         end;
     Result:=sfinal;
end;

{Exemplo:
Tedit.OnChange
Tedit(Sender).Text := FormatarMoeda(Tedit(Sender).Text);
Tedit(Sender).SelStart := Length(Tedit(Sender).Text); }
function FormatarMoeda(valor: string): string;
var
  decimais, centena, milhar, milhoes, bilhoes, trilhoes, quadrilhoes: string;
  i: Integer;
begin
  Result := EmptyStr;

  for i := 0 to Length(valor) - 1 do
    if not(valor[i] in ['0' .. '9']) then
      delete(valor, i, 1);

  if copy(valor, 1, 1) = '0' then
    valor := copy(valor, 2, Length(valor));

  decimais := RightStr(valor, 2);
  centena := copy(RightStr(valor, 5), 1, 3);
  milhar := copy(RightStr(valor, 8), 1, 3);
  milhoes := copy(RightStr(valor, 11), 1, 3);
  bilhoes := copy(RightStr(valor, 14), 1, 3);
  trilhoes := copy(RightStr(valor, 17), 1, 3);
  quadrilhoes := LeftStr(valor, Length(valor) - 17);

  case Length(valor) of
    1:
      Result := '0,0' + valor;
    2:
      Result := '0,' + valor;
    6 .. 8:
      begin
        milhar := LeftStr(valor, Length(valor) - 5);
        Result := milhar + '.' + centena + ',' + decimais;
      end;
    9 .. 11:
      begin
        milhoes := LeftStr(valor, Length(valor) - 8);
        Result := milhoes + '.' + milhar + '.' + centena + ',' + decimais;
      end;
    12 .. 14:
      begin
        bilhoes := LeftStr(valor, Length(valor) - 11);
        Result := bilhoes + '.' + milhoes + '.' + milhar + '.' + centena + ',' + decimais;
      end;
    15 .. 17:
      begin
        trilhoes := LeftStr(valor, Length(valor) - 14);
        Result := trilhoes + '.' + bilhoes + '.' + milhoes + '.' + milhar + '.' + centena + ','
          + decimais;
      end;
    18 .. 20:
      begin
        quadrilhoes := LeftStr(valor, Length(valor) - 17);
        Result := quadrilhoes + '.' + trilhoes + '.' + bilhoes + '.' + milhoes + '.' + milhar + '.'
          + centena + ',' + decimais;
      end
  else
    Result := LeftStr(valor, Length(valor) - 2) + ',' + decimais;
  end;
end;

function TirarEspacosDuplos(wTxt: String): String;
var
   wUltLetra: Char;
   AaA: Longint;
begin
     wTxt := Trim(wTxt);
     if Length(wTxt) >= 2 then wUltLetra := wTxt[1] else wUltLetra := #0;
     AaA := 2;
     while AaA <= Length(wTxt) do
          begin
          if (wTxt[AaA] = ' ') and (wUltLetra = ' ') then
              begin
              Delete(wTxt, AaA, 1);
              if AaA > Length(wTxt) then
                  Break;
              Continue;
              end;
          wUltLetra := wTxt[AaA];
          AaA := AaA + 1;
          end;

     Result := wTxt;
end;

function CaracteresNumericos(t: String): String;
var
  i: integer;
begin
  result := '';
  for i := 1 to length(t) do
  begin
    if t[i] in ['0'..'9'] then
    begin
      result:= result+t[i];
    end;
  end;
end;

function textoVazio(conteudo: String; campoData : boolean=false): boolean;
var
  texto : string;
begin
  texto := conteudo;
  if(campoData) then
  begin
    texto := CaracteresNumericos(texto);
  end;
  texto:=TirarEspacosDuplos(Texto);
  result := texto = '';

end;

//Trocar a virgula por ponto
function trocavirgppto(valor: string): string; var i:integer;
begin
  if valor <> '' then
  begin
    for i := 0 to length(valor) do
    begin
     if valor[i]='.' then
     begin
       valor[i]:=',';
     end
     else if valor[i] = ',' then
     begin
       valor[i]:='.';
     end;
   end;
  end;
  result := valor;
end;

end.