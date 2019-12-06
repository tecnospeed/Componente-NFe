object frmICMSSN202: TfrmICMSSN202
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS SN 202'
  ClientHeight = 285
  ClientWidth = 535
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
  object pnlICMSSN202: TPanel
    Left = 0
    Top = 0
    Width = 535
    Height = 285
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMSSN202: TLabel
      Left = 12
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSOSNICMSSN202: TLabel
      Left = 12
      Top = 13
      Width = 37
      Height = 13
      Caption = 'CSOSN'
    end
    object lblmodBCSTICMSSN202: TLabel
      Left = 361
      Top = 58
      Width = 133
      Height = 13
      Caption = 'Modalidade da BC ICMS ST'
    end
    object lblpMVAST202: TLabel
      Left = 12
      Top = 101
      Width = 97
      Height = 13
      Caption = 'Percentual ICMS ST'
    end
    object lblRedBCST202: TLabel
      Left = 185
      Top = 101
      Width = 140
      Height = 13
      Caption = 'Percentual Red. BC ICMS ST'
    end
    object lblvBCSTICMSSN202: TLabel
      Left = 12
      Top = 144
      Width = 117
      Height = 13
      Caption = 'Valor da BC do ICMS ST'
    end
    object lblpICMSST202: TLabel
      Left = 185
      Top = 144
      Width = 155
      Height = 13
      Caption = 'Al'#237'quota do imposto do ICMS ST'
    end
    object lblvICMSSTICMSSN202: TLabel
      Left = 361
      Top = 144
      Width = 85
      Height = 13
      Caption = 'Valor do ICMS ST'
    end
    object lblvBCFCPST201: TLabel
      Left = 12
      Top = 190
      Width = 111
      Height = 13
      Caption = 'Valor da BC do FCP ST'
    end
    object lblpFCPST201: TLabel
      Left = 185
      Top = 190
      Width = 106
      Height = 13
      Caption = 'Percentual do FCP ST'
    end
    object lblvFCPST201: TLabel
      Left = 361
      Top = 190
      Width = 79
      Height = 13
      Caption = 'Valor do FCP ST'
    end
    object cbOrigemICMSSN202: TComboBox
      Left = 12
      Top = 72
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
    object edtCSOSNICMSSN202: TEdit
      Left = 12
      Top = 29
      Width = 45
      Height = 21
      TabOrder = 0
    end
    object btnEnviarICMSSN202: TButton
      Left = 444
      Top = 243
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 11
      OnClick = btnEnviarICMSSN202Click
    end
    object edtpMVAST202: TEdit
      Left = 12
      Top = 117
      Width = 158
      Height = 21
      TabOrder = 3
    end
    object edtpRedBCST202: TEdit
      Left = 185
      Top = 117
      Width = 158
      Height = 21
      TabOrder = 4
    end
    object edtvBCST202: TEdit
      Left = 12
      Top = 160
      Width = 158
      Height = 21
      TabOrder = 5
    end
    object edtpICMSST202: TEdit
      Left = 185
      Top = 160
      Width = 158
      Height = 21
      TabOrder = 6
    end
    object edtvICMSST202: TEdit
      Left = 361
      Top = 160
      Width = 158
      Height = 21
      TabOrder = 7
    end
    object cbmodBCST202: TComboBox
      Left = 361
      Top = 72
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
    object edtvBCFCPST202: TEdit
      Left = 12
      Top = 206
      Width = 158
      Height = 21
      Hint = 
        'Valor da Base de C'#225'lculo do FCP retido por Substitui'#231#227'o Tribut'#225'r' +
        'ia '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object edtpFCPST202: TEdit
      Left = 185
      Top = 206
      Width = 158
      Height = 21
      Hint = 'Percentual do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object edtvFCPST202: TEdit
      Left = 361
      Top = 206
      Width = 158
      Height = 21
      Hint = 'Valor do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
  end
end
