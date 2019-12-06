object frmICMS20: TfrmICMS20
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS 20'
  ClientHeight = 320
  ClientWidth = 548
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
  object pnlICMS020: TPanel
    Left = 0
    Top = 0
    Width = 548
    Height = 320
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMS20: TLabel
      Left = 11
      Top = 52
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSTICMS20: TLabel
      Left = 11
      Top = 8
      Width = 21
      Height = 13
      Caption = 'CST'
    end
    object lblModalidadeICMS20: TLabel
      Left = 370
      Top = 52
      Width = 55
      Height = 13
      Caption = 'Modalidade'
    end
    object lblValorBCICMS20: TLabel
      Left = 11
      Top = 139
      Width = 100
      Height = 13
      Caption = 'Valor da BC do ICMS'
    end
    object lblAliquotaICMS20: TLabel
      Left = 191
      Top = 138
      Width = 94
      Height = 13
      Caption = 'Al'#237'quota do imposto'
    end
    object lblValorICMS20: TLabel
      Left = 370
      Top = 138
      Width = 68
      Height = 13
      Caption = 'Valor do ICMS'
    end
    object lblpRedBCICMS20: TLabel
      Left = 11
      Top = 97
      Width = 145
      Height = 13
      Caption = 'Percentual de Redu'#231#227'o de BC'
    end
    object lblMotDesICMS20: TLabel
      Left = 191
      Top = 230
      Width = 112
      Height = 13
      Caption = 'Motivo da desonera'#231#227'o'
    end
    object lblValorICMSDeson: TLabel
      Left = 11
      Top = 229
      Width = 114
      Height = 13
      Caption = 'Valor ICMS Desonerado'
    end
    object lblvBCFCP20: TLabel
      Left = 11
      Top = 184
      Width = 94
      Height = 13
      Caption = 'Valor da BC do FCP'
    end
    object lblpFCP20: TLabel
      Left = 191
      Top = 184
      Width = 89
      Height = 13
      Caption = 'Percentual do FCP'
    end
    object lblvFCP20: TLabel
      Left = 370
      Top = 184
      Width = 62
      Height = 13
      Caption = 'Valor do FCP'
    end
    object cbOrigemICMS20: TComboBox
      Left = 11
      Top = 68
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
    object edtCSTICMS20: TEdit
      Left = 11
      Top = 24
      Width = 33
      Height = 21
      TabOrder = 0
    end
    object cbModalidadeICMS20: TComboBox
      Left = 370
      Top = 68
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
    object edtValorBCICMS20: TEdit
      Left = 11
      Top = 155
      Width = 158
      Height = 21
      TabOrder = 4
    end
    object edtAliquotaICMS20: TEdit
      Left = 191
      Top = 154
      Width = 158
      Height = 21
      TabOrder = 5
    end
    object edtValorICMS20: TEdit
      Left = 370
      Top = 154
      Width = 158
      Height = 21
      TabOrder = 6
    end
    object btnEnviarICMS20: TButton
      Left = 453
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 12
      OnClick = btnEnviarICMS20Click
    end
    object edtpRedBCICMS20: TEdit
      Left = 11
      Top = 112
      Width = 158
      Height = 21
      TabOrder = 3
    end
    object cbMotDesICMS20: TComboBox
      Left = 191
      Top = 245
      Width = 337
      Height = 21
      Style = csDropDownList
      Enabled = False
      TabOrder = 11
      Items.Strings = (
        'Uso na agropecu'#225'ria'
        'Outros'
        #211'rg'#227'o de fomento e desenvolvimento agropecu'#225'rio')
    end
    object edtValorICMS20Deson: TEdit
      Left = 11
      Top = 245
      Width = 158
      Height = 21
      Enabled = False
      TabOrder = 10
    end
    object edtvBCFCP20: TEdit
      Left = 11
      Top = 200
      Width = 158
      Height = 21
      Hint = 'Valor da Base de C'#225'lculo do FCP'
      ParentColor = True
      TabOrder = 7
    end
    object edtpFCP20: TEdit
      Left = 191
      Top = 200
      Width = 158
      Height = 21
      Hint = 'Percentual do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object edtvFCP20: TEdit
      Left = 370
      Top = 200
      Width = 158
      Height = 21
      Hint = 'Valor do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
  end
end
