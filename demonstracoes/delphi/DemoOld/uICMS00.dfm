object frmICMS00: TfrmICMS00
  Left = 580
  Top = 250
  BorderIcons = [biMinimize]
  BorderStyle = bsSingle
  Caption = 'ICMS 00'
  ClientHeight = 214
  ClientWidth = 524
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
  object pnlICMS00: TPanel
    Left = 0
    Top = 0
    Width = 524
    Height = 214
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMS00: TLabel
      Left = 10
      Top = 50
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSTICMS00: TLabel
      Left = 10
      Top = 6
      Width = 21
      Height = 13
      Caption = 'CST'
    end
    object lblModalidadeICMS00: TLabel
      Left = 347
      Top = 50
      Width = 55
      Height = 13
      Caption = 'Modalidade'
    end
    object lblValorBCICMS00: TLabel
      Left = 10
      Top = 94
      Width = 100
      Height = 13
      Caption = 'Valor da BC do ICMS'
    end
    object lblAliquotaICMS00: TLabel
      Left = 180
      Top = 94
      Width = 40
      Height = 13
      Caption = 'Al'#237'quota'
    end
    object lblValorICMS00: TLabel
      Left = 347
      Top = 94
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblpFCP00: TLabel
      Left = 10
      Top = 139
      Width = 89
      Height = 13
      Caption = 'Percentual do FCP'
    end
    object lblvFCP00: TLabel
      Left = 180
      Top = 139
      Width = 62
      Height = 13
      Caption = 'Valor do FCP'
    end
    object cbOrigemICMS00: TComboBox
      Left = 10
      Top = 66
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
    object edtCSTICMS00: TEdit
      Left = 10
      Top = 22
      Width = 33
      Height = 21
      TabOrder = 0
    end
    object cbModalidadeICMS00: TComboBox
      Left = 347
      Top = 66
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
    object edtValorBCICMS00: TEdit
      Left = 10
      Top = 110
      Width = 158
      Height = 21
      TabOrder = 3
    end
    object edtAliquotaICMS00: TEdit
      Left = 180
      Top = 110
      Width = 158
      Height = 21
      TabOrder = 4
    end
    object edtValorICMS00: TEdit
      Left = 347
      Top = 110
      Width = 158
      Height = 21
      TabOrder = 5
    end
    object btnEnviarICMS00: TButton
      Left = 430
      Top = 177
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 8
      OnClick = btnEnviarICMS00Click
    end
    object edtpFCP00: TEdit
      Left = 10
      Top = 156
      Width = 158
      Height = 21
      Hint = 'Percentual do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object edtvFCP00: TEdit
      Left = 180
      Top = 156
      Width = 158
      Height = 21
      Hint = 'Valor do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
  end
end
