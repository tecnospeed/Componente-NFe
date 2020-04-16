object frmICMS60: TfrmICMS60
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS 60'
  ClientHeight = 240
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
  object pnlICMS60: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 240
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMS60: TLabel
      Left = 12
      Top = 52
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSTICMS60: TLabel
      Left = 12
      Top = 9
      Width = 21
      Height = 13
      Caption = 'CST'
    end
    object lblvBCSTRet60: TLabel
      Left = 12
      Top = 97
      Width = 146
      Height = 13
      Caption = 'Valor da BC do ICMS ST retido'
    end
    object lblvICMSSTRet60: TLabel
      Left = 371
      Top = 97
      Width = 114
      Height = 13
      Caption = 'Valor do ICMS ST retido'
    end
    object lblvBCFCPSTRet60: TLabel
      Left = 12
      Top = 144
      Width = 163
      Height = 13
      Caption = 'Valor da BC do FCP Retido por ST'
    end
    object lblpFCPSTRet60: TLabel
      Left = 192
      Top = 144
      Width = 158
      Height = 13
      Caption = 'Percentual do FCP Retido por ST'
    end
    object lblvFCPSTRet60: TLabel
      Left = 371
      Top = 144
      Width = 131
      Height = 13
      Caption = 'Valor do FCP Retido por ST'
    end
    object lblpST60: TLabel
      Left = 192
      Top = 97
      Width = 155
      Height = 13
      Caption = 'Al'#237'q. suportada Consumidor Final'
    end
    object cbOrigemICMS60: TComboBox
      Left = 12
      Top = 68
      Width = 517
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
    object edtCSTICMS60: TEdit
      Left = 12
      Top = 25
      Width = 33
      Height = 21
      TabOrder = 0
    end
    object edtvBCSTRet60: TEdit
      Left = 12
      Top = 113
      Width = 161
      Height = 21
      TabOrder = 2
    end
    object btnEnviarICMS60: TButton
      Left = 454
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 8
      OnClick = btnEnviarICMS60Click
    end
    object edtvICMSSTRet60: TEdit
      Left = 371
      Top = 113
      Width = 158
      Height = 21
      TabOrder = 4
    end
    object edtvBCFCPSTRet60: TEdit
      Left = 12
      Top = 160
      Width = 161
      Height = 21
      Hint = 'Valor da Base de C'#225'lculo do FCP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object edtpFCPSTRet60: TEdit
      Left = 192
      Top = 160
      Width = 158
      Height = 21
      Hint = 'Percentual do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object edtvFCPSTRet60: TEdit
      Left = 371
      Top = 160
      Width = 158
      Height = 21
      Hint = 'Valor do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object edtpST60: TEdit
      Left = 192
      Top = 113
      Width = 158
      Height = 21
      TabOrder = 3
    end
  end
end
