unit empregados;

interface

uses
  zConnection, zdataset, sysUtils, dialogs, mensagemBox;

type
  TEmpregados = class(TObject)
  private
    FConexao: TZConnection;
    FId_empregado: string;
    FCod_departamento: string;
    Fcod_emp_funcao: string;
    FNm_empregado: string;
    FNm_funcao: string;
    FData_admissao: string;
    FSalario: string;
    FComissao: string;
  public
    property Conexao: TZConnection read FConexao write FConexao;
    property id_empregado: string read FId_empregado write FId_empregado;
    property cod_departamento: string read FCod_departamento write FCod_departamento;
    property cod_emp_funcao: string read FCod_emp_funcao write FCod_emp_funcao;
    property nm_empregado: string read FNm_empregado write FNm_empregado;
    property nm_funcao: string read FNm_funcao write FNm_funcao;
    property data_admissao: string read FData_admissao write FData_admissao;
    property salario: string read FSalario write FSalario;
    property comissao: string read FComissao write FComissao;

    constructor Create(Conexao: TZConnection);
    destructor Destroy; override;
    function getListaFuncoes: TZQuery;
    function getCodFuncao(funcao: string): string;
    function getAutoIncrementoIdEmpregado: string;
    function getListaDepartamentos: TZQuery;
    function consulta(valorPesquisa: string): TZQuery;
    function InserirOuAlterar(out Erro: string): Boolean;
    procedure deletar(id: integer);
  end;

implementation

var
  qry: TZQuery;
  qryAutoIncrementoIdEmpregado : TZQuery;
  qryListaDepto: TZQuery;
  qryListaFuncao: TZQuery;


const
  TABELA = 'empregados';

{ TEmpregados }

function TEmpregados.consulta(valorPesquisa: string): TZQuery;
begin
  try
    FConexao.Connected := false;
    FConexao.Connected := true;
    qry.close;
    qry.SQL.Text := 'SELECT e.*, d.* FROM ' + TABELA + ' e ' +
      'LEFT JOIN departamentos d ON d.id_departamento = e.cod_departamento ' +
      valorPesquisa;

    if (qry.Connection.Connected = True) then
    begin
      qry.Open;
    end;
  finally
    result := qry;
  end;
end;

function TEmpregados.getAutoIncrementoIdEmpregado(): string;
begin
  try
    qryAutoIncrementoIdEmpregado.close;
    qryAutoIncrementoIdEmpregado.SQL.Text := 'SELECT CASE WHEN MAX(id_empregado) IS null THEN 1 ELSE max(id_empregado)+1 END cod FROM empregados';
      begin
        qryAutoIncrementoIdEmpregado.Open;
      end;
      Result := qryAutoIncrementoIdEmpregado.fields.fields[0].AsString;
  except
    on e: exception do
    begin
      mensagem('Erro', 'Falha ao gerar auto-incremento do código do cadastro de colaboradores', e.Message, 2);
      Result := '';
    end;
  end;
end;

function TEmpregados.getCodFuncao(funcao: string): string;
var
  cod: string;
begin
  try
    qryListaFuncao.close;
    qryListaFuncao.SQL.Text := 'SELECT cod_emp_funcao FROM empregados WHERE nm_funcao=' + QuotedStr(funcao) + ' LIMIT 1';

    if (qryListaFuncao.Connection.Connected = True) then
    begin
      qryListaFuncao.Open;
    end;
    cod := qryListaFuncao.fields.fields[0].AsString;
    if (cod = '') then
    begin
      qryListaFuncao.SQL.Text := 'SELECT CASE WHEN MAX(cod_emp_funcao) IS null THEN 1 ELSE max(cod_emp_funcao)+1 END cod FROM empregados';
      begin
        qryListaFuncao.Open;
      end;
      cod := qryListaFuncao.fields.fields[0].AsString;
    end;
    Result := cod;
  except
    on e: exception do
    begin
      mensagem('Erro', 'Falha ao gerar a lista de funções de colaboradores', e.Message, 2);
      Result := '';
    end;
  end;
end;

