object Demo_NFe_Form: TDemo_NFe_Form
  Left = 573
  Top = 80
  Width = 737
  Height = 848
  AutoSize = True
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
    Left = 0
    Top = 0
    Width = 729
    Height = 409
    ActivePage = tbsNfe
    TabOrder = 0
    object tbsNfe: TTabSheet
      Caption = 'NFe'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 88
        Width = 337
        Height = 288
        Caption = 'Informa'#231#245'es Ini'
        TabOrder = 0
        object edtUF: TLabeledEdit
          Left = 8
          Top = 32
          Width = 41
          Height = 21
          EditLabel.Width = 14
          EditLabel.Height = 13
          EditLabel.Caption = 'UF'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          TabOrder = 0
        end
        object edtCNPJ: TLabeledEdit
          Left = 8
          Top = 82
          Width = 273
          Height = 21
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'CNPJ'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          TabOrder = 1
        end
        object edtID: TLabeledEdit
          Left = 8
          Top = 132
          Width = 273
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'ID Nota'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          TabOrder = 2
        end
        object edtNumRec: TLabeledEdit
          Left = 8
          Top = 182
          Width = 273
          Height = 21
          EditLabel.Width = 49
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#186' Recibo'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          TabOrder = 3
        end
        object edtNumProt: TLabeledEdit
          Left = 8
          Top = 232
          Width = 273
          Height = 21
          EditLabel.Width = 60
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#186' Protocolo'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          TabOrder = 4
        end
      end
      object GroupBox3: TGroupBox
        Left = 342
        Top = 0
        Width = 377
        Height = 377
        Caption = 'Opera'#231#245'es'
        TabOrder = 1
        object Label4: TLabel
          Left = 8
          Top = 16
          Width = 50
          Height = 13
          Caption = 'Certificado'
        end
        object Label2: TLabel
          Left = 184
          Top = 336
          Width = 183
          Height = 20
          Caption = 'Ambiente de Produ'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object cbCertificado: TComboBox
          Left = 8
          Top = 32
          Width = 361
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnChange = cbCertificadoChange
        end
        object btnConfig: TButton
          Left = 7
          Top = 55
          Width = 160
          Height = 35
          Caption = '1- Configurar INI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnConfigClick
        end
        object btnLoadConfig: TButton
          Left = 210
          Top = 55
          Width = 160
          Height = 35
          Caption = '2 - Load Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnLoadConfigClick
        end
        object btnGerarREC: TButton
          Left = 210
          Top = 240
          Width = 160
          Height = 35
          Caption = 'Gerar Via REC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnGerarRECClick
        end
        object btnGerarDS: TButton
          Left = 7
          Top = 92
          Width = 160
          Height = 35
          Caption = '3 - Gerar XML DataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnGerarDSClick
        end
        object btnGeraXMLTX2: TButton
          Left = 210
          Top = 92
          Width = 160
          Height = 35
          Caption = '3.1 - Gerar XML TX2 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnGeraXMLTX2Click
        end
        object btnStatus: TButton
          Left = 104
          Top = 288
          Width = 160
          Height = 35
          Caption = 'Verificar Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = btnStatusClick
        end
        object btnAssinar: TButton
          Left = 7
          Top = 129
          Width = 160
          Height = 35
          Caption = '4 - Assinar XML'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = btnAssinarClick
        end
        object btnEnviarNfe: TButton
          Left = 210
          Top = 129
          Width = 160
          Height = 35
          Caption = '5 - Enviar NF-e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = btnEnviarNfeClick
        end
        object btnEnviarSinc: TButton
          Left = 7
          Top = 166
          Width = 160
          Height = 35
          Caption = '5.1 - Enviar S'#237'ncrono'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = btnEnviarSincClick
        end
        object btnConsultRec: TButton
          Left = 210
          Top = 166
          Width = 160
          Height = 35
          Caption = '6 - Consultar Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = btnConsultRecClick
        end
        object btnConsultNfe: TButton
          Left = 7
          Top = 203
          Width = 160
          Height = 35
          Caption = '7 - Consultar NF-e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = btnConsultNfeClick
        end
        object Button1: TButton
          Left = 7
          Top = 240
          Width = 160
          Height = 35
          Caption = '9 - Gerar Xml Canc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnClick = Button1Click
        end
        object btCancelarNota: TButton
          Left = 210
          Top = 203
          Width = 160
          Height = 35
          Caption = '8 - Cancelar Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnClick = btCancelarNotaClick
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 8
        Width = 337
        Height = 73
        Caption = 'Configurar SoftwareHouse'
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 20
          Width = 103
          Height = 13
          Caption = 'CNPJ SoftwareHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 176
          Top = 20
          Width = 107
          Height = 13
          Caption = 'Token SoftwareHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edCnpjSh: TEdit
          Left = 8
          Top = 36
          Width = 153
          Height = 21
          TabOrder = 0
        end
        object edTokenSh: TEdit
          Left = 176
          Top = 36
          Width = 153
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object TabImpressao: TTabSheet
      Caption = 'Testando Impress'#227'o'
      ImageIndex = 1
      object gbImpressao: TGroupBox
        Left = 8
        Top = 10
        Width = 729
        Height = 174
        Caption = 'Impress'#227'o'
        TabOrder = 0
        object btnPrever: TButton
          Left = 31
          Top = 24
          Width = 138
          Height = 40
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
          Left = 31
          Top = 70
          Width = 138
          Height = 40
          Caption = 'Editar DANFE'
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
          Left = 199
          Top = 24
          Width = 138
          Height = 40
          Caption = 'Imprimir'
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
          Left = 199
          Top = 70
          Width = 138
          Height = 40
          Caption = 'Exportar PDF'
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
          Left = 31
          Top = 117
          Width = 138
          Height = 40
          Caption = 'Visualizar'
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
          Left = 199
          Top = 117
          Width = 138
          Height = 40
          Caption = 'Enviar Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnEnviarEmailClick
        end
        object btEmailArquivo: TButton
          Left = 359
          Top = 24
          Width = 138
          Height = 40
          Caption = 'Email por Arquivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = btEmailArquivoClick
        end
      end
    end
    object TabDemaisMetodos: TTabSheet
      Caption = 'Demais M'#233'todos'
      ImageIndex = 2
      object GroupBox4: TGroupBox
        Left = 8
        Top = 8
        Width = 721
        Height = 177
        Caption = 'Outros M'#233'todos'
        TabOrder = 0
        object btnInutilizarNfe: TButton
          Left = 16
          Top = 53
          Width = 129
          Height = 25
          Caption = 'Inutilizar NF-e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnInutilizarNfeClick
        end
        object btnConvertXmlDataset: TButton
          Left = 16
          Top = 24
          Width = 129
          Height = 25
          Caption = 'Converter XML DS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnConvertXmlDatasetClick
        end
        object btnConsultaCadastro: TButton
          Left = 16
          Top = 111
          Width = 129
          Height = 25
          Caption = 'Consultar Cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnConsultaCadastroClick
        end
        object btnEventos: TButton
          Left = 16
          Top = 82
          Width = 129
          Height = 25
          Caption = 'Eventos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnEventosClick
        end
        object btnAuditar: TButton
          Left = 176
          Top = 24
          Width = 537
          Height = 25
          Caption = 'Auditar XML'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnAuditarClick
        end
        object GroupBox2: TGroupBox
          Left = 176
          Top = 56
          Width = 537
          Height = 113
          Caption = 'XML Auditado'
          TabOrder = 5
          object mmAudicao: TMemo
            Left = 2
            Top = 15
            Width = 533
            Height = 96
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
        object Button2: TButton
          Left = 16
          Top = 143
          Width = 129
          Height = 25
          Caption = 'Enviar CCe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = Button2Click
        end
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 416
    Width = 729
    Height = 401
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Xml'
      object mmXml: TMemo
        Left = 0
        Top = 0
        Width = 721
        Height = 373
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
    object TabSheet2: TTabSheet
      Caption = 'Xml Cancelado Envio'
      ImageIndex = 1
      object mmXmlCanceladoEnvio: TMemo
        Left = 0
        Top = 0
        Width = 721
        Height = 373
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
    object TabSheet3: TTabSheet
      Caption = 'Xml Cancelado Retorno'
      ImageIndex = 2
      object mmXmlCanceladoRetorno: TMemo
        Left = 0
        Top = 0
        Width = 721
        Height = 373
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
  object dlgOpen: TOpenDialog
    Left = 664
    Top = 769
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
    DanfeSettings.InfCplQuebrarLinhaAut = False
    Versao = '11.1.63.6265'
    CaracteresRemoverAcentos = #225#233#237#243#250#224#232#236#242#249#226#234#238#244#251#228#235#239#246#252#227#245#241#231#193#201#205#211#218#192#200#204#210#217#194#202#206#212#219#196#203#207#214#220#195#213#209#199#186#170
    TipoCertificado = ckMemory
    DiretorioTemplates = 
      'C:\Program Files (x86)\Borland\Delphi7\Bin\Templatesvm50vm50vm50' +
      'vm50vm50vm50vm50vm50vm50vm50vm50\'
    IgnoreInvalidCertificates = False
    DiretorioLog = 'Log\'
    Ambiente = akHomologacao
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 0
    EmailSettings.ConteudoHtml = False
    EmailSettings.UseSecureBlackBox = False
    DiretorioEsquemas = 
      'C:\Program Files (x86)\Borland\Delphi7\Bin\Esquemasvm50vm50vm50v' +
      'm50vm50vm50vm50vm50vm50vm50vm50\'
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
    Left = 632
    Top = 768
  end
  object spdNFeDataSets: TspdNFeDataSets
    VersaoEsquema = pl_005a
    ValidaRegrasNegocio = False
    ValidaRegrasNegocioTecno = False
    UsarDatasetExportacao = False
    Left = 600
    Top = 768
  end
end
