object formEmpregados: TformEmpregados
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'formEmpregados'
  ClientHeight = 543
  ClientWidth = 827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnDepartamentos: TPanel
    Left = 0
    Top = 0
    Width = 827
    Height = 543
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PageControl: TPageControl
      Left = 0
      Top = 91
      Width = 827
      Height = 421
      ActivePage = TabSearch
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TabSearch: TTabSheet
        Caption = 'Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        object pnSearch: TPanel
          Left = 0
          Top = 0
          Width = 819
          Height = 41
          Align = alTop
          TabOrder = 0
          DesignSize = (
            819
            41)
          object labLookingFor: TLabel
            Left = 9
            Top = 10
            Width = 83
            Height = 17
            Caption = 'Localizar por: '
          end
          object LabSearch: TLabel
            Left = 283
            Top = 10
            Width = 63
            Height = 17
            Caption = 'Pesquisar: '
          end
          object cmbLookingFor: TComboBox
            Left = 96
            Top = 8
            Width = 145
            Height = 25
            TabOrder = 0
            Text = 'ID'
            Items.Strings = (
              'ID'
              'Colaborador'
              'Fun'#231#227'o'
              'Todos Colaboradores')
          end
          object edtSearch: TEdit
            Left = 344
            Top = 8
            Width = 439
            Height = 25
            Hint = 
              'Ap'#243's preencher basta pressionar a tecla enter neste campo para r' +
              'ealizar a pesquisa'
            Anchors = [akLeft, akRight]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object btnSearch: TBitBtn
            Left = 790
            Top = 8
            Width = 25
            Height = 25
            Anchors = [akTop, akRight]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F1
              E7A65D00A65D00D7B98DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFAF3EAA65D00BE7807C78209A75F02FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F0E4B56C00C989
              1ED49729B56C00E5CEA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFEFCFEFDFCFEFCF9FFFFFFFDF9F1C27C09DFAA4CEDC06BC27C
              09E5CB99FFFFFFFFFFFFFFFFFFFFFFFFF1E5D0D5B285BA833EB47B32B67E34CF
              AB7BCD8B18CD8B18F3C979CD8B18E7CD99FFFFFFFFFFFFFFFFFFFFFFFFEFE1CB
              AE6F19C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C78AFFFF
              FFFFFFFFFFFFFFFFFFFFF3E7D7B2741DEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
              EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2C8A1C59042
              FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AD76FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFCC9F5BF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
              D599FEF3DDF7E5C8C08730FEFCF7FFFFFFFFFFFFFFFFFFFFFFFFCA9949FEF3D9
              FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFBEED6FFFF
              FFFFFFFFFFFFFFFFFFFFD2A561EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
              E8C7FEF6E8EDDBBDC78F35FFFEFCFFFFFFFFFFFFFFFFFFFFFFFFE2C69BCA933B
              FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDDB77BFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF4E9D9CD963AF1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFF4E9D5C17E0DF1E3CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E6D4
              D0973CD19D49F9F3E8FFFAEFFBF7F0DCB373C6841AF8EFDCFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9D8EAD2A7D8AA57CB8C20D4A048DE
              BB7BF2E5CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 2
            OnClick = btnSearchClick
          end
        end
        object gridEmpregados: TDBGrid
          Left = 0
          Top = 41
          Width = 819
          Height = 348
          Align = alClient
          DataSource = dsEmpregados
          GradientEndColor = clSkyBlue
          GradientStartColor = clMoneyGreen
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_empregado'
              Title.Caption = 'ID'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_empregado'
              Title.Caption = 'Colaborador'
              Width = 166
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_admissao'
              Title.Caption = 'data de admiss'#227'o'
              Width = 113
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_funcao'
              Title.Caption = 'Fun'#231#227'o'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'salario'
              Title.Caption = 'sal'#225'rio'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'comissao'
              Title.Caption = 'comiss'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_departamento'
              Title.Caption = 'Departamento'
              Width = 131
              Visible = True
            end>
        end
      end
      object tabData: TTabSheet
        Caption = 'Dados'
        ImageIndex = 1
        OnShow = tabDataShow
        object pnData: TPanel
          Left = 0
          Top = 0
          Width = 819
          Height = 353
          Align = alTop
          TabOrder = 0
          object pnDescription: TPanel
            Left = 3
            Top = 12
            Width = 366
            Height = 44
            BevelOuter = bvNone
            TabOrder = 0
            object labDescription: TLabel
              Left = 0
              Top = -5
              Width = 148
              Height = 17
              Caption = 'Descri'#231#227'o do Funcion'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 5723991
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object edtDescription: TEdit
              Left = 0
              Top = 22
              Width = 366
              Height = 18
              Align = alBottom
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object pnBorderDescription: TPanel
              Left = 0
              Top = 40
              Width = 366
              Height = 4
              Align = alBottom
              Color = clGray
              ParentBackground = False
              TabOrder = 1
            end
          end
          object pnAdmissionDate: TPanel
            Left = 5
            Top = 84
            Width = 92
            Height = 44
            BevelOuter = bvNone
            TabOrder = 2
            object labAdmissionDate: TLabel
              Left = 2
              Top = -3
              Width = 57
              Height = 17
              Caption = 'Admiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 5723991
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object pnBorderAdmissionDate: TPanel
              Left = 0
              Top = 40
              Width = 92
              Height = 4
              Align = alBottom
              Color = clGray
              ParentBackground = False
              TabOrder = 0
            end
            object edtAdmissionDate: TMaskEdit
              Left = 0
              Top = 22
              Width = 92
              Height = 18
              Align = alBottom
              BorderStyle = bsNone
              EditMask = '!99/99/0000;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 1
              Text = '  /  /    '
            end
          end
          object pnOccupation: TPanel
            Left = 427
            Top = 12
            Width = 348
            Height = 45
            BevelOuter = bvNone
            TabOrder = 1
            object labOccupation: TLabel
              Left = 4
              Top = -3
              Width = 343
              Height = 17
              Caption = 'Fun'#231#227'o (Caso n'#227'o exista uma fun'#231#227'o na lista, basta digitar)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 5723991
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object pnBorderOccupation: TPanel
              Left = 0
              Top = 41
              Width = 348
              Height = 4
              Align = alBottom
              Color = clGray
              ParentBackground = False
              TabOrder = 0
            end
            object cmbOccupation: TComboBox
              Left = 0
              Top = 16
              Width = 348
              Height = 25
              Align = alBottom
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 1
              Text = 'cmbOccupation'
              OnDropDown = cmbOccupationDropDown
              OnEnter = cmbOccupationEnter
            end
          end
          object pnWage: TPanel
            Left = 116
            Top = 84
            Width = 118
            Height = 44
            BevelOuter = bvNone
            TabOrder = 3
            object labWage: TLabel
              Left = 2
              Top = -3
              Width = 59
              Height = 17
              Caption = 'Sal'#225'rio R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 5723991
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object edtWage: TEdit
              Left = 0
              Top = 22
              Width = 118
              Height = 18
              Align = alBottom
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnChange = edtWageChange
            end
            object pnBorderWage: TPanel
              Left = 0
              Top = 40
              Width = 118
              Height = 4
              Align = alBottom
              Color = clGray
              ParentBackground = False
              TabOrder = 0
            end
          end
          object pnCommission: TPanel
            Left = 240
            Top = 84
            Width = 111
            Height = 44
            BevelOuter = bvNone
            TabOrder = 4
            object LabCommission: TLabel
              Left = 2
              Top = -3
              Width = 72
              Height = 17
              Caption = 'Comiss'#227'o %'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 5723991
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object edtCommission: TEdit
              Left = 0
              Top = 22
              Width = 111
              Height = 18
              Align = alBottom
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object pnBorderCommission: TPanel
              Left = 0
              Top = 40
              Width = 111
              Height = 4
              Align = alBottom
              Color = clGray
              ParentBackground = False
              TabOrder = 0
            end
          end
          object pnDepartament: TPanel
            Left = 7
            Top = 155
            Width = 768
            Height = 44
            BevelOuter = bvNone
            TabOrder = 5
            object Label1: TLabel
              Left = 2
              Top = -3
              Width = 84
              Height = 17
              Caption = 'Departamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 5723991
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object pnBorderDepartament: TPanel
              Left = 0
              Top = 40
              Width = 768
              Height = 4
              Align = alBottom
              Color = clGray
              ParentBackground = False
              TabOrder = 0
            end
            object dbDepartments: TDBLookupComboBox
              Left = 0
              Top = 15
              Width = 768
              Height = 25
              Align = alBottom
              DataField = 'cod_departamento'
              DataSource = dsEmpregados
              KeyField = 'id_departamento'
              ListField = 'nm_departamento;local'
              ListFieldIndex = 1
              ListSource = dsDepartamentos
              TabOrder = 1
              OnDropDown = dbDepartmentsDropDown
              OnEnter = dbDepartmentsEnter
            end
          end
        end
      end
    end
    object pnMenuBar: TPanel
      Left = 0
      Top = 49
      Width = 827
      Height = 42
      Align = alTop
      Color = 12361605
      ParentBackground = False
      TabOrder = 2
      DesignSize = (
        827
        42)
      object pnGravarFechar: TPanel
        Left = 565
        Top = 0
        Width = 260
        Height = 41
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Color = 12361605
        ParentBackground = False
        TabOrder = 0
        object btnGravar: TSpeedButton
          Left = 131
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
          OnClick = btnGravarClick
          ExplicitLeft = 137
          ExplicitTop = 6
        end
        object btnSave: TSpeedButton
          Left = 6
          Top = 0
          Width = 125
          Height = 41
          Cursor = crHandPoint
          Align = alRight
          Caption = '&Gravar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF4D9ABA35D00F4D9ABFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9ABA66000BF7C0EB8
            6E00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF4D9ABAA6200C07F12CB8B18C07F12AA6200FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9ABAF6600C28117CE8F1FCE8F1FCE
            8F1EAF6600F4D9ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D8AB
            B36900C5851CD09426D09425D59019D19426C5851CB36900F4D9ABFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFEEC98CB76D00C78821D3982ED3982DD7931EB86D00D7
            931ED3982DDA9012B46A00F4D9ABFFFFFFFFFFFFFFFFFFFFFFFFBC7100CB8615
            D79D36D79E36D99723BC7100F4D9ABBC7000D79E35D79D35DB9115BD7100F4D9
            ABFFFFFFFFFFFFFFFFFFF4D9ABC27500C17400DB9A29C27500F4D8ABFFFFFFC1
            7400DC9418DAA23DDAA23DDC9418C17500F4D9ABFFFFFFFFFFFFFFFFFFFFFFFF
            F4D9ABC77800C77900FFFFFFFFFFFFF4D9ABC77900DEA846DDA745DEA846DD96
            1BC67800C67800EDBF73FFFFFFFFFFFFFFFFFFFFFFFFF9EAD1FFFFFFFFFFFFFF
            FFFFCB7C00DE971EE0AC4DE0AC4DE0AD4DE0AD4DDF981ECB7C00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9ABCF8000E3B154E3B154E3B1
            55E3B155E3B154D08000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFD38300E09B23E6B55AE5B55BE5B65BE6B55BD48300FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9ABD78600E19C25E7B8
            60E8B960E8B960D88600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF4D9ABDA8900E29D27E9BB64E9BB64DA8900FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9ABDD8A
            00DD8B00E19A20DD8A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C988DD8A00DD8A00}
          ParentFont = False
          OnClick = btnSaveClick
          ExplicitLeft = 14
          ExplicitTop = 24
        end
      end
      object pnAlteracoes: TPanel
        Left = 1
        Top = 1
        Width = 344
        Height = 40
        Margins.Right = 10
        Align = alLeft
        BevelOuter = bvNone
        Color = 12361605
        ParentBackground = False
        TabOrder = 1
        object btnInsert: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 40
          Cursor = crHandPoint
          Margins.Right = 10
          Align = alLeft
          Caption = '&Incluir'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF9F5A009F5A009F5A009F5A009F5A009F5A00F5EEE2FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A00B26203B2
            6203B26203B262039F5A00F4ECDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF9F5A00B96B09BB6B09B96B09B96B099F5A00F4EDE0FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A00BD7011BE
            6F11BD7011BD70119F5A00F6F0E6FFFFFFFFFFFFFFFFFFFFFFFFF8EDDDF2E0C6
            F3E2C9F2E1C6F7E9D49F5A00C47718C47718C27617C477189F5A00EAD2AFF4E3
            CAF3E2C9F3E2C9F4E5CE9F5A009F5A009F5A009F5A009F5A009F5A00C87E1EC8
            7E1EC87E1EC87E1E9F5A009F5A009F5A009F5A009F5A009F5A009F5A00C98124
            C98124C98124C98124C98124C98124C98124C98023C98124C98124C98124C981
            24C98124C981249F5A009F5A00D48D2CD8902FD1892BD1892BD1892BD0892BCE
            872ACE872ACE882AD1892BD1892BD1892BD48D2CD48D2C9F5A009F5A00DE9B39
            DE9B39D89434D89334D89435D69133D28E31D28E31D48F32D89435D89434D893
            34DC9736DE9B399F5A009F5A00D99739D99739D99739D99739D99739D99739D9
            9739D99739D99739D99739D99739D99739D99739D997399F5A009F5A009F5A00
            9F5A009F5A009F5A009F5A00E2A243E2A243E1A042E2A2439F5A009F5A009F5A
            009F5A009F5A009F5A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A00E7A94DE7
            A94DE5A94BE7A94D9F5A00FCF9F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF9F5A00EBB054EDB355EBB054EBB0549F5A00F5EDE2FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A00F7C166FA
            C567F7C166F7C1669F5A00F4EBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF9F5A00FFD480FFD480FFD480FFD4809F5A00F3EADCFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A009F5A009F
            5A009F5A009F5A009F5A00F8F3EBFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          Transparent = False
          OnClick = btnInsertClick
          ExplicitTop = -4
          ExplicitHeight = 39
        end
        object btnDelete: TSpeedButton
          Left = 215
          Top = 0
          Width = 121
          Height = 40
          Cursor = crHandPoint
          Margins.Right = 10
          Align = alLeft
          Caption = '&Excluir'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D
            25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA5A60E4
            5A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60
            E45A60E45A60E41D25DA1D25DA767BE8767BE8767BE8767BE8767BE8767BE876
            7BE8767BE8767BE8767BE8767BE8767BE8767BE8767BE81D25DA1D25DA979BEE
            979BEE979BEE979BEE979BEE979BEE979BEE979BEE979BEE979BEE979BEE979B
            EE979BEE979BEE1D25DA1D25DAB8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8
            BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF31D25DA1D25DA1D25DA
            1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
            DA1D25DA1D25DA1D25DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          OnClick = btnDeleteClick
          ExplicitLeft = 232
          ExplicitTop = 5
          ExplicitHeight = 29
        end
        object btnModify: TSpeedButton
          Left = 100
          Top = 0
          Width = 115
          Height = 40
          Cursor = crHandPoint
          Margins.Right = 10
          Align = alLeft
          Caption = '&Alterar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000209ACC209ACC
            2099CCDFF2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF15A9DC1CC3EF1BBFED15A9DCFEFBF6FFFEFBFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DB3E72BC6EE
            47DFFF0DB3E7CB9229D59C34FAF2E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFE7FBFF0DB3E70DB3E70DB3E7E7D6A5F0C67FD69C36FC
            F6EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFC
            E5A743F6DEB1F6E1B7F9E5BDEFCF96DCA94BFEFBF6FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBCA8EEFCE93FCEED5F9E9CBFBEED3F2
            D6A6E4B764FDFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFCE8BE73F1D6A5FDF7EBFEF4E5FFFDF28993466F8D42FDFEFDFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDEFCE92F4D9AAFFFFFF97
            AB703175012C7B008EAA6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEF6DDB08F9F4E2D7806379E2139A4262B7E03A4BB87FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8C18B2A
            7E0234A53236A63436A7332A8108B4C99AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4D7AE2C800530A73D33AC4532AA412C83
            0BCADBB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD6E3C43386092CA84430B3572EAE4C30860ADCE8CDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EBD242931829A9472DB8
            662AAF54378D0FEAF2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFEEF4E44A981C27AC4E29BE7825B05957A128FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAF0559F
            2222A94621B6694FA129FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDF961A62F60AA31E1EED6}
          ParentFont = False
          Transparent = False
          OnClick = btnModifyClick
          ExplicitLeft = 113
          ExplicitTop = -5
          ExplicitHeight = 39
        end
      end
    end
    object pnStatus: TPanel
      Left = 0
      Top = 512
      Width = 827
      Height = 31
      Align = alBottom
      TabOrder = 3
      object labStatus: TLinkLabel
        Left = 4
        Top = 2
        Width = 4
        Height = 4
        TabOrder = 0
      end
    end
    object pnDepartmentRegistration: TPanel
      Left = 0
      Top = 0
      Width = 827
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      OnMouseDown = pnDepartmentRegistrationMouseDown
      object labDepartmentRegistration: TLabel
        Left = 9
        Top = 8
        Width = 242
        Height = 25
        Caption = 'Cadastro de Colaboradores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnBorderDepartmentRegistration: TPanel
        Left = 0
        Top = 39
        Width = 300
        Height = 1
        Color = clGray
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
  object dsEmpregados: TDataSource
    Left = 236
    Top = 126
  end
  object dsDepartamentos: TDataSource
    Left = 516
    Top = 239
  end
end
