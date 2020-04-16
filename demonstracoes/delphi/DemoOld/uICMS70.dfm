object frmICMS70: TfrmICMS70
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS 70'
  ClientHeight = 434
  ClientWidth = 529
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
  object pnlICMS70: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 434
    Align = alClient
    Color = clWhite
    TabOrder = 0
    ExplicitHeight = 442
    object lblOrigemICMS70: TLabel
      Left = 11
      Top = 47
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSTICMS70: TLabel
      Left = 11
      Top = 7
      Width = 21
      Height = 13
      Caption = 'CST'
    end
    object lblModalidadeICMS70: TLabel
      Left = 352
      Top = 47
      Width = 55
      Height = 13
      Caption = 'Modalidade'
    end
    object lblValorBCICMS10: TLabel
      Left = 11
      Top = 89
      Width = 100
      Height = 13
      Caption = 'Valor da BC do ICMS'
    end
    object lblpICMS70: TLabel
      Left = 181
      Top = 89
      Width = 94
      Height = 13
      Caption = 'Al'#237'quota do imposto'
    end
    object lblvICMS70: TLabel
      Left = 352
      Top = 89
      Width = 68
      Height = 13
      Caption = 'Valor do ICMS'
    end
    object lblmodBCST70: TLabel
      Left = 11
      Top = 130
      Width = 118
      Height = 13
      Caption = 'Modalidade BC ICMS ST'
    end
    object lblpMVAST70: TLabel
      Left = 181
      Top = 172
      Width = 152
      Height = 13
      Caption = 'Percentual da margem ICMS ST'
    end
    object lblpREDBCST70: TLabel
      Left = 352
      Top = 172
      Width = 158
      Height = 13
      Caption = 'Percentual Redu'#231#227'o BC ICMSST'
    end
    object lblvBCST70: TLabel
      Left = 11
      Top = 213
      Width = 102
      Height = 13
      Caption = 'Valor da BC ICMS ST'
    end
    object lblpICMSST70: TLabel
      Left = 181
      Top = 213
      Width = 86
      Height = 13
      Caption = 'Al'#237'quota ICMS ST'
    end
    object lblvICMSST70: TLabel
      Left = 352
      Top = 213
      Width = 85
      Height = 13
      Caption = 'Valor do ICMS ST'
    end
    object lblpRedBC70: TLabel
      Left = 11
      Top = 172
      Width = 145
      Height = 13
      Caption = 'Percentual da Redu'#231#227'o de BC'
    end
    object lblvICMSDeson70: TLabel
      Left = 11
      Top = 343
      Width = 129
      Height = 13
      Caption = 'Valor do ICMS Desonerado'
    end
    object lblmotDesICMS70: TLabel
      Left = 181
      Top = 343
      Width = 112
      Height = 13
      Caption = 'Motivo da desonera'#231#227'o'
    end
    object lblvBCFCP70: TLabel
      Left = 11
      Top = 256
      Width = 94
      Height = 13
      Caption = 'Valor da BC do FCP'
    end
    object lblpFCP70: TLabel
      Left = 181
      Top = 256
      Width = 89
      Height = 13
      Caption = 'Percentual do FCP'
    end
    object lblvFCP70: TLabel
      Left = 352
      Top = 256
      Width = 62
      Height = 13
      Caption = 'Valor do FCP'
    end
    object lblvBCFCPST70: TLabel
      Left = 11
      Top = 299
      Width = 111
      Height = 13
      Caption = 'Valor da BC do FCP ST'
    end
    object lblpFCPST70: TLabel
      Left = 181
      Top = 299
      Width = 106
      Height = 13
      Caption = 'Percentual do FCP ST'
    end
    object lblvFCPST70: TLabel
      Left = 352
      Top = 299
      Width = 79
      Height = 13
      Caption = 'Valor do FCP ST'
    end
    object cbOrigemICMS70: TComboBox
      Left = 11
      Top = 63
      Width = 328
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
    object edtCSTICMS70: TEdit
      Left = 11
      Top = 23
      Width = 33
      Height = 21
      TabOrder = 0
    end
    object cbModalidadeICMS70: TComboBox
      Left = 352
      Top = 63
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
    object edtValorBC70: TEdit
      Left = 11
      Top = 105
      Width = 158
      Height = 21
      TabOrder = 3
    end
    object edtpICMS70: TEdit
      Left = 181
      Top = 105
      Width = 158
      Height = 21
      TabOrder = 4
    end
    object edtvICMS70: TEdit
      Left = 352
      Top = 105
      Width = 158
      Height = 21
      TabOrder = 5
    end
    object cbmodBCST70: TComboBox
      Left = 11
      Top = 145
      Width = 328
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
    object edtpMVAST70: TEdit
      Left = 181
      Top = 188
      Width = 158
      Height = 21
      TabOrder = 8
    end
    object edtpRedBCST70: TEdit
      Left = 352
      Top = 188
      Width = 158
      Height = 21
      TabOrder = 9
    end
    object edtvBCST70: TEdit
      Left = 11
      Top = 229
      Width = 158
      Height = 21
      TabOrder = 10
    end
    object edtpICMSST70: TEdit
      Left = 181
      Top = 229
      Width = 158
      Height = 21
      TabOrder = 11
    end
    object edtvICMSST70: TEdit
      Left = 352
      Top = 229
      Width = 158
      Height = 21
      TabOrder = 12
    end
    object btnICMS10: TButton
      Left = 435
      Top = 394
      Width = 75
      Height = 24
      Caption = 'Gravar'
      TabOrder = 21
      OnClick = btnICMS10Click
    end
    object edtpRedBC70: TEdit
      Left = 11
      Top = 188
      Width = 158
      Height = 21
      TabOrder = 7
    end
    object edtvICMSDeson70: TEdit
      Left = 11
      Top = 358
      Width = 158
      Height = 21
      Enabled = False
      TabOrder = 19
    end
    object cbbmotDesICMS70: TComboBox
      Left = 181
      Top = 358
      Width = 329
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
    object edtvBCFCP70: TEdit
      Left = 11
      Top = 272
      Width = 158
      Height = 21
      Hint = 'Valor da Base de C'#225'lculo do FCP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object edtpFCP70: TEdit
      Left = 181
      Top = 272
      Width = 158
      Height = 21
      Hint = 'Percentual do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
    end
    object edtvFCP70: TEdit
      Left = 352
      Top = 272
      Width = 158
      Height = 21
      Hint = 'Valor do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
    end
    object edtvBCFCPST70: TEdit
      Left = 11
      Top = 315
      Width = 158
      Height = 21
      Hint = 
        'Valor da Base de C'#225'lculo do FCP retido por Substitui'#231#227'o Tribut'#225'r' +
        'ia '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
    end
    object edtpFCPST70: TEdit
      Left = 181
      Top = 315
      Width = 158
      Height = 21
      Hint = 'Percentual do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
    end
    object edtvFCPST70: TEdit
      Left = 352
      Top = 315
      Width = 158
      Height = 21
      Hint = 'Valor do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
  end
end
