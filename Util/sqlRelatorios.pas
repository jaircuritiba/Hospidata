unit sqlRelatorios;

interface

uses
  ZDataset, System.SysUtils, mensagemBox;

function ConsultaSql(Query: TZQuery; Str: string): Boolean;

implementation

function ConsultaSql(Query: TZQuery; Str: string): Boolean;
begin
  try
    Query.Close;
    Query.sql.Text := Str;
    Query.open;
    Result := True;
  except
    on e: Exception do
    begin
      mensagem('Falha na Consulta', 'Houve falha na pesquisa do relatório', e.message, 1);
      Result := False;
    end;
  end;
end;

end.

