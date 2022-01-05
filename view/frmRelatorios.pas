unit frmRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, ZDataset, frmDataModule,
  sqlRelatorios, Data.DB, mensagemBox, Vcl.Grids, Vcl.DBGrids,
  frmCadastroDepartamentos, frmRelatorioEmpregados;

type
  TformRelatorios = class(TForm)
    pnBottom: TPanel;
    pnImprimir: TPanel;
    pnFilter: TPanel;
    pnBorderFilter: TPanel;
    labFilter: TLabel;
    pnCentral: TPanel;
    rdDepartmentsList: TRadioButton;
    grpDepartmentsOrder: TGroupBox;
    cmbDepartmentOrderA: TComboBox;
    cmbDepartmentOrderB: TComboBox;
    RadioButton1: TRadioButton;
    dataSource: TDataSource;
    pnFechar: TPanel;
    btnFechar: TSpeedButton;
    btnImprimir: TSpeedButton;
    GroupBox1: TGroupBox;
    cmbEmployeesOrderA: TComboBox;
    cmbEmployeesOrderB: TComboBox;
    cmbEmployeesOrderC: TComboBox;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    procedure ImprimirListaDeDepartamentos;
    procedure ImprimirListaDeColaboradoresDepartamentos;
  public

  end;

implementation

var
  qry: tzQuery;
  formRelatorioDepartamentos: TformRelatorioDepartamentos;
  formRelatorioEmpregados: TformRelatorioDepartamentos;

{$R *.dfm}

procedure TformRelatorios.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TformRelatorios.ImprimirListaDeDepartamentos();
var
  ordenacao: string;
begin
  if ((cmbDepartmentOrderA.Text <> '') and (cmbDepartmentOrderb.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbDepartmentOrderA.Text + ' ,' + cmbDepartmentOrderb.Text;
  end
  else if ((cmbDepartmentOrderA.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbDepartmentOrderA.Text;
  end
  else if ((cmbDepartmentOrderB.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbDepartmentOrderB.Text;
  end;

  try
    ConsultaSql(qry, 'SELECT * FROM departamentos' + ordenacao);
    dataSource.DataSet := qry;
    dataSource.DataSet.Active := true;
    formRelatorioDepartamentos := TformRelatorioDepartamentos.Create(self);
    formRelatorioDepartamentos.rbSubTitle.Caption := 'Listagem de Todos os Departamentos';
    formRelatorioDepartamentos.relDeptoEmpregado.PreviewModal();
  except
    on e: Exception do
    begin
      mensagem('Falha na Consulta', 'Houve falha na pesquisa do relatório', e.message, 1);
    end;
  end;
end;

procedure TformRelatorios.ImprimirListaDeColaboradoresDepartamentos();
var
  ordenacao: string;
begin
  if ((cmbEmployeesOrderA.Text <> '') and (cmbEmployeesOrderB.Text <> '') and (cmbEmployeesOrderC.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbEmployeesOrderA.Text + ' ,' + cmbEmployeesOrderB.Text+ ' ,' +cmbEmployeesOrderC.Text;
  end
  else if ((cmbEmployeesOrderA.Text <> '') and (cmbEmployeesOrderC.Text <> '') and (cmbEmployeesOrderB.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbEmployeesOrderA.Text + ' ,' + cmbEmployeesOrderC.Text+ ' ,' +cmbEmployeesOrderB.Text;
  end
    else if ((cmbEmployeesOrderB.Text <> '') and (cmbEmployeesOrderA.Text <> '') and (cmbEmployeesOrderC.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbEmployeesOrderB.Text + ' ,' + cmbEmployeesOrderA.Text+ ' ,' +cmbEmployeesOrderC.Text;
  end
    else if ((cmbEmployeesOrderB.Text <> '') and (cmbEmployeesOrderC.Text <> '') and (cmbEmployeesOrderA.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbEmployeesOrderB.Text + ' ,' + cmbEmployeesOrderC.Text+ ' ,' +cmbEmployeesOrderA.Text;
  end
    else if ((cmbEmployeesOrderC.Text <> '') and (cmbEmployeesOrderB.Text <> '') and (cmbEmployeesOrderA.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbEmployeesOrderC.Text + ' ,' + cmbEmployeesOrderB.Text+ ' ,' +cmbEmployeesOrderA.Text;
  end
    else if ((cmbEmployeesOrderC.Text <> '') and (cmbEmployeesOrderA.Text <> '') and (cmbEmployeesOrderB.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbEmployeesOrderC.Text + ' ,' + cmbEmployeesOrderA.Text+ ' ,' +cmbEmployeesOrderB.Text;
  end
  else if ((cmbEmployeesOrderA.Text <> '') and (cmbEmployeesOrderB.Text <> '') ) then
  begin
    ordenacao := ' ORDER BY ' + cmbEmployeesOrderA.Text + ' ,' + cmbEmployeesOrderB.Text;
  end
  else if((cmbEmployeesOrderA.Text <> '') and (cmbEmployeesOrderC.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbEmployeesOrderA.Text + ' ,' + cmbEmployeesOrderC.Text;
  end
 else if ((cmbEmployeesOrderB.Text <> '') and (cmbEmployeesOrderC.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbEmployeesOrderB.Text+ ' ,' +cmbEmployeesOrderC.Text;
  end
 else if ((cmbEmployeesOrderC.Text <> '') and (cmbEmployeesOrderA.Text <> '')) then
  begin
    ordenacao := ' ORDER BY ' + cmbEmployeesOrderC.Text+ ' ,' +cmbEmployeesOrderA.Text;
  end
 else if ((cmbEmployeesOrderA.Text <> '') ) then
  begin
    ordenacao := ' ORDER BY ' +cmbEmployeesOrderA.Text;
  end
 else if ((cmbEmployeesOrderB.Text <> '') ) then
  begin
    ordenacao := ' ORDER BY ' +cmbEmployeesOrderB.Text;
  end
 else if ((cmbEmployeesOrderC.Text <> '') ) then
  begin
    ordenacao := ' ORDER BY ' +cmbEmployeesOrderC.Text;
  end;

  try
    ConsultaSql(qry, 'SELECT e.id_empregado, e.nm_empregado, e.nm_funcao,'+
    ' e.data_admissao, e.salario, e.comissao, d.nm_departamento, d.local '+
    'FROM empregados e '+
    'LEFT JOIN departamentos d ON d.id_departamento = e.cod_departamento' + ordenacao);
    dataSource.DataSet := qry;
    dataSource.DataSet.Active := true;
    formRelatorioEmpregados := TformRelatorioDepartamentos.Create(self);
    formRelatorioEmpregados.rbSubTitle.Caption := 'Listagem de Funcionários e Departamentos';
    formRelatorioEmpregados.relDeptoEmpregado.PreviewModal();
  except
    on e: Exception do
    begin
      mensagem('Falha na Consulta', 'Houve falha na pesquisa do relatório', e.message, 1);
    end;
  end;
end;

procedure TformRelatorios.btnImprimirClick(Sender: TObject);
begin
  if (rdDepartmentsList.Checked) then
  begin
    ImprimirListaDeDepartamentos();
  end
  else
  begin
    ImprimirListaDeColaboradoresDepartamentos();
  end;


end;

procedure TformRelatorios.FormActivate(Sender: TObject);
begin
  qry := TZQuery.Create(self);
  qry.Connection := frmDataModule.formDataModule.con;
end;

procedure TformRelatorios.FormDestroy(Sender: TObject);
begin
  if (Assigned(qry)) then
  begin
    qry.SQL.Clear;
    qry.Close;
    FreeAndNil(qry);
  end;
end;

end.

