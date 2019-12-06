object frmICMSN101: TfrmICMSN101
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS SN 101'
  ClientHeight = 191
  ClientWidth = 420
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
  object pnlICMSN101: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 191
    Align = alClient
    Color = clWhite
    TabOrder = 0
    ExplicitLeft = -16
    ExplicitWidth = 345
    ExplicitHeight = 137
    object lblOrigemICMSN101: TLabel
      Left = 15
      Top = 54
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSOSNICMSN101: TLabel
      Left = 15
      Top = 11
      Width = 37
      Height = 13
      Caption = 'CSOSN'
    end
    object lblpCredSN101: TLabel
      Left = 15
      Top = 100
      Width = 152
      Height = 13
      Caption = 'Al'#237'q. aplic. de c'#225'lculo do cr'#233'dito'
    end
    object lblvCredICMSSN101: TLabel
      Left = 188
      Top = 100
      Width = 104
      Height = 13
      Caption = 'Valor Cr'#233'dito do ICMS'
    end
    object cbOrigem101: TComboBox
      Left = 15
      Top = 70
      Width = 386
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      Items.Strings = (
        'Nacional'
        'Estrangeira-Importa'#231#227'o Direta'
        'Estrangeira-Adquirida no mercado interno'
        'Nacional-Conte'#250'do de Importa'#231#227'o 40%'
        'Nacional-Produ'#231#227'o conforme processo produtivo'
        'Nacional-Conte'#250'do de Importa'#231#227'o menor 40%'
        'Estrangeira-Importa'#231#227'o Direta sem Similar Nacional (CAMEX)'
        
          'Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX' +
          ')'
        
          'Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o superior ' +
          'a 70%')
    end
    object edtCSOSN101: TEdit
      Left = 15
      Top = 27
      Width = 40
      Height = 21
      TabOrder = 0
    end
    object edtpCredSN101: TEdit
      Left = 15
      Top = 116
      Width = 154
      Height = 21
      TabOrder = 2
    end
    object btnEnviarICMSN101: TButton
      Left = 326
      Top = 151
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 4
      OnClick = btnEnviarICMSN101Click
    end
    object edtvCredICMSSN101: TEdit
      Left = 188
      Top = 116
      Width = 154
      Height = 21
      TabOrder = 3
    end
  end
end
