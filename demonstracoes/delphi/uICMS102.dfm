object frmICMS102: TfrmICMS102
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS SN 102, 102, 300 ou 400'
  ClientHeight = 146
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
  object pnlICMSN102: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 146
    Align = alClient
    Color = clWhite
    TabOrder = 0
    ExplicitLeft = -16
    ExplicitWidth = 345
    ExplicitHeight = 81
    object lblOrigem102: TLabel
      Left = 14
      Top = 54
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSOSN102: TLabel
      Left = 14
      Top = 11
      Width = 37
      Height = 13
      Caption = 'CSOSN'
    end
    object cbOrigem102: TComboBox
      Left = 14
      Top = 70
      Width = 385
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
    object btnEnviarICMSN102: TButton
      Left = 324
      Top = 106
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = btnEnviarICMSN102Click
    end
    object edtCSOSN102: TEdit
      Left = 14
      Top = 27
      Width = 37
      Height = 21
      TabOrder = 0
    end
  end
end
