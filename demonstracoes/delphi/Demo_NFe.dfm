object Demo_NFe_Form: TDemo_NFe_Form
  Left = 560
  Top = 179
  Width = 746
  Height = 673
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
    Left = 1
    Top = 0
    Width = 729
    Height = 385
    ActivePage = TabImpressao
    TabOrder = 0
    object tbsNfe: TTabSheet
      Caption = 'NFe'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 88
        Width = 337
        Height = 265
        Caption = 'Dados'
        TabOrder = 0
        object Label5: TLabel
          Left = 8
          Top = 18
          Width = 14
          Height = 13
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtCNPJ: TLabeledEdit
          Left = 8
          Top = 82
          Width = 321
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
          OnChange = edtCNPJChange
          OnKeyPress = edtCNPJKeyPress
        end
        object edtID: TLabeledEdit
          Left = 8
          Top = 132
          Width = 321
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
          Width = 321
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
          Width = 321
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
        object cbUF: TComboBox
          Left = 8
          Top = 37
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnChange = cbUFChange
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
        object rdProducao: TRadioButton
          Left = 216
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Produ'#231#227'o'
          TabOrder = 5
          OnClick = rdProducaoClick
        end
        object rdHomologacao: TRadioButton
          Left = 216
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Homologa'#231#227'o'
          TabOrder = 6
          OnClick = rdHomologacaoClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 342
        Top = 0
        Width = 377
        Height = 353
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
          Left = 145
          Top = 328
          Width = 6
          Height = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clOlive
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbCertificado: TComboBox
          Left = 8
          Top = 32
          Width = 363
          Height = 21
          ItemHeight = 13
          TabOrder = 12
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
          TabOrder = 0
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
          TabOrder = 1
          OnClick = btnLoadConfigClick
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
          TabOrder = 2
          OnClick = btnGerarDSClick
        end
        object btnGeraXMLTX2: TButton
          Left = 210
          Top = 96
          Width = 160
          Height = 31
          Caption = '3.1 - Gerar XML TX2 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnGeraXMLTX2Click
        end
        object btnStatus: TButton
          Left = 211
          Top = 240
          Width = 160
          Height = 35
          Caption = 'Verificar Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
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
          TabOrder = 4
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
          TabOrder = 5
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
          TabOrder = 6
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
          TabOrder = 7
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
          TabOrder = 8
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
          TabOrder = 10
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
          TabOrder = 9
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
          OnChange = edCnpjShChange
          OnKeyPress = edCnpjShKeyPress
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
          OnChange = edTokenShChange
        end
      end
    end
    object TabImpressao: TTabSheet
      Caption = 'Testando Impress'#227'o'
      ImageIndex = 1
      object gbImpressao: TGroupBox
        Left = 0
        Top = 8
        Width = 721
        Height = 175
        Caption = 'Impress'#227'o'
        TabOrder = 0
        object btnPrever: TButton
          Left = 15
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
          Left = 15
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
          Left = 167
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
          TabOrder = 3
          OnClick = btnImprimirClick
        end
        object btnExportPdf: TButton
          Left = 167
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
          TabOrder = 4
          OnClick = btnExportPdfClick
        end
        object btnVisualizar: TButton
          Left = 15
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
          TabOrder = 2
          OnClick = btnVisualizarClick
        end
      end
    end
    object TabDemaisMetodos: TTabSheet
      Caption = 'Demais M'#233'todos'
      ImageIndex = 2
      object GroupBox4: TGroupBox
        Left = 0
        Top = 8
        Width = 721
        Height = 177
        Caption = 'Outros M'#233'todos'
        TabOrder = 0
        object btnInutilizarNfe: TButton
          Left = 16
          Top = 72
          Width = 138
          Height = 40
          Caption = 'Inutilizar NF-e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnInutilizarNfeClick
        end
        object btnConvertXmlDataset: TButton
          Left = 16
          Top = 24
          Width = 138
          Height = 40
          Caption = 'Converter XML DS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnConvertXmlDatasetClick
        end
        object btnConsultaCadastro: TButton
          Left = 168
          Top = 23
          Width = 138
          Height = 40
          Caption = 'Consultar Cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnConsultaCadastroClick
        end
        object btnEventos: TButton
          Left = 16
          Top = 122
          Width = 138
          Height = 40
          Caption = 'Eventos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnEventosClick
        end
        object btEmailArquivo: TButton
          Left = 167
          Top = 72
          Width = 138
          Height = 40
          Caption = 'Email por Arquivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btEmailArquivoClick
        end
        object btnEnviarEmail: TButton
          Left = 167
          Top = 122
          Width = 138
          Height = 40
          Caption = 'Enviar Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnEnviarEmailClick
        end
        object btnConsultarDestinadas: TButton
          Left = 318
          Top = 23
          Width = 177
          Height = 40
          Caption = 'Consultar Notas Destinadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = btnConsultarDestinadasClick
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Ajuda'
      ImageIndex = 3
      object Button3: TButton
        Left = 216
        Top = 48
        Width = 281
        Height = 49
        Caption = 'Guia geral '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 216
        Top = 101
        Width = 281
        Height = 49
        Caption = 'Propriedades Componente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 216
        Top = 154
        Width = 281
        Height = 49
        Caption = 'M'#233'todos Componente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 217
        Top = 208
        Width = 281
        Height = 49
        Caption = 'Dicion'#225'rio Tx2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = Button6Click
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 384
    Width = 729
    Height = 250
    ActivePage = tabXml
    TabOrder = 1
    object tabXml: TTabSheet
      Caption = 'Xml'
      object mmXml: TMemo
        Left = 0
        Top = 0
        Width = 721
        Height = 222
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
    object tabXmlEnvio: TTabSheet
      Caption = 'Xml Enviado'
      ImageIndex = 1
      object mmXmlEnvio: TMemo
        Left = 0
        Top = 0
        Width = 721
        Height = 222
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
    object tabXmlRetorno: TTabSheet
      Caption = 'Xml Retorno'
      ImageIndex = 2
      object mmXmlRetorno: TMemo
        Left = 0
        Top = 0
        Width = 721
        Height = 222
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
    object TabSheet5: TTabSheet
      Caption = 'Xml Cancelado Envio'
      ImageIndex = 3
      object mmXmlCanceladoEnvio: TMemo
        Left = 0
        Top = 0
        Width = 721
        Height = 222
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
    object TabSheet6: TTabSheet
      Caption = 'Xml Cancelado Retorno'
      ImageIndex = 4
      object mmXmlCanceladoRetorno: TMemo
        Left = 0
        Top = 0
        Width = 721
        Height = 222
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
    object tabXmlImpressao: TTabSheet
      Caption = 'Xml Impressao/Destinatario'
      ImageIndex = 5
      object mmXmlCompleto: TMemo
        Left = 0
        Top = 0
        Width = 721
        Height = 222
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
    Left = 552
    Top = 1
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
    DanfeSettings.MensagemIcmsDesonerado = False
    Versao = '12.1.74.6369'
    CaracteresRemoverAcentos = #225#233#237#243#250#224#232#236#242#249#226#234#238#244#251#228#235#239#246#252#227#245#241#231#193#201#205#211#218#192#200#204#210#217#194#202#206#212#219#196#203#207#214#220#195#213#209#199#186#170
    TipoCertificado = ckMemory
    DiretorioTemplates = 
      'C:\Program Files (x86)\Borland\Delphi7\Bin\Templatesvm50vm50vm50' +
      'vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50' +
      'vm50vm50vm50vm50vm50vm50vm50vm50vm50\'
    IgnoreInvalidCertificates = False
    DiretorioLog = 'C:\Program Files (x86)\Borland\Delphi7\Bin\Log\'
    Ambiente = akHomologacao
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 0
    EmailSettings.ConteudoHtml = False
    EmailSettings.UseSecureBlackBox = False
    DiretorioEsquemas = 
      'C:\Program Files (x86)\Borland\Delphi7\Bin\Esquemasvm50vm50vm50v' +
      'm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50vm50v' +
      'm50vm50vm50vm50vm50vm50vm50vm50vm50\'
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
    Left = 520
  end
  object spdNFeDataSets: TspdNFeDataSets
    VersaoEsquema = pl_005a
    ValidaRegrasNegocio = False
    ValidaRegrasNegocioTecno = False
    UsarDatasetExportacao = False
    Left = 488
  end
end
