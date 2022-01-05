unit frmCadastroDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, System.UITypes, system.StrUtils, departamentos, mensagemBox;

type
  TformDepartamentos = class(TForm)
    PnDepartamentos: TPanel;
    pnDepartmentRegistration: TPanel;
    labDepartmentRegistration: TLabel;
    pnBorderDepartmentRegistration: TPanel;
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
    gridDepartamentos: TDBGrid;
    pnData: TPanel;
    pnStatus: TPanel;
    btnSearch: TBitBtn;
    pnDescription: TPanel;
    labDescription: TLabel;
    edtDescription: TEdit;
    pnBorderDescription: TPanel;
    pnLocal: TPanel;
    labPlace: TLabel;
    edtPlace: TEdit;
    pnBorderLocal: TPanel;
    btnModify: TSpeedButton;
    btnDelete: TSpeedButton;
    btnSave: TSpeedButton;
    labStatus: TLinkLabel;
    dsDepartamentos: TDataSource;
    procedure btnGravarClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridDepartamentosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnDepartmentRegistrationMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnSaveClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure tabDataShow(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtPlaceKeyPress(Sender: TObject; var Key: Char);
  private
    procedure AtualizarQtdeRegistrosNoStatusDaTela;

  public
  end;

var
  formDepartamentos: TformDepartamentos;


implementation

{$R *.dfm}

uses
  frmDataModule;

procedure TformDepartamentos.btnDeleteClick(Sender: TObject);
var
  gradePossuiRegistros: boolean;
begin
  gradePossuiRegistros := not gridDepartamentos.DataSource.DataSet.IsEmpty;
  if (gradePossuiRegistros) then
  begin
    formDataModule.Departamentos.deletar(gridDepartamentos.DataSource.DataSet.FieldByName('id_departamento').AsInteger);
    dsDepartamentos.DataSet := formDataModule.Departamentos.consulta('');
    AtualizarQtdeRegistrosNoStatusDaTela();
  end;
end;

procedure TformDepartamentos.btnGravarClick(Sender: TObject);
begin
  Close;
end;

procedure TformDepartamentos.btnInsertClick(Sender: TObject);
begin
  PageControl.ActivePage := tabData;
  edtDescription.Text := '';
  edtPlace.Text := '';
  edtDescription.SetFocus;
  pnAlteracoes.Enabled := false;
  btnSave.Enabled := True;
  labStatus.Caption := 'Realizando Inclusão!';
end;

procedure TformDepartamentos.btnModifyClick(Sender: TObject);
begin
  PageControl.ActivePage := tabData;
  edtDescription.SetFocus;
  pnAlteracoes.Enabled := false;
  btnSave.Enabled := True;
  formDataModule.Departamentos.Id_Departamento := gridDepartamentos.DataSource.DataSet.FieldByName('id_departamento').AsString;
  labStatus.Caption := 'Realizando Alteração!';
end;

procedure TformDepartamentos.btnSaveClick(Sender: TObject);
begin
  formDataModule.Departamentos.nm_Departamento := edtDescription.Text;
  formDataModule.Departamentos.nm_local := edtPlace.Text;
  var Erro: string;
  if (formDataModule.Departamentos.InserirOuAlterar(Erro)) then
  begin
    pnAlteracoes.Enabled := True;
    dsDepartamentos.DataSet := formDataModule.Departamentos.consulta('');
    edtDescription.Text := '';
    edtPlace.Text := '';
    PageControl.ActivePage := TabSearch;
    btnSave.Enabled := False;
    labStatus.Caption := IntToStr(dsDepartamentos.DataSet.RecordCount) + ' Departamentos cadastrados';
  end
  else
  begin
    mensagem('Erro', 'Falha na Inclusão do Departamento', Erro, 2);
  end;
end;

procedure TformDepartamentos.btnSearchClick(Sender: TObject);
var
  campo: string;
begin
  case (cmbLookingFor.ItemIndex) of
    0:
      campo := ' WHERE id_departamento =' + edtSearch.text;
    1:
      campo := ' WHERE nm_departamento Like %' + QuotedStr(edtSearch.text)+'%';
    2:
      campo := ' WHERE local like %' + QuotedStr(edtSearch.text)+'%';
    3:
      campo := '';
  end;

  dsDepartamentos.DataSet := formDataModule.Departamentos.consulta(campo);
  AtualizarQtdeRegistrosNoStatusDaTela();
end;

procedure TformDepartamentos.edtPlaceKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
   if (mensagem('Confirmação','Confirma a gravação deste cadastro?','',1, true)) then
   begin
      btnSaveClick(Sender);
   end;
  end;
end;

procedure TformDepartamentos.FormShow(Sender: TObject);
begin
  PageControl.ActivePage := TabSearch;
  dsDepartamentos.DataSet := formDataModule.Departamentos.consulta('');
  btnSave.Enabled := False;
  AtualizarQtdeRegistrosNoStatusDaTela();
end;

procedure TformDepartamentos.gridDepartamentosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  gradePossuiRegistros, foiPressionadoDelete: boolean;
begin
  gradePossuiRegistros := not gridDepartamentos.DataSource.DataSet.IsEmpty;
  foiPressionadoDelete := Key = VK_DELETE;

  if (gradePossuiRegistros) and (foiPressionadoDelete) then
  begin
    formDataModule.Departamentos.deletar(gridDepartamentos.DataSource.DataSet.FieldByName('id_departamento').AsInteger);
    dsDepartamentos.DataSet := formDataModule.Departamentos.consulta('');
    AtualizarQtdeRegistrosNoStatusDaTela();
  end;
end;

procedure TformDepartamentos.pnDepartmentRegistrationMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  const
    sc_DragMove = $f012;
  begin
    ReleaseCapture;
    Perform(wm_SysCommand, sc_DragMove, 0);
  end;
end;

procedure TformDepartamentos.tabDataShow(Sender: TObject);
begin
  if not (gridDepartamentos.DataSource.DataSet.IsEmpty) then
  begin
    edtDescription.Text := dsDepartamentos.DataSet.FieldByName('nm_departamento').AsString;
    edtPlace.Text := dsDepartamentos.DataSet.FieldByName('local').AsString;
  end;
end;

procedure TformDepartamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  formDataModule.Departamentos.Destroy;
  Action := caFree;
end;

procedure TformDepartamentos.FormCreate(Sender: TObject);
begin
  formDataModule.Departamentos := TDepartamentos.Create(formDataModule.con);
end;

procedure TformDepartamentos.AtualizarQtdeRegistrosNoStatusDaTela();
begin
  if (gridDepartamentos.DataSource.DataSet.IsEmpty) then
  begin
    labStatus.Caption := 'Nenhum Departamento Encontrado';
  end
  else if (dsDepartamentos.DataSet.RecordCount = 1) then
  begin
    labStatus.Caption := '1 Departamento Encontrado';
  end
  else
  begin
    labStatus.Caption := IntToStr(dsDepartamentos.DataSet.RecordCount) + ' Departamentos Encontrados';
  end;
end;

end.
