object frmII: TfrmII
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Imposto de Importa'#231#227'o'
  ClientHeight = 145
  ClientWidth = 319
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
  object pnlII: TPanel
    Left = -6
    Top = 0
    Width = 325
    Height = 145
    Color = clWhite
    TabOrder = 0
    object lblvBCII: TLabel
      Left = 16
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Valor da BC'
    end
    object lblvDespAdu: TLabel
      Left = 173
      Top = 16
      Width = 128
      Height = 13
      Caption = 'Valor das desp. aduaneiras'
    end
    object lblvII: TLabel
      Left = 16
      Top = 64
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblvIOF: TLabel
      Left = 173
      Top = 64
      Width = 148
      Height = 13
      Caption = 'Valor do Imposto sobre Op. Fin.'
    end
    object Button1: TButton
      Left = 360
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 5
    end
    object btnEnviarII: TButton
      Left = 242
      Top = 110
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 4
      OnClick = btnEnviarIIClick
    end
    object edtvBCII: TEdit
      Left = 16
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object edtvDespAdu: TEdit
      Left = 173
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object edtvII: TEdit
      Left = 16
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object edtvIOFII: TEdit
      Left = 173
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 3
    end
  end
end
