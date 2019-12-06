object frmImportacaoXmlNFe: TfrmImportacaoXmlNFe
  Left = 538
  Top = 156
  Width = 792
  Height = 588
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Exemplo de como percorrer nas informa'#231#245'es do Xml da NF-e'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 57
    Align = alTop
    TabOrder = 1
    object lblArquivoXmlNfe: TLabel
      Left = 8
      Top = 9
      Width = 82
      Height = 13
      Caption = 'Arquivo Xml NF-e'
    end
    object edtArquivoXmlNfe: TEdit
      Left = 8
      Top = 24
      Width = 513
      Height = 21
      Hint = 'Informe um arquivo xml de NF-e'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 
        'C:\Desenvolvimento\_Arquivos\41180708187168000160551210000018501' +
        '046403274-nfe.xml'
    end
    object btnProcessar: TButton
      Left = 583
      Top = 20
      Width = 82
      Height = 25
      Caption = 'Processar'
      TabOrder = 2
      OnClick = btnProcessarClick
    end
    object btnOpen: TButton
      Left = 523
      Top = 20
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = btnOpenClick
    end
  end
  object pnlClient: TPanel
    Left = 0
    Top = 57
    Width = 784
    Height = 504
    Align = alClient
    TabOrder = 0
    object mmoInformacoesNFe: TMemo
      Left = 1
      Top = 1
      Width = 782
      Height = 502
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object dlgOpenNfe: TOpenDialog
    Left = 652
    Top = 10
  end
end
