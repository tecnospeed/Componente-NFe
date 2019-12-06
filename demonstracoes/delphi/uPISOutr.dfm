object frmPISOutr: TfrmPISOutr
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'PIS Outras Opera'#231#245'es'
  ClientHeight = 233
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
  object pnlPISOutr: TPanel
    Left = -6
    Top = 0
    Width = 345
    Height = 233
    Color = clWhite
    TabOrder = 0
    object lblCSTPISOutr: TLabel
      Left = 22
      Top = 60
      Width = 87
      Height = 13
      Caption = 'C'#243'd. Sit. Tribut'#225'ria'
    end
    object lblvBCPISOutr: TLabel
      Left = 22
      Top = 108
      Width = 104
      Height = 13
      Caption = 'Valor Base de C'#225'lculo'
    end
    object lblpPISPISOutr: TLabel
      Left = 190
      Top = 108
      Width = 99
      Height = 13
      Caption = 'Al'#237'quota (percentual)'
    end
    object lblqBCProdPISOutr: TLabel
      Left = 22
      Top = 156
      Width = 97
      Height = 13
      Caption = 'Quantidade Vendida'
    end
    object lblvAliqProdPISOutr: TLabel
      Left = 190
      Top = 155
      Width = 71
      Height = 13
      Caption = 'Al'#237'quota (reais)'
    end
    object lblvPISOutr: TLabel
      Left = 190
      Top = 60
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object cbCSTPISOutr: TComboBox
      Left = 22
      Top = 76
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'Outras Opera'#231#245'es'
      Items.Strings = (
        'Outras Opera'#231#245'es')
    end
    object edtvBCPISOutr: TEdit
      Left = 22
      Top = 124
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edtpPISPISOutr: TEdit
      Left = 190
      Top = 124
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object Button1: TButton
      Left = 360
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 8
    end
    object btnEnviarPISOutr: TButton
      Left = 259
      Top = 204
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 7
      OnClick = btnEnviarPISOutrClick
    end
    object edtqBCProdPISOutr: TEdit
      Left = 22
      Top = 172
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object edtvAliqProdPISOutr: TEdit
      Left = 190
      Top = 172
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object edtvPISOutr: TEdit
      Left = 190
      Top = 76
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object rgCalcPISTrib: TRadioGroup
      Left = 21
      Top = 8
      Width = 305
      Height = 41
      Caption = 'C'#225'lculo do PIS'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Percentual'
        'Valor')
      TabOrder = 0
      OnClick = rgCalcPISTribClick
    end
  end
end
