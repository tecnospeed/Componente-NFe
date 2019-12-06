object frmIPINT: TfrmIPINT
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'IPI N'#227'o Tributado'
  ClientHeight = 186
  ClientWidth = 321
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
  object pnlIPINT: TPanel
    Left = -4
    Top = 0
    Width = 325
    Height = 185
    Color = clWhite
    TabOrder = 0
    object lblCSTIPINT: TLabel
      Left = 174
      Top = 104
      Width = 113
      Height = 13
      Caption = 'C'#243'digo da Sit. Tribut'#225'ria'
    end
    object lblclEnqIPINT: TLabel
      Left = 14
      Top = 9
      Width = 146
      Height = 13
      Caption = 'Enquadramento Cig. e Bebidas'
    end
    object lblCNPJProdIPINT: TLabel
      Left = 174
      Top = 9
      Width = 27
      Height = 13
      Caption = 'CNPJ'
    end
    object lblcSeloIPINT: TLabel
      Left = 14
      Top = 57
      Width = 72
      Height = 13
      Caption = 'C'#243'digo do Selo'
    end
    object lblqSeloIPINT: TLabel
      Left = 174
      Top = 57
      Width = 94
      Height = 13
      Caption = 'Quantidade de Selo'
    end
    object lblcEnqIPINT: TLabel
      Left = 14
      Top = 105
      Width = 126
      Height = 13
      Caption = 'C'#243'digo de Enquadramento'
    end
    object Button1: TButton
      Left = 360
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 7
    end
    object btnEnviarIPINT: TButton
      Left = 244
      Top = 150
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 6
      OnClick = btnEnviarIPINTClick
    end
    object cbCSTIPINT: TComboBox
      Left = 174
      Top = 120
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 5
      Text = 'Entrada tributada com al'#237'quota zero'
      Items.Strings = (
        'Entrada tributada com al'#237'quota zero'
        'Entrada isenta'
        'Entrada n'#227'o-tributada'
        'Entrada imune'
        'Entrada com suspens'#227'o'
        'Sa'#237'da tributada com al'#237'quota zero'
        'Sa'#237'da isenta'
        'Sa'#237'da n'#227'o-tributada'
        'Sa'#237'da imune'
        'Sa'#237'da com suspens'#227'o')
    end
    object edtclEnqIPINT: TEdit
      Left = 14
      Top = 25
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object edtCNPJProdIPINT: TEdit
      Left = 174
      Top = 25
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object edtcSeloIPINT: TEdit
      Left = 14
      Top = 73
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object edtqSeloIPINT: TEdit
      Left = 174
      Top = 73
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edtcEnqIPINT: TEdit
      Left = 14
      Top = 121
      Width = 145
      Height = 21
      TabOrder = 4
    end
  end
end
