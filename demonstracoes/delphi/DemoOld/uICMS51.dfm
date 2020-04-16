object frmICMS51: TfrmICMS51
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS 51'
  ClientHeight = 350
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
  object pnlICMS51: TPanel
    Left = 0
    Top = 0
    Width = 540
    Height = 350
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMS51: TLabel
      Left = 12
      Top = 55
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSTICMS51: TLabel
      Left = 12
      Top = 12
      Width = 21
      Height = 13
      Caption = 'CST'
    end
    object lblModalidadeICMS51: TLabel
      Left = 367
      Top = 55
      Width = 55
      Height = 13
      Caption = 'Modalidade'
    end
    object lblValorBCICMS51: TLabel
      Left = 12
      Top = 148
      Width = 100
      Height = 13
      Caption = 'Valor da BC do ICMS'
    end
    object lblAliquotaICMS51: TLabel
      Left = 188
      Top = 148
      Width = 94
      Height = 13
      Caption = 'Al'#237'quota do imposto'
    end
    object lblvICMS51: TLabel
      Left = 367
      Top = 198
      Width = 68
      Height = 13
      Caption = 'Valor do ICMS'
    end
    object lblpRedBC51: TLabel
      Left = 12
      Top = 101
      Width = 145
      Height = 13
      Caption = 'Percentual da Redu'#231#227'o de BC'
    end
    object lblvICMSOp51: TLabel
      Left = 367
      Top = 148
      Width = 118
      Height = 13
      Caption = 'Valor ICMS da Opera'#231#227'o'
    end
    object lblpDif51: TLabel
      Left = 12
      Top = 198
      Width = 120
      Height = 13
      Caption = 'Percentual do diferimento'
    end
    object lblvICMSDif51: TLabel
      Left = 188
      Top = 198
      Width = 105
      Height = 13
      Caption = 'Valor do ICMS diferido'
    end
    object lblvBCFCP51: TLabel
      Left = 12
      Top = 246
      Width = 94
      Height = 13
      Caption = 'Valor da BC do FCP'
    end
    object lblpFCP51: TLabel
      Left = 188
      Top = 246
      Width = 89
      Height = 13
      Caption = 'Percentual do FCP'
    end
    object lblvFCP51: TLabel
      Left = 367
      Top = 246
      Width = 62
      Height = 13
      Caption = 'Valor do FCP'
    end
    object cbOrigemICMS51: TComboBox
      Left = 12
      Top = 71
      Width = 334
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
    object edtCSTICMS51: TEdit
      Left = 12
      Top = 28
      Width = 40
      Height = 21
      TabOrder = 0
    end
    object cbModalidadeICMS51: TComboBox
      Left = 367
      Top = 71
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
    object edtValorBCICMS51: TEdit
      Left = 12
      Top = 164
      Width = 158
      Height = 21
      TabOrder = 4
    end
    object edtAliquotaICMS51: TEdit
      Left = 188
      Top = 164
      Width = 158
      Height = 21
      TabOrder = 5
    end
    object edtvICMS51: TEdit
      Left = 367
      Top = 214
      Width = 158
      Height = 21
      TabOrder = 9
    end
    object btnEnviarICMS51: TButton
      Left = 450
      Top = 305
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 13
      OnClick = btnEnviarICMS51Click
    end
    object edtpRedBC51: TEdit
      Left = 12
      Top = 117
      Width = 158
      Height = 21
      TabOrder = 3
    end
    object edtvICMSOp51: TEdit
      Left = 367
      Top = 164
      Width = 158
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object edtpDif51: TEdit
      Left = 12
      Top = 214
      Width = 158
      Height = 21
      Enabled = False
      TabOrder = 7
    end
    object edtvICMSDif51: TEdit
      Left = 188
      Top = 214
      Width = 158
      Height = 21
      Enabled = False
      TabOrder = 8
    end
    object edtvBCFCP51: TEdit
      Left = 12
      Top = 262
      Width = 158
      Height = 21
      Hint = 'Valor da Base de C'#225'lculo do FCP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object edtpFCP51: TEdit
      Left = 188
      Top = 262
      Width = 158
      Height = 21
      Hint = 'Percentual do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object edtvFCP51: TEdit
      Left = 367
      Top = 262
      Width = 158
      Height = 21
      Hint = 'Valor do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
  end
end
