object frmDistribuicaoDFe: TfrmDistribuicaoDFe
  Left = 616
  Top = 165
  Width = 800
  Height = 600
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 
    'Exemplo de como utilizar a Consulta de Distribui'#231#227'o DF-e e Downl' +
    'oad da NF-e'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpInformacoes: TGroupBox
    Left = 0
    Top = 0
    Width = 792
    Height = 65
    Align = alTop
    Caption = 'Informa'#231#245'es para Consulta'
    TabOrder = 0
    object lblCnpjCpf: TLabel
      Left = 63
      Top = 17
      Width = 136
      Height = 13
      Caption = 'CNPJ ou CPF do interessado'
    end
    object lblUF: TLabel
      Left = 11
      Top = 17
      Width = 13
      Height = 13
      Caption = 'UF'
    end
    object lblNSU: TLabel
      Left = 215
      Top = 17
      Width = 20
      Height = 13
      Caption = 'NSU'
    end
    object edtCnpjCpf: TEdit
      Left = 62
      Top = 33
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object cbUF: TComboBox
      Left = 9
      Top = 33
      Width = 47
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
    end
    object btnConsultarDFe: TButton
      Left = 540
      Top = 29
      Width = 101
      Height = 25
      Caption = 'Consultar DF-e'
      TabOrder = 4
      OnClick = btnConsultarDFeClick
    end
    object edtNSU: TEdit
      Left = 214
      Top = 33
      Width = 103
      Height = 21
      MaxLength = 15
      TabOrder = 2
      Text = '000000000000000'
    end
    object rdgNSU: TRadioGroup
      Left = 329
      Top = 10
      Width = 194
      Height = 44
      Caption = 'Tipo do NSU'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #218'ltimo NSU'
        'NSU Espec'#237'fico')
      TabOrder = 3
    end
  end
  object grpRetorno: TGroupBox
    Left = 0
    Top = 65
    Width = 792
    Height = 508
    Align = alClient
    Caption = 'Retorno Consulta DF-e'
    TabOrder = 1
    object pgcRetorno: TPageControl
      Left = 2
      Top = 15
      Width = 788
      Height = 491
      ActivePage = tabListagem
      Align = alClient
      TabOrder = 0
      object tabListagem: TTabSheet
        Caption = 'Listagem de NF-es'
        object grdNotas: TStringGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 419
          Align = alClient
          ColCount = 10
          FixedColor = clGradientActiveCaption
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          TabOrder = 0
          OnSelectCell = grdNotasSelectCell
        end
        object Panel1: TPanel
          Left = 0
          Top = 419
          Width = 780
          Height = 44
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            780
            44)
          object lblTextoQtdNotas: TLabel
            Left = 10
            Top = 2
            Width = 45
            Height = 13
            Caption = 'Registros'
          end
          object lblChaveDownloadNFe: TLabel
            Left = 65
            Top = 2
            Width = 131
            Height = 13
            Caption = 'Chave da Nota selecionada'
          end
          object lblStatusDownloadNFe: TLabel
            Left = 452
            Top = 2
            Width = 96
            Height = 13
            Caption = 'Status do Download'
          end
          object btnDownloadNFe: TButton
            Left = 346
            Top = 14
            Width = 99
            Height = 25
            Caption = 'Download NF-e'
            TabOrder = 0
            OnClick = btnDownloadNFeClick
          end
          object edtChaveDownload: TEdit
            Left = 64
            Top = 17
            Width = 275
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 1
          end
          object edtStatusDownloadNFe: TEdit
            Left = 451
            Top = 17
            Width = 325
            Height = 21
            TabStop = False
            Anchors = [akLeft, akTop, akRight]
            ReadOnly = True
            TabOrder = 2
          end
          object edtQtdNotas: TEdit
            Left = 8
            Top = 17
            Width = 47
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 3
            Text = '0'
          end
        end
      end
      object tabXML: TTabSheet
        Caption = 'XML'
        ImageIndex = 1
        object mmoXml: TMemo
          Left = 0
          Top = 0
          Width = 780
          Height = 463
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
end
