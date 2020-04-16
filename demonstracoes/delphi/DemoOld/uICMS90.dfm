object frmICMS90: TfrmICMS90
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS 90'
  ClientHeight = 444
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
  object pnlICMS90: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 444
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMS90: TLabel
      Left = 12
      Top = 53
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSTICMS90: TLabel
      Left = 12
      Top = 10
      Width = 21
      Height = 13
      Caption = 'CST'
    end
    object lblmodBC90: TLabel
      Left = 361
      Top = 53
      Width = 55
      Height = 13
      Caption = 'Modalidade'
    end
    object lblvBC90: TLabel
      Left = 12
      Top = 96
      Width = 100
      Height = 13
      Caption = 'Valor da BC do ICMS'
    end
    object lbpICMS90: TLabel
      Left = 185
      Top = 96
      Width = 94
      Height = 13
      Caption = 'Al'#237'quota do imposto'
    end
    object lbvICMS90: TLabel
      Left = 361
      Top = 96
      Width = 68
      Height = 13
      Caption = 'Valor do ICMS'
    end
    object lblmodBCST90: TLabel
      Left = 12
      Top = 181
      Width = 230
      Height = 13
      Caption = 'Modalidade de determina'#231#227'o da BC do ICMS ST'
    end
    object lblpMVASTICMS90: TLabel
      Left = 185
      Top = 226
      Width = 152
      Height = 13
      Caption = 'Percentual da margem ICMS ST'
    end
    object lblpREDBCSTICMS90: TLabel
      Left = 361
      Top = 226
      Width = 158
      Height = 13
      Caption = 'Percentual Redu'#231#227'o BC ICMSST'
    end
    object lblvBCSTICMS90: TLabel
      Left = 12
      Top = 270
      Width = 102
      Height = 13
      Caption = 'Valor da BC ICMS ST'
    end
    object lblpICMSSTICMS90: TLabel
      Left = 185
      Top = 271
      Width = 86
      Height = 13
      Caption = 'Al'#237'quota ICMS ST'
    end
    object lblvICMSSTICMS90: TLabel
      Left = 361
      Top = 271
      Width = 85
      Height = 13
      Caption = 'Valor do ICMS ST'
    end
    object lblpRedBC90: TLabel
      Left = 12
      Top = 226
      Width = 145
      Height = 13
      Caption = 'Percentual da Redu'#231#227'o de BC'
    end
    object lblvICMSDeson90: TLabel
      Left = 12
      Top = 356
      Width = 129
      Height = 13
      Caption = 'Valor do ICMS Desonerado'
    end
    object lblmotDesICMS90: TLabel
      Left = 185
      Top = 356
      Width = 112
      Height = 13
      Caption = 'Motivo da desonera'#231#227'o'
    end
    object lblvBCFCP90: TLabel
      Left = 12
      Top = 139
      Width = 94
      Height = 13
      Caption = 'Valor da BC do FCP'
    end
    object lblpFCP90: TLabel
      Left = 185
      Top = 139
      Width = 89
      Height = 13
      Caption = 'Percentual do FCP'
    end
    object lblvFCP90: TLabel
      Left = 361
      Top = 139
      Width = 62
      Height = 13
      Caption = 'Valor do FCP'
    end
    object lblvBCFCPST90: TLabel
      Left = 12
      Top = 313
      Width = 111
      Height = 13
      Caption = 'Valor da BC do FCP ST'
    end
    object lblpFCPST90: TLabel
      Left = 185
      Top = 313
      Width = 106
      Height = 13
      Caption = 'Percentual do FCP ST'
    end
    object lblvFCPST90: TLabel
      Left = 361
      Top = 313
      Width = 79
      Height = 13
      Caption = 'Valor do FCP ST'
    end
    object cbOrigemICMS90: TComboBox
      Left = 12
      Top = 69
      Width = 332
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
    object edtCSTICMS90: TEdit
      Left = 12
      Top = 26
      Width = 33
      Height = 21
      TabOrder = 0
    end
    object cbmodBC90: TComboBox
      Left = 361
      Top = 69
      Width = 158
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'Margem Valor Agregado'
      Items.Strings = (
        'Margem Valor Agregado'
        'Pauta'
        'Pre'#231'o Tabelado M'#225'ximo'
        'Valor da Opera'#231#227'o')
    end
    object edtvBC90: TEdit
      Left = 12
      Top = 112
      Width = 158
      Height = 21
      TabOrder = 3
    end
    object edtpICMS90: TEdit
      Left = 185
      Top = 112
      Width = 158
      Height = 21
      TabOrder = 4
    end
    object edtvICMS90: TEdit
      Left = 361
      Top = 112
      Width = 158
      Height = 21
      TabOrder = 5
    end
    object cbmodBCST90: TComboBox
      Left = 12
      Top = 197
      Width = 332
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 9
      Text = 'Pre'#231'o tabelado ou m'#225'ximo sugerido'
      Items.Strings = (
        'Pre'#231'o tabelado ou m'#225'ximo sugerido'
        'Lista Negativa'
        'Lista Positiva'
        'Lista Neutra'
        'Margem Valor Agregado'
        'Pauta')
    end
    object edtpMVAST90: TEdit
      Left = 185
      Top = 242
      Width = 158
      Height = 21
      TabOrder = 11
    end
    object edtpRedBCST90: TEdit
      Left = 361
      Top = 242
      Width = 158
      Height = 21
      TabOrder = 12
    end
    object edtvBCST90: TEdit
      Left = 12
      Top = 286
      Width = 158
      Height = 21
      TabOrder = 13
    end
    object edtpICMSST90: TEdit
      Left = 185
      Top = 286
      Width = 158
      Height = 21
      TabOrder = 14
    end
    object edtvICMSST90: TEdit
      Left = 361
      Top = 286
      Width = 158
      Height = 21
      TabOrder = 15
    end
    object btnICMS90: TButton
      Left = 444
      Top = 407
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 21
      OnClick = btnICMS90Click
    end
    object edtpRedBC90: TEdit
      Left = 12
      Top = 242
      Width = 158
      Height = 21
      TabOrder = 10
    end
    object edtvICMSDeson90: TEdit
      Left = 12
      Top = 371
      Width = 158
      Height = 21
      Enabled = False
      TabOrder = 19
    end
    object cbbmotDesICMS90: TComboBox
      Left = 185
      Top = 371
      Width = 334
      Height = 21
      Style = csDropDownList
      Enabled = False
      ItemIndex = 1
      TabOrder = 20
      Text = 'Outros'
      Items.Strings = (
        'Produtor Agropecu'#225'rio'
        'Outros'
        #211'rg'#227'o de fomento e dev Agropec.')
    end
    object edtvBCFCP90: TEdit
      Left = 12
      Top = 155
      Width = 158
      Height = 21
      Hint = 'Valor da Base de C'#225'lculo do FCP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object edtpFCP90: TEdit
      Left = 185
      Top = 155
      Width = 158
      Height = 21
      Hint = 'Percentual do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object edtvFCP90: TEdit
      Left = 361
      Top = 155
      Width = 158
      Height = 21
      Hint = 'Valor do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object edtvBCFCPST90: TEdit
      Left = 12
      Top = 329
      Width = 158
      Height = 21
      Hint = 
        'Valor da Base de C'#225'lculo do FCP retido por Substitui'#231#227'o Tribut'#225'r' +
        'ia '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
    end
    object edtpFCPST90: TEdit
      Left = 185
      Top = 329
      Width = 158
      Height = 21
      Hint = 'Percentual do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
    end
    object edtvFCPST90: TEdit
      Left = 361
      Top = 329
      Width = 158
      Height = 21
      Hint = 'Valor do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
  end
end
