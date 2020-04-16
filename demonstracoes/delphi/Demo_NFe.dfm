object Demo_NFe_Form: TDemo_NFe_Form
  Left = 444
  Top = 233
  Width = 1179
  Height = 654
  Caption = 'Demonstra'#231#227'o NFe - TecnoSpeed'
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
  object pgcNFe: TPageControl
    Left = 8
    Top = 8
    Width = 441
    Height = 601
    ActivePage = tbsNfe
    TabOrder = 0
    object tbsNfe: TTabSheet
      Caption = 'NFe'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 32
        Width = 425
        Height = 145
        Caption = 'Informa'#231#245'es Ini'
        TabOrder = 1
        object edtUF: TLabeledEdit
          Left = 8
          Top = 40
          Width = 41
          Height = 21
          EditLabel.Width = 17
          EditLabel.Height = 13
          EditLabel.Caption = 'UF'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          TabOrder = 0
        end
        object edtCNPJ: TLabeledEdit
          Left = 56
          Top = 40
          Width = 97
          Height = 21
          EditLabel.Width = 32
          EditLabel.Height = 13
          EditLabel.Caption = 'CNPJ'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          TabOrder = 1
        end
        object edtID: TLabeledEdit
          Left = 160
          Top = 40
          Width = 257
          Height = 21
          EditLabel.Width = 45
          EditLabel.Height = 13
          EditLabel.Caption = 'ID Nota'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          TabOrder = 2
        end
        object edtNumRec: TLabeledEdit
          Left = 8
          Top = 80
          Width = 409
          Height = 21
          EditLabel.Width = 59
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#186' Recibo'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          TabOrder = 3
        end
        object edtNumProt: TLabeledEdit
          Left = 8
          Top = 120
          Width = 409
          Height = 21
          EditLabel.Width = 73
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#186' Protocolo'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          TabOrder = 4
        end
      end
      object cbCertificado: TComboBox
        Left = 0
        Top = 8
        Width = 425
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbCertificadoChange
      end
      object btnConfig: TButton
        Left = 8
        Top = 216
        Width = 129
        Height = 25
        Caption = 'Configurar INI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btnConfigClick
      end
      object btnEnviarNfe: TButton
        Left = 144
        Top = 184
        Width = 129
        Height = 25
        Caption = ' Enviar NF-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btnEnviarNfeClick
      end
      object gbImpressao: TGroupBox
        Left = 280
        Top = 184
        Width = 145
        Height = 217
        Caption = 'Impress'#227'o'
        TabOrder = 4
        object btnPrever: TButton
          Left = 7
          Top = 16
          Width = 129
          Height = 25
          Caption = 'Prever DANFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnPreverClick
        end
        object btnEditarDanfe: TButton
          Left = 7
          Top = 48
          Width = 129
          Height = 25
          Caption = '8. Editar DANFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnEditarDanfeClick
        end
        object btnImprimir: TButton
          Left = 7
          Top = 80
          Width = 129
          Height = 25
          Caption = '9. Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnImprimirClick
        end
        object btnExportPdf: TButton
          Left = 7
          Top = 112
          Width = 129
          Height = 25
          Caption = '10. Exportar PDF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnExportPdfClick
        end
        object btnVisualizar: TButton
          Left = 7
          Top = 144
          Width = 129
          Height = 25
          Caption = '11. Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnVisualizarClick
        end
        object btnEnviarEmail: TButton
          Left = 7
          Top = 176
          Width = 129
          Height = 25
          Caption = '12. Enviar Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnEnviarEmailClick
        end
      end
      object btnStatus: TButton
        Left = 8
        Top = 248
        Width = 129
        Height = 25
        Caption = 'Verificar Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = btnStatusClick
      end
      object btnEnviarSinc: TButton
        Left = 144
        Top = 216
        Width = 129
        Height = 25
        Caption = 'Enviar S'#237'ncrono'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = btnEnviarSincClick
      end
      object btnGerarDS: TButton
        Left = 8
        Top = 280
        Width = 129
        Height = 25
        Caption = 'Gerar XML DataSet'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = btnGerarDSClick
      end
      object btnConsultRec: TButton
        Left = 144
        Top = 248
        Width = 129
        Height = 25
        Caption = 'Consultar Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = btnConsultRecClick
      end
      object btnAssinar: TButton
        Left = 7
        Top = 376
        Width = 129
        Height = 25
        Caption = 'Assinar XML'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnClick = btnAssinarClick
      end
      object btnConsultNfe: TButton
        Left = 143
        Top = 280
        Width = 129
        Height = 25
        Caption = 'Consultar NF-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = btnConsultNfeClick
      end
      object btnInutilizarNfe: TButton
        Left = 143
        Top = 312
        Width = 129
        Height = 25
        Caption = 'Inutilizar NF-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = btnInutilizarNfeClick
      end
      object btnConsultaCadastro: TButton
        Left = 143
        Top = 376
        Width = 129
        Height = 25
        Caption = 'Consultar Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        OnClick = btnConsultaCadastroClick
      end
      object btnLoadConfig: TButton
        Left = 8
        Top = 184
        Width = 129
        Height = 25
        Caption = 'Load Config'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnLoadConfigClick
      end
      object btnEventos: TButton
        Left = 144
        Top = 407
        Width = 129
        Height = 25
        Caption = 'Eventos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
        OnClick = btnEventosClick
      end
      object btnConvertXmlDataset: TButton
        Left = 143
        Top = 344
        Width = 129
        Height = 25
        Caption = 'Converter XML DS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = btnConvertXmlDatasetClick
      end
      object btnAuditar: TButton
        Left = 7
        Top = 407
        Width = 129
        Height = 25
        Caption = 'Auditar XML'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        OnClick = btnAuditarClick
      end
      object btnGerarREC: TButton
        Left = 8
        Top = 344
        Width = 129
        Height = 25
        Caption = 'Gerar Via REC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = btnGerarRECClick
      end
      object btnGeraXMLTX2: TButton
        Left = 8
        Top = 312
        Width = 129
        Height = 25
        Caption = 'Gerar XML TX2 4.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = btnGeraXMLTX2Click
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 440
        Width = 417
        Height = 129
        Caption = 'XML Auditado'
        TabOrder = 19
        object mmAudicao: TMemo
          Left = 2
          Top = 15
          Width = 413
          Height = 112
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object mmXml: TMemo
    Left = 456
    Top = 8
    Width = 673
    Height = 609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object dlgOpen: TOpenDialog
    Left = 496
    Top = 13
  end
  object spdNFe: TspdNFe
    VersaoManual = vm50
    AnexarDanfePDF = True
    DanfeSettings.FraseContingencia = 
      'Danfe em conting'#234'ncia - Impresso em decorr'#234'ncia de problemas t'#233'c' +
      'nicos'
    DanfeSettings.FraseHomologacao = 'SEM VALOR FISCAL'
    DanfeSettings.QtdeCopias = 1
    DanfeSettings.LineDelimiter = '|'
    DanfeSettings.InfCplMaxCol = 68
    DanfeSettings.InfCplMaxRow = 7
    DanfeSettings.ImprimirVolume = False
    DanfeSettings.ImprimirDuplicata = True
    DanfeSettings.MensagemPartilhaAutomatica = False
    DanfeSettings.MensagemFCP = False
    DanfeSettings.ImprimirUnidadeTributada = False
    DanfeSettings.ImprimirObsCont = False
    DanfeSettings.ImprimirFrenteVerso = fvDesabilitado
    DanfeSettings.ImprimirLocalRetiradaEntrega = True
    Versao = '11.1.57.6064'
    CaracteresRemoverAcentos = #225#233#237#243#250#224#232#236#242#249#226#234#238#244#251#228#235#239#246#252#227#245#241#231#193#201#205#211#218#192#200#204#210#217#194#202#206#212#219#196#203#207#214#220#195#213#209#199#186#170
    TipoCertificado = ckMemory
    DiretorioTemplates = 'C:\Program Files (x86)\Borland\Delphi7\Bin\Templates\vm50\'
    IgnoreInvalidCertificates = False
    DiretorioLog = 'Log\'
    Ambiente = akHomologacao
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 0
    EmailSettings.ConteudoHtml = False
    DiretorioEsquemas = 'C:\Program Files (x86)\Borland\Delphi7\Bin\Esquemas\vm50\'
    ConexaoSegura = False
    TimeOut = 0
    DiretorioLogErro = 'C:\Program Files (x86)\Borland\Delphi7\Bin\LogErro\'
    DiretorioTemporario = 'C:\ProgramData\'
    ModoOperacao = moNormal
    EntregaXML = exEmail
    AtualizarArquivoServidores = True
    DiagnosticMode = True
    DiretorioXmlDestinatario = 'C:\Program Files (x86)\Borland\Delphi7\Bin\XmlDestinatario\'
    DiretorioDownloads = 'C:\Program Files (x86)\Borland\Delphi7\Bin\Downloads\'
    MaxSizeLoteEnvio = 500
    DanfeSimplificado = False
    Left = 528
    Top = 16
  end
  object spdNFeDataSets: TspdNFeDataSets
    VersaoEsquema = pl_005a
    ValidaRegrasNegocio = False
    ValidaRegrasNegocioTecno = False
    UsarDatasetExportacao = False
    Left = 560
    Top = 16
  end
end
