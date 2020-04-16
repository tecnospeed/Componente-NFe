object frmICMS10: TfrmICMS10
  Left = 580
  Top = 250
  BorderIcons = [biMinimize]
  BorderStyle = bsSingle
  Caption = 'ICMS 10'
  ClientHeight = 382
  ClientWidth = 545
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
  object pnlICMS10: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 382
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMS10: TLabel
      Left = 8
      Top = 52
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSTICMS10: TLabel
      Left = 8
      Top = 9
      Width = 21
      Height = 13
      Caption = 'CST'
    end
    object lblModalidadeICMS10: TLabel
      Left = 367
      Top = 52
      Width = 55
      Height = 13
      Caption = 'Modalidade'
    end
    object lblValorBCICMS10: TLabel
      Left = 8
      Top = 97
      Width = 100
      Height = 13
      Caption = 'Valor da BC do ICMS'
    end
    object lblAliquotaICMS10: TLabel
      Left = 188
      Top = 97
      Width = 40
      Height = 13
      Caption = 'Al'#237'quota'
    end
    object lblValorICMS10: TLabel
      Left = 367
      Top = 97
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblModBCSTICMS10: TLabel
      Left = 8
      Top = 143
      Width = 118
      Height = 13
      Caption = 'Modalidade BC ICMS ST'
    end
    object lblpMVASTICMS10: TLabel
      Left = 188
      Top = 143
      Width = 152
      Height = 13
      Caption = 'Percentual da margem ICMS ST'
    end
    object lblpREDBCSTICMS10: TLabel
      Left = 367
      Top = 143
      Width = 158
      Height = 13
      Caption = 'Percentual Redu'#231#227'o BC ICMSST'
    end
    object lblvBCSTICMS10: TLabel
      Left = 8
      Top = 192
      Width = 102
      Height = 13
      Caption = 'Valor da BC ICMS ST'
    end
    object lblpICMSSTICMS10: TLabel
      Left = 188
      Top = 192
      Width = 86
      Height = 13
      Caption = 'Al'#237'quota ICMS ST'
    end
    object lblvICMSSTICMS10: TLabel
      Left = 367
      Top = 192
      Width = 85
      Height = 13
      Caption = 'Valor do ICMS ST'
    end
    object lblvBCFCP10: TLabel
      Left = 8
      Top = 241
      Width = 94
      Height = 13
      Caption = 'Valor da BC do FCP'
    end
    object lblpFCP10: TLabel
      Left = 188
      Top = 241
      Width = 89
      Height = 13
      Caption = 'Percentual do FCP'
    end
    object lblvFCP10: TLabel
      Left = 367
      Top = 241
      Width = 62
      Height = 13
      Caption = 'Valor do FCP'
    end
    object lblvBCFCPST10: TLabel
      Left = 8
      Top = 289
      Width = 111
      Height = 13
      Caption = 'Valor da BC do FCP ST'
    end
    object lblpFCPST10: TLabel
      Left = 188
      Top = 289
      Width = 106
      Height = 13
      Caption = 'Percentual do FCP ST'
    end
    object lblvFCPST10: TLabel
      Left = 367
      Top = 289
      Width = 79
      Height = 13
      Caption = 'Valor do FCP ST'
    end
    object cbOrigemICMS10: TComboBox
      Left = 8
      Top = 68
      Width = 339
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
    object edtCSTICMS10: TEdit
      Left = 8
      Top = 25
      Width = 33
      Height = 21
      TabOrder = 0
    end
    object cbModalidadeICMS10: TComboBox
      Left = 367
      Top = 68
      Width = 159
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
    object edtValorBCICMS10: TEdit
      Left = 8
      Top = 113
      Width = 159
      Height = 21
      TabOrder = 3
    end
    object edtAliquotaICMS10: TEdit
      Left = 188
      Top = 113
      Width = 159
      Height = 21
      TabOrder = 4
    end
    object edtValorICMS10: TEdit
      Left = 367
      Top = 113
      Width = 159
      Height = 21
      TabOrder = 5
    end
    object cbModSTICMS10: TComboBox
      Left = 8
      Top = 159
      Width = 159
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
    object edtpMVASTICMS10: TEdit
      Left = 188
      Top = 159
      Width = 159
      Height = 21
      TabOrder = 7
    end
    object edtpRedBCSTICMS10: TEdit
      Left = 367
      Top = 159
      Width = 159
      Height = 21
      TabOrder = 8
    end
    object edtvBCSTIMS10: TEdit
      Left = 8
      Top = 208
      Width = 158
      Height = 21
      TabOrder = 9
    end
    object edtpICMSSTICMS10: TEdit
      Left = 188
      Top = 207
      Width = 159
      Height = 21
      TabOrder = 10
    end
    object edtvICMSSTICMS10: TEdit
      Left = 367
      Top = 207
      Width = 159
      Height = 21
      TabOrder = 11
    end
    object btnICMS10: TButton
      Left = 451
      Top = 341
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 18
      OnClick = btnICMS10Click
    end
    object edtvBCFCP10: TEdit
      Left = 8
      Top = 257
      Width = 158
      Height = 21
      Hint = 'Valor da Base de C'#225'lculo do FCP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object edtpFCP10: TEdit
      Left = 188
      Top = 257
      Width = 158
      Height = 21
      Hint = 'Percentual do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object edtvFCP10: TEdit
      Left = 367
      Top = 257
      Width = 158
      Height = 21
      Hint = 'Valor do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
    end
    object edtvBCFCPST10: TEdit
      Left = 8
      Top = 305
      Width = 158
      Height = 21
      Hint = 
        'Valor da Base de C'#225'lculo do FCP retido por Substitui'#231#227'o Tribut'#225'r' +
        'ia '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
    end
    object edtpFCPST10: TEdit
      Left = 188
      Top = 305
      Width = 158
      Height = 21
      Hint = 'Percentual do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
    end
    object edtvFCPST10: TEdit
      Left = 367
      Top = 305
      Width = 158
      Height = 21
      Hint = 'Valor do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
    end
  end
end
