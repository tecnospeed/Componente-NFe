object frmICMS40: TfrmICMS40
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS 40, 41 ou 50'
  ClientHeight = 192
  ClientWidth = 457
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
  object pnlICMS40: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 192
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMS40: TLabel
      Left = 14
      Top = 52
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSTICMS40: TLabel
      Left = 14
      Top = 8
      Width = 21
      Height = 13
      Caption = 'CST'
    end
    object lblMotDesICMS40: TLabel
      Left = 165
      Top = 97
      Width = 156
      Height = 13
      Caption = 'Motivo da desonera'#231#227'o do ICMS'
    end
    object lblValorICMS40Deson: TLabel
      Left = 14
      Top = 97
      Width = 114
      Height = 13
      Caption = 'Valor ICMS Desonerado'
    end
    object cbOrigemICMS40: TComboBox
      Left = 14
      Top = 68
      Width = 424
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
    object edtCSTICMS40: TEdit
      Left = 14
      Top = 24
      Width = 33
      Height = 21
      TabOrder = 0
    end
    object btnEnviarICMS00: TButton
      Left = 363
      Top = 151
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 4
      OnClick = btnEnviarICMS00Click
    end
    object cbMotDesICMS40: TComboBox
      Left = 165
      Top = 113
      Width = 273
      Height = 21
      Style = csDropDownList
      TabOrder = 3
      Items.Strings = (
        '1=T'#225'xi'
        '3=Produtor Agropecu'#225'rio'
        '4=Frotista/Locadora'
        '5=Diplom'#225'tico/Consular'
        
          '6=Utilit'#225'rios e Motocicletas da Amaz'#244'nia Ocidental e '#193'reas de Li' +
          'vre Com'#233'rcio (Resolu'#231#227'o 714/88 e 790/94 '#8211' CONTRAN e suas altera'#231 +
          #245'es) '
        '7=SUFRAMA'
        '8=Venda a '#211'rg'#227'o P'#250'blico'
        '9=Outros. (NT 2011/004) '
        '10=Deficiente Condutor (Conv'#234'nio ICMS 38/12)'
        '11=Deficiente N'#227'o Condutor (Conv'#234'nio ICMS 38/12)'
        '16=Olimp'#237'adas Rio 2016 (NT 2015.002)'
        '90=Solicitado pelo Fisco')
    end
    object edtValorICMS40Deson: TEdit
      Left = 14
      Top = 113
      Width = 145
      Height = 21
      TabOrder = 2
    end
  end
end
