object formRelatorios: TformRelatorios
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'formRelatorios'
  ClientHeight = 555
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnBottom: TPanel
    Left = 0
    Top = 496
    Width = 1000
    Height = 59
    Align = alBottom
    TabOrder = 0
    object pnImprimir: TPanel
      Left = 1
      Top = 6
      Width = 128
      Height = 43
      BevelOuter = bvNone
      Color = 12361605
      ParentBackground = False
      TabOrder = 0
      object btnImprimir: TSpeedButton
        Left = 0
        Top = 0
        Width = 128
        Height = 43
        Cursor = crHandPoint
        Align = alClient
        Caption = '&Imprimir'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2434341
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnImprimirClick
        ExplicitLeft = 15
        ExplicitWidth = 129
        ExplicitHeight = 41
      end
    end
    object pnFechar: TPanel
      Left = 872
      Top = 9
      Width = 124
      Height = 41
      BevelOuter = bvNone
      Color = 12361605
      ParentBackground = False
      TabOrder = 1
      object btnFechar: TSpeedButton
        Left = -5
        Top = 0
        Width = 129
        Height = 41
        Cursor = crHandPoint
        Align = alRight
        Caption = '&Fechar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2434341
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          CECEE826269A9B9BD0FCFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8D72727
          9ACECEE8FFFFFFFFFFFFFFFFFFCECEE826269D1F25CB26279D7171BEFEFEFFFF
          FFFFFFFFFFFFFFFF9696CF26279E1F25CB26269DCECEE8FFFFFFCECEE82527A1
          252BCC252CDB252BCC2527A16A6BBCFEFEFFFFFFFF9090CE2627A0252BCC252C
          DB252BCD2627A1CECEE82527A42D32CD2E36DD2F35DD2F35DD2C33CD2527A488
          89CCA1A2D82527A42C33CD2E36DD2E36DC2E36DD2D33CD2527A4CDCEEC2427A8
          363BCF3A41DF3B41DF3A41DE363BCF2426A92526A9363BCE3A41DE3A41DE3A41
          DF363BCF2527A9ABACDDFFFFFFC3C3E92327AD4045D1474DE1484EE1474DE140
          44D14045D1484EE1484EE1474EE14045D12426ADA1A1DBFFFFFFFFFFFFFFFFFF
          BEBEE82327B14B50D3565CE3565BE3575CE3565BE3565BE3565BE34246CC2226
          B29D9FDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C6EC2226B7555ADD656AE665
          6AE5656AE5656AE5555ADD2226B6A0A2DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFABACE62126BB6065DF7478E77478E87478E87478E86165DF2126BB8385
          D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FA1E42025C06B70E08286EA8386EA82
          86EB8286EA8286EA8286EA6B70E02126C07B7DD8FEFFFFFFFFFFFFFFFFA3A5E7
          2026C4757AE38F93EC9093EC9093EC767AE2757AE29093ED8F93EC9093ED767A
          E32025C5797CDBFEFEFFC1C3F11F26C87F83E49B9EEE9C9EEE9B9EEE7F83E31F
          26C91F25C97F82E39C9FEF9C9EEF9C9EEE7F83E31F25C8989BE61F26CD878AE5
          A6A7F0A6A8F0A5A8F0878AE51F26CDA0A3E9BABCF01E25CD868AE4A5A8F0A6A7
          EFA6A8F0878AE41E25CCCCCDF11E25CF8C8FE6ADAFF18C8FE61E25CF8184E4FF
          FFFFFFFFFFA8AAED1E25D08C8FE6ADAFF18C8FE61E25CCCECEE8FFFFFFCCCDF1
          1D25D3878AE51E25D3898EE8FFFFFFFFFFFFFFFFFFFFFFFFAEB1F11D25D3878A
          E41E25D2CECEE8FFFFFFFFFFFFFFFFFFCCCDF11D25D5B7BAF3FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFC2C4F51D25D5CECEE8FFFFFFFFFFFF}
        ParentFont = False
        OnClick = btnFecharClick
        ExplicitTop = -3
      end
    end
  end
  object pnFilter: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 41
    Align = alTop
    TabOrder = 1
    object labFilter: TLabel
      Left = 4
      Top = 8
      Width = 445
      Height = 25
      Caption = 'Filtrar por  Departamento X Funcion'#225'rios Locados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnBorderFilter: TPanel
      Left = 0
      Top = 39
      Width = 450
      Height = 1
      Color = clGray
      ParentBackground = False
      TabOrder = 0
    end
  end
  object pnCentral: TPanel
    Left = 0
    Top = 41
    Width = 1000
    Height = 455
    Align = alClient
    TabOrder = 2
    object rdDepartmentsList: TRadioButton
      Left = 16
      Top = 16
      Width = 193
      Height = 17
      Caption = 'Listar todos os departamentos'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object grpDepartmentsOrder: TGroupBox
      Left = 31
      Top = 39
      Width = 178
      Height = 74
      Caption = 'Ordernar nesta sequ'#234'ncia:'
      TabOrder = 1
      object cmbDepartmentOrderA: TComboBox
        Left = 24
        Top = 15
        Width = 145
        Height = 21
        TabOrder = 0
        Items.Strings = (
          'Id_Departamento'
          'Nm_Departamento'
          'Local')
      end
      object cmbDepartmentOrderB: TComboBox
        Left = 24
        Top = 42
        Width = 145
        Height = 21
        TabOrder = 1
        Items.Strings = (
          'Id_Departamento'
          'Nm_Departamento'
          'Local')
      end
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 136
      Width = 241
      Height = 17
      Caption = 'Listar todos os Funcion'#225'rios e Departamentos'
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 31
      Top = 159
      Width = 178
      Height = 98
      Caption = 'Ordernar nesta sequ'#234'ncia:'
      TabOrder = 3
      object cmbEmployeesOrderA: TComboBox
        Left = 24
        Top = 15
        Width = 145
        Height = 21
        TabOrder = 0
        Items.Strings = (
          'Nm_Departamento'
          'Local'
          'Nm_Empregado'
          'Nm_Funcao'
          'Data_Admissao'
          'Salario'
          'Comissao')
      end
      object cmbEmployeesOrderB: TComboBox
        Left = 24
        Top = 42
        Width = 145
        Height = 21
        TabOrder = 1
        Items.Strings = (
          'Nm_Departamento'
          'Local'
          'Nm_Empregado'
          'Nm_Funcao'
          'Data_Admissao'
          'Salario'
          'Comissao')
      end
      object cmbEmployeesOrderC: TComboBox
        Left = 24
        Top = 69
        Width = 145
        Height = 21
        TabOrder = 2
        Items.Strings = (
          'Nm_Departamento'
          'Local'
          'Nm_Empregado'
          'Nm_Funcao'
          'Data_Admissao'
          'Salario'
          'Comissao')
      end
    end
  end
  object dataSource: TDataSource
    Left = 654
    Top = 369
  end
end
