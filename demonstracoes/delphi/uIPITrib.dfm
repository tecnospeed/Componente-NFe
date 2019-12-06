object frmIPITrib: TfrmIPITrib
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'IPI Tributado'
  ClientHeight = 337
  ClientWidth = 322
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
  object pnlIPITrib: TPanel
    Left = -4
    Top = 0
    Width = 325
    Height = 337
    Color = clWhite
    TabOrder = 0
    object lblCSTIPITrib: TLabel
      Left = 175
      Top = 148
      Width = 113
      Height = 13
      Caption = 'C'#243'digo da Sit. Tribut'#225'ria'
    end
    object lblvBCIPITrib: TLabel
      Left = 14
      Top = 193
      Width = 56
      Height = 13
      Caption = 'Valor da BC'
    end
    object lblpIPITrib: TLabel
      Left = 175
      Top = 193
      Width = 40
      Height = 13
      Caption = 'Al'#237'quota'
    end
    object lblqUnidIPITrib: TLabel
      Left = 14
      Top = 241
      Width = 82
      Height = 13
      Caption = 'Quantidade Total'
    end
    object lblvUnidIPITrib: TLabel
      Left = 175
      Top = 241
      Width = 85
      Height = 13
      Caption = 'Valor por Unidade'
    end
    object lblvIPITrib: TLabel
      Left = 15
      Top = 287
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblclEnqIPITrib: TLabel
      Left = 15
      Top = 51
      Width = 146
      Height = 13
      Caption = 'Enquadramento Cig. e Bebidas'
    end
    object lblCNPJProdIPITrib: TLabel
      Left = 175
      Top = 51
      Width = 27
      Height = 13
      Caption = 'CNPJ'
    end
    object lblcSeloIPITrib: TLabel
      Left = 15
      Top = 99
      Width = 72
      Height = 13
      Caption = 'C'#243'digo do Selo'
    end
    object lblqSeloIPItrib: TLabel
      Left = 175
      Top = 99
      Width = 94
      Height = 13
      Caption = 'Quantidade de Selo'
    end
    object lblcEnqIPITrib: TLabel
      Left = 15
      Top = 147
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
      TabOrder = 13
    end
    object btnEnviarIPITrib: TButton
      Left = 244
      Top = 302
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 12
      OnClick = btnEnviarIPITribClick
    end
    object cbCSTIPITrib: TComboBox
      Left = 175
      Top = 164
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 6
      Text = 'Entrada com recupera'#231#227'o de cr'#233'dito'
      Items.Strings = (
        'Entrada com recupera'#231#227'o de cr'#233'dito'
        'Outras Entradas'
        'Sa'#237'das tributadas'
        'Outras sa'#237'das')
    end
    object edtvBCIPITrib: TEdit
      Left = 14
      Top = 209
      Width = 145
      Height = 21
      TabOrder = 7
    end
    object edtpIPITrib: TEdit
      Left = 175
      Top = 209
      Width = 145
      Height = 21
      TabOrder = 8
    end
    object edtqUnidIPITrib: TEdit
      Left = 15
      Top = 257
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 9
    end
    object edtvUnidIPITrib: TEdit
      Left = 177
      Top = 257
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 10
    end
    object edtvIPITrib: TEdit
      Left = 15
      Top = 303
      Width = 145
      Height = 21
      TabOrder = 11
    end
    object edtclEnqIPITrib: TEdit
      Left = 15
      Top = 67
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object edtCNPJProdIPITrib: TEdit
      Left = 175
      Top = 67
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object edtcSeloIPITrib: TEdit
      Left = 15
      Top = 115
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edtqSeloIPITrib: TEdit
      Left = 177
      Top = 115
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object edtcEnqIPITrib: TEdit
      Left = 15
      Top = 163
      Width = 145
      Height = 21
      TabOrder = 5
    end
    object rgAliqUnidTrib: TRadioGroup
      Left = 15
      Top = 1
      Width = 305
      Height = 41
      Caption = 'C'#225'lculo do IPI'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Al'#237'quota'
        'Valor por Unidade')
      TabOrder = 0
      OnClick = rgAliqUnidTribClick
    end
  end
end
