unit frmRelatorioEmpregados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB,
  Vcl.Imaging.pngimage, RLXLSFilter, RLPDFFilter, RLFilters, RLHTMLFilter;

type
  TformRelatorioDepartamentos = class(TForm)
    relDeptoEmpregado: TRLReport;
    rbHeader: TRLBand;
    rlDate: TRLSystemInfo;
    rlHour: TRLSystemInfo;
    rbTitle: TRLBand;
    labTitle: TRLLabel;
    rbSubTitle: TRLLabel;
    rbTitleColumns: TRLBand;
    labIdEmployee: TRLLabel;
    labNmDepartment: TRLLabel;
    labLocal: TRLLabel;
    rbDetail: TRLBand;
    edtLocal: TRLDBText;
    edtEmployee: TRLDBText;
    edtId: TRLDBText;
    RLImage1: TRLImage;
    RLBand1: TRLBand;
    labPage: TRLSystemInfo;
    labTotalPage: TRLLabel;
    labTotal: TRLSystemInfo;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLLabel1: TRLLabel;
    edtFuncao: TRLDBText;
    labAdmission: TRLLabel;
    edtAdmission: TRLDBText;
    labWage: TRLLabel;
    edtWage: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    labDepartment: TRLLabel;
    edtDepartment: TRLDBText;
  private
  public

  end;

var
  formRelatorioDepartmentos: TformRelatorioDepartamentos;

implementation

uses
  frmCadastroDepartamentos;

{$R *.dfm}

end.
