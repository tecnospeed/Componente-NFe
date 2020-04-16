object frmCOFINSST: TfrmCOFINSST
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'COFINS Substitui'#231#227'o Tribut'#225'ria'
  ClientHeight = 202
  ClientWidth = 339
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
  object pnlCOFINSST: TPanel
    Left = -6
    Top = 0
    Width = 345
    Height = 201
    Color = clWhite
    TabOrder = 0
    object lblvBCCOFINSST: TLabel
      Left = 22
      Top = 56
      Width = 104
      Height = 13
      Caption = 'Valor Base de C'#225'lculo'
    end
    object lblpCOFINSST: TLabel
      Left = 190
      Top = 56
      Width = 99
      Height = 13
      Caption = 'Al'#237'quota (percentual)'
    end
    object lblvCOFINSST: TLabel
      Left = 22
      Top = 152
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblqBCProdCOFINSST: TLabel
      Left = 21
      Top = 104
      Width = 97
      Height = 13
      Caption = 'Quantidade Vendida'
    end
    object lblvAliqProdCOFINSST: TLabel
      Left = 190
      Top = 104
      Width = 71
      Height = 13
      Caption = 'Al'#237'quota (reais)'
    end
    object edtvBCCOFINSST: TEdit
      Left = 22
      Top = 72
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object edtpCOFINSST: TEdit
      Left = 190
      Top = 72
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
    object btnEnviarCOFINSST: TButton
      Left = 259
      Top = 166
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 6
      OnClick = btnEnviarCOFINSSTClick
    end
    object edtvCOFINSST: TEdit
      Left = 22
      Top = 168
      Width = 145
      Height = 21
      TabOrder = 5
    end
    object edtqBCProdCOFINSST: TEdit
      Left = 22
      Top = 120
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object edtvAliqProdCOFINSST: TEdit
      Left = 190
      Top = 120
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object rgCalcCOFINSST: TRadioGroup
      Left = 22
      Top = 8
      Width = 314
      Height = 41
      Caption = 'C'#225'lculo da COFINS ST'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Percentual'
        'Valor')
      TabOrder = 0
      OnClick = rgCalcCOFINSSTClick
    end
  end
end
