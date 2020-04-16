object frmICMSST: TfrmICMSST
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS ST'
  ClientHeight = 193
  ClientWidth = 330
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
  object pnlICMSST: TPanel
    Left = -16
    Top = 0
    Width = 345
    Height = 193
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMSST: TLabel
      Left = 24
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSTICMSST: TLabel
      Left = 192
      Top = 8
      Width = 95
      Height = 13
      Caption = 'Tributa'#231#227'o do ICMS'
    end
    object lblvBCSTRetICMSST: TLabel
      Left = 24
      Top = 64
      Width = 117
      Height = 13
      Caption = 'Valor da BC do ICMS ST'
    end
    object lblvICMSSTRetICMSST: TLabel
      Left = 191
      Top = 64
      Width = 85
      Height = 13
      Caption = 'Valor do ICMS ST'
    end
    object lblvBCSTDestICMSST: TLabel
      Left = 24
      Top = 112
      Width = 145
      Height = 13
      Caption = 'Valor da BC do ICMS ST Dest.'
    end
    object lblvICMSSTDestICMSST: TLabel
      Left = 191
      Top = 112
      Width = 113
      Height = 13
      Caption = 'Valor do ICMS ST Dest.'
    end
    object cbOrigemICMSST: TComboBox
      Left = 24
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 0
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
    object edtCSTICMSST: TEdit
      Left = 192
      Top = 24
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object edtvBCSTRetICMSST: TEdit
      Left = 24
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 360
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 7
    end
    object btnEnviarICMSST: TButton
      Left = 261
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 6
      OnClick = btnEnviarICMSSTClick
    end
    object edtvICMSSTRetICMSST: TEdit
      Left = 191
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edtvBCSTDestICMSST: TEdit
      Left = 24
      Top = 128
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object edtvICMSSTDestICMSST: TEdit
      Left = 191
      Top = 128
      Width = 145
      Height = 21
      TabOrder = 5
    end
  end
end