function TEmpregados.getListaFuncoes(): TZQuery;
begin
  try
    qryListaFuncao.close;
    qryListaFuncao.SQL.Text := 'SELECT DISTINCT cod_emp_funcao, nm_funcao FROM empregados ';

    if (qryListaFuncao.Connection.Connected = True) then
    begin
      qryListaFuncao.Open;
    end;
    result := qryListaFuncao;
  except
    on e: exception do
    begin
      mensagem('Erro', 'Falha ao gerar a lista de funções de colaboradores', e.Message, 2);
      Result := nil;
    end;
  end;
end;

function TEmpregados.getListaDepartamentos(): TZQuery;
begin
  try
    qryListaDepto.SQL.Text := 'SELECT * FROM departamentos';

    if (qryListaDepto.Connection.Connected = True) then
    begin
      qryListaDepto.Open;
    end;
    result := qryListaDepto;
  except
    on e: exception do
    begin
      mensagem('Erro', 'Falha na pesquisa dos departamentos', e.Message, 2);
      Result := nil;
    end;
  end;
end;

constructor TEmpregados.Create(Conexao: TZConnection);
begin
  Fconexao := Conexao;
  qry := TZQuery.Create(nil);
  qry.Connection := FConexao;
  qryAutoIncrementoIdEmpregado := TZQuery.Create(nil);
  qryAutoIncrementoIdEmpregado.Connection := FConexao;
  qryListaDepto := TZQuery.Create(nil);
  qryListaDepto.Connection := FConexao;
  qryListaFuncao := TZQuery.Create(nil);
  qryListaFuncao.Connection := FConexao;
end;

procedure TEmpregados.deletar(id: integer);
begin
  if mensagem('Confirmação', 'Excluir Cadastro', 'Confirma a exclusão deste funcionário?', 2, True) then
  begin
    FConexao.Connected := False;
    FConexao.Connected := True;
    var sql := 'DELETE FROM empregados WHERE id_empregado =' + IntToStr(id);
    FConexao.ExecuteDirect(sql);
  end;
end;

destructor TEmpregados.Destroy;
begin
  if (Assigned(qry)) then
    FreeAndNil(qry);
    if(assigned(qryAutoIncrementoIdEmpregado)) then
    FreeAndNil(qryAutoIncrementoIdEmpregado);
  if (Assigned(qryListaDepto)) then
    FreeAndNil(qryListaDepto);
  if (Assigned(qryListaFuncao)) then
    FreeAndNil(qryListaFuncao);
  inherited;
end;

function TEmpregados.InserirOuAlterar(out Erro: string): Boolean;
begin
  try
    FConexao.Connected := False;
    FConexao.Connected := True;
    qry.sql.Clear;

    if (FId_empregado = '') then
    begin
      FId_empregado := getAutoIncrementoIdEmpregado();
      qry.SQL.Add('INSERT INTO ' + TABELA + '(id_empregado,cod_departamento,cod_emp_funcao,nm_empregado,nm_funcao,data_admissao,salario,comissao)');
      qry.SQL.Add(' VALUES(:id_emp, :cod_depto, :cod_func, :nm_empr, :nm_func, :dt_admi, :salario, :comissao)');
      qry.ParamByName('id_emp').AsString := FId_empregado;
    end
    else
    begin
      qry.SQL.Add('UPDATE ' + TABELA + ' e SET');
      qry.SQL.Add(' cod_departamento= :cod_depto,');
      qry.SQL.Add(' cod_emp_funcao= :cod_func,');
      qry.SQL.Add(' nm_empregado= :nm_empr,');
      qry.SQL.Add(' nm_funcao= :nm_func,');
      qry.SQL.Add(' data_admissao= :dt_admi,');
      qry.SQL.Add(' salario= :salario,');
      qry.SQL.Add(' comissao= :comissao ');
      qry.SQL.Add(' WHERE id_empregado= :id_empr ');
      qry.ParamByName('id_empr').AsString := FId_empregado;
    end;

    qry.ParamByName('cod_depto').AsString := Fcod_departamento;
    qry.ParamByName('cod_func').AsString := FCod_emp_funcao;
    qry.ParamByName('nm_empr').AsString := FNm_empregado;
    qry.ParamByName('nm_func').AsString := FNm_funcao;
    qry.ParamByName('dt_admi').AsString := FData_admissao;
    qry.ParamByName('salario').AsString := Fsalario;
    qry.ParamByName('comissao').AsString := FComissao;

    qry.ExecSQL;
    result := True;
  except
    on e: exception do
    begin
      Erro := e.Message;
      Result := False;
    end;
  end;
end;

end.

