object frmCOFINSQtde: TfrmCOFINSQtde
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'COFINS Tributado por Quantidade'
  ClientHeight = 137
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
  object pnlCOFINSQtde: TPanel
    Left = -6
    Top = 0
    Width = 345
    Height = 137
    Color = clWhite
    TabOrder = 0
    object lblCSTCOFINSQtde: TLabel
      Left = 24
      Top = 8
      Width = 87
      Height = 13
      Caption = 'C'#243'd. Sit. Tribut'#225'ria'
    end
    object lblqBCProdCOFINSQtde: TLabel
      Left = 192
      Top = 8
      Width = 97
      Height = 13
      Caption = 'Quantidade Vendida'
    end
    object lblvAliqProdCOFINSQtde: TLabel
      Left = 24
      Top = 56
      Width = 71
      Height = 13
      Caption = 'Al'#237'quota (reais)'
    end
    object lblvCOFINSQtde: TLabel
      Left = 192
      Top = 56
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object cbCSTCOFINSQtde: TComboBox
      Left = 24
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 
        'Opera'#231#227'o Tribut'#225'vel=quantidade vendida x al'#237'quota por unidade de' +
        ' produto'
      Items.Strings = (
        
          'Opera'#231#227'o Tribut'#225'vel=quantidade vendida x al'#237'quota por unidade de' +
          ' produto')
    end
    object edtqBCProdCOFINSQtde: TEdit
      Left = 192
      Top = 24
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object edtvAliqProdCOFINSQtde: TEdit
      Left = 24
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
      TabOrder = 5
    end
    object btnEnviarCOFINSQtde: TButton
      Left = 261
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 4
      OnClick = btnEnviarCOFINSQtdeClick
    end
    object edtvCOFINSQtde: TEdit
      Left = 192
      Top = 72
      Width = 145
      Height = 21
      TabOrder = 3
    end
  end
end
