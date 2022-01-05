unit frmCadastroEmpregados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, System.UITypes, system.StrUtils, Vcl.DBCtrls, empregados,
  mensagemBox, Vcl.Mask, Math, pf, Datasnap.DBClient, Datasnap.Provider,
  ZDataset, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable,
  ZAbstractConnection, ZConnection;

type
  TformEmpregados = class(TForm)
    PageControl: TPageControl;
    TabSearch: TTabSheet;
    pnMenuBar: TPanel;
    pnSearch: TPanel;
    tabData: TTabSheet;
    labLookingFor: TLabel;
    cmbLookingFor: TComboBox;
    LabSearch: TLabel;
    edtSearch: TEdit;
    pnGravarFechar: TPanel;
    btnGravar: TSpeedButton;
    pnAlteracoes: TPanel;
    btnInsert: TSpeedButton;
    gridEmpregados: TDBGrid;
    pnData: TPanel;
    pnStatus: TPanel;
    btnSearch: TBitBtn;
    pnDescription: TPanel;
    labDescription: TLabel;
    edtDescription: TEdit;
    pnBorderDescription: TPanel;
    pnAdmissionDate: TPanel;
    labAdmissionDate: TLabel;
    pnBorderAdmissionDate: TPanel;
    dsEmpregados: TDataSource;
    btnModify: TSpeedButton;
    btnDelete: TSpeedButton;
    btnSave: TSpeedButton;
    labStatus: TLinkLabel;
    pnOccupation: TPanel;
    labOccupation: TLabel;
    pnBorderOccupation: TPanel;
    pnWage: TPanel;
    labWage: TLabel;
    edtWage: TEdit;
    pnBorderWage: TPanel;
    pnCommission: TPanel;
    LabCommission: TLabel;
    edtCommission: TEdit;
    pnBorderCommission: TPanel;
    edtAdmissionDate: TMaskEdit;
    cmbOccupation: TComboBox;
    dsDepartamentos: TDataSource;
    pnDepartament: TPanel;
    Label1: TLabel;
    pnBorderDepartament: TPanel;
    dbDepartments: TDBLookupComboBox;
    procedure btnGravarClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridEmpregadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSaveClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure tabDataShow(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure pnDepartmentRegistrationMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure edtWageChange(Sender: TObject);
    procedure cmbOccupationDropDown(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbDepartmentsDropDown(Sender: TObject);
    procedure cmbOccupationEnter(Sender: TObject);
    procedure dbDepartmentsEnter(Sender: TObject);
  private
    procedure AtualizarQtdeRegistrosNoStatusDaTela;
    procedure limparCamposAbaDadosParaCadastramento;
    procedure popularCamposDaAbaDados;
    procedure EfeitosNosCamposEmEdicao;
    function validacoesDasInformacoesPreenchidasEstaoOK(): boolean;

  public
  end;

var
  formEmpregados: TformEmpregados;
  gridColuna, gridLinha: integer;
  qry: tzquery;


implementation


{$R *.dfm}

uses
  frmDataModule;

procedure TformEmpregados.btnDeleteClick(Sender: TObject);
var
  gradePossuiRegistros: boolean;
begin
  gradePossuiRegistros := not gridEmpregados.DataSource.DataSet.IsEmpty;
  if (gradePossuiRegistros) then
  begin
    formDataModule.Empregados.deletar(gridEmpregados.DataSource.DataSet.FieldByName('id_Empregado').AsInteger);
    dsEmpregados.DataSet := formDataModule.Empregados.consulta('');
    AtualizarQtdeRegistrosNoStatusDaTela();
  end;
end;

procedure TformEmpregados.btnGravarClick(Sender: TObject);
begin
  Close;
end;

procedure TformEmpregados.EfeitosNosCamposEmEdicao();
begin
  PageControl.ActivePage := tabData;
  edtDescription.SetFocus;
  pnAlteracoes.Enabled := false;
  btnSave.Enabled := True;
end;

procedure TformEmpregados.btnInsertClick(Sender: TObject);
begin
  EfeitosNosCamposEmEdicao();
  limparCamposAbaDadosParaCadastramento();
  labStatus.Caption := 'Realizando Inclusão!';
end;

procedure TformEmpregados.btnModifyClick(Sender: TObject);
begin
  EfeitosNosCamposEmEdicao();
  formDataModule.Empregados.Id_Empregado := gridEmpregados.DataSource.DataSet.FieldByName('id_empregado').AsString;
  labStatus.Caption := 'Realizando Alteração!';
end;

function TformEmpregados.validacoesDasInformacoesPreenchidasEstaoOK(): boolean;
var
  contar: integer;
const
  color: TColor = clRed;
begin
  contar := 0;
  if (textoVazio(edtDescription.Text)) then
  begin
    inc(contar);
    edtDescription.Color := color;
  end;
  if (textoVazio(edtAdmissionDate.Text, true)) then
  begin
    inc(contar);
    edtAdmissionDate.Color := color;
  end;
  if (textoVazio(cmbOccupation.Text)) then
  begin
    inc(contar);
    cmbOccupation.Color := color;
  end;
  if (textoVazio(edtWage.Text)) then
  begin
    inc(contar);
    edtWage.Color := color;
  end;
  if (textoVazio(edtCommission.Text)) then
  begin
    inc(contar);
    edtCommission.Color := color;
  end;

  result := contar = 0;
  if contar > 0 then
    mensagem('Inconsistência', 'Campos sem preenchimento adequados', 'Preencha os ' + IntToStr(contar) + ' campos marcados', 2);
end;

procedure TformEmpregados.btnSaveClick(Sender: TObject);
var
  valor: string;
begin
  if (validacoesDasInformacoesPreenchidasEstaoOK()) then
  begin
    formDataModule.Empregados.cod_departamento := dbDepartments.KeyValue;
    formDataModule.Empregados.cod_emp_funcao := formDataModule.Empregados.getCodFuncao(cmbOccupation.Text);
    formDataModule.Empregados.nm_empregado := edtDescription.Text;
    formDataModule.Empregados.nm_funcao := cmbOccupation.Text;
    formDataModule.Empregados.data_admissao := edtAdmissionDate.Text;

    formDataModule.Empregados.salario := stringReplace(trocavirgppto(edtWage.text), ',', '', []);
    formDataModule.Empregados.comissao := edtCommission.Text;

    var Erro: string;
    if (formDataModule.Empregados.InserirOuAlterar(Erro)) then
    begin
      pnAlteracoes.Enabled := True;
      dsEmpregados.DataSet := formDataModule.Empregados.consulta('');
      limparCamposAbaDadosParaCadastramento();
      PageControl.ActivePage := TabSearch;
      btnSave.Enabled := False;
      labStatus.Caption := IntToStr(dsEmpregados.DataSet.RecordCount) + ' Colaboradores cadastrados';
    end
    else
    begin
      mensagem('Erro', 'Falha na Gravação do Cadastro do Funcionário', Erro, 2);
    end;
  end;
end;

procedure TformEmpregados.btnSearchClick(Sender: TObject);
var
  campo: string;
begin
  case (cmbLookingFor.ItemIndex) of
    0:
      campo := ' WHERE id_empregado=' + edtSearch.text;
    1:
      campo := ' WHERE nm_empregado=' + QuotedStr(edtSearch.text);
    2:
      campo := ' WHERE nm_funcao=' + QuotedStr(edtSearch.text);
    3:
      campo := '';
  end;

  dsEmpregados.DataSet := formDataModule.Empregados.consulta(campo);
  AtualizarQtdeRegistrosNoStatusDaTela();
end;

procedure TformEmpregados.cmbOccupationDropDown(Sender: TObject);
var
  qry: tzquery;
begin
  qry := formDataModule.Empregados.getListaFuncoes;

  cmbOccupation.Clear;

  qry.First;

  while not qry.Eof do
  begin

    cmbOccupation.Items.Add(qry.FieldByName('nm_funcao').AsString);

    qry.Next;
  end;
end;

procedure TformEmpregados.cmbOccupationEnter(Sender: TObject);
begin
  TComboBox(Sender).DroppedDown := True;
end;

procedure TformEmpregados.dbDepartmentsDropDown(Sender: TObject);
begin
  dsDepartamentos.DataSet := formDataModule.Empregados.getListaDepartamentos();
end;

procedure TformEmpregados.dbDepartmentsEnter(Sender: TObject);
begin
  TDBLookupComboBox(Sender).DropDown;
end;

procedure TformEmpregados.edtWageChange(Sender: TObject);
begin

  Tedit(Sender).Text := FormatarMoeda(Tedit(Sender).Text);
  Tedit(Sender).SelStart := Length(Tedit(Sender).Text);
end;

procedure TformEmpregados.FormShow(Sender: TObject);
begin
  PageControl.ActivePage := TabSearch;

  dsEmpregados.DataSet := formDataModule.Empregados.consulta('');
  btnSave.Enabled := False;
  AtualizarQtdeRegistrosNoStatusDaTela();
end;

procedure TformEmpregados.gridEmpregadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  gradePossuiRegistros, foiPressionadoDelete: boolean;
begin
  gradePossuiRegistros := not gridEmpregados.DataSource.DataSet.IsEmpty;
  foiPressionadoDelete := Key = VK_DELETE;

  if (gradePossuiRegistros) and (foiPressionadoDelete) then
  begin
    formDataModule.Empregados.deletar(gridEmpregados.DataSource.DataSet.FieldByName('id_Empregado').AsInteger);
    dsEmpregados.DataSet := formDataModule.Empregados.consulta('');
    AtualizarQtdeRegistrosNoStatusDaTela();
  end;
end;

procedure TformEmpregados.pnDepartmentRegistrationMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  const
    sc_DragMove = $f012;
  begin
    ReleaseCapture;
    Perform(wm_SysCommand, sc_DragMove, 0);
  end;
end;

procedure TformEmpregados.tabDataShow(Sender: TObject);
begin
  if not (gridEmpregados.DataSource.DataSet.IsEmpty) then
  begin
    popularCamposDaAbaDados();
  end;
end;

procedure TformEmpregados.FormActivate(Sender: TObject);
begin
  dsDepartamentos.DataSet := formDataModule.Empregados.getListaDepartamentos();
end;

procedure TformEmpregados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  formDataModule.Empregados.Destroy;
  Action := caFree;
end;

procedure TformEmpregados.FormCreate(Sender: TObject);
begin
  formDataModule.Empregados := TEmpregados.Create(formDataModule.con);
end;

procedure TformEmpregados.AtualizarQtdeRegistrosNoStatusDaTela();
begin
  if (gridEmpregados.DataSource.DataSet.IsEmpty) then
  begin
    labStatus.Caption := 'Nenhum Funcionário Encontrado';
  end
  else if (dsEmpregados.DataSet.RecordCount = 1) then
  begin
    labStatus.Caption := '1 Colaborador Encontrado';
  end
  else
  begin
    labStatus.Caption := IntToStr(dsEmpregados.DataSet.RecordCount) + ' Colaboradores Encontrados';
  end;
end;

procedure TformEmpregados.limparCamposAbaDadosParaCadastramento();
begin
  edtDescription.Text := '';
  edtAdmissionDate.Text := '';
  cmbOccupation.Text := '';
  edtWage.Text := '';
  edtCommission.Text := '0';
  dbDepartments.ListFieldIndex := -1;
end;

procedure TformEmpregados.popularCamposDaAbaDados();
begin
  edtDescription.Text := gridEmpregados.DataSource.DataSet.FieldByName('nm_empregado').AsString;
  edtAdmissionDate.Text := gridEmpregados.DataSource.DataSet.FieldByName('data_admissao').AsString;
  cmbOccupation.Text := gridEmpregados.DataSource.DataSet.FieldByName('nm_funcao').AsString;
  edtWage.Text := CurrToStrF(StrToCurr(Trim(gridEmpregados.DataSource.DataSet.FieldByName('salario').asString)), ffFixed, 2);
  edtCommission.Text := gridEmpregados.DataSource.DataSet.FieldByName('comissao').AsString;
end;

end.

