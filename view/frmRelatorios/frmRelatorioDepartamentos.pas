unit frmRelatorioDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, frmRelatorios,
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
    labIdDepartment: TRLLabel;
    labNmDepartment: TRLLabel;
    labLocal: TRLLabel;
    rbDetail: TRLBand;
    edtLocal: TRLDBText;
    edtDescription: TRLDBText;
    edtId: TRLDBText;
    RLImage1: TRLImage;
    RLBand1: TRLBand;
    labPage: TRLSystemInfo;
    labTotalPage: TRLLabel;
    labTotal: TRLSystemInfo;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
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
