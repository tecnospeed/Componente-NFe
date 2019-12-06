object frmISSQN: TfrmISSQN
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ISSQN'
  ClientHeight = 390
  ClientWidth = 340
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
  object pnlISSQN: TPanel
    Left = -6
    Top = -5
    Width = 345
    Height = 398
    Color = clWhite
    TabOrder = 0
    object lblvBCISSQN: TLabel
      Left = 16
      Top = 16
      Width = 119
      Height = 13
      Caption = 'Valor da Base de C'#225'lculo'
    end
    object lblvAliqISSQN: TLabel
      Left = 184
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Al'#237'quota'
    end
    object lblvISSQN: TLabel
      Left = 16
      Top = 64
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object cMunFG: TLabel
      Left = 184
      Top = 64
      Width = 98
      Height = 13
      Caption = 'C'#243'digo do Munic'#237'pio'
    end
    object lblcListServISSQN: TLabel
      Left = 16
      Top = 112
      Width = 119
      Height = 13
      Caption = 'Item da Lista de Servi'#231'os'
    end
    object lblvDeducaoISSQN: TLabel
      Left = 184
      Top = 112
      Width = 101
      Height = 13
      Caption = 'Valor dedu'#231#227'o da BC'
    end
    object lblvOutroISSQN: TLabel
      Left = 16
      Top = 160
      Width = 113
      Height = 13
      Caption = 'Valor Outras Reten'#231#245'es'
    end
    object lblvDescIncondISSQN: TLabel
      Left = 184
      Top = 160
      Width = 146
      Height = 13
      Caption = 'Valor desconto incondicionado'
    end
    object lblvDescCondISSQN: TLabel
      Left = 16
      Top = 208
      Width = 138
      Height = 13
      Caption = 'Valor desconto condicionado'
    end
    object lblvISSRetISSQN: TLabel
      Left = 16
      Top = 253
      Width = 89
      Height = 13
      Caption = 'Valor reten'#231#227'o ISS'
    end
    object lbl1: TLabel
      Left = 184
      Top = 253
      Width = 154
      Height = 13
      Caption = 'Indicador da exigibilidade do ISS'
    end
    object lblcMunISSQN: TLabel
      Left = 16
      Top = 304
      Width = 165
      Height = 13
      Caption = 'C'#243'digo do Munic'#237'pio de Incid'#234'ncia'
    end
    object lblcServicoISSQN: TLabel
      Left = 197
      Top = 304
      Width = 91
      Height = 13
      Caption = 'C'#243'dogio do servi'#231'o'
    end
    object lblindIncentivoISSQN: TLabel
      Left = 184
      Top = 210
      Width = 135
      Height = 13
      Caption = 'Indicador de incentivo Fiscal'
    end
    object Button1: TButton
      Left = 360
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 6
    end
    object lblISSQN: TButton
      Left = 254
      Top = 352
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 5
      OnClick = lblISSQNClick
    end
    object edtvBCISSQN: TEdit
      Left = 16
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object edtvAliqISSQN: TEdit
      Left = 184
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object edtvISSQN: TEdit
      Left = 16
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object edtcMunFGISSQN: TEdit
      Left = 184
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edtcListServISSQN: TEdit
      Left = 16
      Top = 128
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object edtvDeducaoISSQN: TEdit
      Left = 184
      Top = 128
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 7
    end
    object edtvOutroISSQN: TEdit
      Left = 16
      Top = 176
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 8
    end
    object edtvDescIncondISSQN: TEdit
      Left = 184
      Top = 176
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 9
    end
    object edtvDescCondISSQN: TEdit
      Left = 16
      Top = 224
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 10
    end
    object edtvISSRetISSQN: TEdit
      Left = 16
      Top = 272
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 11
    end
    object edtcMunISSQN: TEdit
      Left = 16
      Top = 320
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 12
    end
    object edtcServicoISSQN: TEdit
      Left = 184
      Top = 320
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 13
    end
    object cbbindIncentivoISSQN: TComboBox
      Left = 184
      Top = 226
      Width = 145
      Height = 21
      Style = csDropDownList
      Enabled = False
      ItemIndex = 1
      TabOrder = 14
      Text = '2 - N'#227'o'
      Items.Strings = (
        '1 - Sim'
        '2 - N'#227'o')
    end
  end
  object cbbindISSISSQN: TComboBox
    Left = 178
    Top = 267
    Width = 145
    Height = 21
    Style = csDropDownList
    Enabled = False
    ItemIndex = 2
    TabOrder = 1
    Text = '3 - Isen'#231#227'o'
    Items.Strings = (
      '1 - Exig'#237'vel'
      '2 - N'#227'o incid'#234'ncia'
      '3 - Isen'#231#227'o'
      '4 - Exporta'#231#227'o'
      '5 - Imunidade'
      '6 - Exigibilidade Suspensa por Dec. Judicial'
      '7 - Exigibilidade Suspensa por Proc. Administrativo')
  end
end
