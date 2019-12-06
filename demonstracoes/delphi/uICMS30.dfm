object frmICMS30: TfrmICMS30
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS 30'
  ClientHeight = 342
  ClientWidth = 541
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
  object pnlICMS30: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 342
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMS30: TLabel
      Left = 8
      Top = 55
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSTICMS30: TLabel
      Left = 8
      Top = 12
      Width = 21
      Height = 13
      Caption = 'CST'
    end
    object lblModBCSTICMS30: TLabel
      Left = 367
      Top = 55
      Width = 118
      Height = 13
      Caption = 'Modalidade BC ICMS ST'
    end
    object lblpMVASTICMS30: TLabel
      Left = 8
      Top = 101
      Width = 152
      Height = 13
      Caption = 'Percentual da margem ICMS ST'
    end
    object lblpREDBCSTICMS30: TLabel
      Left = 188
      Top = 101
      Width = 158
      Height = 13
      Caption = 'Percentual Redu'#231#227'o BC ICMSST'
    end
    object lblvBCSTICMS30: TLabel
      Left = 8
      Top = 149
      Width = 102
      Height = 13
      Caption = 'Valor da BC ICMS ST'
    end
    object lblpICMSSTICMS30: TLabel
      Left = 188
      Top = 149
      Width = 86
      Height = 13
      Caption = 'Al'#237'quota ICMS ST'
    end
    object lblvICMSSTICMS30: TLabel
      Left = 367
      Top = 149
      Width = 85
      Height = 13
      Caption = 'Valor do ICMS ST'
    end
    object lblValorICMSDeson: TLabel
      Left = 8
      Top = 236
      Width = 114
      Height = 13
      Caption = 'Valor ICMS Desonerado'
    end
    object lblMotDesICMS30: TLabel
      Left = 188
      Top = 236
      Width = 112
      Height = 13
      Caption = 'Motivo da desonera'#231#227'o'
    end
    object lblvBCFCPST30: TLabel
      Left = 8
      Top = 190
      Width = 111
      Height = 13
      Caption = 'Valor da BC do FCP ST'
    end
    object lblpFCPST30: TLabel
      Left = 188
      Top = 190
      Width = 106
      Height = 13
      Caption = 'Percentual do FCP ST'
    end
    object lblvFCPST30: TLabel
      Left = 367
      Top = 190
      Width = 79
      Height = 13
      Caption = 'Valor do FCP ST'
    end
    object cbOrigemICMS30: TComboBox
      Left = 8
      Top = 71
      Width = 338
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
    object edtCSTICMS30: TEdit
      Left = 8
      Top = 28
      Width = 32
      Height = 21
      TabOrder = 0
    end
    object cbModSTICMS30: TComboBox
      Left = 367
      Top = 71
      Width = 158
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      Items.Strings = (
        'Pre'#231'o tabelado ou m'#225'ximo sugerido'
        'Lista Negativa'
        'Lista Positiva'
        'Lista Neutra'
        'Margem Valor Agregado'
        'Pauta')
    end
    object edtpMVASTICMS30: TEdit
      Left = 8
      Top = 117
      Width = 158
      Height = 21
      Hint = 'Percentual da margem de valor Adicionado do ICMS ST '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object edtpRedBCSTICMS30: TEdit
      Left = 188
      Top = 117
      Width = 158
      Height = 21
      TabOrder = 4
    end
    object edtvBCSTIMS30: TEdit
      Left = 8
      Top = 164
      Width = 158
      Height = 21
      TabOrder = 5
    end
    object edtpICMSSTICMS30: TEdit
      Left = 188
      Top = 164
      Width = 158
      Height = 21
      TabOrder = 6
    end
    object edtvICMSSTICMS30: TEdit
      Left = 367
      Top = 164
      Width = 158
      Height = 21
      TabOrder = 7
    end
    object btnICMS30: TButton
      Left = 450
      Top = 296
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 13
      OnClick = btnICMS30Click
    end
    object edtValorICMS30Deson: TEdit
      Left = 8
      Top = 252
      Width = 158
      Height = 21
      Enabled = False
      TabOrder = 11
    end
    object cbbMotDesICMS30: TComboBox
      Left = 188
      Top = 252
      Width = 337
      Height = 21
      Style = csDropDownList
      Enabled = False
      TabOrder = 12
      Items.Strings = (
        'Utilit'#225'rios e Motocicletas das '#193'reas de Livre Com'#233'rcio'
        'SUFRAMA'
        'Outros')
    end
    object edtvBCFCPST30: TEdit
      Left = 8
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
    object edtpFCPST30: TEdit
      Left = 188
      Top = 206
      Width = 158
      Height = 21
      Hint = 'Percentual do FCP retido por Substitui'#231#227'o Tribut'#225'ria '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object edtvFCPST30: TEdit
      Left = 367
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
