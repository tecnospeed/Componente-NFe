object frmICMSSN900: TfrmICMSSN900
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS SN 900'
  ClientHeight = 390
  ClientWidth = 534
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
  object pnlICMSSN900: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 390
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMSSN900: TLabel
      Left = 12
      Top = 51
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSOSNICMSSN900: TLabel
      Left = 12
      Top = 8
      Width = 37
      Height = 13
      Caption = 'CSOSN'
    end
    object lblpCredSN900: TLabel
      Left = 12
      Top = 311
      Width = 152
      Height = 13
      Caption = 'Al'#237'q. aplic. de c'#225'lculo do cr'#233'dito'
    end
    object lblvCredICMSSN900: TLabel
      Left = 185
      Top = 311
      Width = 104
      Height = 13
      Caption = 'Valor Cr'#233'dito do ICMS'
    end
    object lblmodBCSTICMSSN900: TLabel
      Left = 12
      Top = 135
      Width = 133
      Height = 13
      Caption = 'Modalidade da BC ICMS ST'
    end
    object lblpMVAST900: TLabel
      Left = 185
      Top = 180
      Width = 152
      Height = 13
      Caption = 'Percentual da margem ICMS ST'
    end
    object lblRedBCST900: TLabel
      Left = 361
      Top = 180
      Width = 158
      Height = 13
      Caption = 'Percentual Redu'#231#227'o BC ICMSST'
    end
    object lblvBCST900: TLabel
      Left = 12
      Top = 223
      Width = 87
      Height = 13
      Caption = 'Valor BC ICMS ST'
    end
    object lblpICMSST900: TLabel
      Left = 185
      Top = 223
      Width = 101
      Height = 13
      Caption = 'Al'#237'quota do ICMS ST'
    end
    object lblvICMSST900: TLabel
      Left = 361
      Top = 223
      Width = 85
      Height = 13
      Caption = 'Valor do ICMS ST'
    end
    object lblmodBCICMSSN900: TLabel
      Left = 361
      Top = 51
      Width = 116
      Height = 13
      Caption = 'Modalidade BC do ICMS'
    end
    object lblvBC900: TLabel
      Left = 12
      Top = 94
      Width = 85
      Height = 13
      Caption = 'Valor BC do ICMS'
    end
    object lblpRedBC900: TLabel
      Left = 12
      Top = 180
      Width = 145
      Height = 13
      Caption = 'Percentual da Redu'#231#227'o de BC'
    end
    object lblpICMS900: TLabel
      Left = 185
      Top = 95
      Width = 94
      Height = 13
      Caption = 'Al'#237'quota do imposto'
    end
    object lblvICMS900: TLabel
      Left = 361
      Top = 94
      Width = 68
      Height = 13
      Caption = 'Valor do ICMS'
    end
    object lblvBCFCPST900: TLabel
      Left = 12
      Top = 268
      Width = 111
      Height = 13
      Caption = 'Valor da BC do FCP ST'
    end
    object lblpFCPST900: TLabel
      Left = 185
      Top = 268
      Width = 106
      Height = 13
      Caption = 'Percentual do FCP ST'
    end
    object lblvFCPST900: TLabel
      Left = 361
      Top = 268
      Width = 79
      Height = 13
      Caption = 'Valor do FCP ST'
    end
    object cbOrigem900: TComboBox
      Left = 12
      Top = 67
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
    object edtCSOSN900: TEdit
      Left = 12
      Top = 24
      Width = 40
      Height = 21
      TabOrder = 0
    end
    object edtpCredSN900: TEdit
      Left = 12
      Top = 327
      Width = 158
      Height = 21
      TabOrder = 16
    end
    object btnEnviarICMSSN900: TButton
      Left = 444
      Top = 347
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 18
      OnClick = btnEnviarICMSSN900Click
    end
    object edtvCredICMSSN900: TEdit
      Left = 185
      Top = 327
      Width = 158
      Height = 21
      TabOrder = 17
    end
    object edtpMVAST900: TEdit
      Left = 185
      Top = 196
      Width = 158
      Height = 21
      TabOrder = 8
    end
    object edtpRedBCST900: TEdit
      Left = 361
      Top = 196
      Width = 158
      Height = 21
      TabOrder = 9
    end
    object edtvBCST900: TEdit
      Left = 12
      Top = 239
      Width = 158
      Height = 21
      TabOrder = 10
    end
    object edtpICMSST900: TEdit
      Left = 185
      Top = 239
      Width = 158
      Height = 21
      TabOrder = 11
    end
    object edtvICMSST900: TEdit
      Left = 361
      Top = 239
      Width = 158
      Height = 21
      TabOrder = 12
    end
    object edtvBC900: TEdit
      Left = 12
      Top = 110
      Width = 158
      Height = 21
      TabOrder = 3
    end
    object edtpRedBC900: TEdit
      Left = 12
      Top = 196
      Width = 158
      Height = 21
      TabOrder = 7
    end
    object edtpICMS900: TEdit
      Left = 185
      Top = 110
      Width = 158
      Height = 21
      TabOrder = 4
    end
    object edtvICMS900: TEdit
      Left = 361
      Top = 110
      Width = 158
      Height = 21
      TabOrder = 5
    end
    object cbmodBC900: TComboBox
      Left = 361
      Top = 67
      Width = 158
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'Margem Valor Agregado'
      Items.Strings = (
        'Margem Valor Agregado'
        'Pauta'
        'Pre'#231'o Tabelado M'#225'x.'
        'Valor da Opera'#231#227'o')
    end
    object cbmodBCST900: TComboBox
      Left = 12
      Top = 151
      Width = 331
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 6
      Text = 'Pre'#231'o tabelado ou m'#225'ximo sugerido'
      Items.Strings = (
        'Pre'#231'o tabelado ou m'#225'ximo sugerido'
        'Lista Negativa'
        'Lista Positiva'
        'Lista Neutra'
        'Margem Valor Agregado'
        'Pauta')
    end
    object edtvBCFCPST900: TEdit
      Left = 12
      Top = 284
      Width = 158
      Height = 21
      Hint = 
        'Valor da Base de C'#225'lculo do FCP retido por Substitui'#231#227'o Tribut'#225'r' +
        'ia '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object edtpFCPST900: TEdit
      Left = 185
      Top = 284
      Width = 158
      Height = 21
      Hint = 'Percentual do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
    end
    object edtvFCPST900: TEdit
      Left = 361
      Top = 284
      Width = 158
      Height = 21
      Hint = 'Valor do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
    end
  end
end
