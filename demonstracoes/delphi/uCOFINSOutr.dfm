object frmCOFINSOutr: TfrmCOFINSOutr
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'COFINS Outras Opera'#231#245'es'
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
  object pnlCOFINSOutr: TPanel
    Left = -6
    Top = 0
    Width = 345
    Height = 233
    Color = clWhite
    TabOrder = 0
    object lblCSTCOFINSOutr: TLabel
      Left = 22
      Top = 56
      Width = 87
      Height = 13
      Caption = 'C'#243'd. Sit. Tribut'#225'ria'
    end
    object lblvBCCOFINSOutr: TLabel
      Left = 22
      Top = 106
      Width = 104
      Height = 13
      Caption = 'Valor Base de C'#225'lculo'
    end
    object lblpCOFINSOutr: TLabel
      Left = 190
      Top = 106
      Width = 99
      Height = 13
      Caption = 'Al'#237'quota (percentual)'
    end
    object lblvCOFINSOut: TLabel
      Left = 190
      Top = 55
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblqBCProdCOFINSOutr: TLabel
      Left = 21
      Top = 152
      Width = 97
      Height = 13
      Caption = 'Quantidade Vendida'
    end
    object lblvAliqProdCOFINSOutr: TLabel
      Left = 190
      Top = 152
      Width = 71
      Height = 13
      Caption = 'Al'#237'quota (reais)'
    end
    object cbCSTCOFINSOutr: TComboBox
      Left = 22
      Top = 72
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'Outras Opera'#231#245'es'
      Items.Strings = (
        'Outras Opera'#231#245'es')
    end
    object edtvBCCOFINSOutr: TEdit
      Left = 22
      Top = 122
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edtpCOFINSOutr: TEdit
      Left = 190
      Top = 122
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
    object btnEnviarCOFINSOutr: TButton
      Left = 259
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 7
      OnClick = btnEnviarCOFINSOutrClick
    end
    object edtvCOFINSOutr: TEdit
      Left = 190
      Top = 71
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object edtqBCProdCOFINSOutr: TEdit
      Left = 22
      Top = 168
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object edtvAliqProdCOFINSOutr: TEdit
      Left = 190
      Top = 168
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object rgCalcCOFINSOutr: TRadioGroup
      Left = 22
      Top = 8
      Width = 313
      Height = 41
      Caption = 'C'#225'lculo da COFINS'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Percentual'
        'Valor')
      TabOrder = 0
      OnClick = rgCalcCOFINSOutrClick
    end
  end
end
