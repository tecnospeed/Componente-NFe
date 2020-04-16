object frmPISNT: TfrmPISNT
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'PIS N'#227'o Tributado'
  ClientHeight = 58
  ClientWidth = 258
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
  object pnlPISNT: TPanel
    Left = -16
    Top = 0
    Width = 273
    Height = 57
    Color = clWhite
    TabOrder = 0
    object lblCSTPISNT: TLabel
      Left = 24
      Top = 8
      Width = 87
      Height = 13
      Caption = 'C'#243'd. Sit. Tribut'#225'ria'
    end
    object cbCSTPISNT: TComboBox
      Left = 24
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Opera'#231#227'o Tribut'#225'vel=tributa'#231#227'o monof'#225'sica'
      Items.Strings = (
        'Opera'#231#227'o Tribut'#225'vel=tributa'#231#227'o monof'#225'sica'
        'Opera'#231#227'o Tribut'#225'vel=Substitui'#231#227'o Tribut'#225'ria'
        'Opera'#231#227'o Tribut'#225'vel=al'#237'quota zero'
        'Opera'#231#227'o Isenta de Contrbui'#231#227'o'
        'Opera'#231#227'o Sem Incid'#234'ncia da Contribui'#231#227'o'
        'Opera'#231#227'o Com Suspens'#227'o da Contribui'#231#227'o')
    end
    object Button1: TButton
      Left = 360
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
    end
    object btnEnviarPISPISNT: TButton
      Left = 181
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnEnviarPISPISNTClick
    end
  end
end
