object frmIPI: TfrmIPI
  Left = 580
  Top = 250
  Width = 338
  Height = 199
  Caption = 'IPI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlIPI: TPanel
    Left = -4
    Top = 0
    Width = 325
    Height = 161
    Color = clWhite
    TabOrder = 0
    object lblclEnqIPI: TLabel
      Left = 16
      Top = 16
      Width = 146
      Height = 13
      Caption = 'Enquadramento Cig. e Bebidas'
    end
    object lblCNPJProdIPI: TLabel
      Left = 176
      Top = 16
      Width = 27
      Height = 13
      Caption = 'CNPJ'
    end
    object lblcSeloIPI: TLabel
      Left = 16
      Top = 64
      Width = 72
      Height = 13
      Caption = 'C'#243'digo do Selo'
    end
    object lblqSeloIPI: TLabel
      Left = 176
      Top = 64
      Width = 94
      Height = 13
      Caption = 'Quantidade de Selo'
    end
    object lblcEnqIPI: TLabel
      Left = 16
      Top = 112
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
      TabOrder = 0
    end
    object btnEnviarIPI: TButton
      Left = 245
      Top = 126
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnEnviarIPIClick
    end
    object edtclEnqIPI: TEdit
      Left = 16
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object edtCNPJProdIPI: TEdit
      Left = 176
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edtcSeloIPI: TEdit
      Left = 16
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object edtqSeloIPI: TEdit
      Left = 176
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 5
    end
    object edtcEnqIPI: TEdit
      Left = 16
      Top = 128
      Width = 145
      Height = 21
      TabOrder = 6
    end
  end
end
