object frmICMSSN500: TfrmICMSSN500
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS SN 500'
  ClientHeight = 238
  ClientWidth = 550
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
  object pnlICMSSN500: TPanel
    Left = 0
    Top = 0
    Width = 550
    Height = 238
    Align = alClient
    Color = clWhite
    TabOrder = 0
    ExplicitTop = 8
    object lblOrigemICMSSN500: TLabel
      Left = 15
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSOSNICMSSN500: TLabel
      Left = 15
      Top = 13
      Width = 37
      Height = 13
      Caption = 'CSOSN'
    end
    object lblvBCSTRetICMSSN500: TLabel
      Left = 15
      Top = 99
      Width = 121
      Height = 13
      Caption = 'Valor BC ICMS ST Retido'
    end
    object lblvICMSSTRetICMSSN500: TLabel
      Left = 371
      Top = 99
      Width = 119
      Height = 13
      Caption = 'Valor do ICMS ST Retido'
    end
    object lblvBCFCPSTRet500: TLabel
      Left = 15
      Top = 146
      Width = 163
      Height = 13
      Caption = 'Valor da BC do FCP Retido por ST'
    end
    object lblpFCPSTRet500: TLabel
      Left = 192
      Top = 146
      Width = 158
      Height = 13
      Caption = 'Percentual do FCP Retido por ST'
    end
    object lblvFCPSTRet500: TLabel
      Left = 371
      Top = 146
      Width = 131
      Height = 13
      Caption = 'Valor do FCP Retido por ST'
    end
    object lblpST60: TLabel
      Left = 192
      Top = 99
      Width = 155
      Height = 13
      Caption = 'Al'#237'q. suportada Consumidor Final'
    end
    object cbOrigemICMSSN500: TComboBox
      Left = 15
      Top = 72
      Width = 514
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
    object edtCSOSN500: TEdit
      Left = 15
      Top = 29
      Width = 40
      Height = 21
      TabOrder = 0
    end
    object btnEnviarICMSSN500: TButton
      Left = 454
      Top = 201
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 8
      OnClick = btnEnviarICMSSN500Click
    end
    object edtvBCSTRet500: TEdit
      Left = 15
      Top = 115
      Width = 163
      Height = 21
      TabOrder = 2
    end
    object edtvICMSSTRet500: TEdit
      Left = 371
      Top = 115
      Width = 158
      Height = 21
      TabOrder = 4
    end
    object edtvBCFCPSTRet500: TEdit
      Left = 15
      Top = 162
      Width = 163
      Height = 21
      Hint = 'Valor da Base de C'#225'lculo do FCP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object edtpFCPSTRet500: TEdit
      Left = 192
      Top = 162
      Width = 162
      Height = 21
      Hint = 'Percentual do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object edtvFCPSTRet500: TEdit
      Left = 371
      Top = 162
      Width = 158
      Height = 21
      Hint = 'Valor do Fundo de Combate '#224' Pobreza (FCP) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object edtpST500: TEdit
      Left = 192
      Top = 115
      Width = 162
      Height = 21
      TabOrder = 3
    end
  end
end
