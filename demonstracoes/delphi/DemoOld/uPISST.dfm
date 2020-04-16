object frmPISST: TfrmPISST
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'PIS Substitui'#231#227'o Tribut'#225'ria'
  ClientHeight = 201
  ClientWidth = 341
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
  object pnlPISST: TPanel
    Left = -4
    Top = 0
    Width = 345
    Height = 201
    Color = clWhite
    TabOrder = 0
    object lblvBCPISST: TLabel
      Left = 22
      Top = 58
      Width = 104
      Height = 13
      Caption = 'Valor Base de C'#225'lculo'
    end
    object lblpPISST: TLabel
      Left = 190
      Top = 58
      Width = 99
      Height = 13
      Caption = 'Al'#237'quota (percentual)'
    end
    object lblqBCProdPISST: TLabel
      Left = 22
      Top = 106
      Width = 97
      Height = 13
      Caption = 'Quantidade Vendida'
    end
    object lblvAliqProdPISST: TLabel
      Left = 190
      Top = 105
      Width = 71
      Height = 13
      Caption = 'Al'#237'quota (reais)'
    end
    object lblvPISST: TLabel
      Left = 22
      Top = 154
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object edtvBCPISST: TEdit
      Left = 22
      Top = 74
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object edtpPISST: TEdit
      Left = 190
      Top = 74
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
    object btnEnviarPISST: TButton
      Left = 259
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 6
      OnClick = btnEnviarPISSTClick
    end
    object edtqBCProdPISST: TEdit
      Left = 22
      Top = 122
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object edtvAliqProdPISST: TEdit
      Left = 190
      Top = 122
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edtvPISST: TEdit
      Left = 22
      Top = 170
      Width = 145
      Height = 21
      TabOrder = 5
    end
    object rgCalcPISST: TRadioGroup
      Left = 22
      Top = 8
      Width = 314
      Height = 41
      Caption = 'C'#225'lculo do PIS ST'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Percentual'
        'Valor')
      TabOrder = 0
      OnClick = rgCalcPISSTClick
    end
  end
end
