object frmICMSSN201: TfrmICMSSN201
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS SN 201'
  ClientHeight = 321
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlICMSSN201: TPanel
    Left = 0
    Top = 0
    Width = 540
    Height = 321
    Align = alClient
    Color = clWhite
    TabOrder = 0
    ExplicitLeft = -16
    ExplicitWidth = 345
    ExplicitHeight = 273
    object lblOrigemICMSSN201: TLabel
      Left = 12
      Top = 50
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSOSNICMSSN201: TLabel
      Left = 12
      Top = 8
      Width = 37
      Height = 13
      Caption = 'CSOSN'
    end
    object lblpCredSN201: TLabel
      Left = 12
      Top = 234
      Width = 152
      Height = 13
      Caption = 'Al'#237'q. aplic. de c'#225'lculo do cr'#233'dito'
    end
    object lblvCredICMSSN201: TLabel
      Left = 185
      Top = 234
      Width = 104
      Height = 13
      Caption = 'Valor Cr'#233'dito do ICMS'
    end
    object lblmodBCSTICMSSN201: TLabel
      Left = 361
      Top = 50
      Width = 133
      Height = 13
      Caption = 'Modalidade da BC ICMS ST'
    end
    object lbpMVAST201: TLabel
      Left = 12
      Top = 93
      Width = 264
      Height = 13
      Caption = 'Percentual da margem de valor Adicionado do ICMS ST'
    end
    object lblpRedBCST201: TLabel
      Left = 361
      Top = 94
      Width = 140
      Height = 13
      Caption = 'Percentual Red. BC ICMS ST'
    end
    object lblvBCST201: TLabel
      Left = 12
      Top = 137
      Width = 87
      Height = 13
      Caption = 'Valor BC ICMS ST'
    end
    object lblpICMSST201: TLabel
      Left = 184
      Top = 137
      Width = 101
      Height = 13
      Caption = 'Al'#237'quota do ICMS ST'
    end
    object lblvICMSST201: TLabel
      Left = 361
      Top = 137
      Width = 85
      Height = 13
      Caption = 'Valor do ICMS ST'
    end
    object lblvBCFCPST201: TLabel
      Left = 12
      Top = 185
      Width = 111
      Height = 13
      Caption = 'Valor da BC do FCP ST'
    end
    object lblpFCPST201: TLabel
      Left = 185
      Top = 185
      Width = 106
      Height = 13
      Caption = 'Percentual do FCP ST'
    end
    object lblvFCPST201: TLabel
      Left = 361
      Top = 185
      Width = 79
      Height = 13
      Caption = 'Valor do FCP ST'
    end
    object cbOrigemICMSSN201: TComboBox
      Left = 12
      Top = 66
      Width = 331
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      Items.Strings = (
        'Nacional'
        'Estrangeira-Importa'#231#227'o Direta'
        'Estrangeira-Adquirida no mercado interno'
        'Nacional-Conte'#250'do de Importa'#231#227'o 40%'
        'Nacional-Produ'#231#227'o conforme processo produtivo'
        'Nacional-Conte'#250'do de Importa'#231#227'o menor 40%'
        'Estrangeira-Importa'#231#227'o Direta sem Similar Nacional (CAMEX)'
        
          'Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX' +
          ')'
        
          'Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o superior ' +
          'a 70%')
    end
    object edtCSOSNICMSSN201: TEdit
      Left = 12
      Top = 24
      Width = 45
      Height = 21
      TabOrder = 0
    end
    object edtpCredSN201: TEdit
      Left = 12
      Top = 250
      Width = 158
      Height = 21
      TabOrder = 11
    end
    object btnEnviarICMSSN201: TButton
      Left = 444
      Top = 283
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 13
      OnClick = btnEnviarICMSSN201Click
    end
    object edtvCredICMSSN201: TEdit
      Left = 185
      Top = 250
      Width = 158
      Height = 21
      TabOrder = 12
    end
    object edtpMVAST201: TEdit
      Left = 12
      Top = 109
      Width = 330
      Height = 21
      TabOrder = 3
    end
    object edtpRedBCST201: TEdit
      Left = 361
      Top = 110
      Width = 158
      Height = 21
      TabOrder = 4
    end
    object edtvBCST201: TEdit
      Left = 12
      Top = 153
      Width = 158
      Height = 21
      TabOrder = 5
    end
    object edtpICMSST201: TEdit
      Left = 184
      Top = 153
      Width = 158
      Height = 21
      TabOrder = 6
    end
    object edtvICMSST201: TEdit
      Left = 361
      Top = 153
      Width = 158
      Height = 21
      TabOrder = 7
    end
    object cbmodBCSTICMSSN201: TComboBox
      Left = 361
      Top = 66
      Width = 158
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'Pre'#231'o tabelado ou m'#225'ximo sugerido'
      Items.Strings = (
        'Pre'#231'o tabelado ou m'#225'ximo sugerido'
        'Lista Negativa'
        'Lista Positiva'
        'Lista Neutra'
        'Margem Valor Agregado'
        'Pauta')
    end
    object edtvBCFCPST201: TEdit
      Left = 12
      Top = 201
      Width = 158
      Height = 21
      Hint = 
        'Valor da Base de C'#225'lculo do FCP retido por Substitui'#231#227'o Tribut'#225'r' +
        'ia '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object edtpFCPST201: TEdit
      Left = 185
      Top = 201
      Width = 158
      Height = 21
      Hint = 'Percentual do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object edtvFCPST201: TEdit
      Left = 361
      Top = 201
      Width = 158
      Height = 21
      Hint = 'Valor do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
  end
end
