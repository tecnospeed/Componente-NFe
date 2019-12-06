
{
Utilitário de exemplo para uso do componente TecnoSpeed NFe
para integração com o sistema de Notas Fiscais Eletrônicas da Receita Federal,
em conjunto com as Secretarias de Fazenda estaduais.

@bold(Site oficial)
@br
http://www.tecnospeed.com.br

@author(TecnoSpeed - Consultoria em TI (http://www.tecnospeed.com.br))
@created(Julho/2010)
}
unit Exemplo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, IniFiles, ShellAPI, spdNFeDataSets,
  spdNFe, spdNFeType, spdNFeUtils, jpeg, Mask, OleCtrls, SHDocVw, ExtDlgs,
  CheckLst, FileCtrl, uICMS00, uICMS10, uICMS20, uICMS30, uICMS40, uICMS51,
  uICMS60, uICMS70, uICMS90, uICMSPart, uICMSST, uICMSN101, uICMS102,
  uICMSSN201, uICMSSN202, uICMSSN500, uICMSSN900, uIPI, uIPITrib, uIPINT, uII,
  uPISAliq, uPISQtde, uPISNT, uPISOutr, uPISST, uCOFINSAliq, uCOFINSQtde,
  uCOFINSNT, uCOFINSOutr, uCOFINSST, uISSQN, Printers, Contnrs, 
  Grids, Menus, Math, StrUtils, ValidadorClientX_TLB, MSXML6_TLB, uImportacaoXmlNFe,
  {$I GovTLB.inc};

type

  TfrmPrincipal = class(TForm)
    pnlPublicitario: TPanel;
    pnlPrincipal: TPanel;
    tvNFe: TTreeView;
    pnlRodape: TPanel;
    btnAvancar: TButton;
    btnVoltar: TButton;
    nbControle: TNotebook;
    pnlComunicacao: TPanel;
    lblTituloStatus: TLabel;
    mmStatus: TMemo;
    btnStatus: TButton;
    lblLogEnvio: TLabel;
    lblLogRetorno: TLabel;
    lblDadosEmitente: TLabel;
    pnlEmitente: TPanel;
    pnlDestinatario: TPanel;
    lblDestinatario: TLabel;
    pnlModelosNotas: TPanel;
    rgRamosEspecificos: TRadioGroup;
    cbExportacao: TCheckBox;
    gbOutrosDados: TGroupBox;
    cbNotaRef: TCheckBox;
    cbNotaConjugada: TCheckBox;
    cbTransportadora: TCheckBox;
    cbFatDup: TCheckBox;
    pnlAssinatura: TPanel;
    lblXmlNota: TLabel;
    mmXmlNota: TMemo;
    btnAssinarNota: TButton;
    lblXmlAssinado: TLabel;
    mmXmlAssinado: TMemo;
    pnlEnviarNota: TPanel;
    btnEnviarNota: TButton;
    edtChaveNota: TEdit;
    lblChaveNota: TLabel;
    edtNumeroRecibo: TEdit;
    lblNumeroRecibo: TLabel;
    mmEnviarNota: TMemo;
    pnlConsultarRecibo: TPanel;
    lblNumeroReciboConsulta: TLabel;
    edtNumeroReciboConsulta: TEdit;
    btnConsultarRecibo: TButton;
    lblOu: TLabel;
    lblChaveNotaConsulta: TLabel;
    edtChaveNotaConsulta: TEdit;
    btnConsultarChave: TButton;
    edtProtocoloAutorizacao: TEdit;
    lblProtocoloAutorizacao: TLabel;
    mmConsultarRecibo: TMemo;
    lblMaisConsultarRecibo: TLabel;
    lblMaisConsultarChave: TLabel;
    pnlInfoArquivo: TPanel;
    lblArquivo: TLabel;
    lblCaminhoArquivo: TLabel;
    mmArquivo: TMemo;
    lblRazaoSocial: TLabel;
    edtRazaoSocialEmit: TEdit;
    Label10: TLabel;
    lblEnderecoEmitente: TLabel;
    edtEnderecoEmitente: TEdit;
    Label11: TLabel;
    edtNumeroEmitente: TEdit;
    lblNumero: TLabel;
    Label12: TLabel;
    lblBairroEmitente: TLabel;
    edtBairro: TEdit;
    edtCEPEmit: TEdit;
    lblCepEmit: TLabel;
    Label13: TLabel;
    lblNomeCidadeEmit: TLabel;
    edtNomeCidadeEmit: TEdit;
    Label14: TLabel;
    edtIBGEEmit: TEdit;
    lblIBGEEmit: TLabel;
    Label15: TLabel;
    lblMaisIBGEEmit: TLabel;
    edtNomeCidadeDest: TEdit;
    edtIBGECidadeDest: TEdit;
    lblMaisIBGECidadeDest: TLabel;
    Label17: TLabel;
    lblIBGECidadeDest: TLabel;
    lblNomeCidadeDest: TLabel;
    Label20: TLabel;
    edtBairroDest: TEdit;
    lblBairroDest: TLabel;
    edtCepDest: TEdit;
    lblCepDest: TLabel;
    Label23: TLabel;
    edtNumeroDest: TEdit;
    lblNumeroDest: TLabel;
    Label25: TLabel;
    edtEnderecoDest: TEdit;
    Label26: TLabel;
    lblEnderecoDest: TLabel;
    edtRazaoSocialDest: TEdit;
    lblRazaoSocialDest: TLabel;
    Label29: TLabel;
    pnlEnviarNFeDest: TPanel;
    pnlDanfe: TPanel;
    btnEditar: TButton;
    btnExportar: TButton;
    btnImprimir: TButton;
    btnVisualizar: TButton;
    pnlEmailConfig: TPanel;
    btnEnviarNFeDest: TButton;
    lblMaisVeicNovos: TLabel;
    lblArmamento: TLabel;
    lblCana: TLabel;
    lblCombustiveis: TLabel;
    lblMedicamento: TLabel;
    lblMaisExportacao: TLabel;
    lblMaisNotaRef: TLabel;
    lblMaisNotaConj: TLabel;
    lblTransportadora: TLabel;
    lblFatDup: TLabel;
    lblStatusRodape: TLabel;
    lblNomeArquivoLogEnvio: TLabel;
    lblNomeArquivoLogRetorno: TLabel;
    odlgServHomolog: TOpenDialog;
    odlgServProd: TOpenDialog;
    odlgModRetrato: TOpenDialog;
    odlgModPaisagem: TOpenDialog;
    odlgLogoEmit: TOpenDialog;
    lblCpfCnpjDest: TLabel;
    edtCpfCnpjDest: TEdit;
    Label16: TLabel;
    edtComplementoDest: TEdit;
    lblComplementoDest: TLabel;
    Label21: TLabel;
    edtTelefoneDest: TEdit;
    lblTelefoneDest: TLabel;
    lblIEDest: TLabel;
    edtIEDest: TEdit;
    edtISUFDest: TEdit;
    lblISUFDest: TLabel;
    lblEmailDest: TLabel;
    edtEmailDest: TEdit;
    edtPais: TEdit;
    lblNomePais: TLabel;
    edtIBGEPaisDest: TEdit;
    lblIBGEPaisDest: TLabel;
    lblMaisIBGEPaisDest: TLabel;
    lblUFDest: TLabel;
    Label22: TLabel;
    lblCpfCnpjEmit: TLabel;
    Label27: TLabel;
    edtCpfCnpjEmit: TEdit;
    lblComplementoEmit: TLabel;
    edtComplementoEmit: TEdit;
    Label30: TLabel;
    lblUFEmit: TLabel;
    lblMaisPaisEmit: TLabel;
    edtIBGEPaisEmit: TEdit;
    lblIBGEPaisEmit: TLabel;
    edtPaisEmit: TEdit;
    lblPaisEmit: TLabel;
    edtTelefoneEmit: TEdit;
    lblTelefoneEmit: TLabel;
    lblIEEmit: TLabel;
    edtIEEmit: TEdit;
    lblIESTEmit: TLabel;
    edtIESTEmit: TEdit;
    edtIMEmit: TEdit;
    lblIMEmit: TLabel;
    edtCNAEEmit: TEdit;
    lblCNAEEmit: TLabel;
    lblCRTEmit: TLabel;
    edtEmailConfigDest: TEdit;
    lblEmailConfigDest: TLabel;
    edtEmailConfigRem: TEdit;
    lblEmailConfigRem: TLabel;
    edtEmailConfigServ: TEdit;
    lblEmailConfigServ: TLabel;
    lblEmailConfigAssunto: TLabel;
    edtEmailConfigAssunto: TEdit;
    mmEmailConfigMens: TMemo;
    lblEmailConfigMens: TLabel;
    lblEmailConfigUsu: TLabel;
    edtEmailConfigUsu: TEdit;
    lblEmailConfigSenha: TLabel;
    edtEmailConfigPorta: TEdit;
    lblEmailConfigPorta: TLabel;
    lblEmailConfigCc: TLabel;
    edtEmailConfigCc: TEdit;
    lblEmailConfigCco: TLabel;
    edtEmailConfigCco: TEdit;
    meEmailConfigSenha: TMaskEdit;
    cbEmailConfigAut: TCheckBox;
    mmStatusGeral: TMemo;
    edtNomeFantasiaEmit: TEdit;
    lblNomeFantasiaEmit: TLabel;
    Label19: TLabel;
    edtEmailXmlDest: TEdit;
    lblEmailXmlDest: TLabel;
    cbUFEmit: TComboBox;
    cbUFDest: TComboBox;
    pgPrincipal: TPageControl;
    TabSheet1: TTabSheet;
    pnlConfiguracao: TPanel;
    lblTipoCertificado: TLabel;
    lblMaisTipoCertificado: TLabel;
    lblObrigatorio: TLabel;
    lblCNPJ: TLabel;
    Label1: TLabel;
    lblUF: TLabel;
    Label2: TLabel;
    lblAmbiente: TLabel;
    Label3: TLabel;
    lblNomeCertificado: TLabel;
    Label4: TLabel;
    lblMaisNomeCertificado: TLabel;
    lblServHomolog: TLabel;
    Label5: TLabel;
    lblMaisServHomolog: TLabel;
    Label7: TLabel;
    lblServProd: TLabel;
    lblMaisServProd: TLabel;
    lblVersao: TLabel;
    lblConfigXmlDest: TLabel;
    Label18: TLabel;
    lblMaxSizeLoteEnvio: TLabel;
    lblDiretorioLog: TLabel;
    lblDirEsquemas: TLabel;
    lblDirTemplates: TLabel;
    cbTipoCertificado: TComboBox;
    edtCNPJ: TEdit;
    cbAmbiente: TComboBox;
    cbNomeCertificado: TComboBox;
    btnObterValidade: TButton;
    edtServHomolog: TEdit;
    btnServHolog: TButton;
    edtServProd: TEdit;
    btnServProd: TButton;
    cbVersao: TComboBox;
    edtConfigXmlDest: TEdit;
    btnXmlDest: TButton;
    edtMaxSizeLoteEnvio: TEdit;
    cbValidEsquema: TCheckBox;
    cbAnexarDanfePdf: TCheckBox;
    edtDiretorioLog: TEdit;
    btnDiretorioLog: TButton;
    cbIgnoreInvCert: TCheckBox;
    edtDirEsquemas: TEdit;
    edtDirTemplates: TEdit;
    btnDirEsquemas: TButton;
    btnDirTemplates: TButton;
    cbConfigUF: TComboBox;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    pnlProxy: TPanel;
    edtConfigUsu: TEdit;
    lblConfigUsu: TLabel;
    lblConfigSenha: TLabel;
    edtConfigSenha: TEdit;
    lblProxy: TLabel;
    edtConfigProxy: TEdit;
    lblConfigTimeOut: TLabel;
    edtTimeOut: TEdit;
    pnlConfigDanfe: TPanel;
    edtFraseContingencia: TEdit;
    lblFraseContingencia: TLabel;
    lblModRetrato: TLabel;
    Label8: TLabel;
    lblMaisModRetrato: TLabel;
    edtModRetrato: TEdit;
    btnModRetrato: TButton;
    edtModPaisagem: TEdit;
    edtFraseHomolog: TEdit;
    lblFraseHomolog: TLabel;
    lblModPaisagem: TLabel;
    lblMaisModPaisagem: TLabel;
    btnModPaisagem: TButton;
    edtCopias: TEdit;
    lblCopias: TLabel;
    lblLogoEmitente: TLabel;
    edtLogoEmitente: TEdit;
    btnLogoEmitente: TButton;
    pcNotaGerada: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    wbNotaGerada: TWebBrowser;
    pcXmlAssinado: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    wbXmlAssinado: TWebBrowser;
    pcNotaEnviada: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    wbNotaEnviada: TWebBrowser;
    pcNotaConsulta: TPageControl;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    wbNotaConsulta: TWebBrowser;
    pcXmlDest: TPageControl;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    wbXmlDest: TWebBrowser;
    pcStatusServico: TPageControl;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    wbStatusServico: TWebBrowser;
    edtcStatStatusServ: TEdit;
    lblcStatStatusServ: TLabel;
    edtMotivoStatusServ: TEdit;
    lblMotivoStatusServ: TLabel;
    edtStatusEnviar: TEdit;
    lblStatusEnviar: TLabel;
    lblMotivoEnviar: TLabel;
    edtMotivoEnviar: TEdit;
    edtStatusConsulta: TEdit;
    lblStatusConsulta: TLabel;
    edtMotivoConsulta: TEdit;
    lblMotivoConsulta: TLabel;
    btnLogEnvio: TButton;
    btnLogRetorno: TButton;
    btnAbrirXmlDest: TButton;
    Label6: TLabel;
    Label9: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    cbCRTEmit: TComboBox;
    btnSaveConfig: TButton;
    wbBanner: TWebBrowser;
    btnLoadConfig: TButton;
    Label31: TLabel;
    edtLineDelimiter: TEdit;
    lblLineDelimiter: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    lblMaisStatMotTest: TLabel;
    lblMaisStatMotEnvio: TLabel;
    lblMaisStatMotCons: TLabel;
    lblMaisNotaBasica: TLabel;
    pnlCancelar: TPanel;
    lblChaveCancelar: TLabel;
    edtChaveCancelar: TEdit;
    lblProtCancelar: TLabel;
    edtProtCancelar: TEdit;
    btnCancelar: TButton;
    pcCancelar: TPageControl;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    mmCancelar: TMemo;
    wbCancelar: TWebBrowser;
    lblStatusCanc: TLabel;
    edtStatusCanc: TEdit;
    lblMotivo: TLabel;
    edtMotivoCanc: TEdit;
    lblMaisStatMotCanc: TLabel;
    pnlInutilizar: TPanel;
    pcInutilizar: TPageControl;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    mmInutilizar: TMemo;
    wbInutilizar: TWebBrowser;
    btnInutilizar: TButton;
    lblStatInut: TLabel;
    edtStatInut: TEdit;
    lblMotInut: TLabel;
    edtMotInut: TEdit;
    lblMaisInut: TLabel;
    lblAnoInut: TLabel;
    edtAnoInut: TEdit;
    lblModeloInut: TLabel;
    edtModeloInut: TEdit;
    lblSerieInut: TLabel;
    edtSerieInut: TEdit;
    lblNFeIniInut: TLabel;
    edtNfeIniInut: TEdit;
    lblNFeFinInut: TLabel;
    edtNFeFinInut: TEdit;
    Label38: TLabel;
    lblAnexar: TLabel;
    edtAnexar: TEdit;
    btnAnexar: TButton;
    lblAnexos: TLabel;
    odlgAnexos: TOpenDialog;
    clbAnexosEmail: TCheckListBox;
    lblJustificativaInut: TLabel;
    edtJustificativaInut: TEdit;
    lblJustificativaCanc: TLabel;
    edtJustificativaCanc: TEdit;
    pnlEnviarCancDest: TPanel;
    pcEnviarCancDest: TPageControl;
    TabSheet20: TTabSheet;
    TabSheet21: TTabSheet;
    lblArquivoCancDest: TLabel;
    lblCaminhoCancDest: TLabel;
    btnCancDest: TButton;
    mmCancDest: TMemo;
    wbCancDest: TWebBrowser;
    edtEmailDestCanc: TEdit;
    lblEmailDestCanc: TLabel;
    btnEnviarCancDest: TButton;
    lblDelimitador: TPanel;
    gbICMS: TGroupBox;
    gbPIS: TGroupBox;
    gbCOFINS: TGroupBox;
    gbISSQN: TGroupBox;
    cbICMS: TComboBox;
    cbPIS: TComboBox;
    cbCOFINS: TComboBox;
    cbISSQN: TComboBox;
    gbIPI: TGroupBox;
    cbIPI: TComboBox;
    gbII: TGroupBox;
    cbII: TComboBox;
    gbPISST: TGroupBox;
    gbCOFINSST: TGroupBox;
    cbPISST: TComboBox;
    cbCOFINSST: TComboBox;
    pnlAssinarFS: TPanel;
    pnlImprimirFS: TPanel;
    pnlEnviarServEstFS: TPanel;
    pnlConsultarFS: TPanel;
    pnlEnviarXmlDestFS: TPanel;
    lblAssinarNotaGeradaFS: TLabel;
    pcAssinarNotaGeradaFS: TPageControl;
    TabSheet36: TTabSheet;
    TabSheet37: TTabSheet;
    btnAssinarFS: TButton;
    lblXmlAssinadoFS: TLabel;
    pcXmlAssinadoFS: TPageControl;
    TabSheet38: TTabSheet;
    TabSheet39: TTabSheet;
    mmXMLNotaFS: TMemo;
    wbXMLNotaFS: TWebBrowser;
    mmXmlAssinadoFS: TMemo;
    wbXmlAssinadoFS: TWebBrowser;
    btnImprimirFS: TButton;
    pcEnviaServEstFS: TPageControl;
    TabSheet42: TTabSheet;
    TabSheet43: TTabSheet;
    btnEnviarServEstFS: TButton;
    lblStatusEnviarServEstFS: TLabel;
    edtStatusEnviarServEstFS: TEdit;
    lblMotivoEnviarServEstFS: TLabel;
    edtMotivoEnviarServEstFS: TEdit;
    mmEnviarServEstFS: TMemo;
    wbEnviarServEstFS: TWebBrowser;
    lblNumeroReciboFS: TLabel;
    edtNumeroReciboFS: TEdit;
    btnConsultarReciboFS: TButton;
    lblChaveNotaFS: TLabel;
    edtChaveNotaFS: TEdit;
    btnConsultarChaveFS: TButton;
    lblOuFS: TLabel;
    lblProtocoloFS: TLabel;
    edtProtocoloFS: TEdit;
    pcConsultarFS: TPageControl;
    TabSheet44: TTabSheet;
    TabSheet45: TTabSheet;
    lblStatusConsultarFS: TLabel;
    edtStatusConsultarFS: TEdit;
    lblMotivoConsultarFS: TLabel;
    edtMotivoConsultarFS: TEdit;
    mmConsultarFS: TMemo;
    wbConsultarFS: TWebBrowser;
    lblEmailDestFS: TLabel;
    edtEmailDestFS: TEdit;
    lblAnexarFS: TLabel;
    edtAnexarFS: TEdit;
    btnAnexarFS: TButton;
    lblAnexosFS: TLabel;
    clbAnexosFS: TCheckListBox;
    lblDelimitadorRodape: TPanel;
    lblTipoEmisNormal: TLabel;
    lblTipoEmisContNormal: TLabel;
    imgFluxoFS: TImage;
    imgFluxoNFeNormal: TImage;
    btnEditarFS: TButton;
    btnExportarFS: TButton;
    btnVisualizarFS: TButton;
    lblChaveEnvServEstFS: TLabel;
    edtChaveEnvServEstFS: TEdit;
    lblNumRecEnvServEstFS: TLabel;
    edtNumRecEnvServEstFS: TEdit;
    lblTipoEmisFS: TLabel;
    odlgAnexosFS: TOpenDialog;
    btnEnviarEmailDestFS: TButton;
    cbTipoEmissaoFS: TComboBox;
    btnPreverDanfe: TButton;
    edtArqExportDanfe: TEdit;
    btnExportDanfe: TButton;
    edtArqExportFS: TEdit;
    btnArqExportFS: TButton;
    odlgExportarDanfe: TOpenDialog;
    cbImpressorasDanfe: TComboBox;
    cbImpressorasFS: TComboBox;
    odlgExportarFS: TOpenDialog;
    lblMaisEnviarFS: TLabel;
    lblMaisConsFS: TLabel;
    lblMaisConsRecFS: TLabel;
    lblMaisConsChaveFS: TLabel;
    lblTituloModelosNotas: TLabel;
    lblTituloConfiguracao: TLabel;
    lblTituloEmail: TLabel;
    lblTituloInutilizar: TLabel;
    lblTituloAssinatura: TLabel;
    cbxAnexoObrigatorio: TCheckBox;
    lblTituloEnvNFeDest: TLabel;
    lblTituloEnviar: TLabel;
    lblTituloConsultar: TLabel;
    lblTituloInfoArquivo: TLabel;
    lblTituloCancelar: TLabel;
    lblTituloEnviarCancDest: TLabel;
    lblTituloDanfe: TLabel;
    lblTituloAssinarGeradaFS: TLabel;
    lblTituloImprimirFS: TLabel;
    lblTituloEnvServEstFS: TLabel;
    lblConsultarFS: TLabel;
    cbxAnexoObrigatorioFS: TCheckBox;
    lblTituloEnvXMLDestFS: TLabel;
    edtPinCode: TLabeledEdit;
    edtModeloRtm: TEdit;
    btnModeloRtm: TButton;
    odlgModeloRtm: TOpenDialog;
    lblModeloRTM: TLabel;
    lbLocalExportacao: TLabel;
    lbImpressoras: TLabel;
    pnlManifestacao: TPanel;
    lblChaveManifestacao: TLabel;
    edtChaveManisfestacao: TEdit;
    lblCNPJManifestacao: TLabel;
    edtCNPJManifestacao: TEdit;
    lblJustificativaManifestacao: TLabel;
    edtJustivicativaManifestacao: TEdit;
    pgManifestacao: TPageControl;
    TabSheet30: TTabSheet;
    mmManifestacao: TMemo;
    TabSheet31: TTabSheet;
    wbManifestacao: TWebBrowser;
    lblStatusManisfestacao: TLabel;
    edtStatusManifestacao: TEdit;
    lblMotivoManifestacao: TLabel;
    edtMotivoManifestacao: TEdit;
    lblMaisManifestacao: TLabel;
    cbTipoEvento: TComboBox;
    Label40: TLabel;
    edtDataEvento: TEdit;
    btnDataEvento: TButton;
    btnEnviarManifestacao: TButton;
    cbFusoManifestacao: TComboBox;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    pnlDownloadNFe: TPanel;
    lblDownloadNFe: TLabel;
    lblChaveDownloadNFe: TLabel;
    Label55: TLabel;
    edtChaveDownload: TEdit;
    pgDownloadNFe: TPageControl;
    TabSheet50: TTabSheet;
    mmDownloadNFe: TMemo;
    TabSheet51: TTabSheet;
    wbDownloadNFe: TWebBrowser;
    btnDownloadNFe: TButton;
    mmEventoDownloadNFe: TMemo;
    lblEventoDownloadNFe: TLabel;
    lblStatusDownloadNFe: TLabel;
    edtStatusDownloadNFe: TEdit;
    lblMotivoDownloadNFe: TLabel;
    edtMotivoDownloadNFe: TEdit;
    lblMaisDownloadNFe: TLabel;
    pnlCancelarNFeEvento: TPanel;
    lblCancelarNFeEvento: TLabel;
    lblChaveCancNFeEvento: TLabel;
    edtChaveCancNFeEvento: TEdit;
    lblProtCancNFeEvento: TLabel;
    edtProtCancNFeEvento: TEdit;
    lblJustCancNFeEvento: TLabel;
    edtJustificativaCancNFeEvento: TEdit;
    pgCancelarNFeEvento: TPageControl;
    TabSheet52: TTabSheet;
    mmCancelarNFeEvento: TMemo;
    TabSheet53: TTabSheet;
    wbCancelarNFeEvento: TWebBrowser;
    lblStatusCancNFeEvento: TLabel;
    edtStatusCancNFeEvento: TEdit;
    lblMotivoCancNFeEvento: TLabel;
    edtMotivoCancNFeEvento: TEdit;
    lblMaisCancNFeEvento: TLabel;
    lblFusoCancNFeEvento: TLabel;
    Label56: TLabel;
    cbFusoCancNFeEvento: TComboBox;
    lblDataCancNFeEvento: TLabel;
    edtDataCancNFeEvento: TEdit;
    Label58: TLabel;
    Label53: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    btnCancelarNFeEvento: TButton;
    btnDataCancNFeEvento: TButton;
    rgEnvio: TRadioGroup;
    rbEnvSinc: TRadioButton;
    rbEnvAssinc: TRadioButton;
    edtAutXMLCNPJCPF: TEdit;
    lblAutXML: TLabel;
    chkCompactado: TCheckBox;
    chkEmailHtml: TCheckBox;
    btnPDFPreverAssinado: TButton;
    btnValidador: TButton;
    imgFluxoEPEC: TImage;
    pnlAssinarEPEC: TPanel;
    lblassinarEPEC5: TLabel;
    lblassinarEPEC: TLabel;
    pgcassinarEPEC: TPageControl;
    tsassinarEPEC: TTabSheet;
    mmoassinarEPEC: TMemo;
    tsassinarEPEC6: TTabSheet;
    wbassinarEPEC: TWebBrowser;
    lblassinarEPEC3: TLabel;
    lblassinarEPEC4: TLabel;
    btnassinarNotaEPEC: TButton;
    lblassinarEPEC2: TLabel;
    pcNotaAssinadaEPEC: TPageControl;
    ts3: TTabSheet;
    mmoEPECAssinado: TMemo;
    ts4: TTabSheet;
    wbassinarEPEC1: TWebBrowser;
    Label60: TLabel;
    lblMensagem: TLabel;
    btnMontarEPEC: TButton;
    pcMontarEPEC: TPageControl;
    tsTextoMontarEPEC: TTabSheet;
    tsBrowserMontarEPEC: TTabSheet;
    mmoMontarEPEC: TMemo;
    wbMontarEPEC: TWebBrowser;
    lblDataHoraEventoEPEC: TLabel;
    edtDhEventoEPEC: TEdit;
    btnDHEventoEPEC: TButton;
    cbbFusoEPEC: TComboBox;
    lblFusoEPEC: TLabel;
    pnlAssinarXMLEPEC: TPanel;
    lblAssinarEPECMontado: TLabel;
    lblAssinarEPECMontado1: TLabel;
    pcAssinarEPECMontado1: TPageControl;
    tsAssinarEPECMontado1: TTabSheet;
    mmoAssinarEPECMontado1: TMemo;
    tsAssinarEPECMontado2: TTabSheet;
    wbAssinarEPECMontado1: TWebBrowser;
    btnAssinarEPECMontado1: TButton;
    lblAssinarEPECMontado2: TLabel;
    pcAssinarEPECMontado2: TPageControl;
    tsAssinarEPECMontado5: TTabSheet;
    mmoAssinarEPECMontadoAssinado: TMemo;
    tsAssinarEPECMontado6: TTabSheet;
    wbAssinarEPECMontadoAssinado: TWebBrowser;
    pnlEnviarEPEC: TPanel;
    lblEnviarEPEC1: TLabel;
    btnEnviarEPEC: TButton;
    pcEnviarEPEC1: TPageControl;
    tsEnviarEPEC1: TTabSheet;
    mmoEnviarEPEC1: TMemo;
    tsEnviarEPEC2: TTabSheet;
    wbEnviarEPEC1: TWebBrowser;
    lblEnviarEPEC2: TLabel;
    edtEnviarEPECStatus: TEdit;
    lblEnviarEPEC3: TLabel;
    edtEnviarEPECmotivo: TEdit;
    lblEnviarEPEC4: TLabel;
    lblEnviarEPEC5: TLabel;
    pnlImprimirEPEC: TPanel;
    lblImprimirEPEC: TLabel;
    btnEditarEPEC: TButton;
    btnExportarEPEC: TButton;
    btnImprimirEPEC: TButton;
    btnVisualizarEPEC: TButton;
    cbbImpressorasEPEC: TComboBox;
    edtImprimirEPEC: TEdit;
    btnImprimirEPEC5: TButton;
    pnlEnvServEstEPEC: TPanel;
    pgcEnvServEstEPEC: TPageControl;
    tsEnvServEstEPEC1: TTabSheet;
    mmoEnvServEstEPEC1: TMemo;
    lblEnvServEstEPEC1: TLabel;
    lblEnvServEstEPEC2: TLabel;
    lblEnvServEstEPEC3: TLabel;
    lblEnvServEstEPEC4: TLabel;
    lblEnvServEstEPEC5: TLabel;
    lblEnvServEstEPEC6: TLabel;
    edtEnvServEstEPECStatus: TEdit;
    edtEnvServEstEPECNRecibo: TEdit;
    edtEnvServEstEPECMotivo: TEdit;
    edtEnvServEstEPECChave: TEdit;
    btnEnvServEstEPEC1: TButton;
    pnlConsultarEPEC: TPanel;
    pgcConsultarEPEC1: TPageControl;
    tsConsultarEPEC1: TTabSheet;
    mmoConsultarEPEC1: TMemo;
    tsConsultarEPEC2: TTabSheet;
    wbConsultarEPEC1: TWebBrowser;
    lblConsultarEPEC1: TLabel;
    lblConsultarEPEC2: TLabel;
    lblConsultarEPEC3: TLabel;
    lblConsultarEPEC4: TLabel;
    lblConsultarEPEC5: TLabel;
    lblConsultarEPEC6: TLabel;
    lblConsultarEPEC7: TLabel;
    lblConsultarEPEC8: TLabel;
    lblConsultarEPEC9: TLabel;
    lblConsultarEPEC10: TLabel;
    edtConsultarEPECStatus: TEdit;
    edtConsultarProtocoloEPEC: TEdit;
    edtConsultarEPECNRecibo: TEdit;
    edtConsultarEPECMotivo: TEdit;
    edtConsultarChaveEPEC: TEdit;
    btnConsultarReciboEPEC: TButton;
    btnConsultarEPEC2: TButton;
    dlgOpenEPEC: TOpenDialog;
    pnlDistribuicaoDFe: TPanel;
    lblDistribuicaoDFe: TLabel;
    edtCodUFDFe: TEdit;
    edtCNPJCPFDFe: TEdit;
    edtNSUDFe: TEdit;
    rgDFe: TRadioGroup;
    rbUltimoNSU: TRadioButton;
    rbNsuEspecifico: TRadioButton;
    lblCodUFDFe: TLabel;
    lblCNPJCPFDFe: TLabel;
    lblNSUDFe: TLabel;
    mmoDFe: TMemo;
    lblRetDFe: TLabel;
    btnEnviarDFe: TButton;
    cbPartilhaFCP: TCheckBox;
    pnlDescompactarDFe: TPanel;
    mmoDFeDescompactar: TMemo;
    lblRetornoDFe: TLabel;
    btnDescompactarDFe: TButton;
    lblDescompactarDFe: TLabel;
    strngrdNotas: TStringGrid;
    lblQtdNotas: TLabel;
    lblTextoQtdNotas: TLabel;
    btnOutrosRecursos: TButton;
    pmOutrosRecursos: TPopupMenu;
    mniDistribuicaoDFe: TMenuItem;
    mniImportacaoXmlDataset: TMenuItem;
    mniFluxoNormal: TMenuItem;
    mniFluxoFS: TMenuItem;
    N1: TMenuItem;
    mniFluxoEPEC: TMenuItem;
    N2: TMenuItem;
    lblOrgao: TLabel;
    edtOrgaoManifestacao: TEdit;
    Label39: TLabel;
    mniCancelamentoNFe: TMenuItem;
    mniManifestacaoNFe: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure lblMaisTipoCertificadoClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnServHologClick(Sender: TObject);
    procedure btnServProdClick(Sender: TObject);
    procedure btnModRetratoClick(Sender: TObject);
    procedure btnModPaisagemClick(Sender: TObject);
    procedure btnLogoEmitenteClick(Sender: TObject);
    procedure btnSetarPropriedadesClick(Sender: TObject);
    procedure btnLoadConfigClick(Sender: TObject);
    procedure btnSaveConfigClick(Sender: TObject);
    procedure spdNFeLog(const aNome, aID, aFileName: String);
    procedure btnXmlDestClick(Sender: TObject);
    procedure btnDiretorioLogClick(Sender: TObject);
    procedure btnDirEsquemasClick(Sender: TObject);
    procedure btnDirTemplatesClick(Sender: TObject);
    procedure btnObterValidadeClick(Sender: TObject);
    procedure btnAssinarNotaClick(Sender: TObject);
    procedure btnEnviarNotaClick(Sender: TObject);
    procedure btnConsultarReciboClick(Sender: TObject);
    procedure btnConsultarChaveClick(Sender: TObject);
    procedure btnEnviarNFeDestClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnLogEnvioClick(Sender: TObject);
    procedure btnLogRetornoClick(Sender: TObject);
    procedure btnAbrirXmlDestClick(Sender: TObject);
    procedure lblMaisNomeCertificadoClick(Sender: TObject);
    procedure lblMaisServHomologClick(Sender: TObject);
    procedure lblMaisServProdClick(Sender: TObject);
    procedure lblMaisModRetratoClick(Sender: TObject);
    procedure lblMaisModPaisagemClick(Sender: TObject);
    procedure lblMaisVeicNovosClick(Sender: TObject);
    procedure lblArmamentoClick(Sender: TObject);
    procedure lblCanaClick(Sender: TObject);
    procedure lblCombustiveisClick(Sender: TObject);
    procedure lblMedicamentoClick(Sender: TObject);
    procedure lblMaisExportacaoClick(Sender: TObject);
    procedure lblMaisNotaRefClick(Sender: TObject);
    procedure lblMaisNotaConjClick(Sender: TObject);
    procedure lblTransportadoraClick(Sender: TObject);
    procedure lblFatDupClick(Sender: TObject);
    procedure lblMaisIBGEEmitClick(Sender: TObject);
    procedure lblMaisPaisEmitClick(Sender: TObject);
    procedure lblMaisIBGECidadeDestClick(Sender: TObject);
    procedure lblMaisIBGEPaisDestClick(Sender: TObject);
    procedure lblMaisConsultarReciboClick(Sender: TObject);
    procedure lblMaisConsultarChaveClick(Sender: TObject);
    procedure lblMaisNotaBasicaClick(Sender: TObject);
    procedure lblMaisStatMotTestClick(Sender: TObject);
    procedure lblMaisStatMotEnvioClick(Sender: TObject);
    procedure lblMaisStatMotConsClick(Sender: TObject);
    procedure lblMaisStatMotCancClick(Sender: TObject);
    procedure lblMaisInutClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure btnAnexarClick(Sender: TObject);
    procedure btnCancDestClick(Sender: TObject);
    procedure btnEnviarCancDestClick(Sender: TObject);
    procedure cbIPIChange(Sender: TObject);
    procedure cbIIChange(Sender: TObject);
    procedure cbPISChange(Sender: TObject);
    procedure cbCOFINSChange(Sender: TObject);
    procedure cbISSQNChange(Sender: TObject);
    procedure cbICMSChange(Sender: TObject);
    procedure cbNotaConjugadaClick(Sender: TObject);
    procedure cbPISSTChange(Sender: TObject);
    procedure cbCOFINSSTChange(Sender: TObject);
    procedure rgRamosEspecificosClick(Sender: TObject);
    procedure cbIPIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbIIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbPISSTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbCOFINSSTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvNFeCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAssinarFSClick(Sender: TObject);
    procedure btnImprimirFSClick(Sender: TObject);
    procedure btnEditarFSClick(Sender: TObject);
    procedure btnExportarFSClick(Sender: TObject);
    procedure btnVisualizarFSClick(Sender: TObject);
    procedure btnEnviarServEstFSClick(Sender: TObject);
    procedure btnConsultarReciboFSClick(Sender: TObject);
    procedure btnConsultarChaveFSClick(Sender: TObject);
    procedure btnAnexarFSClick(Sender: TObject);
    procedure btnEnviarEmailDestFSClick(Sender: TObject);
    procedure cbTipoEmissaoFSChange(Sender: TObject);
    procedure btnPreverDanfeClick(Sender: TObject);
    procedure btnExportDanfeClick(Sender: TObject);
    procedure btnArqExportFSClick(Sender: TObject);
    procedure lblMaisStatMotEnvServEstDPECClick(Sender: TObject);
    procedure lblMaisConsDPECClick(Sender: TObject);
    procedure lblMaisEnviarFSClick(Sender: TObject);
    procedure lblMaisConsFSClick(Sender: TObject);
    procedure lblMaisConsRecDPECClick(Sender: TObject);
    procedure lblMaisConsRecFSClick(Sender: TObject);
    procedure lblMaisConsChaveDPECClick(Sender: TObject);
    procedure lblMaisConsChaveFSClick(Sender: TObject);
    procedure lblMaisMontarDPECClick(Sender: TObject);
    procedure lblMaisAssinarDPECClick(Sender: TObject);
    procedure Label39Click(Sender: TObject);
    procedure lblMaisEnviarSefazDPECClick(Sender: TObject);
    procedure cbTipoCertificadoChange(Sender: TObject);
    procedure btnModeloRtmClick(Sender: TObject);
    procedure btnEnviarManifestacaoClick(Sender: TObject);
    procedure btnDataEventoClick(Sender: TObject);
    procedure btnDescompactarDFeClick(Sender: TObject);
    procedure btnDownloadNFeClick(Sender: TObject);
    procedure btnCancelarNFeEventoClick(Sender: TObject);
    procedure btnDataCancNFeEventoClick(Sender: TObject);
    procedure cbNomeCertificadoDropDown(Sender: TObject);
    procedure chkEmailHtmlClick(Sender: TObject);
    procedure btnPDFPreverAssinadoClick(Sender: TObject);
    procedure btnValidadorClick(Sender: TObject);
    procedure btnassinarNotaEPECClick(Sender: TObject);
    procedure btnMontarEPECClick(Sender: TObject);
    procedure btnDHEventoEPECClick(Sender: TObject);
    procedure btnAssinarEPECMontado1Click(Sender: TObject);
    procedure btnEnviarEPECClick(Sender: TObject);
    procedure btnEditarEPECClick(Sender: TObject);
    procedure btnExportarEPECClick(Sender: TObject);
    procedure btnImprimirEPECClick(Sender: TObject);
    procedure btnVisualizarEPECClick(Sender: TObject);
    procedure btnImprimirEPEC5Click(Sender: TObject);
    procedure btnEnvServEstEPEC1Click(Sender: TObject);
    procedure btnConsultarReciboEPECClick(Sender: TObject);
    procedure btnConsultarEPEC2Click(Sender: TObject);
    procedure btnEnviarDFeClick(Sender: TObject);
    procedure mniDistribuicaoDFeClick(Sender: TObject);
    procedure mniImportacaoXmlDatasetClick(Sender: TObject);
    procedure btnOutrosRecursosClick(Sender: TObject);
    procedure mniFluxoNormalClick(Sender: TObject);
    procedure mniFluxoFSClick(Sender: TObject);
    procedure mniFluxoEPECClick(Sender: TObject);
    procedure mniCancelamentoNFeClick(Sender: TObject);
    procedure mniManifestacaoNFeClick(Sender: TObject);
  private
   	spdNFe: TspdNFe;
    spdNFeDataSets: TspdNFeDataSets;
    spdValidadorClientX: TspdValidadorClientX;
    FUtils: TspdGovUtils;
    fCnpjSoftwareHouse : string;
    procedure BtnAvancarControl;
    procedure BtnVoltarControl;
    function SetConfigPropriedades(aNFe : TspdCustomNFe) : Boolean;
    procedure SetConfigEmail(aNFe : TspdCustomNFe);
    procedure SetConfigNormal;
    procedure SetConfigEPEC;
    procedure SalvarDadosEmitente;
    procedure SalvarDadosDestinatario;
    procedure LoadDadosEmitente;
    procedure LoadDadosDestinatario;
    procedure SetNotaBasica;
    procedure SetCombosImpressao;
    procedure GerarNFeDataSet;
    procedure GerarNFeDataSetExportacao;
    procedure GerarNFeDataSetImportacao;
    procedure GerarNFeDataSetISSQN;
    procedure DestruirForms;
    function ValidarCamposEmitente:Boolean;
    function ValidarCamposDestinatario:Boolean;
    function LoadXmlDestinatario(aChaveNFe : String) : WideString;
    function RemoveCaracterEsp40(texto : String) : String;
    procedure ICMSController(ICMSItemIndex : Integer);
    procedure IPIController(IPIItemIndex : Integer);
    procedure IIController(IIItemIndex : Integer);
    procedure PISController(PISItemIndex : Integer);
    procedure PISSTController(PISSTItemIndex : Integer);
    procedure COFINSController(COFINSItemIndex : Integer);
    procedure COFINSSTController(COFINSSTItemIndex : Integer);
    procedure ISSQNController(ISSQNItemIndex : Integer);
    function GetFusoUF(const aIndexUf : integer): string;
    function GetCodigoUF(const aIndexUf : integer): string;
    function RemoveNameSpaces(aXMLString: String): string;
    procedure AvancarParaFluxo(aIndice: Integer; aNome: string);
    procedure CarregarInfAuxiliares;
  protected
    //ICMS
    frmICMS00 : TfrmICMS00;
    frmICMS10 : TfrmICMS10;
    frmICMS20 : TfrmICMS20;
    frmICMS30 : TfrmICMS30;
    frmICMS40 : TfrmICMS40;
    frmICMS51 : TfrmICMS51;
    frmICMS60 : TfrmICMS60;
    frmICMS70 : TfrmICMS70;
    frmICMS90 : TfrmICMS90;
    frmICMSPart : TfrmICMSPart;
    frmICMSST : TfrmICMSST;
    frmICMSSN101 : TfrmICMSN101;
    frmICMSSN102 : TfrmICMS102;
    frmICMSSN201 : TfrmICMSSN201;
    frmICMSSN202 : TfrmICMSSN202;
    frmICMSSN500 : TfrmICMSSN500;
    frmICMSSN900 : TfrmICMSSN900;
    //IPI
    frmIPITrib : TfrmIPITrib;
    frmIPINT : TfrmIPINT;
    //II
    frmII : TfrmII;
    //PIS
    frmPISAliq : TfrmPISAliq;
    frmPISQtde : TfrmPISQtde;
    frmPISNT : TfrmPISNT;
    frmPISOutr : TfrmPISOutr;
    //PISST
    frmPISST : TfrmPISST;
    //COFINS
    frmCOFINSAliq : TfrmCOFINSAliq;
    frmCOFINSQtde : TfrmCOFINSQtde;
    frmCOFINSNT : TfrmCOFINSNT;
    frmCOFINSOutr : TfrmCOFINSOutr;
    //COFINSST
    frmCOFINSST : TfrmCOFINSST;
    //ISSQN
    frmISSQN : TfrmISSQN;
  public
    { Public declarations }
    fNFe, fNFeDPEC, fNFeEPEC, fNFeFS : WideString;
    fCaminhoLogEnvio, fCaminhoLogRet, fCaminhoXmlDest,
    fCancEnvioDest, fCancRetDest, fCaminhoCancEnvDest, fCaminhoCancRetDest,
    fTipoEmissao, fBtnEnviarDisparado, fBtnReciboDisparado, fBtnChaveDisparado,
    fXmlDestFS, fCancNFeEvento : String;
    procedure LoadConfig;
    procedure UpdateStatus(aMsg : string; Clear : Boolean = true; ReplaceLast : Boolean = False);
  end;

var
  frmPrincipal: TfrmPrincipal;

const
  versao_2_02a: Integer = 0;
  versao_3_0: Integer = 1;
  versao_4_0: Integer = 2;
  versao_5_0: Integer = 3;
  versao_5_0a: Integer = 4;
  versao_6_0: Integer = 5;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FUtils := TspdGovUtils.Create(nil);
 	spdNFe := TspdNFe.Create(nil);
  spdNFeDataSets := TspdNFeDataSets.Create(nil);
  spdValidadorClientX := TspdValidadorClientX.Create(nil);

  LoadConfig;

  wbBanner.Navigate('http://www.tecno-services.com/imagens/BannerNFe.gif');

  tvnfe.Items[0].Selected := True;

  if tvNFe.Items[0].Selected then
  begin
    nbControle.ActivePage := 'FluxoNFeNormal';
    tvNFe.Items[0].DropTarget := True;
    btnVoltar.Visible := False;
    btnSaveConfig.Visible := False;
  end;
end;

procedure TfrmPrincipal.BtnAvancarControl;
begin
  //NFe - Normal
  if tvNFe.Items[0].Selected then
  begin
    nbControle.ActivePage := 'Configuracao';
    tvNFe.Items[1].DropTarget := True;
    tvNFe.Items[1].Selected := True;
    btnVoltar.Visible := True;
    btnSaveConfig.Visible := True;
    Exit;
  end;

  if tvNFe.Items[1].Selected then
  begin
    if not SetConfigPropriedades(spdNFe) then
      Exit;
    nbControle.ActivePage := 'EmailConfig';
    tvNFe.Items[2].DropTarget := True;
    tvNFe.Items[2].Selected := True;
    Exit;
  end;

  if tvNFe.Items[2].Selected then
  begin
    SetConfigEmail(spdNFe);

    if mmStatus.Lines.Text <> '' then
    begin
      mmStatus.Lines.Clear;
      wbStatusServico.Navigate('about:blank');
      edtcStatStatusServ.Clear;
      edtMotivoStatusServ.Clear;
      lblNomeArquivoLogEnvio.Caption := '';
      lblNomeArquivoLogRetorno.Caption := '';
      btnLogEnvio.Enabled := False;
      btnLogRetorno.Enabled := False;
    end;

    nbControle.ActivePage := 'TestarComunicacao';
    tvNFe.Items[3].DropTarget := True;
    tvNFe.Items[3].Selected := True;
    tvNFe.Items[1].Collapse(True);
    btnVoltar.Visible := True;
    Exit;
  end;

  if tvNFe.Items[3].Selected then
  begin
    nbControle.ActivePage := 'Inutilizar';
    tvNFe.Items[4].DropTarget := True;
    tvNFe.Items[4].Selected := True;
    Exit;
  end;

  if tvNFe.Items[4].Selected then
  begin
    nbControle.ActivePage := 'Empresa';
    tvNFe.Items[6].DropTarget := True;
    tvNFe.Items[6].Selected := True;
    Exit;
  end;

  if tvNFe.Items[6].Selected then
  begin
    if cbAmbiente.ItemIndex = 0 then
      Label37.Visible := False
    else
      Label37.Visible := True;
    if not ValidarCamposEmitente then
      Exit;
    SalvarDadosEmitente;
    nbControle.ActivePage := 'Destinatario';
    tvNFe.Items[7].DropTarget := True;
    tvNFe.Items[7].Selected := True;
    Exit;
  end;

  if tvNFe.Items[7].Selected then
  begin
    if not ValidarCamposDestinatario then
      Exit;
    SalvarDadosDestinatario;
    nbControle.ActivePage := 'ModelosNotas';
    tvNFe.Items[8].DropTarget := True;
    tvNFe.Items[8].Selected := True;

    if cbNotaConjugada.Checked = True then
    begin
      if ((edtIMEmit.Text = '')or(edtCNAEEmit.Text = '')) then
        ShowMessage('Para gerar Nota Conjugada é necessário preencher os campos ''Inscrição Municipal'' e ''CNAE Fiscal'' do Emitente');
    end;

    Exit;
  end;

  if tvNFe.Items[8].Selected then
  begin
    SetConfigNormal;
    fTipoEmissao := '1';
    //GerarNFeDataSetExportacao; Descomente para gerar uma NF-e de Exportação 3.10
    //GerarNFeDataSetImportacao; Descomente para gerar uma NF-e de Importação 3.10
    //GerarNFeDataSetISSQN; Descomente para gerar uma NF-e de ISSQN 3.10
    GerarNFeDataSet;

    if mmXmlAssinado.Lines.Text <> '' then
    begin
      mmXmlAssinado.Clear;
      wbXmlAssinado.Navigate('about:blank');
    end;

    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    if btnValidador.Enabled then
      btnValidador.Enabled := False;

    if cbVersao.ItemIndex >= versao_5_0a then
    begin
      rgEnvio.Enabled := true;
      rbEnvSinc.Enabled := true;
      rbEnvAssinc.Enabled := true;
      chkCompactado.Enabled := true;
    end
    else
    begin
      rgEnvio.Enabled := False;
      rbEnvSinc.Enabled := False;
      rbEnvAssinc.Enabled := False;
      chkCompactado.Enabled := False;
    end;

    nbControle.ActivePage := 'Assinatura';
    tvNFe.Items[9].DropTarget := True;
    tvNFe.Items[9].Selected := True;
    tvNFe.Items[5].Collapse(True);
    Exit;
  end;

  if tvNFe.Items[9].Selected then
  begin
    if edtNumeroRecibo.Text <> '' then
      edtNumeroRecibo.Clear;

    if mmEnviarNota.Lines.Text <> '' then
    begin
      mmEnviarNota.Clear;
      wbNotaEnviada.Navigate('about:blank');
      edtStatusEnviar.Clear;
      edtMotivoEnviar.Clear;
    end;

    nbControle.ActivePage := 'EnviarNota';
    tvNFe.Items[11].DropTarget := True;
    tvNFe.Items[11].Selected := True;
    btnAvancar.Enabled := False;
    Exit;
  end;

  if tvNFe.Items[11].Selected then
  begin
    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    btnConsultarRecibo.Enabled := not(rbEnvSinc.Checked);
    edtNumeroRecibo.ReadOnly := not(rbEnvSinc.Checked);

    if edtProtocoloAutorizacao.Text <> '' then
      edtProtocoloAutorizacao.Clear;

    if mmConsultarRecibo.Lines.Text <> '' then
    begin
      mmConsultarRecibo.Clear;
      wbNotaConsulta.Navigate('about:blank');
      edtStatusConsulta.Clear;
      edtMotivoConsulta.Clear;
    end;

    nbControle.ActivePage := 'Consultar';
    tvNFe.Items[12].DropTarget := True;
    tvNFe.Items[12].Selected := True;
    Exit;
  end;

  if tvNFe.Items[12].Selected then
  begin
    mmArquivo.Lines.Text := LoadXmlDestinatario(edtChaveNota.Text);
    fCaminhoXmlDest := ExtractFilePath(ParamStr(0)) + 'XmlDestinatario\' + edtChaveNota.Text + '-nfe.xml';
    lblCaminhoArquivo.Caption := ExtractFileName(fCaminhoXmlDest);
    wbXmlDest.Navigate(fCaminhoXmlDest);
    nbControle.ActivePage := 'InfoArquivo';
    tvNFe.Items[14].DropTarget := True;
    tvNFe.Items[14].Selected := True;
    tvNFe.Items[10].Collapse(True);
    Exit;
  end;

  if tvNFe.Items[14].Selected then
  begin
    if ((edtAnexar.Text <> '') or (edtEmailXmlDest.Text <> '') or (clbAnexosEmail.Items.Count > 0)) then
    begin
      edtEmailXmlDest.Clear;
      edtAnexar.Clear;
      clbAnexosEmail.Clear;
    end;

    if lblCaminhoArquivo.Caption <> '' then
      cbxAnexoObrigatorio.Caption := lblCaminhoArquivo.Caption;

    nbControle.ActivePage := 'EnviarNFeDest';
    tvNFe.Items[15].DropTarget := True;
    tvNFe.Items[15].Selected := True;
    Exit;
  end;

  if tvNFe.Items[15].Selected then
  begin
    nbControle.ActivePage := 'CancelarNFeEvento';
    tvNFe.Items[16].DropTarget := True;
    tvNFe.Items[16].Selected := True;
    tvNFe.Items[14].Collapse(False);
    Exit;
  end;

  if tvNFe.Items[16].Selected then
  begin
    nbControle.ActivePage := 'Danfe';
    tvNFe.Items[17].DropTarget := True;
    tvNFe.Items[17].Selected := True;
    Exit;
  end;

  if tvNFe.Items[17].Selected then
  begin
    nbControle.ActivePage := 'DistribuicaoDFe';
    tvNFe.Items[18].DropTarget := True;
    tvNFe.Items[18].Selected := True;
    Exit;
  end;

  if tvNFe.Items[18].Selected then
  begin
    nbControle.ActivePage := 'DescompactarDFe';
    tvNFe.Items[19].DropTarget := True;
    tvNFe.Items[19].Selected := True;
    Exit;
  end;

  if tvNFe.Items[19].Selected then
  begin
    nbControle.ActivePage := 'ManifestacaoNFe';
    tvNFe.Items[20].DropTarget := True;
    tvNFe.Items[20].Selected := True;
    Exit;
  end;

  if tvNFe.Items[20].Selected then
  begin
    nbControle.ActivePage := 'DownloadNFe';
    tvNFe.Items[21].DropTarget := True;
    tvNFe.Items[21].Selected := True;
    Exit;
  end;

  //NFe - FS
  if tvNFe.Items[21].Selected then
  begin
    nbControle.ActivePage := 'FluxoFS';
    tvNFe.Items[22].DropTarget := True;
    tvNFe.Items[22].Selected := True;
    tvNFe.Items[22].Collapse(True);
    Exit;
  end;

  if tvNFe.Items[22].Selected then
  begin
    cbTipoEmissaoFS.ItemIndex := 0;
    fTipoEmissao := '2';
    GerarNFeDataSet;

    if mmXmlAssinadoFS.Lines.Text <> '' then
    begin
      mmXmlAssinadoFS.Clear;
      wbXmlAssinadoFS.Navigate('about:blank');
    end;

    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    nbControle.ActivePage := 'AssinarFS';
    tvNFe.Items[23].DropTarget := True;
    tvNFe.Items[23].Selected := True;
    Exit;
  end;

  if tvNFe.Items[23].Selected then
  begin
    nbControle.ActivePage := 'ImprimirFS';
    tvNFe.Items[24].DropTarget := True;
    tvNFe.Items[24].Selected := True;
    Exit;
  end;

  if tvNFe.Items[24].Selected then
  begin
    if mmEnviarServEstFS.Lines.Text <> '' then
    begin
      mmEnviarServEstFS.Clear;
      wbEnviarServEstFS.Navigate('about:blank');
      edtNumRecEnvServEstFS.Clear;
      edtStatusEnviarServEstFS.Clear;
      edtMotivoEnviarServEstFS.Clear;
    end;

    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    nbControle.ActivePage := 'EnviarServEstFS';
    tvNFe.Items[25].DropTarget := True;
    tvNFe.Items[25].Selected := True;
    Exit;
  end;

  if tvNFe.Items[25].Selected then
  begin
    if mmConsultarFS.Lines.Text <> '' then
    begin
      mmConsultarFS.Clear;
      wbConsultarFS.Navigate('about:blank');
      edtProtocoloFS.Clear;
      edtStatusConsultarFS.Clear;
      edtMotivoConsultarFS.Clear;
    end;

    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    nbControle.ActivePage := 'ConsultarFS';
    tvNFe.Items[26].DropTarget := True;
    tvNFe.Items[26].Selected := True;
    Exit;
  end;

  if tvNFe.Items[26].Selected then
  begin
    fXmlDestFS := ExtractFilePath(ParamStr(0)) + 'XmlDestinatario\' + edtChaveEnvServEstFS.Text + '-nfe.xml';

    if ((edtAnexarFS.Text <> '') or (edtEmailDestFS.Text <> '') or (clbAnexosFS.Items.Count > 0)) then
    begin
      edtEmailDestFS.Clear;
      edtAnexarFS.Clear;
      clbAnexosFS.Clear;
    end;

    if edtChaveNotaFS.Text <> '' then
      cbxAnexoObrigatorioFS.Caption := edtChaveEnvServEstFS.Text + '-nfe.xml';

    nbControle.ActivePage := 'EnviarXmlDestFS';
    tvNFe.Items[27].DropTarget := True;
    tvNFe.Items[27].Selected := True;
    Exit;
  end;

  if tvNFe.Items[27].Selected then
  begin
    nbControle.ActivePage := 'FluxoEPEC';
    tvNFe.Update;
    tvNFe.Items[28].DropTarget := True;
    tvNFe.Items[28].Selected := True;
    tvNFe.Items[0].Collapse(True);
    Exit;
  end;

  if tvNFe.Items[28].Selected then
  begin
    SetConfigEPEC;
    fTipoEmissao := '4';
    GerarNFeDataSet;

    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    nbControle.ActivePage := 'AssinarEPEC';
    tvNFe.Items[29].DropTarget := True;
    tvNFe.Items[29].Selected := True;
    Exit;
  end;

  if tvNFe.Items[29].Selected then
  begin
    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    nbControle.ActivePage := 'MontarEPEC';
    tvNFe.Items[30].DropTarget := True;
    tvNFe.Items[30].Selected := True;
    Exit;
  end;

  if tvNFe.Items[30].Selected then
  begin
    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    nbControle.ActivePage := 'AssinarXMLMontadoEPEC';
    tvNFe.Items[31].DropTarget := True;
    tvNFe.Items[31].Selected := True;
    Exit;
  end;

  if tvNFe.Items[31].Selected then
  begin
    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    nbControle.ActivePage := 'EnviarSefazEPEC';
    tvNFe.Items[32].DropTarget := True;
    tvNFe.Items[32].Selected := True;
    Exit;
  end;

  if tvNFe.Items[32].Selected then
  begin
    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    nbControle.ActivePage := 'ImprimirEPEC';
    tvNFe.Items[33].DropTarget := True;
    tvNFe.Items[33].Selected := True;
    Exit;
  end;

  if tvNFe.Items[33].Selected then
  begin
    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    nbControle.ActivePage := 'EnviarServEstEPEC';
    tvNFe.Items[34].DropTarget := True;
    tvNFe.Items[34].Selected := True;
    Exit;
  end;

  if tvNFe.Items[34].Selected then
  begin
    if btnAvancar.Enabled then
      btnAvancar.Enabled := False;

    nbControle.ActivePage := 'ConsultarEPEC';
    tvNFe.Items[35].DropTarget := True;
    tvNFe.Items[35].Selected := True;
    Exit;
  end;
end;

procedure TfrmPrincipal.BtnVoltarControl;
begin
  //NFe - Normal
  if tvNFe.Items[1].Selected then
  begin
    nbControle.ActivePage := 'FluxoNFeNormal';
    tvNFe.Items[0].DropTarget := True;
    tvNFe.Items[0].Selected := True;
    tvNFe.Items[0].Collapse(True);
    btnVoltar.Visible := False;
    btnSaveConfig.Visible := False;
    Exit;
  end
  else
    btnVoltar.Visible := True;

  if tvNFe.Items[2].Selected then
  begin
    nbControle.ActivePage := 'Configuracao';
    tvNFe.Items[1].DropTarget := True;
    tvNFe.Items[1].Selected := True;
    tvNFe.Items[1].Collapse(True);
    Exit;
  end;

  if tvNFe.Items[3].Selected then
  begin
    nbControle.ActivePage := 'EmailConfig';
    tvNFe.Items[2].DropTarget := True;
    tvNFe.Items[2].Selected := True;
    Exit;
  end;

  if tvNFe.Items[4].Selected then
  begin
    nbControle.ActivePage := 'TestarComunicacao';
    tvNFe.Items[3].DropTarget := True;
    tvNFe.Items[3].Selected := True;
    Exit;
  end;

  if tvNFe.Items[6].Selected then
  begin
    nbControle.ActivePage := 'Inutilizar';
    tvNFe.Items[4].DropTarget := True;
    tvNFe.Items[4].Selected := True;
    tvNFe.Items[5].Collapse(True);
    btnAvancar.Enabled := True;
    Exit;
  end;

  if tvNFe.Items[7].Selected then
  begin
    nbControle.ActivePage := 'Empresa';
    tvNFe.Items[6].DropTarget := True;
    tvNFe.Items[6].Selected := True;
    Exit;
  end;

  if tvNFe.Items[8].Selected then
  begin
    nbControle.ActivePage := 'Destinatario';
    tvNFe.Items[7].DropTarget := True;
    tvNFe.Items[7].Selected := True;
    Exit;
  end;

  if tvNFe.Items[9].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    //Encerra navegação dos WebBrowsers, liberando o arquivo gerado.
    wbNotaGerada.Stop;
    wbXmlAssinado.Stop;

    nbControle.ActivePage := 'ModelosNotas';
    tvNFe.Items[8].DropTarget := True;
    tvNFe.Items[8].Selected := True;
    Exit;
  end;

  if tvNFe.Items[11].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    nbControle.ActivePage := 'Assinatura';
    tvNFe.Items[9].DropTarget := True;
    tvNFe.Items[9].Selected := True;
    tvNFe.Items[10].Collapse(True);
    Exit;
  end;

  if tvNFe.Items[12].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;
    nbControle.ActivePage := 'EnviarNota';
    tvNFe.Items[11].DropTarget := True;
    tvNFe.Items[11].Selected := True;
    Exit;
  end;

  if tvNFe.Items[14].Selected then
  begin
    nbControle.ActivePage := 'Consultar';
    tvNFe.Items[12].DropTarget := True;
    tvNFe.Items[12].Selected := True;
    tvNFe.Items[13].Collapse(True);
    Exit;
  end;

  if tvNFe.Items[15].Selected then
  begin
    nbControle.ActivePage := 'InfoArquivo';
    tvNFe.Items[14].DropTarget := True;
    tvNFe.Items[14].Selected := True;
    Exit;
  end;

  if tvNFe.Items[16].Selected then
  begin
    nbControle.ActivePage := 'EnviarNFeDest';
    tvNFe.Items[15].DropTarget := True;
    tvNFe.Items[15].Selected := True;
    Exit;
  end;

  if tvNFe.Items[17].Selected then
  begin
    nbControle.ActivePage := 'CancelarNFeEvento';
    tvNFe.Items[16].DropTarget := True;
    tvNFe.Items[16].Selected := True;
    Exit;
  end;
  
  // Novas funcionalidades
  if tvNFe.Items[18].Selected then
  begin
    nbControle.ActivePage := 'Danfe';
    tvNFe.Items[17].DropTarget := True;
    tvNFe.Items[17].Selected := True;
    Exit;
  end;

  if tvNFe.Items[19].Selected then
  begin
    nbControle.ActivePage := 'DistribuicaoDFe';
    tvNFe.Items[18].DropTarget := True;
    tvNFe.Items[18].Selected := True;
    Exit;
  end;

  if tvNFe.Items[20].Selected then
  begin
    nbControle.ActivePage := 'DescompactarDFe';
    tvNFe.Items[19].DropTarget := True;
    tvNFe.Items[19].Selected := True;
    Exit;
  end;

  if tvNFe.Items[21].Selected then
  begin
    nbControle.ActivePage := 'ManifestacaoNFe';
    tvNFe.Items[20].DropTarget := True;
    tvNFe.Items[20].Selected := True;
    Exit;
  end;

  if tvNFe.Items[22].Selected then
  begin
    if btnAvancar.Caption = 'Finalizar' then
      btnAvancar.Caption := 'Avançar';

    nbControle.ActivePage := 'DownloadNFe';
    tvNFe.Items[21].DropTarget := True;
    tvNFe.Items[21].Selected := True;
    Exit;
  end;

  //NFe - FS
  if tvNFe.Items[23].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    nbControle.ActivePage := 'FluxoFS';
    tvNFe.Items[22].DropTarget := True;
    tvNFe.Items[22].Selected := True;
    tvNFe.Items[22].Collapse(True);
    Exit;
  end;

  if tvNFe.Items[24].Selected then
  begin
    nbControle.ActivePage := 'AssinarFS';
    tvNFe.Items[23].DropTarget := True;
    tvNFe.Items[23].Selected := True;
    Exit;
  end;

  if tvNFe.Items[25].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    nbControle.ActivePage := 'ImprimirFS';
    tvNFe.Items[24].DropTarget := True;
    tvNFe.Items[24].Selected := True;
    Exit;
  end;

  if tvNFe.Items[26].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    nbControle.ActivePage := 'EnviarServEstFS';
    tvNFe.Items[25].DropTarget := True;
    tvNFe.Items[25].Selected := True;
    Exit;
  end;

  if tvNFe.Items[27].Selected then
  begin
    btnAvancar.Visible := True;
    nbControle.ActivePage := 'ConsultarFS';
    tvNFe.Items[26].DropTarget := True;
    tvNFe.Items[26].Selected := True;
    Exit;
  end;

  if tvNFe.Items[28].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;
    nbControle.ActivePage := 'EnviarXmlDestFS';
    tvNFe.Items[27].DropTarget := True;
    tvNFe.Items[27].Selected := True;
    Exit;
  end;

  ///////////////
  if tvNFe.Items[29].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    nbControle.ActivePage := 'FluxoEPEC';
    tvNFe.Items[28].DropTarget := True;
    tvNFe.Items[28].Selected := True;
    tvNFe.Items[28].Collapse(True);
    Exit;
  end;

  if tvNFe.Items[30].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    nbControle.ActivePage := 'AssinarEPEC';
    tvNFe.Items[29].DropTarget := True;
    tvNFe.Items[29].Selected := True;
    Exit;
  end;

  if tvNFe.Items[31].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    nbControle.ActivePage := 'MontarEPEC';
    tvNFe.Items[30].DropTarget := True;
    tvNFe.Items[30].Selected := True;
    Exit;
  end;

  if tvNFe.Items[32].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    nbControle.ActivePage := 'AssinarXMLMontadoEPEC';
    tvNFe.Items[31].DropTarget := True;
    tvNFe.Items[31].Selected := True;
    Exit;
  end;

  if tvNFe.Items[33].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    nbControle.ActivePage := 'EnviarSefazEPEC';
    tvNFe.Items[32].DropTarget := True;
    tvNFe.Items[32].Selected := True;
    Exit;
  end;

  if tvNFe.Items[34].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    nbControle.ActivePage := 'ImprimirEPEC';
    tvNFe.Items[33].DropTarget := True;
    tvNFe.Items[33].Selected := True;
    Exit;
  end;

  if tvNFe.Items[35].Selected then
  begin
    if not btnAvancar.Enabled then
      btnAvancar.Enabled := True;

    nbControle.ActivePage := 'EnviarServEstEPEC';
    tvNFe.Items[34].DropTarget := True;
    tvNFe.Items[34].Selected := True;
    Exit;
  end;
end;

function TfrmPrincipal.SetConfigPropriedades(aNFe : TspdCustomNFe) : Boolean;
begin
  if ((edtCNPJ.Text = '') or (cbConfigUF.Text = '') or
    (edtServHomolog.Text = '') or (edtServProd.Text = '') or
    (edtModRetrato.Text = '') or (edtModPaisagem.Text = '') or
    (edtConfigXmlDest.Text = '')) then
  begin
    ShowMessage('Preencha todos os campos obrigatórios!');
    Result := False;
  end
  else
  begin
    if not FUtils.ValidateCNPJ(edtCNPJ.Text) then
    begin
      ShowMessage('CNPJ Inválido');
      Result := False;
      Exit;
    end;

    //Certificado
    aNFe.PinCode := EmptyStr;
    case cbTipoCertificado.ItemIndex of
      0: aNFe.TipoCertificado := ckActiveDiretory;
      1: aNFe.TipoCertificado := ckFile;
      2: aNFe.TipoCertificado := ckLocalMachine;
      3: aNFe.TipoCertificado := ckMemory;
      4: begin
        aNFe.TipoCertificado := ckSmartCard;
        aNFe.PinCode := edtPinCode.Text;
      end;
    end;

    aNFe.CNPJ := edtCNPJ.Text;
    edtCpfCnpjEmit.Text := edtCNPJ.Text;
    aNFe.UF := cbConfigUF.Text;

    //Ambiente
    case cbAmbiente.ItemIndex of
      0: aNFe.Ambiente := akHomologacao;
      1: aNFe.Ambiente := akProducao;
    end;

    aNFe.VersaoManual := StrToVersaoManual(cbVersao.Text);
    aNFe.NomeCertificado.Text := cbNomeCertificado.Text;
    aNFe.ArquivoServidoresHom := edtServHomolog.Text;
    aNFe.ArquivoServidoresProd := edtServProd.Text;

    aNFe.DiretorioLog := edtDiretorioLog.Text;
    aNFe.Usuario := edtConfigUsu.Text;
    aNFe.Senha := edtConfigSenha.Text;
    aNFe.Proxy := edtConfigProxy.Text;
    aNFe.TimeOut := StrToInt(edtTimeOut.Text);

    aNFe.DiretorioEsquemas := edtDirEsquemas.Text;
    aNFe.DiretorioTemplates := edtDirTemplates.Text;

    if aNFe is TspdNFe then
    begin
      (aNFe as TspdNFe).DiretorioXmlDestinatario := edtConfigXmlDest.Text;
      (aNFe as TspdNFe).MaxSizeLoteEnvio := StrToInt(edtMaxSizeLoteEnvio.Text);
    end;

    if cbIgnoreInvCert.Checked then
      aNFe.IgnoreInvalidCertificates := True
    else
      aNFe.IgnoreInvalidCertificates := False;

    if cbAnexarDanfePdf.Checked then
      aNFe.AnexarDanfePDF := True
    else
      aNFe.AnexarDanfePDF := False;

    if cbValidEsquema.Checked then
      aNFe.ValidarEsquemaAntesEnvio := True
    else
      aNFe.ValidarEsquemaAntesEnvio := False;

    aNFe.DanfeSettings.FraseContingencia := edtFraseContingencia.Text;
    aNFe.DanfeSettings.FraseHomologacao := edtFraseHomolog.Text;
    aNFe.DanfeSettings.QtdeCopias := StrToInt(edtCopias.Text);
    aNFe.DanfeSettings.LineDelimiter := edtLineDelimiter.Text;
    aNFe.DanfeSettings.ModeloRetrato := edtModRetrato.Text;
    aNFe.DanfeSettings.ModeloPaisagem := edtModPaisagem.Text;
    aNFe.DanfeSettings.LogotipoEmitente := edtLogoEmitente.Text;

    Result := True;
  end;
end;

procedure TfrmPrincipal.SetConfigEmail(aNFe : TspdCustomNFe);
begin
  aNFe.EmailSettings.ServidorSmtp := edtEmailConfigServ.Text;
  aNFe.EmailSettings.Porta := StrToInt(edtEmailConfigPorta.Text);
  //Autenticação
  if cbEmailConfigAut.Checked then
    aNFe.EmailSettings.Autenticacao := True
  else
    aNFe.EmailSettings.Autenticacao := False;

  aNFe.EmailSettings.EmailRemetente := edtEmailConfigRem.Text;
  aNFe.EmailSettings.EmailDestinatario := edtEmailConfigDest.Text;
  aNFe.EmailSettings.CC := edtEmailConfigCc.Text;
  aNFe.EmailSettings.CCo := edtEmailConfigCco.Text;
  aNFe.EmailSettings.Assunto := edtEmailConfigAssunto.Text;
  aNFe.EmailSettings.Mensagem := mmEmailConfigMens.Lines.Text;
  aNFe.EmailSettings.Usuario := edtEmailConfigUsu.Text;
  aNFe.EmailSettings.Senha := meEmailConfigSenha.Text;

  aNFe.SaveConfig;
end;

procedure TfrmPrincipal.SetConfigEPEC;
begin
  spdNFe.LoadConfig;
  spdNFe.ModoOperacao := moEPEC;
end;

procedure TfrmPrincipal.SetConfigNormal;
begin
  spdNFe.LoadConfig;
  spdNFe.ModoOperacao := moNormal;
end;

procedure TfrmPrincipal.SalvarDadosEmitente;
var
  emit: TIniFile;
begin
  emit := TIniFile.Create(FUtils.GetActualDir + '\nfeEmitDest.ini');
  try
    emit.WriteString('Emitente','RazaoSocial',edtRazaoSocialEmit.Text);
    emit.WriteString('Emitente','CPFCNPJ',edtCpfCnpjEmit.Text);
    emit.WriteString('Emitente','NomeFantasia',edtNomeFantasiaEmit.Text);
    emit.WriteString('Emitente','Endereço',edtEnderecoEmitente.Text);
    emit.WriteString('Emitente','Numero',edtNumeroEmitente.Text);
    emit.WriteString('Emitente','Complemento',edtComplementoEmit.Text);
    emit.WriteString('Emitente','Bairro',edtBairro.Text);
    emit.WriteString('Emitente','CEP',edtCEPEmit.Text);
    emit.WriteString('Emitente','Cidade',edtNomeCidadeEmit.Text);
    emit.WriteString('Emitente','CodigoIBGECidade',edtIBGEEmit.Text);
    emit.WriteString('Emitente','UF',cbUFEmit.Text);
    emit.WriteString('Emitente','Pais',edtPaisEmit.Text);
    emit.WriteString('Emitente','CodigoIBGEPais',edtIBGEPaisEmit.Text);
    emit.WriteString('Emitente','Telefone',edtTelefoneEmit.Text);
    emit.WriteString('Emitente','IE',edtIEEmit.Text);
    emit.WriteString('Emitente','IESubstitutoTributario',edtIESTEmit.Text);
    emit.WriteString('Emitente','InscricaoMunicipal',edtIMEmit.Text);
    emit.WriteString('Emitente','CNAEFiscal',edtCNAEEmit.Text);
    emit.WriteString('Emitente','CodigoRegimeTributario',IntToStr(cbCRTEmit.ItemIndex + 1));
    btnAvancar.Enabled := True;

    CarregarInfAuxiliares;
  Finally
    emit.Free;
  End;
end;

procedure TfrmPrincipal.SalvarDadosDestinatario;
var
  dest: TIniFile;
begin
  dest := TIniFile.Create(FUtils.GetActualDir + '\nfeEmitDest.ini');
  try
    dest.WriteString('Destinatario','RazaoSocial',edtRazaoSocialDest.Text);
    dest.WriteString('Destinatario','CPFCNPJ',edtCpfCnpjDest.Text);
    dest.WriteString('Destinatario','Endereço',edtEnderecoDest.Text);
    dest.WriteString('Destinatario','Numero',edtNumeroDest.Text);
    dest.WriteString('Destinatario','Complemento',edtComplementoDest.Text);
    dest.WriteString('Destinatario','Bairro',edtBairroDest.Text);
    dest.WriteString('Destinatario','CEP',edtCepDest.Text);
    dest.WriteString('Destinatario','Cidade',edtNomeCidadeDest.Text);
    dest.WriteString('Destinatario','CodigoIBGECidade',edtIBGECidadeDest.Text);
    dest.WriteString('Destinatario','UF',cbUFDest.Text);
    dest.WriteString('Destinatario','Pais',edtPais.Text);
    dest.WriteString('Destinatario','CodigoIBGEPais',edtIBGEPaisDest.Text);
    dest.WriteString('Destinatario','Telefone',edtTelefoneDest.Text);
    dest.WriteString('Destinatario','IE',edtIEDest.Text);
    dest.WriteString('Destinatario','ISUF',edtISUFDest.Text);
    dest.WriteString('Destinatario','Email',edtEmailDest.Text);
    btnAvancar.Enabled := True;
  Finally
    dest.Free;
  End;
end;

procedure TfrmPrincipal.LoadDadosEmitente;
var
  emit: TIniFile;
begin
  emit := TIniFile.Create(FUtils.GetActualDir + '\nfeEmitDest.ini');
  try
    edtRazaoSocialEmit.Text := emit.ReadString('Emitente','RazaoSocial','');
    edtCpfCnpjEmit.Text := emit.ReadString('Emitente','CPFCNPJ','');
    edtNomeFantasiaEmit.Text := emit.ReadString('Emitente','NomeFantasia','');
    edtEnderecoEmitente.Text := emit.ReadString('Emitente','Endereço','');
    edtNumeroEmitente.Text := emit.ReadString('Emitente','Numero','');
    edtComplementoEmit.Text := emit.ReadString('Emitente','Complemento','');
    edtBairro.Text := emit.ReadString('Emitente','Bairro','');
    edtCEPEmit.Text := emit.ReadString('Emitente','CEP','');
    edtNomeCidadeEmit.Text := emit.ReadString('Emitente','Cidade','');
    edtIBGEEmit.Text := emit.ReadString('Emitente','CodigoIBGECidade','');
    cbUFEmit.Text := emit.ReadString('Emitente','UF','');
    edtPaisEmit.Text := emit.ReadString('Emitente','Pais','');
    edtIBGEPaisEmit.Text := emit.ReadString('Emitente','CodigoIBGEPais','');
    edtTelefoneEmit.Text := emit.ReadString('Emitente','Telefone','');
    edtIEEmit.Text := emit.ReadString('Emitente','IE','');
    edtIESTEmit.Text := emit.ReadString('Emitente','IESubstitutoTributario','');
    edtIMEmit.Text := emit.ReadString('Emitente','InscricaoMunicipal','');
    edtCNAEEmit.Text := emit.ReadString('Emitente','CNAEFiscal','');
    case StrToInt(emit.ReadString('Emitente','CodigoRegimeTributario','1')) of
      1 : cbCRTEmit.ItemIndex := 0;
      2 : cbCRTEmit.ItemIndex := 1;
      3 : cbCRTEmit.ItemIndex := 2;
    end;
  Finally
    emit.Free;
  End;
end;

procedure TfrmPrincipal.LoadDadosDestinatario;
var
  dest: TIniFile;
begin
  dest := TIniFile.Create(FUtils.GetActualDir + '\nfeEmitDest.ini');
  try
    edtRazaoSocialDest.Text := dest.ReadString('Destinatario','RazaoSocial','');
    edtCpfCnpjDest.Text := dest.ReadString('Destinatario','CPFCNPJ','');
    edtEnderecoDest.Text := dest.ReadString('Destinatario','Endereço','');
    edtNumeroDest.Text := dest.ReadString('Destinatario','Numero','');
    edtComplementoDest.Text := dest.ReadString('Destinatario','Complemento','');
    edtBairroDest.Text := dest.ReadString('Destinatario','Bairro','');
    edtCepDest.Text := dest.ReadString('Destinatario','CEP','');
    edtNomeCidadeDest.Text := dest.ReadString('Destinatario','Cidade','');
    edtIBGECidadeDest.Text := dest.ReadString('Destinatario','CodigoIBGECidade','');
    cbUFDest.Text := dest.ReadString('Destinatario','UF','');
    edtPais.Text := dest.ReadString('Destinatario','Pais','');
    edtIBGEPaisDest.Text := dest.ReadString('Destinatario','CodigoIBGEPais','');
    edtTelefoneDest.Text := dest.ReadString('Destinatario','Telefone','');
    edtIEDest.Text := dest.ReadString('Destinatario','IE','');
    edtISUFDest.Text := dest.ReadString('Destinatario','ISUF','');
    edtEmailDest.Text := dest.ReadString('Destinatario','Email','');
  Finally
    dest.Free;
  End;
end;

procedure TfrmPrincipal.SetNotaBasica;
begin
  rgRamosEspecificos.ItemIndex := 0;
  if frmICMS00 = nil then
    frmICMS00 := TfrmICMS00.Create(Self);
  if frmPISAliq = nil then
    frmPISAliq := TfrmPISAliq.Create(Self);
  if frmCOFINSAliq = nil then
    frmCOFINSAliq := TfrmCOFINSAliq.Create(Self);

  cbICMS.ItemIndex := 0;
  cbICMS.Enabled := True;
  cbPIS.ItemIndex := 0;
  cbPIS.Enabled := True;
  cbCOFINS.ItemIndex := 0;
  cbCOFINS.Enabled := True;
  cbISSQN.ItemIndex := -1;
  cbISSQN.Enabled := False;
  cbIPI.ItemIndex := -1;
  cbIPI.Enabled := True;
  cbII.ItemIndex := -1;
  cbII.Enabled := True;
  cbPISST.ItemIndex := -1;
  cbPISST.Enabled := True;
  cbCOFINSST.ItemIndex := -1;
  cbCOFINSST.Enabled := True;
end;

procedure TfrmPrincipal.SetCombosImpressao;
var
  i, j, k, l : Integer;
begin
  //Impressão Danfe
  for i := 0 to (Printer.Printers.Count - 1) do
    cbImpressorasDanfe.Items.Add(Printer.Printers[i]);

  //Impressão FS
  for k := 0 to (Printer.Printers.Count - 1) do
    cbImpressorasFS.Items.Add(Printer.Printers[k]);

  //Impressão EPEC
  for l := 0 to (Printer.Printers.Count - 1) do
    cbbImpressorasEPEC.Items.Add(Printer.Printers[l]);
end;

procedure TfrmPrincipal.GerarNFeDataSet;

  // Informações sobre a NFe
  procedure DadosDoNFe (aDs : TspdNFeDataSets);
  var
    _NrNota : String;
  begin
    Randomize;
    _NrNota := IntToStr(Random(10000)); // Gera um Número Randomico de NF para Demonstração

    aDs.Campo('Id_A03').Value := ''; // Calcula Automático. Essa linha é desnecessária
    aDs.Campo('cUF_B02').Value := GetCodigoUF(cbConfigUF.ItemIndex);   //Codigo da UF
    aDs.Campo('cNF_B03').Value := '04640327'; // Código Interno do Sistema que está integrando com a NFe
    aDs.Campo('natOp_B04').Value := 'VENDA MERC.ADQ.REC.TERC'; // Descrição da(s) CFOP(s) envolvidas nessa NFe
    if cbVersao.ItemIndex < versao_6_0 then
      aDs.Campo('indPag_B05').Value := '1'; // Indicador da Forma de Pgto (1- a Vista, 2 a Prazo)
    aDs.Campo('mod_B06').Value := '55'; //Código do Modelo de Documento Fiscal
    aDs.Campo('serie_B07').Value := '121'; // Série do Documento
    aDs.Campo('nNF_B08').Value := _NrNota; // Número da Nota Fiscal

    if cbVersao.ItemIndex >= versao_5_0a then
    begin
      aDs.Campo('dhEmi_B09').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',now) + GetFusoUF(cbConfigUF.ItemIndex); //  Data e Hora de Emissão da Nota Fiscal Seguido do Fuso Horario
      aDs.Campo('dhSaiEnt_B10').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',now) + GetFusoUF(cbConfigUF.ItemIndex); // Data e Hora de Saída ou Entrada da Nota Fiscal Seguido do Fuso Horario
      if cbUFEmit.Text = cbUFDest.Text then
        aDs.Campo('idDest_B11a').Value := '1' // Identificador de local de destino da operação (1-Operação Interna, 2-Operação Interestadual e 3-Operação com exterior)
      else
        aDs.Campo('idDest_B11a').Value := '2'; // Identificador de local de destino da operação (1-Operação Interna, 2-Operação Interestadual e 3-Operação com exterior)

      aDs.Campo('indFinal_B25a').Value := '0'; // Indica operação com Consumidor final (0-Não, 1-Consumidor Final)
      aDs.Campo('indPres_B25b').Value := '0'; // Indicador de presença do comprador no estabelecimento comercial ( 0-Não, 1-Operação presencial, 2-Operação não presencial, Internet, 3-Operação Não presencial, teleatendimento, 9-Operação não presencial, outros.)
    end
    else
    begin
      aDs.Campo('dEmi_B09').Value := FormatDateTime('YYYY-MM-DD',now); //  Data de Emissão da Nota Fiscal
      aDs.Campo('dSaiEnt_B10').Value := FormatDateTime('YYYY-MM-DD',now); // Data de Saída ou Entrada da Nota Fiscal
      aDs.Campo('hSaiEnt_B10a').Value := FormatDateTime('HH:MM:SS',now); // Hora de Saída ou Entrada da Nota Fiscal
    end;

    aDs.Campo('tpNF_B11').Value := '1'; // Tipo de Documento Fiscal (0-Entrada, 1-Saída)
    aDs.Campo('cMunFG_B12').Value := edtIBGEEmit.Text; // Código do Município, conforme Tabela do IBGE
    aDs.Campo('tpImp_B21').Value := '1'; // Tipo de Impressão da Danfe (1- Retrato , 2-Paisagem)
    aDs.Campo('tpEmis_B22').Value := fTipoEmissao; //Forma de Emissão da NFe (1 - Normal, 2 - FS, 3 - SCAN, 4 - DPEC, 4 - EPEC, 5 - FS-DA)
    aDs.Campo('cDV_B23').Value := ''; // Calcula Automatico - Linha desnecessária já que o componente calcula o Dígito Verificador automaticamente e coloca no devido campo
    aDs.Campo('tpAmb_B24').Value := '2'; // Identificação do Ambiente (1- Producao, 2-Homologação)
    aDs.Campo('finNFe_B25').Value := '1'; // Finalidade da NFe (1-Normal, 2-Complementar, 3-de Ajuste)
    aDs.Campo('procEmi_B26').Value := '0'; // Identificador do Processo de emissão (0-Emissão da Nfe com Aplicativo do Contribuinte). Ver outras opções no manual da Receita.
    aDs.Campo('verProc_B27').Value := '000'; // Versão do Aplicativo Emissor

    if ((fTipoEmissao = '2') or (fTipoEmissao = '4') or (fTipoEmissao = '5')) then
    begin
      if cbVersao.ItemIndex >= versao_5_0a then
        aDs.Campo('dhCont_B28').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now) + GetFusoUF(cbConfigUF.ItemIndex) // Data e hora de entrada em contingência no formato AAAA-MM-DDTHH:MM:SS
      else
        aDs.Campo('dhCont_B28').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now); // Data e hora de entrada em contingência no formato AAAA-MM-DDTHH:MM:SS
      aDs.Campo('xJust_B29').Value := 'Exemplo de justificativa de entrada em contigencia'; // Justificativa da contingência
    end;

    if cbNotaRef.Checked then
    begin
      if cbVersao.ItemIndex >= versao_5_0a then
      begin
        aDs.IncluirPart('NRef');
        aDs.Campo('refNFe_BA02').Value := '43140394814886000150551210000021401046403278'; // Chave de acesso das NF-e referenciadas
        aDs.SalvarPart('NRef');
      end
      else
      begin
        aDs.IncluirPart('NRef');
        aDs.Campo('refNFe_B13').Value := '35100761367025000112550010000054241046403270'; // Chave de acesso das NF-e referenciadas
        aDs.SalvarPart('NRef');

        aDs.IncluirPart('NRef');
        aDs.Campo('refNFe_B13').Value := '35100761367025000112550010000054241046403270'; // Chave de acesso das NF-e referenciadas
        aDs.SalvarPart('NRef');
      end;
    end;

    // Até Manual 3.0
    if cbVersao.ItemIndex = versao_3_0 then
      aDs.Campo('versao_A02').Value := '1.10' // Versão do Layout que está utilizando
    else if cbVersao.ItemIndex = versao_5_0 then
    begin
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '2.00'; // Versão do Layout que está utilizando - Manual 5.0
    end
    else if cbVersao.ItemIndex = versao_5_0a then
    begin
      // Novos campos do manual 4.0 - Obrigatório
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '3.10'; // Versão do Layout que está utilizando - Manual 4.0
    end
    else
    begin
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '4.00'; // Versão do Layout que está utilizando - Manual 6.0
    end;
  end;

  // Informações do Emitente da NFe
  procedure DadosDoEmitente(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('CNPJ_C02').Value := spdNFe.CNPJ; // CNPJ do Emitente
    aDs.Campo('xNome_C03').Value := edtRazaoSocialEmit.Text; // Razão Social ou Nome do Emitente
    aDs.Campo('xFant_C04').Value := edtNomeFantasiaEmit.Text; // Nome Fantasia do Emitente
    aDs.Campo('xLgr_C06').Value := edtEnderecoEmitente.Text; // Logradouro do Emitente
    aDs.Campo('nro_C07').Value := edtNumeroEmitente.Text; // Número do Logradouro do Emitente
    aDs.Campo('xCpl_C08').Value := edtComplementoEmit.Text; // Complemento
    aDs.Campo('xBairro_C09').Value := edtBairro.Text; // Bairro do Emitente
    aDs.Campo('cMun_C10').Value := edtIBGEEmit.Text; // Código da Cidade do Emitente (Tabela do IBGE)
    aDs.Campo('xMun_C11').Value := edtNomeCidadeEmit.Text; // Nome da Cidade do Emitente
    aDs.Campo('UF_C12').Value := cbUFEmit.Text; // Sigla do Estado do Emitente (Tabela do IBGE)
    aDs.Campo('CEP_C13').Value := edtCEPEmit.Text; // Cep do Emitente
    aDs.Campo('cPais_C14').Value := edtIBGEPaisEmit.Text; // Código do País do Emitente (Tabela BACEN)
    aDs.Campo('xPais_C15').Value := edtPaisEmit.Text; // Nome do País do Emitente
    aDs.Campo('fone_C16').Value := edtTelefoneEmit.Text; // Fone do Emitente
    aDs.Campo('IE_C17').Value := edtIEEmit.Text; // Inscrição Estadual do Emitente
    aDs.Campo('IEST_C18').Value := edtIESTEmit.Text; // Inscrição Estadual do Substituto Tributário Emitente
    if cbNotaConjugada.Checked then
      aDs.Campo('IM_C19').Value := '100000000000015' // Inscrição Municipal
    else
      aDs.Campo('IM_C19').Value := edtIMEmit.Text; // Inscrição Municipal
    aDs.Campo('CNAE_C20').Value := edtCNAEEmit.Text; // CNAE Fiscal
    aDs.Campo('CRT_C21').Value := IntToStr(cbCRTEmit.ItemIndex + 1); // Código de Regime Tributário
  end;

  // Informações do Destinatário da NFe
  procedure DadosDoDestinatario(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('CNPJ_E02').Value := edtCpfCnpjDest.Text; // CNPJ do Destinatário
    //aDs.Campo('idEstrangeiro_E03a').Value := '123456'; //Identificação do destinatário no caso de comprador estrangeiro
    aDs.Campo('xNome_E04').Value := edtRazaoSocialDest.Text; // Razão social ou Nome do Destinatário
    aDs.Campo('xLgr_E06').Value := edtEnderecoDest.Text; // Logradouro do Destinatário
    aDs.Campo('nro_E07').Value := edtNumeroDest.Text; // Número do Logradouro do Destinatário
    aDs.Campo('xCpl_E08').Value := edtComplementoDest.Text; // Complemento
    aDs.Campo('xBairro_E09').Value := edtBairroDest.Text; // Bairro do Destinatário
    aDs.Campo('cMun_E10').Value := edtIBGECidadeDest.Text; // Código do Município do Destinatário (Tabela IBGE)
    aDs.Campo('xMun_E11').Value := edtNomeCidadeDest.Text; //Nome da Cidade do Destinatário
    aDs.Campo('UF_E12').Value := cbUFDest.Text; // Sigla do Estado do Destinatário
    aDs.Campo('CEP_E13').Value := edtCepDest.Text; // Cep do Destinatário
    aDs.Campo('cPais_E14').Value := edtIBGEPaisDest.Text; // Código do Pais do Destinatário (Tabela do BACEN)
    aDs.Campo('xPais_E15').Value := edtPais.Text;// Nome do País do Destinatário
    aDs.Campo('fone_E16').Value := edtTelefoneDest.Text; // Fone do Destinatário
    if cbVersao.ItemIndex >= versao_5_0a then
      aDs.Campo('indIEDest_E16a').Value := '1'; // Indicador da IE do Destinatário 1-Contribuinte ICMS/2-Contribuinte Isento de inscrição/9- Não contribuinte
    aDs.Campo('IE_E17').Value := edtIEDest.Text; // Inscrição Estadual do Destinatário
    aDs.Campo('ISUF_E18').Value := edtISUFDest.Text; // Inscrição na SUFRAMA
    //aDs.Campo('IM_E18a').Value := edtISUFDest.Text; // Inscricao municipal do tomador de serviço
    aDs.Campo('email_E19').Value := edtEmailDest.Text; // Email
  end;

  // Autorizados a baixar o XML
  procedure DadosAutorizadosBaixarXML(aDs : TspdNFeDataSets);
  begin
    if Length(edtAutXMLCNPJCPF.Text) = 14 then
      aDs.Campo('CNPJ_GA02').Value := edtAutXMLCNPJCPF.Text // CNPJ do Autorizado
    else if Length(edtAutXMLCNPJCPF.Text) = 11 then
      aDs.Campo('CPF_GA03').Value := edtAutXMLCNPJCPF.Text; // CPF do Autorizado
  end;

  // Informações Referentes aos ITens da NFe
  procedure DadosDoItem(aNumItem : Integer; aDs : TspdNFeDataSets);
  begin
    aDs.Campo('nItem_H02').Value := IntToStr(aNumItem); // Número do Item da NFe (1 até 990)
    // Dados do Produto Vendido
    aDs.Campo('cProd_I02').Value := '0999'; //Código do PRoduto ou Serviço
    aDs.Campo('cEAN_I03').Value := '8712581497668'; // EAN do Produto
    aDs.Campo('xProd_I04').Value := 'MELAO';// Descrição do PRoduto
    ads.Campo('NCM_I05').Value := '11081200'; // Código do NCM - informar de acordo com o Tabela oficial do NCM
    if cbVersao.ItemIndex >= versao_5_0a then
      aDs.Campo('CEST_I05c').Value := '0125457'; // Código especificador da substituição tribuitária - CEST;

    if cbVersao.ItemIndex >= versao_6_0 then
    begin
      aDs.Campo('indEscala_I05d').Value := 'S'; // Indicador de Escala Relevante
      aDs.Campo('CNPJFab_I05e').Value := ''; // CNPJ do Fabricante da Mercadoria
      aDs.Campo('cBenef_I05f').Value := ''; // Código de Benefício Fiscal na UF aplicado ao item
    end;

    if cbUFEmit.Text = cbUFDest.Text then
      aDs.Campo('CFOP_I08').Value := '5102' // CFOP incidente neste Item da NF
    else
      aDs.Campo('CFOP_I08').Value := '6102'; // CFOP incidente neste Item da NF
    aDs.Campo('uCom_I09').Value := 'CX'; // Unidade de Medida do Item
    aDs.Campo('qCom_I10').Value := '1'; // Quantidade Comercializada do Item
    aDs.Campo('vUnCom_I10a').Value := '0.0100'; // Valor Comercializado do Item
    aDs.Campo('vProd_I11').Value := '0.01'; // Valor Total Bruto do Item
    aDs.Campo('cEANTrib_I12').Value := '8712581497668'; // EAN Tributável do Item
    aDs.Campo('uTrib_I13').Value := 'CX'; // Unidade de Medida Tributável do Item
    aDs.Campo('qTrib_I14').Value := '1'; // Quantidade Tributável do Item
    aDs.Campo('vUnTrib_I14a').Value := '0.0100'; // Valor Tributável do Item

    if cbVersao.ItemIndex >= versao_5_0a then
    begin
      aDs.Campo('xPed_I60').Value := '10123'; //Número do Pedido de Compra
      aDs.Campo('nItemPed_I61').Value := '321'; //Item do Pedido de Compra
    end;

    if ((cbVersao.ItemIndex >= versao_5_0a) and (cbPartilhaFCP.Checked)) then
    begin
      aDs.Campo('vBCUFDest_NA03').Value := '0.00'; // Valor da base de calculo do ICMS na UF do destinatário.
      if (cbVersao.ItemIndex >= versao_6_0) then
        aDs.Campo('vBCFCPUFDest_NA04').Value := '0.00'; //Valor da BC FCP na UF de destino
      aDs.Campo('pFCPUFDest_NA05').Value := '0.00'; //Percentual do ICMS relativo ao Fundo de Combate à Pobreza (FCP) na UF de destino
      aDs.Campo('pICMSUFDest_NA07').Value := '0.00'; //Aliquota adotada nas operações internas na UF do destinatario
      aDs.Campo('pICMSInter_NA09').Value := '12.00';  //Aliquota interestadual das UF envolvida
      aDs.Campo('pICMSInterPart_NA11').Value := '0.00'; //Percentual da partilha para a UF do destinatário
      aDs.Campo('vFCPUFDest_NA13').Value := '0.00'; //Valor do ICMS relativo ao Fundo de Combate à pobreza (FCP) da UF de destino
      aDs.Campo('vICMSUFDest_NA15').Value := '0.00'; // Valor do ICMS de partilha para a UF do destinatário
      aDs.Campo('vICMSUFRemet_NA17').Value := '0.00'; // Valor do ICMS da partilha para UF do remetente.
    end;

    //////////////////// Aqui começam os Impostos Incidentes sobre o Item////////////////////////
    /// Verificar Manual pois existe uma variação nos campos de acordo com Tipo de Tributação ////
    // ICMS
    if not cbNotaConjugada.Checked then
    begin
      case cbICMS.ItemIndex of
      0://ICMS 00
        begin
          case frmICMS00.cbOrigemICMS00.ItemIndex of
            0: aDs.Campo('orig_N11').Value := '0';
            1: aDs.Campo('orig_N11').Value := '1';
            2: aDs.Campo('orig_N11').Value := '2';
            3: aDs.Campo('orig_N11').Value := '3';
            4: aDs.Campo('orig_N11').Value := '4';
            5: aDs.Campo('orig_N11').Value := '5';
            6: aDs.Campo('orig_N11').Value := '6';
            7: aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CST_N12').Value := frmICMS00.edtCSTICMS00.Text;
          case frmICMS00.cbModalidadeICMS00.ItemIndex of
            0: aDs.Campo('modBC_N13').Value := '0';
            1: aDs.Campo('modBC_N13').Value := '1';
            2: aDs.Campo('modBC_N13').Value := '2';
            3: aDs.Campo('modBC_N13').Value := '3';
          end;
          aDs.Campo('vBC_N15').Value := frmICMS00.edtValorBCICMS00.Text;
          aDs.Campo('pICMS_N16').Value := frmICMS00.edtAliquotaICMS00.Text;
          aDs.Campo('vICMS_N17').Value := frmICMS00.edtValorICMS00.Text;
          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('pFCP_N17b').Value := frmICMS00.edtpFCP00.Text; //Percentual do Fundo de Combate à Pobreza (FCP)
            aDs.Campo('vFCP_N17c').Value := frmICMS00.edtvFCP00.Text; //Valor do Fundo de Combate à Pobreza (FCP)
          end;
        end;
      1://ICMS 10
        begin
          case frmICMS10.cbOrigemICMS10.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CST_N12').Value := frmICMS10.edtCSTICMS10.Text;
          case frmICMS10.cbModalidadeICMS10.ItemIndex of
            0: aDs.Campo('modBC_N13').Value := '0';
            1: aDs.Campo('modBC_N13').Value := '1';
            2: aDs.Campo('modBC_N13').Value := '2';
            3: aDs.Campo('modBC_N13').Value := '3';
          end;
          aDs.Campo('vBC_N15').Value      := frmICMS10.edtValorBCICMS10.Text;
          aDs.Campo('pICMS_N16').Value    := frmICMS10.edtAliquotaICMS10.Text;
          aDs.Campo('vICMS_N17').Value    := frmICMS10.edtValorICMS10.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCP_N17a').Value := frmICMS10.edtvBCFCP10.Text; //Valor da Base de Cálculo do FCP
            aDs.Campo('pFCP_N17b').Value   := frmICMS10.edtpFCP10.Text; //Percentual do Fundo de Combate à Pobreza (FCP)
            aDs.Campo('vFCP_N17c').Value   := frmICMS10.edtvFCP10.Text; //Valor do Fundo de Combate à Pobreza (FCP)
          end;

          case frmICMS10.cbModSTICMS10.ItemIndex of
            0: aDs.Campo('modBCST_N18').Value := '0';
            1: aDs.Campo('modBCST_N18').Value := '1';
            2: aDs.Campo('modBCST_N18').Value := '2';
            3: aDs.Campo('modBCST_N18').Value := '3';
            4: aDs.Campo('modBCST_N18').Value := '4';
            5: aDs.Campo('modBCST_N18').Value := '5';
          end;
          aDs.Campo('pMVAST_N19').Value   := frmICMS10.edtpMVASTICMS10.Text;
          aDs.Campo('pRedBCST_N20').Value := frmICMS10.edtpRedBCSTICMS10.Text;
          aDs.Campo('vBCST_N21').Value    := frmICMS10.edtvBCSTIMS10.Text;
          aDs.Campo('pICMSST_N22').Value  := frmICMS10.edtpICMSSTICMS10.Text;
          aDs.Campo('vICMSST_N23').Value  := frmICMS10.edtvICMSSTICMS10.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCPST_N23a').Value := frmICMS10.edtvBCFCPST10.Text; //Valor da Base de Cálculo do FCP retido por Substituição Tributária
            aDs.Campo('pFCPST_N23b').Value   := frmICMS10.edtpFCPST10.Text; //Percentual do FCP retido por Substituição Tributária
            aDs.Campo('vFCPST_N23d').Value   := frmICMS10.edtvFCPST10.Text; //Valor do FCP retido por Substituição Tributária
          end;
        end;
      2://ICMS 20
        begin
          case frmICMS20.cbOrigemICMS20.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CST_N12').Value := frmICMS20.edtCSTICMS20.Text;
          case frmICMS20.cbModalidadeICMS20.ItemIndex of
            0: aDs.Campo('modBC_N13').Value := '0';
            1: aDs.Campo('modBC_N13').Value := '1';
            2: aDs.Campo('modBC_N13').Value := '2';
            3: aDs.Campo('modBC_N13').Value := '3';
          end;
          aDs.Campo('pRedBC_N14').Value := frmICMS20.edtpRedBCICMS20.Text;
          aDs.Campo('vBC_N15').Value    := frmICMS20.edtValorBCICMS20.Text;
          aDs.Campo('pICMS_N16').Value  := frmICMS20.edtAliquotaICMS20.Text;
          aDs.Campo('vICMS_N17').Value  := frmICMS20.edtValorICMS20.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCP_N17a').Value := frmICMS20.edtvBCFCP20.Text; //Valor da Base de Cálculo do FCP
            aDs.Campo('pFCP_N17b').Value   := frmICMS20.edtpFCP20.Text; //Percentual do Fundo de Combate à Pobreza (FCP)
            aDs.Campo('vFCP_N17c').Value   := frmICMS20.edtvFCP20.Text; //Valor do Fundo de Combate à Pobreza (FCP)
          end;

          if cbVersao.ItemIndex >= versao_5_0a then
          begin
            if cbVersao.ItemIndex >= versao_6_0 then
              aDs.Campo('vICMSDeson_N28a').Value  := frmICMS20.edtValorICMS20Deson.Text
            else
              aDs.Campo('vICMSDeson_N27a').Value  := frmICMS20.edtValorICMS20Deson.Text;
            case frmICMS20.cbMotDesICMS20.ItemIndex of
              0: aDs.Campo('motDesICMS_N28').Value := '3';
              1: aDs.Campo('motDesICMS_N28').Value := '9';
              2: aDs.Campo('motDesICMS_N28').Value := '12';
            end;
          end;
        end;
      3://ICMS 30
        begin
          case frmICMS30.cbOrigemICMS30.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CST_N12').Value := frmICMS30.edtCSTICMS30.Text;
          case frmICMS30.cbModSTICMS30.ItemIndex of
            0: aDs.Campo('modBCST_N18').Value := '0';
            1: aDs.Campo('modBCST_N18').Value := '1';
            2: aDs.Campo('modBCST_N18').Value := '2';
            3: aDs.Campo('modBCST_N18').Value := '3';
            4: aDs.Campo('modBCST_N18').Value := '4';
            5: aDs.Campo('modBCST_N18').Value := '5';
          end;
          aDs.Campo('pMVAST_N19').Value   := frmICMS30.edtpMVASTICMS30.Text;
          aDs.Campo('pRedBCST_N20').Value := frmICMS30.edtpRedBCSTICMS30.Text;
          aDs.Campo('vBCST_N21').Value    := frmICMS30.edtvBCSTIMS30.Text;
          aDs.Campo('pICMSST_N22').Value  := frmICMS30.edtpICMSSTICMS30.Text;
          aDs.Campo('vICMSST_N23').Value  := frmICMS30.edtvICMSSTICMS30.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCPST_N23a').Value := frmICMS30.edtvBCFCPST30.Text; //Valor da Base de Cálculo do FCP retido por Substituição Tributária
            aDs.Campo('pFCPST_N23b').Value   := frmICMS30.edtpFCPST30.Text; //Percentual do FCP retido por Substituição Tributária
            aDs.Campo('vFCPST_N23d').Value   := frmICMS30.edtvFCPST30.Text; //Valor do FCP retido por Substituição Tributária
          end;

          if cbVersao.ItemIndex >= versao_5_0a then
          begin
            if cbVersao.ItemIndex >= versao_6_0 then
              aDs.Campo('vICMSDeson_N28a').Value  := frmICMS30.edtValorICMS30Deson.Text
            else
              aDs.Campo('vICMSDeson_N27a').Value  := frmICMS30.edtValorICMS30Deson.Text;
            case frmICMS30.cbbMotDesICMS30.ItemIndex of
              0: aDs.Campo('motDesICMS_N28').Value := '6'; //6=Utilitários e Motocicletas da Amazônia Ocidental e Áreas de Livre Comércio
              1: aDs.Campo('motDesICMS_N28').Value := '7'; //7=SUFRAMA;
              2: aDs.Campo('motDesICMS_N28').Value := '9'; //9=Outros
            end;
          end;
        end;
      4://ICMS 40, 41 e 50
        begin
          case frmICMS40.cbOrigemICMS40.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CST_N12').Value  := frmICMS40.edtCSTICMS40.Text;

          if cbVersao.ItemIndex >= versao_6_0 then
            aDs.Campo('vICMSDeson_N28a').Value := frmICMS40.edtValorICMS40Deson.Text
          else
            aDs.Campo('vICMSDeson_N27a').Value := frmICMS40.edtValorICMS40Deson.Text;

          case frmICMS40.cbMotDesICMS40.ItemIndex of
            0: aDs.Campo('motDesICMS_N28').Value := '1';
            1: aDs.Campo('motDesICMS_N28').Value := '3';
            2: aDs.Campo('motDesICMS_N28').Value := '4';
            3: aDs.Campo('motDesICMS_N28').Value := '5';
            4: aDs.Campo('motDesICMS_N28').Value := '6';
            5: aDs.Campo('motDesICMS_N28').Value := '7';
            6: aDs.Campo('motDesICMS_N28').Value := '8';
            7: aDs.Campo('motDesICMS_N28').Value := '9';
            8: aDs.Campo('motDesICMS_N28').Value := '10';
            9: aDs.Campo('motDesICMS_N28').Value := '11';
            10: aDs.Campo('motDesICMS_N28').Value := '16';
            11: aDs.Campo('motDesICMS_N28').Value := '90';
          end;
        end;
      5:// ICMS 51
        begin
          case frmICMS51.cbOrigemICMS51.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CST_N12').Value := frmICMS51.edtCSTICMS51.Text;
          case frmICMS51.cbModalidadeICMS51.ItemIndex of
            0: aDs.Campo('modBC_N13').Value := '0';
            1: aDs.Campo('modBC_N13').Value := '1';
            2: aDs.Campo('modBC_N13').Value := '2';
            3: aDs.Campo('modBC_N13').Value := '3';
          end;
          aDs.Campo('pRedBC_N14').Value := frmICMS51.edtpRedBC51.Text;
          aDs.Campo('vBC_N15').Value    := frmICMS51.edtValorBCICMS51.Text;
          aDs.Campo('pICMS_N16').Value  := frmICMS51.edtAliquotaICMS51.Text;
          if cbVersao.ItemIndex >= versao_5_0a then
          begin
            aDs.Campo('vICMSOp_N16a').Value :=  frmICMS51.edtvICMSOp51.Text;
            aDs.Campo('pDif_N16b').Value  := frmICMS51.edtpDif51.Text;
            aDs.Campo('vICMSDif_N16c').Value  := frmICMS51.edtvICMSDif51.Text;
          end;
          aDs.Campo('vICMS_N17').Value  := frmICMS51.edtvICMS51.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCP_N17a').Value := frmICMS51.edtvBCFCP51.Text; //Valor da Base de Cálculo do FCP
            aDs.Campo('pFCP_N17b').Value   := frmICMS51.edtpFCP51.Text; //Percentual do Fundo de Combate à Pobreza (FCP)
            aDs.Campo('vFCP_N17c').Value   := frmICMS51.edtvFCP51.Text; //Valor do Fundo de Combate à Pobreza (FCP)
          end;
        end;
      6://ICMS 60
        begin
          case frmICMS60.cbOrigemICMS60.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CST_N12').Value        := frmICMS60.edtCSTICMS60.Text;
          aDs.Campo('vBCSTRet_N26').Value   := frmICMS60.edtvBCSTRet60.Text;
          if (cbVersao.ItemIndex >= versao_6_0) then
            aDs.Campo('pST_N26a').Value     := frmICMS60.edtpST60.Text; //Alíquota suportada pelo Consumidor Final

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCPSTRet_N27a').Value := frmICMS60.edtvBCSTRet60.Text; //Valor da Base de Cálculo do FCP retido anteriormente por ST
            aDs.Campo('pFCPSTRet_N27b').Value   := frmICMS60.edtpFCPSTRet60.Text; //Percentual do FCP retido anteriormente por Substituição Tributária
            aDs.Campo('vFCPSTRet_N27d').Value   := frmICMS60.edtvFCPSTRet60.Text; //Valor do FCP retido por Substituição Tributária
          end;
        end;
      7://ICMS 70
        begin
          case frmICMS70.cbOrigemICMS70.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CST_N12').Value := frmICMS70.edtCSTICMS70.Text;
          case frmICMS70.cbModalidadeICMS70.ItemIndex of
            0: aDs.Campo('modBC_N13').Value := '0';
            1: aDs.Campo('modBC_N13').Value := '1';
            2: aDs.Campo('modBC_N13').Value := '2';
            3: aDs.Campo('modBC_N13').Value := '3';
          end;
          aDs.Campo('pRedBC_N14').Value   := frmICMS70.edtpRedBC70.Text;
          aDs.Campo('vBC_N15').Value      := frmICMS70.edtValorBC70.Text;
          aDs.Campo('pICMS_N16').Value    := frmICMS70.edtpICMS70.Text;
          aDs.Campo('vICMS_N17').Value    := frmICMS70.edtvICMS70.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCP_N17a').Value := frmICMS70.edtvBCFCP70.Text; //Valor da Base de Cálculo do FCP
            aDs.Campo('pFCP_N17b').Value   := frmICMS70.edtpFCP70.Text; //Percentual do Fundo de Combate à Pobreza (FCP)
            aDs.Campo('vFCP_N17c').Value   := frmICMS70.edtvFCP70.Text; //Valor do Fundo de Combate à Pobreza (FCP)
          end;

          case frmICMS70.cbmodBCST70.ItemIndex of
            0: aDs.Campo('modBCST_N18').Value := '0';
            1: aDs.Campo('modBCST_N18').Value := '1';
            2: aDs.Campo('modBCST_N18').Value := '2';
            3: aDs.Campo('modBCST_N18').Value := '3';
            4: aDs.Campo('modBCST_N18').Value := '4';
            5: aDs.Campo('modBCST_N18').Value := '5';
          end;
          aDs.Campo('pMVAST_N19').Value   := frmICMS70.edtpMVAST70.Text;
          aDs.Campo('pRedBCST_N20').Value := frmICMS70.edtpRedBCST70.Text;
          aDs.Campo('vBCST_N21').Value    := frmICMS70.edtvBCST70.Text;
          aDs.Campo('pICMSST_N22').Value  := frmICMS70.edtpICMSST70.Text;
          aDs.Campo('vICMSST_N23').Value  := frmICMS70.edtvICMSST70.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCPST_N23a').Value := frmICMS70.edtvBCFCPST70.Text; //Valor da Base de Cálculo do FCP retido por Substituição Tributária
            aDs.Campo('pFCPST_N23b').Value   := frmICMS70.edtpFCPST70.Text; //Percentual do FCP retido por Substituição Tributária
            aDs.Campo('vFCPST_N23d').Value   := frmICMS70.edtvFCPST70.Text; //Valor do FCP retido por Substituição Tributária
          end;

          if cbVersao.ItemIndex >= versao_5_0a then
          begin
            if cbVersao.ItemIndex >= versao_6_0 then
              aDs.Campo('vICMSDeson_N28a').Value  := frmICMS70.edtvICMSDeson70.Text
            else
              aDs.Campo('vICMSDeson_N27a').Value  := frmICMS70.edtvICMSDeson70.Text;
            case frmICMS70.cbbMotDesICMS70.ItemIndex of
              0: aDs.Campo('motDesICMS_N28').Value := '3';
              1: aDs.Campo('motDesICMS_N28').Value := '9';
              2: aDs.Campo('motDesICMS_N28').Value := '12';
            end;
          end;
        end;
      8://ICMS 90
        begin
          case frmICMS90.cbOrigemICMS90.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CST_N12').Value := frmICMS90.edtCSTICMS90.Text;
          case frmICMS90.cbmodBC90.ItemIndex of
            0: aDs.Campo('modBC_N13').Value := '0';
            1: aDs.Campo('modBC_N13').Value := '1';
            2: aDs.Campo('modBC_N13').Value := '2';
            3: aDs.Campo('modBC_N13').Value := '3';
          end;
          aDs.Campo('pRedBC_N14').Value   := frmICMS90.edtpRedBC90.Text;
          aDs.Campo('vBC_N15').Value      := frmICMS90.edtvBC90.Text;
          aDs.Campo('pICMS_N16').Value    := frmICMS90.edtpICMS90.Text;
          aDs.Campo('vICMS_N17').Value    := frmICMS90.edtvICMS90.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCP_N17a').Value := frmICMS70.edtvBCFCP70.Text; //Valor da Base de Cálculo do FCP
            aDs.Campo('pFCP_N17b').Value   := frmICMS70.edtpFCP70.Text; //Percentual do Fundo de Combate à Pobreza (FCP)
            aDs.Campo('vFCP_N17c').Value   := frmICMS70.edtvFCP70.Text; //Valor do Fundo de Combate à Pobreza (FCP)
          end;

          case frmICMS90.cbmodBCST90.ItemIndex of
            0: aDs.Campo('modBCST_N18').Value := '0';
            1: aDs.Campo('modBCST_N18').Value := '1';
            2: aDs.Campo('modBCST_N18').Value := '2';
            3: aDs.Campo('modBCST_N18').Value := '3';
            4: aDs.Campo('modBCST_N18').Value := '4';
            5: aDs.Campo('modBCST_N18').Value := '5';
          end;
          aDs.Campo('pMVAST_N19').Value   := frmICMS90.edtpMVAST90.Text;
          aDs.Campo('pRedBCST_N20').Value := frmICMS90.edtpRedBCST90.Text;
          aDs.Campo('vBCST_N21').Value    := frmICMS90.edtvBCST90.Text;
          aDs.Campo('pICMSST_N22').Value  := frmICMS90.edtpICMSST90.Text;
          aDs.Campo('vICMSST_N23').Value  := frmICMS90.edtvICMSST90.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCPST_N23a').Value := frmICMS90.edtvBCFCPST90.Text; //Valor da Base de Cálculo do FCP retido por Substituição Tributária
            aDs.Campo('pFCPST_N23b').Value   := frmICMS90.edtpFCPST90.Text; //Percentual do FCP retido por Substituição Tributária
            aDs.Campo('vFCPST_N23d').Value   := frmICMS90.edtvFCPST90.Text; //Valor do FCP retido por Substituição Tributária
          end;

          if cbVersao.ItemIndex >= versao_5_0a then
          begin
            if cbVersao.ItemIndex >= versao_6_0 then
              aDs.Campo('vICMSDeson_N28a').Value  := frmICMS90.edtvICMSDeson90.Text
            else
              aDs.Campo('vICMSDeson_N27a').Value  := frmICMS90.edtvICMSDeson90.Text;
            case frmICMS90.cbbMotDesICMS90.ItemIndex of
              0: aDs.Campo('motDesICMS_N28').Value := '3';
              1: aDs.Campo('motDesICMS_N28').Value := '9';
              2: aDs.Campo('motDesICMS_N28').Value := '12';
            end;
          end;
        end;
      9://ICMS Part
        begin
          case frmICMSPart.cbOrigemICMSPart.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CST_N12').Value := frmICMSPart.edtCSTICMSPart.Text;
          case frmICMSPart.cbModalidadeICMSPart.ItemIndex of
            0: aDs.Campo('modBC_N13').Value := '0';
            1: aDs.Campo('modBC_N13').Value := '1';
            2: aDs.Campo('modBC_N13').Value := '2';
            3: aDs.Campo('modBC_N13').Value := '3';
          end;
          aDs.Campo('pRedBC_N14').Value   := frmICMSPart.edtpRedBCICMSPart.Text;
          aDs.Campo('vBC_N15').Value      := frmICMSPart.edtValorBCICMSPart.Text;
          aDs.Campo('pICMS_N16').Value    := frmICMSPart.edtAliquotaICMSPart.Text;
          aDs.Campo('vICMS_N17').Value    := frmICMSPart.edtValorICMSPart.Text;
          case frmICMSPart.cbModSTICMSPart.ItemIndex of
            0: aDs.Campo('modBCST_N18').Value := '0';
            1: aDs.Campo('modBCST_N18').Value := '1';
            2: aDs.Campo('modBCST_N18').Value := '2';
            3: aDs.Campo('modBCST_N18').Value := '3';
            4: aDs.Campo('modBCST_N18').Value := '4';
            5: aDs.Campo('modBCST_N18').Value := '5';
          end;
          aDs.Campo('pMVAST_N19').Value   := frmICMSPart.edtpMVASTICMSPart.Text;
          aDs.Campo('pRedBCST_N20').Value := frmICMSPart.edtpRedBCSTICMSPart.Text;
          aDs.Campo('vBCST_N21').Value    := frmICMSPart.edtvBCSTICMSPart.Text;
          aDs.Campo('pICMSST_N22').Value  := frmICMSPart.edtpICMSSTICMSPart.Text;
          aDs.Campo('vICMSST_N23').Value  := frmICMSPart.edtvICMSSTICMSPart.Text;
          aDs.Campo('pBCOp_N25').Value    := frmICMSPart.edtpBCOpICMSPart.Text;
          aDs.Campo('UFST_N24').Value     := frmICMSPart.edtUFSTICMSPart.Text;
        end;
      10://ICMS ST
        begin
          case frmICMSST.cbOrigemICMSST.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CST_N12').Value      := frmICMSST.edtCSTICMSST.Text ;
          aDs.Campo('vBCSTRet_N26').Value := frmICMSST.edtvBCSTRetICMSST.Text;
          aDs.Campo('vICMSSTRet_N27').Value := frmICMSST.edtvICMSSTRetICMSST.Text;
          aDs.Campo('vBCSTDest_N31').Value := frmICMSST.edtvBCSTDestICMSST.Text;
          aDs.Campo('vICMSSTDest_N32').Value := frmICMSST.edtvICMSSTDestICMSST.Text;
        end;
      11://ICMS SN 101
        begin
          case frmICMSSN101.cbOrigem101.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CSOSN_N12a').Value      := frmICMSSN101.edtCSOSN101.Text;
          aDs.Campo('pCredSN_N29').Value     := frmICMSSN101.edtpCredSN101.Text;
          aDs.Campo('vCredICMSSN_N30').Value := frmICMSSN101.edtvCredICMSSN101.Text;
        end;
      12://ICMS SN 102
        begin
          case frmICMSSN102.cbOrigem102.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CSOSN_N12a').Value     := frmICMSSN102.edtCSOSN102.Text;
        end;
      13://ICMS SN 201
        begin
          case frmICMSSN201.cbOrigemICMSSN201.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CSOSN_N12a').Value := frmICMSSN201.edtCSOSNICMSSN201.Text;
          case frmICMSSN201.cbmodBCSTICMSSN201.ItemIndex of
            0: aDs.Campo('modBCST_N18').Value := '0';
            1: aDs.Campo('modBCST_N18').Value := '1';
            2: aDs.Campo('modBCST_N18').Value := '2';
            3: aDs.Campo('modBCST_N18').Value := '3';
            4: aDs.Campo('modBCST_N18').Value := '4';
            5: aDs.Campo('modBCST_N18').Value := '5';
          end;
          aDs.Campo('pMVAST_N19').Value    := frmICMSSN201.edtpMVAST201.Text;
          aDs.Campo('pRedBCST_N20').Value  := frmICMSSN201.edtpRedBCST201.Text;
          aDs.Campo('vBCST_N21').Value     := frmICMSSN201.edtvBCST201.Text;
          aDs.Campo('pICMSST_N22').Value   := frmICMSSN201.edtpICMSST201.Text;
          aDs.Campo('vICMSST_N23').Value   := frmICMSSN201.edtvICMSST201.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCPST_N23a').Value := frmICMSSN201.edtvBCFCPST201.Text; //Valor da Base de Cálculo do FCP retido por Substituição Tributária
            aDs.Campo('pFCPST_N23b').Value   := frmICMSSN201.edtpFCPST201.Text; //Percentual do FCP retido por Substituição Tributária
            aDs.Campo('vFCPST_N23d').Value   := frmICMSSN201.edtvFCPST201.Text; //Valor do FCP retido por Substituição Tributária
          end;

          aDs.Campo('pCredSN_N29').Value     := frmICMSSN201.edtpCredSN201.Text;
          aDs.Campo('vCredICMSSN_N30').Value := frmICMSSN201.edtvCredICMSSN201.Text;
        end;
      14://ICMS SN 202
        begin
          case frmICMSSN202.cbOrigemICMSSN202.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CSOSN_N12a').Value := frmICMSSN202.edtCSOSNICMSSN202.Text;
          case frmICMSSN202.cbmodBCST202.ItemIndex of
            0: aDs.Campo('modBCST_N18').Value := '0';
            1: aDs.Campo('modBCST_N18').Value := '1';
            2: aDs.Campo('modBCST_N18').Value := '2';
            3: aDs.Campo('modBCST_N18').Value := '3';
            4: aDs.Campo('modBCST_N18').Value := '4';
            5: aDs.Campo('modBCST_N18').Value := '5';
          end;
          aDs.Campo('pMVAST_N19').Value     := frmICMSSN202.edtpMVAST202.Text;
          aDs.Campo('pRedBCST_N20').Value   := frmICMSSN202.edtpRedBCST202.Text;
          aDs.Campo('vBCST_N21').Value      := frmICMSSN202.edtvBCST202.Text;
          aDs.Campo('pICMSST_N22').Value    := frmICMSSN202.edtpICMSST202.Text;
          aDs.Campo('vICMSST_N23').Value    := frmICMSSN202.edtvICMSST202.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCPST_N23a').Value := frmICMSSN202.edtvBCFCPST202.Text; //Valor da Base de Cálculo do FCP retido por Substituição Tributária
            aDs.Campo('pFCPST_N23b').Value   := frmICMSSN202.edtpFCPST202.Text; //Percentual do FCP retido por Substituição Tributária
            aDs.Campo('vFCPST_N23d').Value   := frmICMSSN202.edtvFCPST202.Text; //Valor do FCP retido por Substituição Tributária
          end;
        end;
      15://ICMS SN 500
        begin
          case frmICMSSN500.cbOrigemICMSSN500.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CSOSN_N12a').Value    := frmICMSSN500.edtCSOSN500.Text;
          aDs.Campo('vBCSTRet_N26').Value  := frmICMSSN500.edtvBCSTRet500.Text;

          if (cbVersao.ItemIndex >= versao_6_0) then
            aDs.Campo('pST_N26a').Value := frmICMSSN500.edtpST500.Text; //Alíquota suportada pelo Consumidor Final

          aDs.Campo('vICMSSTRet_N27').Value    := frmICMSSN500.edtvICMSSTRet500.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCPSTRet_N27a').Value := frmICMSSN500.edtvBCSTRet500.Text; //Valor da Base de Cálculo do FCP retido anteriormente por ST
            aDs.Campo('pFCPSTRet_N27b').Value   := frmICMSSN500.edtpFCPSTRet500.Text; //Percentual do FCP retido anteriormente por Substituição Tributária
            aDs.Campo('vFCPSTRet_N27d').Value   := frmICMSSN500.edtvFCPSTRet500.Text; //Valor do FCP retido por Substituição Tributária
          end;
        end;
      16://ICMS SN 900
        begin
          case frmICMSSN900.cbOrigem900.ItemIndex of
            0 : aDs.Campo('orig_N11').Value := '0';
            1 : aDs.Campo('orig_N11').Value := '1';
            2 : aDs.Campo('orig_N11').Value := '2';
            3 : aDs.Campo('orig_N11').Value := '3';
            4 : aDs.Campo('orig_N11').Value := '4';
            5 : aDs.Campo('orig_N11').Value := '5';
            6 : aDs.Campo('orig_N11').Value := '6';
            7 : aDs.Campo('orig_N11').Value := '7';
            8 : aDs.Campo('orig_N11').Value := '8';
          end;
          aDs.Campo('CSOSN_N12a').Value := frmICMSSN900.edtCSOSN900.Text;
          case frmICMSSN900.cbmodBC900.ItemIndex of
            0: aDs.Campo('modBC_N13').Value := '0';
            1: aDs.Campo('modBC_N13').Value := '1';
            2: aDs.Campo('modBC_N13').Value := '2';
            3: aDs.Campo('modBC_N13').Value := '3';
          end;
          aDs.Campo('pRedBC_N14').Value   := frmICMSSN900.edtpRedBC900.Text;
          aDs.Campo('vBC_N15').Value      := frmICMSSN900.edtvBC900.Text;
          aDs.Campo('pICMS_N16').Value    := frmICMSSN900.edtpICMS900.Text;
          aDs.Campo('vICMS_N17').Value    := frmICMSSN900.edtvICMS900.Text;
          case frmICMSSN900.cbmodBCST900.ItemIndex of
            0: aDs.Campo('modBCST_N18').Value := '0';
            1: aDs.Campo('modBCST_N18').Value := '1';
            2: aDs.Campo('modBCST_N18').Value := '2';
            3: aDs.Campo('modBCST_N18').Value := '3';
            4: aDs.Campo('modBCST_N18').Value := '4';
            5: aDs.Campo('modBCST_N18').Value := '5';
          end;
          aDs.Campo('pMVAST_N19').Value   := frmICMSSN900.edtpMVAST900.Text;
          aDs.Campo('pRedBCST_N20').Value := frmICMSSN900.edtpRedBCST900.Text;
          aDs.Campo('vBCST_N21').Value    := frmICMSSN900.edtvBCST900.Text;
          aDs.Campo('pICMSST_N22').Value  := frmICMSSN900.edtpICMSST900.Text;
          aDs.Campo('vICMSST_N23').Value  := frmICMSSN900.edtvICMSST900.Text;

          if ((cbVersao.ItemIndex >= versao_6_0) and (cbPartilhaFCP.Checked)) then
          begin
            aDs.Campo('vBCFCPST_N23a').Value := frmICMSSN900.edtvBCFCPST900.Text; //Valor da Base de Cálculo do FCP retido por Substituição Tributária
            aDs.Campo('pFCPST_N23b').Value   := frmICMSSN900.edtpFCPST900.Text; //Percentual do FCP retido por Substituição Tributária
            aDs.Campo('vFCPST_N23d').Value   := frmICMSSN900.edtvFCPST900.Text; //Valor do FCP retido por Substituição Tributária
          end;

          aDs.Campo('pCredSN_N29').Value     := frmICMSSN900.edtpCredSN900.Text;
          aDs.Campo('vCredICMSSN_N30').Value := frmICMSSN900.edtvCredICMSSN900.Text;
        end;
      end;
      end
      else
      begin
      // ISSQN
        if cbISSQN.ItemIndex = 0 then
        begin
          aDs.Campo('vBC_U02').Value          := frmISSQN.edtvBCISSQN.Text;
          aDs.Campo('vAliq_U03').Value        := frmISSQN.edtvAliqISSQN.Text;
          aDs.Campo('vISSQN_U04').Value       := frmISSQN.edtvISSQN.Text;
          aDs.Campo('cMunFG_U05').Value       := frmISSQN.edtcMunFGISSQN.Text;
          aDs.Campo('cListServ_U06').Value    := frmISSQN.edtcListServISSQN.Text;
          if cbVersao.ItemIndex >= versao_5_0a then
          begin
            aDs.Campo('vDeducao_U07').Value     := frmISSQN.edtvDeducaoISSQN.Text;
            aDs.Campo('vOutro_U08').Value       := frmISSQN.edtvOutroISSQN.Text;
            aDs.Campo('vDescIncond_U09').Value  := frmISSQN.edtvDescIncondISSQN.Text;
            aDs.Campo('vDescCond_U10').Value    := frmISSQN.edtvDescCondISSQN.Text;
            aDs.Campo('vISSRet_U11').Value      := frmISSQN.edtvISSRetISSQN.Text;
            aDs.Campo('indISS_U12').Value       := IntToStr(frmISSQN.cbbindISSISSQN.ItemIndex + 1);
            aDs.Campo('cServico_U13').Value     := frmISSQN.edtcServicoISSQN.Text;
            aDs.Campo('cMun_U14').Value         := frmISSQN.edtcMunISSQN.Text;

            if frmISSQN.edtcMunISSQN.Text = '9999999' then
              aDs.Campo('cPais_U15').Value := '1'; //Informar somente se o Mun for 9999999

            if (frmISSQN.cbbindISSISSQN.ItemIndex = 5) or (frmISSQN.cbbindISSISSQN.ItemIndex = 6) then
              aDs.Campo('nProcesso_U16').Value := '123456';//Informar só se indISS_U013 for 6 ou 7

            aDs.Campo('indIncentivo_U17').Value := IntToStr(frmISSQN.cbbindIncentivoISSQN.ItemIndex + 1);

            if Trim(aDs.Campo('orig_N11').AsString) = EmptyStr then //Se O grupo ICMS não for informado
              aDs.Campo('vTotTrib_M02').value := '0.01';
          end
          else
            aDs.Campo('cSitTrib_U07').Value := '1';
        end;
      end;

      // PIS
      case cbPIS.ItemIndex of
        0://PIS Aliquota
          begin
            case frmPISAliq.cbCSTPISAliq.ItemIndex of
              0: aDs.Campo('CST_Q06').Value := '01';
              1: aDs.Campo('CST_Q06').Value := '02';
            end;
            aDs.Campo('vBC_Q07').Value := frmPISAliq.edtvBCPISAliq.Text;
            aDs.Campo('pPIS_Q08').Value := frmPISAliq.edtpPISPISAliq.Text;
            aDs.Campo('vPIS_Q09').Value := frmPISAliq.edtvPISPISAliq.Text;
          end;
        1://PIS Quantidade
          begin
            aDs.Campo('CST_Q06').Value := '03';
            aDs.Campo('qBCProd_Q10').Value := frmPISQtde.edtqBCProdPISQtde.Text;
            aDs.Campo('vAliqProd_Q11').Value := frmPISQtde.edtvAliqProdPISQtde.Text;
            aDs.Campo('vPIS_Q09').Value := frmPISQtde.edtvPISPISQtde.Text;
          end;
        2://PIS NT
          begin
            case frmPISNT.cbCSTPISNT.ItemIndex of
              0: aDs.Campo('CST_Q06').Value := '04';
              1: aDs.Campo('CST_Q06').Value := '05';
              2: aDs.Campo('CST_Q06').Value := '06';
              3: aDs.Campo('CST_Q06').Value := '07';
              4: aDs.Campo('CST_Q06').Value := '08';
              5: aDs.Campo('CST_Q06').Value := '09';
            end;
          end;
        3://PIS Outros
          begin
            aDs.Campo('CST_Q06').Value  := '99';
            if frmPISOutr.rgCalcPISTrib.ItemIndex = 0 then
            begin
              aDs.Campo('vBC_Q07').Value  := frmPISOutr.edtvBCPISOutr.Text;
              aDs.Campo('pPIS_Q08').Value := frmPISOutr.edtpPISPISOutr.Text;
            end
            else
            begin
              aDs.Campo('qBCProd_Q10').Value := frmPISOutr.edtqBCProdPISOutr.Text;
              aDs.Campo('vAliqProd_Q11').Value := frmPISOutr.edtvAliqProdPISOutr.Text;
            end;
            aDs.Campo('vPIS_Q09').Value := frmPISOutr.edtvPISOutr.Text;
          end;
      end;

      //PIS ST
      case cbPISST.ItemIndex of
        0:
          begin
            if frmPISST.rgCalcPISST.ItemIndex = 0 then
            begin
              aDs.Campo('vBC_R02').Value   := frmPISST.edtvBCPISST.Text;
              aDs.Campo('pPIS_R03').Value  := frmPISST.edtpPISST.Text;
            end
            else
            begin
              aDs.Campo('qBCProd_R04').Value   := frmPISST.edtqBCProdPISST.Text;
              aDs.Campo('vAliqProd_R05').Value := frmPISST.edtvAliqProdPISST.Text;
            end;
            aDs.Campo('vPIS_R06').Value  := frmPISST.edtvPISST.Text;
          end;
      end;

      // COFINS
      case cbCOFINS.ItemIndex of
        0://COFINS Aliquota
          begin
            case frmCOFINSAliq.cbCSTCOFINSAliq.ItemIndex of
              0: aDs.Campo('CST_S06').Value := '01';
              1: aDs.Campo('CST_S06').Value := '02';
            end;
            aDs.Campo('vBC_S07').Value := frmCOFINSAliq.edtvBCCOFINSAliq.Text;
            aDs.Campo('pCOFINS_S08').Value := frmCOFINSAliq.edtpCOFINSAliq.Text;
            aDs.Campo('vCOFINS_S11').Value := frmCOFINSAliq.edtCOFINSAliq.Text;
          end;
        1://COFINS Quantidade
          begin
            aDs.Campo('CST_S06').Value := '03';
            aDs.Campo('qBCProd_S09').Value := frmCOFINSQtde.edtqBCProdCOFINSQtde.Text;
            aDs.Campo('vAliqProd_S10').Value := frmCOFINSQtde.edtvAliqProdCOFINSQtde.Text;
            aDs.Campo('vCOFINS_S11').Value := frmCOFINSQtde.edtvCOFINSQtde.Text;
          end;
        2://COFINS NT
          begin
            case frmCOFINSNT.cbCSTCOFINSNT.ItemIndex of
              0: aDs.Campo('CST_S06').Value := '04';
              1: aDs.Campo('CST_S06').Value := '05';
              2: aDs.Campo('CST_S06').Value := '06';
              3: aDs.Campo('CST_S06').Value := '07';
              4: aDs.Campo('CST_S06').Value := '08';
              5: aDs.Campo('CST_S06').Value := '09';
            end;
          end;
        3://COFINS Outros
          begin
            aDs.Campo('CST_S06').Value     := '99';
            if frmCOFINSOutr.rgCalcCOFINSOutr.ItemIndex = 0 then
            begin
              aDs.Campo('vBC_S07').Value     := frmCOFINSOutr.edtvBCCOFINSOutr.Text;
              aDs.Campo('pCOFINS_S08').Value := frmCOFINSOutr.edtpCOFINSOutr.Text;
            end
            else
            begin
              aDs.Campo('qBCProd_S09').Value := frmCOFINSOutr.edtqBCProdCOFINSOutr.Text;
              aDs.Campo('vAliqProd_S10').Value := frmCOFINSOutr.edtvAliqProdCOFINSOutr.Text;
            end;
            aDs.Campo('vCOFINS_S11').Value := frmCOFINSOutr.edtvCOFINSOutr.Text;
          end;
      end;

      //COFINS ST
      case cbCOFINSST.ItemIndex of
        0:
          begin
            if frmCOFINSST.rgCalcCOFINSST.ItemIndex = 0 then
            begin
              aDs.Campo('vBC_T02').Value 	 := frmCOFINSST.edtvBCCOFINSST.Text;
              aDs.Campo('pCOFINS_T03').Value 	 := frmCOFINSST.edtpCOFINSST.Text;
            end
            else
            begin
              aDs.Campo('qBCProd_T04').Value 	:= frmCOFINSST.edtqBCProdCOFINSST.Text;
              aDs.Campo('vAliqProd_T05').Value 	:= frmCOFINSST.edtvAliqProdCOFINSST.Text;
            end;
            aDs.Campo('vCOFINS_T06').Value 	 := frmCOFINSST.edtvCOFINSST.Text;
          end;
      end;

      //IPI
      case cbIPI.ItemIndex of
        0://IPI Tributado
          begin
            if cbVersao.ItemIndex >= versao_6_0 then
              aDs.Campo('cEnq_O06').Value   := frmIPITrib.edtcEnqIPITrib.Text  //Código de Enquadramento Legal do IPI
            else
              aDs.Campo('clEnq_O02').Value  := frmIPITrib.edtclEnqIPITrib.Text; //Classe de enquadramento do IPI para Cigarros e Bebidas
            aDs.Campo('CNPJProd_O03').Value := frmIPITrib.edtCNPJProdIPITrib.Text;
            aDs.Campo('cSelo_O04').Value    := frmIPITrib.edtcSeloIPITrib.Text;
            aDs.Campo('qSelo_O05').Value    := frmIPITrib.edtqSeloIPITrib.Text;

            case frmIPITrib.cbCSTIPITrib.ItemIndex of
              0: aDs.Campo('CST_O09').Value  := '00';
              1: aDs.Campo('CST_O09').Value  := '49';
              2: aDs.Campo('CST_O09').Value  := '50';
              3: aDs.Campo('CST_O09').Value  := '99';
            end;
            if frmIPITrib.rgAliqUnidTrib.ItemIndex = 0 then
            begin
              aDs.Campo('vBC_O10').Value  := frmIPITrib.edtvBCIPITrib.Text;
              aDs.Campo('pIPI_O13').Value := frmIPITrib.edtpIPITrib.Text;
            end
            else
            begin
              aDs.Campo('qUnid_O11').Value  := frmIPITrib.edtqUnidIPITrib.Text;
              aDs.Campo('vUnid_O12').Value := frmIPITrib.edtvUnidIPITrib.Text;
            end;
            aDs.Campo('vIPI_O14').Value := frmIPITrib.edtvIPITrib.Text;
          end;
        1://IPI NT
          begin
            if cbVersao.ItemIndex >= versao_6_0 then
              aDs.Campo('cEnq_O06').Value   := frmIPINT.edtcEnqIPINT.Text
            else
              aDs.Campo('clEnq_O02').Value  := frmIPINT.edtclEnqIPINT.Text;
            aDs.Campo('CNPJProd_O03').Value := frmIPINT.edtCNPJProdIPINT.Text;
            aDs.Campo('cSelo_O04').Value    := frmIPINT.edtcSeloIPINT.Text;
            aDs.Campo('qSelo_O05').Value    := frmIPINT.edtqSeloIPINT.Text;

            case frmIPINT.cbCSTIPINT.ItemIndex of
              0: aDs.Campo('CST_O09').Value := '01';
              1: aDs.Campo('CST_O09').Value := '02';
              2: aDs.Campo('CST_O09').Value := '03';
              3: aDs.Campo('CST_O09').Value := '04';
              4: aDs.Campo('CST_O09').Value := '05';
              5: aDs.Campo('CST_O09').Value := '51';
              6: aDs.Campo('CST_O09').Value := '52';
              7: aDs.Campo('CST_O09').Value := '53';
              8: aDs.Campo('CST_O09').Value := '54';
              9: aDs.Campo('CST_O09').Value := '55';
            end;
          end;
      end;

      //II
      if cbII.ItemIndex = 0 then
      begin
        aDs.Campo('vBC_P02').Value := frmII.edtvBCII.Text;
        aDs.Campo('vDespAdu_P03').Value := frmII.edtvDespAdu.Text;
        aDs.Campo('vII_P04').Value := frmII.edtvII.Text;
        aDs.Campo('vIOF_P05').Value := frmII.edtvIOFII.Text;
      end;

      // Novo campo da 4.0 - para saber se o item totaliza na nota
      if (cbVersao.ItemIndex >= versao_4_0) then
        aDs.Campo('indTot_I17b').Value := '1'; // Indica se valor do Item vProd entra no valor total da NF-e vProd
  end;

  // Totalizadores da NFe
  procedure DadosTotalizadores(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('vBC_W03').Value := '0.01'; //Base de Cálculo do ICMS
    aDs.Campo('vICMS_W04').Value := '0.01'; // Valor Total do ICMS
    if cbVersao.ItemIndex >= versao_5_0a then
    begin
      if ((cbVersao.ItemIndex >= versao_6_0) and (aDs.Campo('vICMSDeson_N28a').Value = '0.01')) then
        aDs.Campo('vICMSDeson_W04a').Value := '0.01' // Valor Total do ICMS desonerado
      else if ((cbVersao.ItemIndex = versao_5_0a) and (aDs.Campo('vICMSDeson_N27a').Value = '0.01')) then
        aDs.Campo('vICMSDeson_W04a').Value := '0.01' // Valor Total do ICMS desonerado
      else
        aDs.Campo('vICMSDeson_W04a').Value := '0.00'; // Valor Total do ICMS desonerado
    end;

    if cbVersao.ItemIndex >= versao_5_0a then
    begin
      aDs.Campo('vFCPUFDest_W04c').Value := '0.00'; // Valor total do ICMS relativo Fundo de Combate à Pobreza (FCP) da UF de destino
      aDs.Campo('vICMSUFDest_W04e').Value := '0.00'; // Valor total do ICMS de partilha para a UF do destinatario
      aDs.Campo('vICMSUFRemet_W04g').Value := '0.00'; // Valor total do ICMS de partilha para a UF do destinatario
    end;

    if cbVersao.ItemIndex >= versao_6_0 then
      aDs.Campo('vFCP_W04h').Value := '0.00'; // Valor Total do FCP (Fundo de Combate à Pobreza)

    aDs.Campo('vBCST_W05').Value := '0.00'; // Base de Cálculo do ICMS Subst. Tributária
    aDs.Campo('vST_W06').Value := '0.00'; // Valor Total do ICMS Sibst. Tributária

    if cbVersao.ItemIndex >= versao_6_0 then
    begin
      aDs.Campo('vFCPST_W06a').Value := '0.00'; // Valor Total do FCP (Fundo de Combate à Pobreza) retido por substituição tributária
      aDs.Campo('vFCPSTRet_W06b').Value := '0.00'; // Valor Total do FCP retido anteriormente por Substituição Tributária
    end;

    aDs.Campo('vProd_W07').Value := '0.01'; // Valor Total de Produtos
    aDs.Campo('vFrete_W08').Value := '0.00'; // Valor Total do Frete
    aDs.Campo('vSeg_W09').Value := '0.00'; // Valor Total do Seguro
    aDs.Campo('vDesc_W10').Value := '0.00'; // Valor Total de Desconto
    aDs.Campo('vII_W11').Value := '0.00'; // Valor Total do II
    aDs.Campo('vIPI_W12').Value := '0.00'; // Valor Total do IPI

    if cbVersao.ItemIndex >= versao_6_0 then
      aDs.Campo('vIPIDevol_W12a').Value := '0.00'; // Valor Total do IPI devolvido

    aDs.Campo('vPIS_W13').Value := '0.01'; // Valor Toal do PIS
    aDs.Campo('vCOFINS_W14').Value := '0.01'; // Valor Total do COFINS
    aDs.Campo('vOutro_W15').Value := '0.00'; // Outras Despesas Acessórias
    aDs.Campo('vNF_W16').Value := '0.01'; // Valor Total da NFe - Versão Trial só aceita NF até R$ 1.00

    //ISSQNTot
    if cbNotaConjugada.Checked then
    begin
      aDs.Campo('vServ_W18').value:='0.01'; // Valor Total dos serviços não tributados pelo ICMS
      aDs.Campo('vBC_W19').value:='0.01'; // Valor de Base de Cálculo do ISS
      aDs.Campo('vISS_W20').value:='0.01'; // Valor Total ISS
      aDs.Campo('vPIS_W21').value:='0.01'; // Valor do PIS sobre serviços
      aDs.Campo('vCOFINS_W22').value:='0.01'; // Valor do COFINS sobre serviços
      if cbVersao.ItemIndex >= versao_5_0a then
      begin
        aDs.Campo('dCompet_W22a').value:= FormatDateTime('YYYY-MM-DD',now); // "Data da prestação do serviço
        aDs.Campo('vDeducao_W22b').value:='0.01'; // Valor dedução para redução da Base de Cálculo
        aDs.Campo('vOutro_W22c').value:='0.01'; // Valor outras retenções
        aDs.Campo('vDescIncond_W22d').value:='0.01'; // Valor desconto incondicionado
        aDs.Campo('vDescCond_W22e').value:='0.01'; // Valor desconto condicionado
        aDs.Campo('vISSRet_W22f').value:='0.01'; // Valor total retenção ISS
        aDs.Campo('cRegTrib_W22g').value:='1'; // Código do Regie especial de tributação
      end;
    end;
  end;

  // Dados De Cobrança
  procedure DadosCobranca(aDs : TspdNFeDataSets);
  var
    i : integer;
    _Data :  TDateTime;
  begin
    //1 - Fatura por NFe
    aDs.Campo('nFat_Y03').Value := '2000'; // Número da Farura
    aDs.Campo('vOrig_Y04').Value := '1000.00'; // Valor Original da Fatura
    aDs.Campo('vDesc_Y05').Value := '100.00'; // Valor do Desconto
    aDs.Campo('vLiq_Y06').Value := '900.00'; // Valor Líquido da Fatura

    _Data := Date;

    // 1 Fatura  - 3 Duplicatas //
    for i := 1 to 3 do
    begin
      // Duplicatas //
      aDs.IncluirCobranca;
      aDs.Campo('nDup_Y08').Value := IntToStr(i); // Número da Duplicata
      aDs.Campo('dVenc_Y09').Value := FormatDateTime('YYYY-MM-DD',_Data); // Data de Vencimento da Duplicata
      aDs.Campo('vDup_Y10').Value := '900.00'; // Valor da Duplicata
      aDs.SalvarCobranca;

      //Incrementa a data das duplicatas.
      _data := IncMonth(_Data,1);
    end;
  end;

  //Informações de Pagamento
  //Obrigatório o preenchimento do Grupo Informações de Pagamento para NF-e e NFC-e.
  //Para as notas com finalidade de Ajuste ou Devolução o campo Forma de Pagamento deve ser preenchido com 90=Sem Pagamento.
  procedure DadosPagamento(aDs : TspdNFeDataSets);
  begin
    aDs.IncluirPart('YA');
    //Grupo de Informações de Pagamento
    aDs.Campo('indPag_YA01b').value := '1'; //0= Pagamento à Vista 1= Pagamento à Prazo
    aDs.Campo('tPag_YA02').value := '15'; //Forma de pagamento
                                          //01=Dinheiro
                                          //02=Cheque
                                          //03=Cartão de Crédito
                                          //04=Cartão de Débito
                                          //05=Crédito Loja
                                          //10=Vale Alimentação
                                          //11=Vale Refeição
                                          //12=Vale Presente
                                          //13=Vale Combustível
                                          //14=Duplicata Mercantil
                                          //15=Boleto Bancário
                                          //90= Sem pagamento 99=Outros
    aDs.Campo('vPag_YA03').value := '0.01'; //Valor do Pagamento
    //Grupo de Cartões
    aDs.Campo('tpIntegra_YA04a').value := '2'; // Tipo de Integração para pagamento
    aDs.Campo('CNPJ_YA05').value := ''; // CNPJ da Credenciadora de cartão de crédito e/ou débito
    aDs.Campo('tBand_YA06').value := '01'; // Bandeira da operadora de cartão de crédito e/ou débito
                                           //01=Visa
                                           //02=Mastercard
                                           //03=American Express
                                           //04=Sorocred
                                           //05=Diners Club
                                           //06=Elo
                                           //07=Hipercard
                                           //08=Aura
                                           //09=Cabal
                                           //99=Outros
    aDs.Campo('cAut_YA07').value := '12345678901234567890'; // Número de autorização da operação cartão de crédito e/ou débito
    aDs.SalvarPart('YA');

    aDs.Campo('vTroco_YA09').value := '0.00';
  end;

  // Dados Adicionais da NFe - Observações
  procedure DadosAdicionais(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('infAdFisco_Z02').Value := 'OBSERVACAO TESTE DA DANFE - FISCO'; // Interesse do Fisco
    aDs.Campo('infCpl_Z03').Value := 'OBSERVACAO TESTE DA DANFE - CONTRIBUINTE'; // Interesse da Empresa
  end;

  // Veículos Novos
  procedure DadosVeiculosNovos(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('tpOp_J02').Value      := '1';                  // Tipo da operacao
    aDs.Campo('chassi_J03').Value    := '9D2KC08104R026030';  // Chassi do veiculo
    aDs.Campo('cCor_J04').Value      := '1234';               // Cor
    aDs.Campo('xCor_J05').Value      := 'Preto prata';        // Descricao da Cor
    aDs.Campo('pot_J06').Value       := '2000';               // Potencia Motor
    aDs.Campo('cilin_J07').Value     := '20';                 // Cilindradas
    aDs.Campo('pesoL_J08').Value     := '1000';               // Peso Liquido
    aDs.Campo('pesoB_J09').Value     := '1000';               // Peso Bruto
    aDs.Campo('nSerie_J10').Value    := '123456789';          // Serial serie
    aDs.Campo('tpComb_J11').Value    := '123456789';           // Tipo de combustivel
    aDs.Campo('nMotor_J12').Value    := '1234567890';         // Numero de Motor
    aDs.Campo('CMT_J13').Value       := '123456789';          // Capacidade Maxima de Tracao
    aDs.Campo('dist_J14').Value      := '1234';               // Distancia entre eixos
    //aDs.Campo('RENAVAM_J15').Value   := '123456789';          // RENAVAM
    aDs.Campo('anoMod_J16').Value    := '1234';               // Ano Modelo de Fabricacao
    aDs.Campo('anoFab_J17').Value    := '1234';               // Ano de Fabricacao
    aDs.Campo('tpPint_J18').Value    := '1';                  // Tipo de Pintura
    aDs.Campo('tpVeic_J19').Value    := '99';                 // Tipo de Veiculo
    aDs.Campo('espVeic_J20').Value   := '1';                  // Especie de Veiculo
    aDs.Campo('VIN_J21').Value       := 'N';                  // Condicao do VIN
    aDs.Campo('condVeic_J22').Value  := '1';                  // Condicao do Veiculo
    aDs.Campo('cMod_J23').Value      := '999999';             // Codigo Marca Modelo
    aDs.Campo('cCorDENATRAN_J24').Value := '02';              // Codigo da Cor (Regra DENATRAN)
    aDs.Campo('lota_J25').Value      := '5';                  // Capacidade Maxima de Lotacao
    aDs.Campo('tpRest_J26').Value    := '0';                  // Restricao
    //aDs.Campo('nRECOPI_L109').Value  := '12345678901234567890';                 // Numero do RECOPI
  end;

  //Armamento
  procedure DadosArmamento(aDs : TspdNFeDataSets);
  begin
    aDs.IncluirPart('L');
    aDs.Campo('tpArma_L02').Value := '0';                  // 0 - Uso permitido; 1 - Uso restrito
    aDs.Campo('nSerie_L03').Value := '123456789';          // Número de série da arma
    aDs.Campo('nCano_L04').Value  := '123456789';          // Número de série da cano
    aDs.Campo('descr_L05').Value  := 'Descricao completa'; // Descrição completa da arma
    aDs.SalvarPart('L');
    //aDs.Campo('nRECOPI_L109').Value  := '12345678901234567980';             // Numero do RECOPI
  end;

  //Cana de Açúcar
  procedure DadosCanaAcucar(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('safra_ZC02').Value   := '2010'; // Identificação da safra
    aDs.Campo('ref_ZC03').Value   := '12/2010'; // Mês e ano de referência
    aDs.Campo('qTotMes_ZC07').Value   := '1000.00'; // Quantidade Total do Mês
    aDs.Campo('qTotAnt_ZC08').Value   := '1000.00'; // Quantidade Total Anterior
    aDs.Campo('qTotGer_ZC09').Value   := '2000.00'; // Quantidade Total Geral

    aDs.IncluirPart('FORDIA');
    aDs.Campo('dia_ZC05').Value   := '10'; // Dia
    aDs.Campo('qtde_ZC06').Value   := '1000'; // Quantidade
    aDs.SalvarPart('FORDIA');

    aDs.IncluirPart('FORDIA');
    aDs.Campo('dia_ZC05').Value   := '11'; // Dia
    aDs.Campo('qtde_ZC06').Value   := '1000'; // Quantidade
    aDs.SalvarPart('FORDIA');

    aDs.IncluirPart('DEDUC');
    aDs.Campo('xDed_ZC11').Value := 'descricao da deducao'; // Descrição da Dedução
    aDs.Campo('vDed_ZC12').Value := '0.01'; // Valor da Dedução
    aDs.Campo('vFor_ZC13').Value := '0.01'; // Valor dos Fornecimentos
    aDs.Campo('vTotDed_ZC14').Value := '0.01'; // Valor Total da Dedução
    aDs.Campo('vLiqFor_ZC15').Value := '0.01'; // Valor Líquido dos Fornecimentos
    aDs.SalvarPart('DEDUC');
    //aDs.Campo('nRECOPI_L109').Value  := '12345678901234567890'; // Numero do RECOPI
  end;

  //Combustíveis
  procedure DadosCombustiveis(aDs : TspdNFeDataSets);
  begin
    if (cbVersao.ItemIndex >= versao_5_0a) then
    begin
      aDs.Campo('cProdANP_LA02').Value      := '210203001';   // tam-(9)  Codigo de produto da ANP

      if (cbVersao.ItemIndex >= versao_6_0) then
      begin
        aDs.Campo('descANP_LA03').Value     := 'Descricao ANP';   // Descrição do produto conforme ANP
        aDs.Campo('pGLP_LA03a').Value       := '50.0000';   // Percentual do GLP derivado do petróleo no produto GLP (cProdANP=210203001)
        aDs.Campo('pGNn_LA03b').Value       := '30.0000';   // Percentual de Gás Natural Nacional – GLGNn para o produto GLP (cProdANP=210203001)
        aDs.Campo('pGNi_LA03c').Value       := '20.0000';   // Percentual de Gás Natural Importado – GLGNi para o produto GLP (cProdANP=210203001)
        aDs.Campo('vPart_LA03d').Value      := '100.00';    // Valor de partida (cProdANP=210203001)
      end
      else
        aDs.Campo('pMixGN_LA03').Value      := '12';   // Percentual de Gás Natural para o produto GLP (cProdANP=210203001)

      aDs.Campo('CODIF_LA04').Value         := '111111111111111111111';        // tam-(21) Codigo  de  autorizacao registro do CODIF
      aDs.Campo('qTemp_LA05').Value         := '30000.0000';        // tam-(16) Quantidade de combustível faturada a temperatura ambiente
      aDs.Campo('UFCons_LA06').Value        := 'SP';          // tam-(2)  Sigla da UF de consumo
      aDs.Campo('qBCProd_LA08').Value       := '20055.0000';        // tam-(16) BC da CIDE
      aDs.Campo('vAliqProd_LA09').Value     := '6.0000';        // tam-(15) Valor da alíquota da CIDE
      aDs.Campo('vCIDE_LA10').Value         := '1203.30';        // tam-(15) Valor da CIDE
    end
    else
    begin
      aDs.Campo('cProdANP_L102').Value      := '210203001';   // tam-(9)  Codigo de produto da ANP
      if (aDs.Campo('cProdANP_L102').AsString = '210203001')then
        aDs.Campo('pMixGN_L102a').Value       := '12';   // Percentual de Gás Natural para o produto
      aDs.Campo('CODIF_L103').Value         := '111111111111111111111';        // tam-(21) Codigo  de  autorizacao registro do CODIF
      aDs.Campo('qTemp_L104').Value         := '30000.0000';        // tam-(16) Quantidade de combustível faturada a temperatura ambiente
      aDs.Campo('UFCons_L120').Value        := 'SP';          // tam-(2)  Sigla da UF de consumo
      aDs.Campo('qBCProd_L106').Value       := '20055.0000';        // tam-(16) BC da CIDE
      aDs.Campo('vAliqProd_L107').Value     := '6.0000';        // tam-(15) Valor da alíquota da CIDE
      aDs.Campo('vCIDE_L108').Value         := '1203.30';        // tam-(15) Valor da CIDE
    end;
  end;

  //Medicamentos
  procedure DadosMedicamentos(aDs : TspdNFeDataSets);
  begin
    aDs.IncluirPart('K');
    if cbVersao.ItemIndex >= versao_6_0 then
      aDs.Campo('cProdANVISA_K01a').Value  := '123456789012' //Código de Produto da ANVISA
    else
    begin
      aDs.Campo('nLote_K02').Value   := '12345678901234567890'; //Número do Lote do Medicamento e de matérias-primas farmacêuticas
      aDs.Campo('qLote_K03').Value   := '100'; // Quantidade de Produto no Lote das matérias-primas farmacêuticas
      aDs.Campo('dFab_K04').Value    := '2018-01-01'; // Data de Fabricação
      aDs.Campo('dVal_K05').Value    := '2018-03-01'; // Data de Validade
    end;
    aDs.Campo('vPMC_K06').Value      := '10.00'; // Preço Máximo Consumidor
    aDs.SalvarPart('K');

    //Rastreabilidade
    if cbVersao.ItemIndex >= versao_6_0 then
    begin
      aDs.Campo('nLote_I81').Value   := '12345678901234567890'; //Número do Lote do produto
      aDs.Campo('qLote_I82').Value   := '100.000'; // Quantidade de produto no Lote
      aDs.Campo('dFab_I83').Value    := '2018-01-01'; // Data de fabricação/ Produção
      aDs.Campo('dVal_I84').Value    := '2018-03-01'; // Data de validade
      aDs.Campo('cAgreg_I85').Value  := '12345678901234567890'; // Código de Agregação
    end;
  end;

  //Exportação
  procedure DadosExportacao(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('UFSaidaPais_ZA02').Value := 'SP'; // Sigla da UF onde ocorrerá o Embarque dos produtos
    aDs.Campo('xLocExporta_ZA03').Value := 'São Paulo'; // Descrição do Local de Embarqueou ou de transposição de fronteira
    aDs.Campo('xLocDespacho_ZA04').Value := 'Vila funda'; //  Descrição do local de despacho
  end;

  //Transporte
  procedure DadosTransporte(aDs : TspdNFeDataSets);
  var
    i: Integer;
  begin
		if cbTransportadora.Checked then
    begin
      aDs.Campo('modFrete_X02').Value := '0'; // Modalidade do Frete
      aDs.Campo('CNPJ_X04').Value := '03150059000154'; // CNPJ
      aDs.Campo('xNome_X06').Value := 'ANDRE MARCIANO'; // Razão Social ou nome
      aDs.Campo('IE_X07').Value := '280589948'; // Inscrição Estadual
      aDs.Campo('xEnder_X08').Value := 'AVE PANAMA'; //Endereço completo
      aDs.Campo('xMun_X09').Value := 'IVINHEMA'; // Nome do município
      aDs.Campo('UF_X10').Value := 'MS'; // Sigla da UF
      aDs.Campo('placa_X19').Value := 'ACB0908'; // Placa do veículo
      aDs.Campo('uf_X20').Value := 'PR'; // Sigla da UF
      aDs.Campo('rntc_X21').Value := '123456'; // Registro Nacional do Transportador
      aDs.Campo('qVol_X27').Value := '1'; // Quantidade de Volumes Transportados
      aDs.Campo('esp_X28').Value := 'ESPECIE'; // Espécie dos Volumes Transportados
      aDs.Campo('marca_X29').Value := 'MARCA'; // Marca dos Volumes Transportados
      aDs.Campo('nVol_X30').Value := '1'; // Numeração dos Volumes Transportados
      aDs.Campo('pesoL_X31').Value := '1000'; // Peso Líquido em Kg
      aDs.Campo('pesoB_X32').Value := '1000'; // Peso Bruto em Kg

      for I := 1 to 3 do
      begin
        aDs.IncluirPart('LACRE');
        aDs.Campo('nLacre_X34').Value := '12345' + IntToStr(i); // Número dos Lacres
        aDs.SalvarPart('LACRE');
      end;
    end
    else
      // A partir do manual 4.0 mais opções fora disponibilizadas (ver manual)
      aDs.Campo('modFrete_X02').Value := '9'; // Modalidade do Frete
                                              // 0=Contratação do Frete por conta do Remetente (CIF);
                                              // 1=Contratação do Frete por conta do Destinatário (FOB);
                                              // 2=Contratação do Frete por conta de Terceiros;
                                              // 3=Transporte Próprio por conta do Remetente;
                                              // 4=Transporte Próprio por conta do Destinatário;
                                              // 9=Sem Ocorrência de Transporte.

  end;

Var
  i : Integer;
begin
	try
	  spdNFeDataSets.LoteNFe.Clear;
	  spdNFeDataSets.Incluir; // Inicia a insercao de dados na NFe
		DadosDoNFe(spdNFeDataSets);
		DadosDoEmitente(spdNFeDataSets);
		DadosDoDestinatario(spdNFeDataSets);

    if cbVersao.ItemIndex >= versao_5_0a then
      DadosAutorizadosBaixarXML(spdNFeDataSets);

		for i := 1 to 1 do// experimente aumentar o numero de iterações para ter mais itens na nota
		begin
		  spdNFeDataSets.IncluirItem;
		  DadosDoItem(i,spdNFeDataSets);

		  case rgRamosEspecificos.ItemIndex of
        1: DadosVeiculosNovos(spdNFeDataSets);
        2: DadosArmamento(spdNFeDataSets);
        3: DadosCanaAcucar(spdNFeDataSets);
        4: DadosCombustiveis(spdNFeDataSets);
        5: DadosMedicamentos(spdNFeDataSets);
		  end;
		  spdNFeDataSets.SalvarItem;
		end;

		if cbExportacao.Checked then
		  DadosExportacao(spdNFeDataSets);

		DadosTotalizadores(spdNFeDataSets);
    DadosTransporte(spdNFeDataSets);
 		DadosAdicionais(spdNFeDataSets);

		if cbFatDup.Checked then
		  DadosCobranca(spdNFeDataSets);

    if cbVersao.ItemIndex >= versao_6_0 then
      DadosPagamento(spdNFeDataSets);

	  spdNFeDataSets.Salvar; // Salva DataSets e Converte em XML montando um LOTE de XMLS a ser assinados

	  if fTipoEmissao = '1' then
	  begin
      fNFe := spdNFeDataSets.LoteNFe.GetText;  //Copia XML que está Componente p/ Field fNFe
      mmXmlNota.Lines.Text := fNFe;
      FUtils.SaveToFile(fNFe, ExtractFilePath(ParamStr(0)) + 'NotaaAssinar.xml');
      wbNotaGerada.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaaAssinar.xml');
      edtChaveNota.Text := Copy(spdNFeDataSets.Campo('Id_A03').AsString,4,44); //Copia o ID da NFe p/ o Edit
	  end;

	  if (fTipoEmissao = '4') and (spdNFe.ModoOperacao = moEPEC) then
	  begin
      fNFeEPEC := spdNFeDataSets.LoteNFe.GetText;  //Copia XML que está Componente p/ Field fNFeEPEC
      mmoassinarEPEC.Lines.Text := fNFeEPEC;
      FUtils.SaveToFile(fNFeEPEC, ExtractFilePath(ParamStr(0)) + 'NotaaAssinarEPEC.xml');
      wbassinarEPEC.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaaAssinarEPEC.xml');
      edtEnvServEstEPECChave.Text := Copy(spdNFeDataSets.Campo('Id_A03').AsString,4,44); //Copia o ID da NFe p/ o Edit
	  end;

	  if ((fTipoEmissao = '2') or (fTipoEmissao = '5'))  then
	  begin
      fNFeFS := spdNFeDataSets.LoteNFe.GetText;  //Copia XML que está Componente p/ Field fNFeFS
      mmXMLNotaFS.Lines.Text := fNFeFS;
      FUtils.SaveToFile(fNFeFS, ExtractFilePath(ParamStr(0)) + 'NotaaAssinarFS.xml');
      wbXMLNotaFS.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaaAssinarFS.xml');
      edtChaveEnvServEstFS.Text := Copy(spdNFeDataSets.Campo('Id_A03').AsString,4,44); //Copia o ID da NFe p/ o Edit
	  end;
	except
  	spdNFeDataSets.Cancelar;
	end;
end;

procedure TfrmPrincipal.GerarNFeDataSetExportacao;

  procedure DadosDoNFe (aDs : TspdNFeDataSets);
  Var _NRNota : String;
  begin
    aDs.Campo('Id_A03').Value := ''; // Calcula Automático. Essa linha é desnecessária
    aDs.Campo('cUF_B02').Value := '43';   //Codigo da UF para o estado de RS
    aDs.Campo('cNF_B03').Value := '04640327'; // Código Interno do Sistema que está integrando com a NFe
    aDs.Campo('natOp_B04').Value := 'VENDA MERC.ADQ.REC.TERC'; // Descrição da(s) CFOP(s) envolvidas nessa NFe
    aDs.Campo('indPag_B05').Value := '1'; // Indicador da Forma de Pgto (1- a Vista, 2 a Prazo)
    aDs.Campo('mod_B06').Value := '55'; //Código do Modelo de Documento Fiscal
    aDs.Campo('serie_B07').Value := '121'; // Série do Documento
    Randomize;
    _NRNota := IntToStr(Random(10000)); // Gera um Número Randomico de NF para Demonstração
    aDs.Campo('nNF_B08').Value := _NRNota; // Número da Nota Fiscal
    aDs.Campo('dhEmi_B09').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',now) + GetFusoUF(cbConfigUF.ItemIndex); //  Data e Hora de Emissão da Nota Fiscal Seguido do Fuso Horario
    aDs.Campo('dhSaiEnt_B10').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',now) + GetFusoUF(cbConfigUF.ItemIndex); // Data e Hora de Saída ou Entrada da Nota Fiscal Seguido do Fuso Horario
    aDs.Campo('tpNF_B11').Value := '1'; // Tipo de Documento Fiscal (0-Entrada, 1-Saída)
    if cbVersao.ItemIndex >= versao_5_0a then
      aDs.Campo('idDest_B11a').Value := '3'; // Identificador de local de destino da operação (1-Operação Interna, 2-Operação Interestadual e 3-Operação com exterior)

    aDs.Campo('cMunFG_B12').Value := '4308607'; // Código do Município, conforme Tabela do IBGE
    aDs.Campo('tpImp_B21').Value := '1'; // Tipo de Impressão da Danfe (1- Retrato , 2-Paisagem)
    aDs.Campo('tpEmis_B22').Value := fTipoEmissao; //Forma de Emissão da NFe (1 - Normal, 2 - FS, 3 - SCAN, 4 - DPEC, 5 - FS-DA)
    aDs.Campo('cDV_B23').Value := ''; // Calcula Automatico - Linha desnecessária já que o componente calcula o Dígito Verificador automaticamente e coloca no devido campo
    aDs.Campo('tpAmb_B24').Value := '2'; // Identificação do Ambiente (1- Producao, 2-Homologação)
    aDs.Campo('finNFe_B25').Value := '1'; // Finalidade da NFe (1-Normal, 2-Complementar, 3-de Ajuste)
    aDs.Campo('indFinal_B25a').Value := '0'; // Indica operação com Consumidor final (0-Não, 1-Consumidor Final)
    aDs.Campo('indPres_B25b').Value := '0'; // Indicador de presença do comprador no estabelecimento comercial ( 0-Não, 1-Operação presencial, 2-Operação não presencial, Internet, 3-Operação Não presencial, teleatendimento, 9-Operação não presencial, outros.)
    aDs.Campo('procEmi_B26').Value := '0'; // Identificador do Processo de emissão (0-Emissão da Nfe com Aplicativo do Contribuinte). Ver outras opções no manual da Receita.
    aDs.Campo('verProc_B27').Value := '000'; // Versão do Aplicativo Emissor

    if fTipoEmissao = '4' then //DPEC
    begin
      aDs.Campo('dhCont_B28').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now) + GetFusoUF(cbConfigUF.ItemIndex); // Data e hora de entrada em contingência no formato AAAA-MM-DDTHH:MM:SS
      aDs.Campo('xJust_B29').Value := 'Exemplo de justificativa de DPEC'; // Justificativa da contingência
    end;

    if ((fTipoEmissao = '2') or (fTipoEmissao = '5')) then //FS
    begin
      aDs.Campo('dhCont_B28').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now); // Data e hora de entrada em contingência no formato AAAA-MM-DDTHH:MM:SS
      aDs.Campo('xJust_B29').Value := 'Exemplo de justificativa de FS'; // Justificativa da contingência
    end;

  //são serparados conforme mostrado aqui no exemplo
	  if cbVersao.ItemIndex >= versao_5_0a then
    begin
		  aDs.IncluirPart('NRef');
			  aDs.Campo('refNFe_BA02').Value := '43131294814886000150551210000034181046403275'; // Chave de acesso das NF-e referenciadas
		  aDs.SalvarPart('NRef');
		  
		  aDs.IncluirPart('NRef');
			  aDs.Campo('cUF_BA04').Value := 'RS'; // Dados da NF Referenciada
			  aDs.Campo('AAMM_BA05').Value := '1312'; // Dados da NF Referenciada
			  aDs.Campo('CNPJ_BA06').Value := '94814886000150'; // Dados da NF Referenciada
			  aDs.Campo('mod_BA07').Value := '55'; // Dados da NF Referenciada
			  aDs.Campo('serie_BA08').Value := '121'; // Dados da NF Referenciada
			  aDs.Campo('nNF_BA09').Value := '3418'; // Dados da NF Referenciada
		  aDs.SalvarPart('NRef');
	  end
	  else
    begin
		  aDs.IncluirPart('NRef');
			  aDs.Campo('refNFe_BA02').Value := '43131294814886000150551210000034181046403275'; // Chave de acesso das NF-e referenciadas
		  aDs.SalvarPart('NRef');
		  
		  aDs.IncluirPart('NRef');
			  aDs.Campo('cUF_BA04').Value := 'RS'; // Dados da NF Referenciada
			  aDs.Campo('AAMM_BA05').Value := '1312'; // Dados da NF Referenciada
			  aDs.Campo('CNPJ_BA06').Value := '94814886000150'; // Dados da NF Referenciada
			  aDs.Campo('mod_BA07').Value := '55'; // Dados da NF Referenciada
			  aDs.Campo('serie_BA08').Value := '121'; // Dados da NF Referenciada
			  aDs.Campo('nNF_BA09').Value := '3418'; // Dados da NF Referenciada
		  aDs.SalvarPart('NRef');
	  end;

    // Até Manual 3.0
    if cbVersao.ItemIndex = versao_3_0 then
      aDs.Campo('versao_A02').Value := '1.10' // Versão do Layout que está utilizando
    else if cbVersao.ItemIndex = versao_5_0 then
    begin
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '2.00'; // Versão do Layout que está utilizando - Manual 5.0
    end
    else if cbVersao.ItemIndex = versao_5_0a then
    begin
      // Novos campos do manual 4.0 - Obrigatório
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '3.10'; // Versão do Layout que está utilizando - Manual 4.0
    end
    else
    begin
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '4.00';
    end;
  end;

  // Informações do Emitente da NFe
  procedure DadosDoEmitente(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('CNPJ_C02').Value := spdNFe.CNPJ; // CNPJ do Emitente
    aDs.Campo('xNome_C03').Value := edtRazaoSocialEmit.Text; // Razão Social ou Nome do Emitente
    aDs.Campo('xFant_C04').Value := edtNomeFantasiaEmit.Text; // Nome Fantasia do Emitente
    aDs.Campo('xLgr_C06').Value := edtEnderecoEmitente.Text; // Logradouro do Emitente
    aDs.Campo('nro_C07').Value := edtNumeroEmitente.Text; // Número do Logradouro do Emitente
    aDs.Campo('xCpl_C08').Value := edtComplementoEmit.Text; // Complemento
    aDs.Campo('xBairro_C09').Value := edtBairro.Text; // Bairro do Emitente
    aDs.Campo('cMun_C10').Value := '4308607'; // Código da Cidade do Emitente (Tabela do IBGE)
    aDs.Campo('xMun_C11').Value := edtNomeCidadeEmit.Text; // Nome da Cidade do Emitente
    aDs.Campo('UF_C12').Value := cbUFEmit.Text; // Código do Estado do Emitente (Tabela do IBGE)
    aDs.Campo('CEP_C13').Value := edtCEPEmit.Text; // Cep do Emitente
    aDs.Campo('cPais_C14').Value := edtIBGEPaisEmit.Text; // Código do País do Emitente (Tabela BACEN)
    aDs.Campo('xPais_C15').Value := edtPaisEmit.Text; // Nome do País do Emitente
    aDs.Campo('fone_C16').Value := edtTelefoneEmit.Text; // Fone do Emitente
    aDs.Campo('IE_C17').Value := edtIEEmit.Text; // Inscrição Estadual do Emitente
    aDs.Campo('IEST_C18').Value := edtIESTEmit.Text; // Inscrição Estadual do Substituto Tributário Emitente
    if cbNotaConjugada.Checked then
      aDs.Campo('IM_C19').Value := '100000000000015' // Inscrição Municipal
    else
      aDs.Campo('IM_C19').Value := edtIMEmit.Text; // Inscrição Municipal
    aDs.Campo('CNAE_C20').Value := edtCNAEEmit.Text; // CNAE Fiscal
    aDs.Campo('CRT_C21').Value := IntToStr(cbCRTEmit.ItemIndex + 1); // Código de Regime Tributário
  end;

  // Informações do Destinatário da NFe
  procedure DadosDoDestinatario(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('idEstrangeiro_E03a').Value := '123456'; //Identificação do destinatário no caso de comprador estrangeiro
    aDs.Campo('xNome_E04').Value := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
    aDs.Campo('xLgr_E06').Value := edtEnderecoDest.Text; // Logradouro do Destinatário
    aDs.Campo('nro_E07').Value := edtNumeroDest.Text; // Número do Logradouro do Destinatário
    aDs.Campo('xCpl_E08').Value := edtComplementoDest.Text; // Complemento
    aDs.Campo('xBairro_E09').Value := edtBairroDest.Text; // Bairro do Destinatário
    aDs.Campo('cMun_E10').Value := '9999999'; // Código do Município do Destinatário (Tabela IBGE)
    aDs.Campo('xMun_E11').Value := 'EXTERIOR'; //Nome da Cidade do Destinatário
    aDs.Campo('UF_E12').Value := 'EX'; // Sigla do Estado do Destinatário
    aDs.Campo('CEP_E13').Value := edtCepDest.Text; // Cep do Destinatário
    aDs.Campo('cPais_E14').Value := '4936'; // Código do Pais do Destinatário (Tabela do BACEN)
    aDs.Campo('xPais_E15').Value := 'MEXICO';// Nome do País do Destinatário
    aDs.Campo('fone_E16').Value := edtTelefoneDest.Text; // Fone do Destinatário
    aDs.Campo('indIEDest_E16a').Value := '9'; // Indicador da IE do Destinatário 1-Contribuinte ICMS/2-Contribuinte Isento de inscrição/9- Não contribuinte
    aDs.Campo('ISUF_E18').Value := edtISUFDest.Text; // Inscrição na SUFRAMA
    //aDs.Campo('IM_E18a').Value := edtISUFDest.Text; // Inscricao municipal do tomador de serviço
    aDs.Campo('email_E19').Value := edtEmailDest.Text; // Email
  end;

  // Autorizados a baixar o XML
  procedure DadosAutorizadosBaixarXML(aDs : TspdNFeDataSets);
  begin
    if Length(edtAutXMLCNPJCPF.Text) = 14 then
      aDs.Campo('CNPJ_GA02').Value := edtAutXMLCNPJCPF.Text // CNPJ do Autorizado
    else if Length(edtAutXMLCNPJCPF.Text) = 11 then
      aDs.Campo('CPF_GA03').Value := edtAutXMLCNPJCPF.Text; // CPF do Autorizado
  end;

  // Informações Referentes aos ITens da NFe
  procedure DadosDoItem(aNumItem : Integer; aDs : TspdNFeDataSets);
  begin
    aDs.Campo('nItem_H02').Value := IntToStr(aNumItem); // Número do Item da NFe (1 até 990)
    // Dados do Produto Vendido
    aDs.Campo('cProd_I02').Value := '0999'; //Código do PRoduto ou Serviço
    aDs.Campo('cEAN_I03').Value := '8712581497668'; // EAN do Produto
    aDs.Campo('xProd_I04').Value := 'MELAO';// Descrição do PRoduto
    ads.Campo('NCM_I05').Value := '11081200'; // Código do NCM - informar de acordo com o Tabela oficial do NCM
    aDs.Campo('CFOP_I08').Value := '7949'; // CFOP incidente neste Item da NF
    aDs.Campo('uCom_I09').Value := 'CX'; // Unidade de Medida do Item
    aDs.Campo('qCom_I10').Value := '1'; // Quantidade Comercializada do Item
    aDs.Campo('vUnCom_I10a').Value := '0.0100'; // Valor Comercializado do Item
    aDs.Campo('vProd_I11').Value := '0.01'; // Valor Total Bruto do Item
    aDs.Campo('cEANTrib_I12').Value := '8712581497668'; // EAN Tributável do Item
    aDs.Campo('uTrib_I13').Value := 'CX'; // Unidade de Medida Tributável do Item
    aDs.Campo('qTrib_I14').Value := '1'; // Quantidade Tributável do Item
    aDs.Campo('vUnTrib_I14a').Value := '0.0100'; // Valor Tributável do Item

    //////////////////// Aqui começam os Impostos Incidentes sobre o Item////////////////////////
    /// Verificar Manual pois existe uma variação nos campos de acordo com Tipo de Tributação ////
    // ICMS

    //ICMS 41
    if frmICMS40 = nil then
      frmICMS40 := TfrmICMS40.Create(Self);

    case frmICMS40.cbOrigemICMS40.ItemIndex of
      0 : aDs.Campo('orig_N11').Value := '0';
      1 : aDs.Campo('orig_N11').Value := '1';
      2 : aDs.Campo('orig_N11').Value := '2';
      3 : aDs.Campo('orig_N11').Value := '3';
      4 : aDs.Campo('orig_N11').Value := '4';
      5 : aDs.Campo('orig_N11').Value := '5';
      6 : aDs.Campo('orig_N11').Value := '6';
      7 : aDs.Campo('orig_N11').Value := '7';
    end;
    aDs.Campo('CST_N12').Value  := '41';
    aDs.Campo('vICMS_N17').Value := '0.01';

    if cbVersao.ItemIndex >= versao_6_0 then
      aDs.Campo('vICMSDeson_N28a').Value  := '0.01'
    else if cbVersao.ItemIndex = versao_5_0a then
      aDs.Campo('vICMSDeson_N27a').Value  := '0.01';

    case frmICMS40.cbMotDesICMS40.ItemIndex of
      0: aDs.Campo('motDesICMS_N28').Value := '1';
      1: aDs.Campo('motDesICMS_N28').Value := '2';
      2: aDs.Campo('motDesICMS_N28').Value := '3';
      3: aDs.Campo('motDesICMS_N28').Value := '4';
      4: aDs.Campo('motDesICMS_N28').Value := '5';
      5: aDs.Campo('motDesICMS_N28').Value := '6';
      6: aDs.Campo('motDesICMS_N28').Value := '7';
      7: aDs.Campo('motDesICMS_N28').Value := '9';
    end;

    // PIS
    case cbPIS.ItemIndex of
      0://PIS Aliquota
        begin
          case frmPISAliq.cbCSTPISAliq.ItemIndex of
            0: aDs.Campo('CST_Q06').Value := '01';
            1: aDs.Campo('CST_Q06').Value := '02';
          end;
          aDs.Campo('vBC_Q07').Value := frmPISAliq.edtvBCPISAliq.Text;
          aDs.Campo('pPIS_Q08').Value := frmPISAliq.edtpPISPISAliq.Text;
          aDs.Campo('vPIS_Q09').Value := frmPISAliq.edtvPISPISAliq.Text;
        end;
      1://PIS Quantidade
        begin
          aDs.Campo('CST_Q06').Value := '03';
          aDs.Campo('qBCProd_Q10').Value := frmPISQtde.edtqBCProdPISQtde.Text;
          aDs.Campo('vAliqProd_Q11').Value := frmPISQtde.edtvAliqProdPISQtde.Text;
          aDs.Campo('vPIS_Q09').Value := frmPISQtde.edtvPISPISQtde.Text;
        end;
      2://PIS NT
        begin
          case frmPISNT.cbCSTPISNT.ItemIndex of
            0: aDs.Campo('CST_Q06').Value := '04';
            1: aDs.Campo('CST_Q06').Value := '05';
            2: aDs.Campo('CST_Q06').Value := '06';
            3: aDs.Campo('CST_Q06').Value := '07';
            4: aDs.Campo('CST_Q06').Value := '08';
            5: aDs.Campo('CST_Q06').Value := '09';
          end;
        end;
      3://PIS Outros
        begin
          aDs.Campo('CST_Q06').Value  := '99';
          if frmPISOutr.rgCalcPISTrib.ItemIndex = 0 then
          begin
            aDs.Campo('vBC_Q07').Value  := frmPISOutr.edtvBCPISOutr.Text;
            aDs.Campo('pPIS_Q08').Value := frmPISOutr.edtpPISPISOutr.Text;
          end
          else
          begin
            aDs.Campo('qBCProd_Q10').Value := frmPISOutr.edtqBCProdPISOutr.Text;
            aDs.Campo('vAliqProd_Q11').Value := frmPISOutr.edtvAliqProdPISOutr.Text;
          end;
          aDs.Campo('vPIS_Q09').Value := frmPISOutr.edtvPISOutr.Text;
        end;
    end;

    //PIS ST
    case cbPISST.ItemIndex of
      0:
        begin
          if frmPISST.rgCalcPISST.ItemIndex = 0 then
          begin
            aDs.Campo('vBC_R02').Value   := frmPISST.edtvBCPISST.Text;
            aDs.Campo('pPIS_R03').Value  := frmPISST.edtpPISST.Text;
          end
          else
          begin
            aDs.Campo('qBCProd_R04').Value   := frmPISST.edtqBCProdPISST.Text;
            aDs.Campo('vAliqProd_R05').Value := frmPISST.edtvAliqProdPISST.Text;
          end;
          aDs.Campo('vPIS_R06').Value  := frmPISST.edtvPISST.Text;
        end;
    end;

    // COFINS
    case cbCOFINS.ItemIndex of
      0://COFINS Aliquota
        begin
          case frmCOFINSAliq.cbCSTCOFINSAliq.ItemIndex of
            0: aDs.Campo('CST_S06').Value := '01';
            1: aDs.Campo('CST_S06').Value := '02';
          end;
          aDs.Campo('vBC_S07').Value := frmCOFINSAliq.edtvBCCOFINSAliq.Text;
          aDs.Campo('pCOFINS_S08').Value := frmCOFINSAliq.edtpCOFINSAliq.Text;
          aDs.Campo('vCOFINS_S11').Value := frmCOFINSAliq.edtCOFINSAliq.Text;
        end;
      1://COFINS Quantidade
        begin
          aDs.Campo('CST_S06').Value := '03';
          aDs.Campo('qBCProd_S09').Value := frmCOFINSQtde.edtqBCProdCOFINSQtde.Text;
          aDs.Campo('vAliqProd_S10').Value := frmCOFINSQtde.edtvAliqProdCOFINSQtde.Text;
          aDs.Campo('vCOFINS_S11').Value := frmCOFINSQtde.edtvCOFINSQtde.Text;
        end;
      2://COFINS NT
        begin
          case frmCOFINSNT.cbCSTCOFINSNT.ItemIndex of
            0: aDs.Campo('CST_S06').Value := '04';
            1: aDs.Campo('CST_S06').Value := '05';
            2: aDs.Campo('CST_S06').Value := '06';
            3: aDs.Campo('CST_S06').Value := '07';
            4: aDs.Campo('CST_S06').Value := '08';
            5: aDs.Campo('CST_S06').Value := '09';
          end;
        end;
      3://COFINS Outros
        begin
          aDs.Campo('CST_S06').Value     := '99';
          if frmCOFINSOutr.rgCalcCOFINSOutr.ItemIndex = 0 then
          begin
            aDs.Campo('vBC_S07').Value     := frmCOFINSOutr.edtvBCCOFINSOutr.Text;
            aDs.Campo('pCOFINS_S08').Value := frmCOFINSOutr.edtpCOFINSOutr.Text;
          end
          else
          begin
            aDs.Campo('qBCProd_S09').Value := frmCOFINSOutr.edtqBCProdCOFINSOutr.Text;
            aDs.Campo('vAliqProd_S10').Value := frmCOFINSOutr.edtvAliqProdCOFINSOutr.Text;
          end;
          aDs.Campo('vCOFINS_S11').Value := frmCOFINSOutr.edtvCOFINSOutr.Text;
        end;
      end;

      //COFINS ST
      case cbCOFINSST.ItemIndex of
        0:
          begin
            if frmCOFINSST.rgCalcCOFINSST.ItemIndex = 0 then
            begin
              aDs.Campo('vBC_T02').Value 	 := frmCOFINSST.edtvBCCOFINSST.Text;
              aDs.Campo('pCOFINS_T03').Value 	 := frmCOFINSST.edtpCOFINSST.Text;
            end
            else
            begin
              aDs.Campo('qBCProd_T04').Value 	:= frmCOFINSST.edtqBCProdCOFINSST.Text;
              aDs.Campo('vAliqProd_T05').Value 	:= frmCOFINSST.edtvAliqProdCOFINSST.Text;
            end;
            aDs.Campo('vCOFINS_T06').Value 	 := frmCOFINSST.edtvCOFINSST.Text;
          end;
      end;

      //IPI
      case cbIPI.ItemIndex of
        0://IPI Tributado
          begin
            if cbVersao.ItemIndex >= versao_6_0 then
              aDs.Campo('cEnq_O06').Value   := frmIPITrib.edtcEnqIPITrib.Text  //Código de Enquadramento Legal do IPI
            else
              aDs.Campo('clEnq_O02').Value  := frmIPITrib.edtclEnqIPITrib.Text; //Classe de enquadramento do IPI para Cigarros e Bebidas
            aDs.Campo('CNPJProd_O03').Value := frmIPITrib.edtCNPJProdIPITrib.Text;
            aDs.Campo('cSelo_O04').Value    := frmIPITrib.edtcSeloIPITrib.Text;
            aDs.Campo('qSelo_O05').Value    := frmIPITrib.edtqSeloIPITrib.Text;

            case frmIPITrib.cbCSTIPITrib.ItemIndex of
              0: aDs.Campo('CST_O09').Value  := '00';
              1: aDs.Campo('CST_O09').Value  := '49';
              2: aDs.Campo('CST_O09').Value  := '50';
              3: aDs.Campo('CST_O09').Value  := '99';
            end;
            if frmIPITrib.rgAliqUnidTrib.ItemIndex = 0 then
            begin
              aDs.Campo('vBC_O10').Value  := frmIPITrib.edtvBCIPITrib.Text;
              aDs.Campo('pIPI_O13').Value := frmIPITrib.edtpIPITrib.Text;
            end
            else
            begin
              aDs.Campo('qUnid_O11').Value  := frmIPITrib.edtqUnidIPITrib.Text;
              aDs.Campo('vUnid_O12').Value := frmIPITrib.edtvUnidIPITrib.Text;
            end;
            aDs.Campo('vIPI_O14').Value := frmIPITrib.edtvIPITrib.Text;
          end;
        1://IPI NT
          begin
            if cbVersao.ItemIndex >= versao_6_0 then
              aDs.Campo('cEnq_O06').Value   := frmIPINT.edtcEnqIPINT.Text
            else
              aDs.Campo('clEnq_O02').Value  := frmIPINT.edtclEnqIPINT.Text;
            aDs.Campo('CNPJProd_O03').Value := frmIPINT.edtCNPJProdIPINT.Text;
            aDs.Campo('cSelo_O04').Value    := frmIPINT.edtcSeloIPINT.Text;
            aDs.Campo('qSelo_O05').Value    := frmIPINT.edtqSeloIPINT.Text;

            case frmIPINT.cbCSTIPINT.ItemIndex of
              0: aDs.Campo('CST_O09').Value := '01';
              1: aDs.Campo('CST_O09').Value := '02';
              2: aDs.Campo('CST_O09').Value := '03';
              3: aDs.Campo('CST_O09').Value := '04';
              4: aDs.Campo('CST_O09').Value := '05';
              5: aDs.Campo('CST_O09').Value := '51';
              6: aDs.Campo('CST_O09').Value := '52';
              7: aDs.Campo('CST_O09').Value := '53';
              8: aDs.Campo('CST_O09').Value := '54';
              9: aDs.Campo('CST_O09').Value := '55';
            end;
          end;
      end;

      //II
      if cbII.ItemIndex = 0 then
      begin
        aDs.Campo('vBC_P02').Value := frmII.edtvBCII.Text;
        aDs.Campo('vDespAdu_P03').Value := frmII.edtvDespAdu.Text;
        aDs.Campo('vII_P04').Value := frmII.edtvII.Text;
        aDs.Campo('vIOF_P05').Value := frmII.edtvIOFII.Text;
      end;

      // Novo campo da 4.0 - para saber se o item totaliza na nota
      if (cbVersao.ItemIndex >= versao_4_0) then
        aDs.Campo('indTot_I17b').Value := '1'; // Indica se valor do Item vProd entra no valor total da NF-e vProd

  end;

  // Totalizadores da NFe
  Procedure DadosTotalizadores(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('vBC_W03').Value := '0.01'; //Base de Cálculo do ICMS
    aDs.Campo('vICMS_W04').Value := '0.01'; // Valor Total do ICMS
    aDs.Campo('vICMSDeson_W04a').Value := '0.01'; // Valor Total do ICMS desonerado
    aDs.Campo('vBCST_W05').Value := '0.00'; // Base de Cálculo do ICMS Subst. Tributária
    aDs.Campo('vST_W06').Value := '0.00'; // Valor Total do ICMS Sibst. Tributária
    aDs.Campo('vProd_W07').Value := '0.01'; // Valor Total de Produtos
    aDs.Campo('vFrete_W08').Value := '0.00'; // Valor Total do Frete
    aDs.Campo('vSeg_W09').Value := '0.00'; // Valor Total do Seguro
    aDs.Campo('vDesc_W10').Value := '0.00'; // Valor Total de Desconto
    aDs.Campo('vII_W11').Value := '0.00'; // Valor Total do II
    aDs.Campo('vIPI_W12').Value := '0.00'; // Valor Total do IPI
    aDs.Campo('vPIS_W13').Value := '0.01'; // Valor Toal do PIS
    aDs.Campo('vCOFINS_W14').Value := '0.01'; // Valor Total do COFINS
    aDs.Campo('vOutro_W15').Value := '0.00'; // Outras Despesas Acessórias
    aDs.Campo('vNF_W16').Value := '0.01'; // Valor Total da NFe - Versão Trial só aceita NF até R$ 1.00

    //ISSQNTot
    if cbNotaConjugada.Checked then
    begin
      aDs.Campo('vServ_W18').value:='0.01'; // Valor Total dos serviços não tributados pelo ICMS
      aDs.Campo('vBC_W19').value:='0.01'; // Valor de Base de Cálculo do ISS
      aDs.Campo('vISS_W20').value:='0.01'; // Valor Total ISS
      aDs.Campo('vPIS_W21').value:='0.01'; // Valor do PIS sobre serviços
      aDs.Campo('vCOFINS_W22').value:='0.01'; // Valor do COFINS sobre serviços
      aDs.Campo('dCompet_W22a').value:= FormatDateTime('YYYY-MM-DD',now); // "Data da prestação do serviço
      aDs.Campo('vDeducao_W22b').value:='0.01'; // Valor dedução para redução da Base de Cálculo
      aDs.Campo('vOutro_W22c').value:='0.01'; // Valor outras retenções
      aDs.Campo('vDescIncond_W22d').value:='0.01'; // Valor desconto incondicionado
      aDs.Campo('vDescCond_W22e').value:='0.01'; // Valor desconto condicionado
      aDs.Campo('vISSRet_W22f').value:='0.01'; // Valor total retenção ISS
      aDs.Campo('cRegTrib_W22g').value:='1'; // Código do Regie especial de tributação
    end;

    // A partir do manual 4.0 mais opções fora disponibilizadas (ver manual)
    aDs.Campo('modFrete_X02').Value := '0'; // Modalidade do Frete
  end;

  // Dados De Cobrança
  procedure DadosCobranca(aDs : TspdNFeDataSets);
  Var i : integer;
    _Data :  TDateTime;
  begin
    //1 - Fatura por NFe
    aDs.Campo('nFat_Y03').Value := '2000'; // Número da Farura
    aDs.Campo('vOrig_Y04').Value := '1000.00'; // Valor Original da Fatura
    aDs.Campo('vDesc_Y05').Value := '100.00'; // Valor do Desconto
    aDs.Campo('vLiq_Y06').Value := '900.00'; // Valor Líquido da Fatura

    _Data := Date;

    // 1 Fatura  - 3 Duplicatas //
    for i := 1 to 3 do
    begin
      // Duplicatas //
      aDs.IncluirCobranca;
      aDs.Campo('nDup_Y08').Value := IntToStr(i); // Número da Duplicata
      aDs.Campo('dVenc_Y09').Value := FormatDateTime('YYYY-MM-DD',_Data); // Data de Vencimento da Duplicata
      aDs.Campo('vDup_Y10').Value := '900.00'; // Valor da Duplicata
      aDs.SalvarCobranca;

      //Incrementa a data das duplicatas.
      _data := IncMonth(_Data,1);
    end;
  end;

  // Dados Adicionais da NFe - Observações
  procedure DadosAdicionais(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('infAdFisco_Z02').Value := 'OBSERVACAO TESTE DA DANFE - FISCO'; // Interesse do Fisco
    aDs.Campo('infCpl_Z03').Value := 'OBSERVACAO TESTE DA DANFE - CONTRIBUINTE'; // Interesse da Empresa
  end;

  //Exportação
  procedure Exportacao(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('UFSaidaPais_ZA02').Value := 'SP'; // Sigla da UF onde ocorrerá o Embarque dos produtos
    aDs.Campo('xLocExporta_ZA03').Value := 'São Paulo'; // Descrição do Local de Embarqueou ou de transposição de fronteira
    aDs.Campo('xLocDespacho_ZA04').Value := 'Vila funda'; //  Descrição do local de despacho
  end;

  //Transporte
  procedure Transporte(aDs : TspdNFeDataSets);
  var
    i: Integer;
  begin
    aDs.Campo('modFrete_X02').Value := '0'; // Modalidade do Frete
    aDs.Campo('CNPJ_X04').Value := '03150059000154'; // CNPJ
    aDs.Campo('xNome_X06').Value := 'ANDRE MARCIANO'; // Razão Social ou nome
    aDs.Campo('IE_X07').Value := '280589948'; // Inscrição Estadual
    aDs.Campo('xEnder_X08').Value := 'AVE PANAMA'; //Endereço completo
    aDs.Campo('xMun_X09').Value := 'IVINHEMA'; // Nome do município
    aDs.Campo('UF_X10').Value := 'MS'; // Sigla da UF
    aDs.Campo('placa_X19').Value := 'ACB0908'; // Placa do veículo
    aDs.Campo('uf_X20').Value := 'PR'; // Sigla da UF
    aDs.Campo('rntc_X21').Value := '123456'; // Registro Nacional do Transportador
    aDs.Campo('qVol_X27').Value := '1'; // Quantidade de Volumes Transportados
    aDs.Campo('esp_X28').Value := 'ESPECIE'; // Espécie dos Volumes Transportados
    aDs.Campo('marca_X29').Value := 'MARCA'; // Marca dos Volumes Transportados
    aDs.Campo('nVol_X30').Value := '1'; // Numeração dos Volumes Transportados
    aDs.Campo('pesoL_X31').Value := '1000'; // Peso Líquido em Kg
    aDs.Campo('pesoB_X32').Value := '1000'; // Peso Bruto em Kg

    for I := 1 to 3 do
    begin
      aDs.IncluirPart('LACRE');
      aDs.Campo('nLacre_X34').Value := '12345' + IntToStr(i); // Número dos Lacres
      aDs.SalvarPart('LACRE');
    end;
  end;

  procedure DadosExportacao(aDs : TspdNFeDataSets);
  begin
    aDs.IncluirPart('DETEXPORT');
    aDs.Campo('nDraw_I51').Value := '12345678901';
    aDs.IncluirPart('EXPORTIND');
    aDs.Campo('nRE_I53').Value := '123456789012';
    aDs.Campo('chNFe_I54').Value := '43131294814886000150550010000006431004640320';
    aDs.Campo('qExport_I55').Value := '1';
    aDs.SalvarPart('EXPORTIND');
    aDs.SalvarPart('DETEXPORT');

    aDs.Campo('UFSaidaPais_ZA02').Value := 'RS';
    aDs.Campo('xLocExporta_ZA03').Value := 'MARINGA';
    aDs.Campo('xLocDespacho_ZA04').Value := 'MARINGA';
  end;

Var
  i : Integer;
begin
	try
	  spdNFeDataSets.LoteNFe.Clear;
	  spdNFeDataSets.Incluir; // Inicia a insercao de dados na NFe
		DadosDoNFe(spdNFeDataSets);
		DadosDoEmitente(spdNFeDataSets);
		DadosDoDestinatario(spdNFeDataSets);
    DadosAutorizadosBaixarXML(spdNFeDataSets);

		for i := 1 to 1 do// experimente aumentar o numero de iterações para ter mais itens na nota
		begin
		  spdNFeDataSets.IncluirItem;
		  DadosDoItem(i,spdNFeDataSets);
		  spdNFeDataSets.SalvarItem;
		end;

    DadosExportacao(spdNFeDataSets);

		DadosTotalizadores(spdNFeDataSets);

		if cbTransportadora.Checked then
		  Transporte(spdNFeDataSets);

		DadosAdicionais(spdNFeDataSets);

		if cbFatDup.Checked then
		  DadosCobranca(spdNFeDataSets);

	  spdNFeDataSets.Salvar; // Salva DataSets e Converte em XML montando um LOTE de XMLS a ser assinados

	  if fTipoEmissao = '1' then
	  begin
      fNFe := spdNFeDataSets.LoteNFe.GetText;  //Copia XML que está Componente p/ Field fNFe
      mmXmlNota.Lines.Text := fNFe;
      FUtils.SaveToFile(fNFe, ExtractFilePath(ParamStr(0)) + 'NotaaAssinar.xml');
      wbNotaGerada.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaaAssinar.xml');
      edtChaveNota.Text := Copy(spdNFeDataSets.Campo('Id_A03').AsString,4,44); //Copia o ID da NFe p/ o Edit
	  end;

	  if (fTipoEmissao = '4') and (spdNFe.ModoOperacao = moEPEC) then
	  begin
      fNFeEPEC := spdNFeDataSets.LoteNFe.GetText;  //Copia XML que está Componente p/ Field fNFeDPEC
      mmoassinarEPEC.Lines.Text := fNFeEPEC;
      FUtils.SaveToFile(fNFeEPEC, ExtractFilePath(ParamStr(0)) + 'NotaaAssinarEPEC.xml');
      wbassinarEPEC1.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaaAssinarEPEC.xml');
      edtEnvServEstEPECChave.Text := Copy(spdNFeDataSets.Campo('Id_A03').AsString,4,44); //Copia o ID da NFe p/ o Edit
	  end;

	  if ((fTipoEmissao = '2') or (fTipoEmissao = '5'))  then
	  begin
      fNFeFS := spdNFeDataSets.LoteNFe.GetText;  //Copia XML que está Componente p/ Field fNFeFS
      mmXMLNotaFS.Lines.Text := fNFeFS;
      FUtils.SaveToFile(fNFeFS, ExtractFilePath(ParamStr(0)) + 'NotaaAssinarFS.xml');
      wbXMLNotaFS.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaaAssinarFS.xml');
      edtChaveEnvServEstFS.Text := Copy(spdNFeDataSets.Campo('Id_A03').AsString,4,44); //Copia o ID da NFe p/ o Edit
	  end;
	except
    spdNFeDataSets.Cancelar;
	end;
end;

procedure TfrmPrincipal.GerarNFeDataSetImportacao;

  procedure DadosDoNFe (aDs : TspdNFeDataSets);
  Var
    _NRNota : String;
  begin
    aDs.Campo('Id_A03').Value := ''; // Calcula Automático. Essa linha é desnecessária
    aDs.Campo('cUF_B02').Value := '43';   //Codigo da UF para o estado de RS
    aDs.Campo('cNF_B03').Value := '04640327'; // Código Interno do Sistema que está integrando com a NFe
    aDs.Campo('natOp_B04').Value := 'VENDA MERC.ADQ.REC.TERC'; // Descrição da(s) CFOP(s) envolvidas nessa NFe
    aDs.Campo('indPag_B05').Value := '1'; // Indicador da Forma de Pgto (1- a Vista, 2 a Prazo)
    aDs.Campo('mod_B06').Value := '55'; //Código do Modelo de Documento Fiscal
    aDs.Campo('serie_B07').Value := '121'; // Série do Documento
    Randomize;
    _NRNota := IntToStr(Random(10000)); // Gera um Número Randomico de NF para Demonstração
    aDs.Campo('nNF_B08').Value := _NRNota; // Número da Nota Fiscal
    aDs.Campo('dhEmi_B09').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',now) + GetFusoUF(cbConfigUF.ItemIndex); //  Data e Hora de Emissão da Nota Fiscal Seguido do Fuso Horario
    aDs.Campo('dhSaiEnt_B10').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',now) + GetFusoUF(cbConfigUF.ItemIndex); // Data e Hora de Saída ou Entrada da Nota Fiscal Seguido do Fuso Horario
    aDs.Campo('tpNF_B11').Value := '0'; // Tipo de Documento Fiscal (0-Entrada, 1-Saída)
    if cbVersao.ItemIndex >= versao_5_0a then
      aDs.Campo('idDest_B11a').Value := '3'; // Identificador de local de destino da operação (1-Operação Interna, 2-Operação Interestadual e 3-Operação com exterior)

    aDs.Campo('cMunFG_B12').Value := '4308607'; // Código do Município, conforme Tabela do IBGE
    aDs.Campo('tpImp_B21').Value := '1'; // Tipo de Impressão da Danfe (1- Retrato , 2-Paisagem)
    aDs.Campo('tpEmis_B22').Value := fTipoEmissao; //Forma de Emissão da NFe (1 - Normal, 2 - FS, 3 - SCAN, 4 - DPEC, 5 - FS-DA)
    aDs.Campo('cDV_B23').Value := ''; // Calcula Automatico - Linha desnecessária já que o componente calcula o Dígito Verificador automaticamente e coloca no devido campo
    aDs.Campo('tpAmb_B24').Value := '2'; // Identificação do Ambiente (1- Producao, 2-Homologação)
    aDs.Campo('finNFe_B25').Value := '1'; // Finalidade da NFe (1-Normal, 2-Complementar, 3-de Ajuste)
    aDs.Campo('indFinal_B25a').Value := '0'; // Indica operação com Consumidor final (0-Não, 1-Consumidor Final)
    aDs.Campo('indPres_B25b').Value := '0'; // Indicador de presença do comprador no estabelecimento comercial ( 0-Não, 1-Operação presencial, 2-Operação não presencial, Internet, 3-Operação Não presencial, teleatendimento, 9-Operação não presencial, outros.)
    aDs.Campo('procEmi_B26').Value := '0'; // Identificador do Processo de emissão (0-Emissão da Nfe com Aplicativo do Contribuinte). Ver outras opções no manual da Receita.
    aDs.Campo('verProc_B27').Value := '000'; // Versão do Aplicativo Emissor

    if fTipoEmissao = '4' then //DPEC
    begin
      aDs.Campo('dhCont_B28').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now) + GetFusoUF(cbConfigUF.ItemIndex); // Data e hora de entrada em contingência no formato AAAA-MM-DDTHH:MM:SS
      aDs.Campo('xJust_B29').Value := 'Exemplo de justificativa de DPEC'; // Justificativa da contingência
    end;

    if ((fTipoEmissao = '2') or (fTipoEmissao = '5')) then //FS
    begin
      aDs.Campo('dhCont_B28').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now); // Data e hora de entrada em contingência no formato AAAA-MM-DDTHH:MM:SS
      aDs.Campo('xJust_B29').Value := 'Exemplo de justificativa de FS'; // Justificativa da contingência
    end;

	  //são serparados conforme mostrado aqui no exemplo
	  if cbVersao.ItemIndex >= versao_5_0a then
    begin
		  aDs.IncluirPart('NRef');
			aDs.Campo('refNFe_BA02').Value := '43131294814886000150551210000034181046403275'; // Chave de acesso das NF-e referenciadas
		  aDs.SalvarPart('NRef');

		  aDs.IncluirPart('NRef');
      aDs.Campo('cUF_BA04').Value := 'RS'; // Dados da NF Referenciada
      aDs.Campo('AAMM_BA05').Value := '1312'; // Dados da NF Referenciada
      aDs.Campo('CNPJ_BA06').Value := '94814886000150'; // Dados da NF Referenciada
      aDs.Campo('mod_BA07').Value := '55'; // Dados da NF Referenciada
      aDs.Campo('serie_BA08').Value := '121'; // Dados da NF Referenciada
      aDs.Campo('nNF_BA09').Value := '3418'; // Dados da NF Referenciada
		  aDs.SalvarPart('NRef');
	  end
	  else
    begin
		  aDs.IncluirPart('NRef');
		  aDs.Campo('refNFe_BA02').Value := '43131294814886000150551210000034181046403275'; // Chave de acesso das NF-e referenciadas
		  aDs.SalvarPart('NRef');

		  aDs.IncluirPart('NRef');
      aDs.Campo('cUF_BA04').Value := 'RS'; // Dados da NF Referenciada
      aDs.Campo('AAMM_BA05').Value := '1312'; // Dados da NF Referenciada
      aDs.Campo('CNPJ_BA06').Value := '94814886000150'; // Dados da NF Referenciada
      aDs.Campo('mod_BA07').Value := '55'; // Dados da NF Referenciada
      aDs.Campo('serie_BA08').Value := '121'; // Dados da NF Referenciada
      aDs.Campo('nNF_BA09').Value := '3418'; // Dados da NF Referenciada
		  aDs.SalvarPart('NRef');
	  end;

    // Até Manual 3.0
    if cbVersao.ItemIndex = versao_3_0 then
      aDs.Campo('versao_A02').Value := '1.10' // Versão do Layout que está utilizando
    else if cbVersao.ItemIndex = versao_5_0 then
    begin
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '2.00'; // Versão do Layout que está utilizando - Manual 5.0
    end
    else if  cbVersao.ItemIndex = versao_5_0a then
    begin
      // Novos campos do manual 4.0 - Obrigatório
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '3.10'; // Versão do Layout que está utilizando - Manual 4.0
    end
    else
    begin
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '4.00';
    end;
  end;

  // Informações do Emitente da NFe
  procedure DadosDoEmitente(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('CNPJ_C02').Value := spdNFe.CNPJ; // CNPJ do Emitente
    //edtCpfCnpjEmit.Text; // CNPJ do Emitente
    aDs.Campo('xNome_C03').Value := edtRazaoSocialEmit.Text; // Razão Social ou Nome do Emitente
    aDs.Campo('xFant_C04').Value := edtNomeFantasiaEmit.Text; // Nome Fantasia do Emitente
    aDs.Campo('xLgr_C06').Value := edtEnderecoEmitente.Text; // Logradouro do Emitente
    aDs.Campo('nro_C07').Value := edtNumeroEmitente.Text; // Número do Logradouro do Emitente
    aDs.Campo('xCpl_C08').Value := edtComplementoEmit.Text; // Complemento
    aDs.Campo('xBairro_C09').Value := edtBairro.Text; // Bairro do Emitente
    aDs.Campo('cMun_C10').Value := '4308607'; // Código da Cidade do Emitente (Tabela do IBGE)
    aDs.Campo('xMun_C11').Value := edtNomeCidadeEmit.Text; // Nome da Cidade do Emitente
    aDs.Campo('UF_C12').Value := cbUFEmit.Text; // Código do Estado do Emitente (Tabela do IBGE)
    aDs.Campo('CEP_C13').Value := edtCEPEmit.Text; // Cep do Emitente
    aDs.Campo('cPais_C14').Value := edtIBGEPaisEmit.Text; // Código do País do Emitente (Tabela BACEN)
    aDs.Campo('xPais_C15').Value := edtPaisEmit.Text; // Nome do País do Emitente
    aDs.Campo('fone_C16').Value := edtTelefoneEmit.Text; // Fone do Emitente
    aDs.Campo('IE_C17').Value := edtIEEmit.Text; // Inscrição Estadual do Emitente
    aDs.Campo('IEST_C18').Value := edtIESTEmit.Text; // Inscrição Estadual do Substituto Tributário Emitente
    if cbNotaConjugada.Checked then
      aDs.Campo('IM_C19').Value := '100000000000015' // Inscrição Municipal
    else
      aDs.Campo('IM_C19').Value := edtIMEmit.Text; // Inscrição Municipal

    aDs.Campo('CNAE_C20').Value := edtCNAEEmit.Text; // CNAE Fiscal
    aDs.Campo('CRT_C21').Value := IntToStr(cbCRTEmit.ItemIndex + 1); // Código de Regime Tributário
  end;

  // Informações do Destinatário da NFe
  procedure DadosDoDestinatario(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('idEstrangeiro_E03a').Value := '123456'; //Identificação do destinatário no caso de comprador estrangeiro
    aDs.Campo('xNome_E04').Value := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
    aDs.Campo('xLgr_E06').Value := edtEnderecoDest.Text; // Logradouro do Destinatário
    aDs.Campo('nro_E07').Value := edtNumeroDest.Text; // Número do Logradouro do Destinatário
    aDs.Campo('xCpl_E08').Value := edtComplementoDest.Text; // Complemento
    aDs.Campo('xBairro_E09').Value := edtBairroDest.Text; // Bairro do Destinatário
    aDs.Campo('cMun_E10').Value := '9999999'; // Código do Município do Destinatário (Tabela IBGE)
    aDs.Campo('xMun_E11').Value := 'EXTERIOR'; //Nome da Cidade do Destinatário
    aDs.Campo('UF_E12').Value := 'EX'; // Sigla do Estado do Destinatário
    aDs.Campo('CEP_E13').Value := edtCepDest.Text; // Cep do Destinatário
    aDs.Campo('cPais_E14').Value := '4936'; // Código do Pais do Destinatário (Tabela do BACEN)
    aDs.Campo('xPais_E15').Value := 'MEXICO';// Nome do País do Destinatário
    aDs.Campo('fone_E16').Value := edtTelefoneDest.Text; // Fone do Destinatário
    aDs.Campo('indIEDest_E16a').Value := '9'; // Indicador da IE do Destinatário 1-Contribuinte ICMS/2-Contribuinte Isento de inscrição/9- Não contribuinte
    aDs.Campo('ISUF_E18').Value := edtISUFDest.Text; // Inscrição na SUFRAMA
    //aDs.Campo('IM_E18a').Value := edtISUFDest.Text; // Inscricao municipal do tomador de serviço
    aDs.Campo('email_E19').Value := edtEmailDest.Text; // Email
  end;

  // Autorizados a baixar o XML
  procedure DadosAutorizadosBaixarXML(aDs : TspdNFeDataSets);
  begin
    if Length(edtAutXMLCNPJCPF.Text) = 14 then
      aDs.Campo('CNPJ_GA02').Value := edtAutXMLCNPJCPF.Text // CNPJ do Autorizado
    else if Length(edtAutXMLCNPJCPF.Text) = 11 then
      aDs.Campo('CPF_GA03').Value := edtAutXMLCNPJCPF.Text; // CPF do Autorizado
  end;

  // Informações Referentes aos ITens da NFe
  procedure DadosDoItem(aNumItem : Integer; aDs : TspdNFeDataSets);
  begin
    aDs.Campo('nItem_H02').Value := IntToStr(aNumItem); // Número do Item da NFe (1 até 990)
    // Dados do Produto Vendido
    aDs.Campo('cProd_I02').Value := '0999'; //Código do PRoduto ou Serviço
    aDs.Campo('cEAN_I03').Value := '8712581497668'; // EAN do Produto
    aDs.Campo('xProd_I04').Value := 'MELAO';// Descrição do PRoduto
    ads.Campo('NCM_I05').Value := '11081200'; // Código do NCM - informar de acordo com o Tabela oficial do NCM
    aDs.Campo('CFOP_I08').Value := '3949'; // CFOP incidente neste Item da NF
    aDs.Campo('uCom_I09').Value := 'CX'; // Unidade de Medida do Item
    aDs.Campo('qCom_I10').Value := '1'; // Quantidade Comercializada do Item
    aDs.Campo('vUnCom_I10a').Value := '0.0100'; // Valor Comercializado do Item
    aDs.Campo('vProd_I11').Value := '0.01'; // Valor Total Bruto do Item
    aDs.Campo('cEANTrib_I12').Value := '8712581497668'; // EAN Tributável do Item
    aDs.Campo('uTrib_I13').Value := 'CX'; // Unidade de Medida Tributável do Item
    aDs.Campo('qTrib_I14').Value := '1'; // Quantidade Tributável do Item
    aDs.Campo('vUnTrib_I14a').Value := '0.0100'; // Valor Tributável do Item

    //////////////////// Aqui começam os Impostos Incidentes sobre o Item////////////////////////
    /// Verificar Manual pois existe uma variação nos campos de acordo com Tipo de Tributação ////
    // ICMS

    //ICMS 41
    aDs.Campo('orig_N11').Value := '1';
    aDs.Campo('CST_N12').Value  := '41';
    aDs.Campo('vICMS_N17').Value := '0.01';
    if cbVersao.ItemIndex >= versao_6_0 then
      aDs.Campo('vICMSDeson_N28a').Value  := '0.01'
    else if cbVersao.ItemIndex = versao_5_0a then
      aDs.Campo('vICMSDeson_N27a').Value  := '0.01';
    aDs.Campo('motDesICMS_N28').Value := '9';

    // PIS
    case cbPIS.ItemIndex of
      0://PIS Aliquota
        begin
          case frmPISAliq.cbCSTPISAliq.ItemIndex of
            0: aDs.Campo('CST_Q06').Value := '01';
            1: aDs.Campo('CST_Q06').Value := '02';
          end;
          aDs.Campo('vBC_Q07').Value := frmPISAliq.edtvBCPISAliq.Text;
          aDs.Campo('pPIS_Q08').Value := frmPISAliq.edtpPISPISAliq.Text;
          aDs.Campo('vPIS_Q09').Value := frmPISAliq.edtvPISPISAliq.Text;
        end;
      1://PIS Quantidade
        begin
          aDs.Campo('CST_Q06').Value := '03';
          aDs.Campo('qBCProd_Q10').Value := frmPISQtde.edtqBCProdPISQtde.Text;
          aDs.Campo('vAliqProd_Q11').Value := frmPISQtde.edtvAliqProdPISQtde.Text;
          aDs.Campo('vPIS_Q09').Value := frmPISQtde.edtvPISPISQtde.Text;
        end;
      2://PIS NT
        begin
          case frmPISNT.cbCSTPISNT.ItemIndex of
            0: aDs.Campo('CST_Q06').Value := '04';
            1: aDs.Campo('CST_Q06').Value := '05';
            2: aDs.Campo('CST_Q06').Value := '06';
            3: aDs.Campo('CST_Q06').Value := '07';
            4: aDs.Campo('CST_Q06').Value := '08';
            5: aDs.Campo('CST_Q06').Value := '09';
          end;
        end;
      3://PIS Outros
        begin
          aDs.Campo('CST_Q06').Value  := '99';
          if frmPISOutr.rgCalcPISTrib.ItemIndex = 0 then
          begin
            aDs.Campo('vBC_Q07').Value  := frmPISOutr.edtvBCPISOutr.Text;
            aDs.Campo('pPIS_Q08').Value := frmPISOutr.edtpPISPISOutr.Text;
          end
          else
          begin
            aDs.Campo('qBCProd_Q10').Value := frmPISOutr.edtqBCProdPISOutr.Text;
            aDs.Campo('vAliqProd_Q11').Value := frmPISOutr.edtvAliqProdPISOutr.Text;
          end;
          aDs.Campo('vPIS_Q09').Value := frmPISOutr.edtvPISOutr.Text;
        end;
    end;

    //PIS ST
    case cbPISST.ItemIndex of
      0:
        begin
          if frmPISST.rgCalcPISST.ItemIndex = 0 then
          begin
            aDs.Campo('vBC_R02').Value   := frmPISST.edtvBCPISST.Text;
            aDs.Campo('pPIS_R03').Value  := frmPISST.edtpPISST.Text;
          end
          else
          begin
            aDs.Campo('qBCProd_R04').Value   := frmPISST.edtqBCProdPISST.Text;
            aDs.Campo('vAliqProd_R05').Value := frmPISST.edtvAliqProdPISST.Text;
          end;
          aDs.Campo('vPIS_R06').Value  := frmPISST.edtvPISST.Text;
        end;
    end;

    // COFINS
    case cbCOFINS.ItemIndex of
      0://COFINS Aliquota
        begin
          case frmCOFINSAliq.cbCSTCOFINSAliq.ItemIndex of
            0: aDs.Campo('CST_S06').Value := '01';
            1: aDs.Campo('CST_S06').Value := '02';
          end;
          aDs.Campo('vBC_S07').Value := frmCOFINSAliq.edtvBCCOFINSAliq.Text;
          aDs.Campo('pCOFINS_S08').Value := frmCOFINSAliq.edtpCOFINSAliq.Text;
          aDs.Campo('vCOFINS_S11').Value := frmCOFINSAliq.edtCOFINSAliq.Text;
        end;
      1://COFINS Quantidade
        begin
          aDs.Campo('CST_S06').Value := '03';
          aDs.Campo('qBCProd_S09').Value := frmCOFINSQtde.edtqBCProdCOFINSQtde.Text;
          aDs.Campo('vAliqProd_S10').Value := frmCOFINSQtde.edtvAliqProdCOFINSQtde.Text;
          aDs.Campo('vCOFINS_S11').Value := frmCOFINSQtde.edtvCOFINSQtde.Text;
        end;
      2://COFINS NT
        begin
          case frmCOFINSNT.cbCSTCOFINSNT.ItemIndex of
            0: aDs.Campo('CST_S06').Value := '04';
            1: aDs.Campo('CST_S06').Value := '05';
            2: aDs.Campo('CST_S06').Value := '06';
            3: aDs.Campo('CST_S06').Value := '07';
            4: aDs.Campo('CST_S06').Value := '08';
            5: aDs.Campo('CST_S06').Value := '09';
          end;
        end;
      3://COFINS Outros
        begin
          aDs.Campo('CST_S06').Value     := '99';
          if frmCOFINSOutr.rgCalcCOFINSOutr.ItemIndex = 0 then
          begin
            aDs.Campo('vBC_S07').Value     := frmCOFINSOutr.edtvBCCOFINSOutr.Text;
            aDs.Campo('pCOFINS_S08').Value := frmCOFINSOutr.edtpCOFINSOutr.Text;
          end
          else
          begin
            aDs.Campo('qBCProd_S09').Value := frmCOFINSOutr.edtqBCProdCOFINSOutr.Text;
            aDs.Campo('vAliqProd_S10').Value := frmCOFINSOutr.edtvAliqProdCOFINSOutr.Text;
          end;
          aDs.Campo('vCOFINS_S11').Value := frmCOFINSOutr.edtvCOFINSOutr.Text;
        end;
    end;

    //COFINS ST
    case cbCOFINSST.ItemIndex of
      0:
        begin
          if frmCOFINSST.rgCalcCOFINSST.ItemIndex = 0 then
          begin
            aDs.Campo('vBC_T02').Value 	 := frmCOFINSST.edtvBCCOFINSST.Text;
            aDs.Campo('pCOFINS_T03').Value 	 := frmCOFINSST.edtpCOFINSST.Text;
          end
          else
          begin
            aDs.Campo('qBCProd_T04').Value 	:= frmCOFINSST.edtqBCProdCOFINSST.Text;
            aDs.Campo('vAliqProd_T05').Value 	:= frmCOFINSST.edtvAliqProdCOFINSST.Text;
          end;
          aDs.Campo('vCOFINS_T06').Value 	 := frmCOFINSST.edtvCOFINSST.Text;
        end;
    end;

    //IPI
    if cbVersao.ItemIndex >= versao_6_0 then
      aDs.Campo('cEnq_O06').Value   := '999'
    else
      aDs.Campo('clEnq_O02').Value  := 'NDA';
    aDs.Campo('CNPJProd_O03').Value := '94814886000150';
    aDs.Campo('cSelo_O04').Value    := 'N';
    aDs.Campo('qSelo_O05').Value    := '0';
    aDs.Campo('CST_O09').Value  := '49';
    aDs.Campo('vBC_O10').Value  := '0.01';
    aDs.Campo('pIPI_O13').Value := '5.00';
    aDs.Campo('vIPI_O14').Value := '0.01';

    //II
    aDs.Campo('vBC_P02').Value := '0.01';
    aDs.Campo('vDespAdu_P03').Value := '0.01';
    aDs.Campo('vII_P04').Value := '0.01';
    aDs.Campo('vIOF_P05').Value := '0.01';

    // Novo campo da 4.0 - para saber se o item totaliza na nota
    if (cbVersao.ItemIndex >= versao_4_0) then
      aDs.Campo('indTot_I17b').Value := '1'; // Indica se valor do Item vProd entra no valor total da NF-e vProd
  end;

  // Totalizadores da NFe
  Procedure DadosTotalizadores(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('vBC_W03').Value := '0.01'; //Base de Cálculo do ICMS
    aDs.Campo('vICMS_W04').Value := '0.01'; // Valor Total do ICMS
    aDs.Campo('vICMSDeson_W04a').Value := '0.01'; // Valor Total do ICMS desonerado
    aDs.Campo('vBCST_W05').Value := '0.00'; // Base de Cálculo do ICMS Subst. Tributária
    aDs.Campo('vST_W06').Value := '0.00'; // Valor Total do ICMS Sibst. Tributária
    aDs.Campo('vProd_W07').Value := '0.01'; // Valor Total de Produtos
    aDs.Campo('vFrete_W08').Value := '0.00'; // Valor Total do Frete
    aDs.Campo('vSeg_W09').Value := '0.00'; // Valor Total do Seguro
    aDs.Campo('vDesc_W10').Value := '0.00'; // Valor Total de Desconto
    aDs.Campo('vII_W11').Value := '0.00'; // Valor Total do II
    aDs.Campo('vIPI_W12').Value := '0.00'; // Valor Total do IPI
    aDs.Campo('vPIS_W13').Value := '0.01'; // Valor Toal do PIS
    aDs.Campo('vCOFINS_W14').Value := '0.01'; // Valor Total do COFINS
    aDs.Campo('vOutro_W15').Value := '0.00'; // Outras Despesas Acessórias
    aDs.Campo('vNF_W16').Value := '0.01'; // Valor Total da NFe - Versão Trial só aceita NF até R$ 1.00

    //ISSQNTot
    if cbNotaConjugada.Checked then
    begin
      aDs.Campo('vServ_W18').value:='0.01'; // Valor Total dos serviços não tributados pelo ICMS
      aDs.Campo('vBC_W19').value:='0.01'; // Valor de Base de Cálculo do ISS
      aDs.Campo('vISS_W20').value:='0.01'; // Valor Total ISS
      aDs.Campo('vPIS_W21').value:='0.01'; // Valor do PIS sobre serviços
      aDs.Campo('vCOFINS_W22').value:='0.01'; // Valor do COFINS sobre serviços
      aDs.Campo('dCompet_W22a').value:= FormatDateTime('YYYY-MM-DD',now); // "Data da prestação do serviço
      aDs.Campo('vDeducao_W22b').value:='0.01'; // Valor dedução para redução da Base de Cálculo
      aDs.Campo('vOutro_W22c').value:='0.01'; // Valor outras retenções
      aDs.Campo('vDescIncond_W22d').value:='0.01'; // Valor desconto incondicionado
      aDs.Campo('vDescCond_W22e').value:='0.01'; // Valor desconto condicionado
      aDs.Campo('vISSRet_W22f').value:='0.01'; // Valor total retenção ISS
      aDs.Campo('cRegTrib_W22g').value:='1'; // Código do Regie especial de tributação
    end;

    // A partir do manual 4.0 mais opções fora disponibilizadas (ver manual)
    aDs.Campo('modFrete_X02').Value := '0'; // Modalidade do Frete
  end;

  // Dados De Cobrança
  procedure DadosCobranca(aDs : TspdNFeDataSets);
  Var i : integer;
    _Data :  TDateTime;
  begin
    //1 - Fatura por NFe
    aDs.Campo('nFat_Y03').Value := '2000'; // Número da Farura
    aDs.Campo('vOrig_Y04').Value := '1000.00'; // Valor Original da Fatura
    aDs.Campo('vDesc_Y05').Value := '100.00'; // Valor do Desconto
    aDs.Campo('vLiq_Y06').Value := '900.00'; // Valor Líquido da Fatura

    _Data := Date;

    // 1 Fatura  - 3 Duplicatas //
    for i := 1 to 3 do
    begin
      // Duplicatas //
      aDs.IncluirCobranca;
      aDs.Campo('nDup_Y08').Value := IntToStr(i); // Número da Duplicata
      aDs.Campo('dVenc_Y09').Value := FormatDateTime('YYYY-MM-DD',_Data); // Data de Vencimento da Duplicata
      aDs.Campo('vDup_Y10').Value := '900.00'; // Valor da Duplicata
      aDs.SalvarCobranca;

      //Incrementa a data das duplicatas.
      _data := IncMonth(_Data,1);
    end;
  end;

  // Dados Adicionais da NFe - Observações
  procedure DadosAdicionais(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('infAdFisco_Z02').Value := 'OBSERVACAO TESTE DA DANFE - FISCO'; // Interesse do Fisco
    aDs.Campo('infCpl_Z03').Value := 'OBSERVACAO TESTE DA DANFE - CONTRIBUINTE'; // Interesse da Empresa
  end;

  //Exportação
  procedure Exportacao(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('UFSaidaPais_ZA02').Value := 'SP'; // Sigla da UF onde ocorrerá o Embarque dos produtos
    aDs.Campo('xLocExporta_ZA03').Value := 'São Paulo'; // Descrição do Local de Embarqueou ou de transposição de fronteira
    aDs.Campo('xLocDespacho_ZA04').Value := 'Vila funda'; //  Descrição do local de despacho
  end;

  //Transporte
  procedure Transporte(aDs : TspdNFeDataSets);
  var
    i: Integer;
  begin
    aDs.Campo('modFrete_X02').Value := '0'; // Modalidade do Frete
    aDs.Campo('CNPJ_X04').Value := '03150059000154'; // CNPJ
    aDs.Campo('xNome_X06').Value := 'ANDRE MARCIANO'; // Razão Social ou nome
    aDs.Campo('IE_X07').Value := '280589948'; // Inscrição Estadual
    aDs.Campo('xEnder_X08').Value := 'AVE PANAMA'; //Endereço completo
    aDs.Campo('xMun_X09').Value := 'IVINHEMA'; // Nome do município
    aDs.Campo('UF_X10').Value := 'MS'; // Sigla da UF
    aDs.Campo('placa_X19').Value := 'ACB0908'; // Placa do veículo
    aDs.Campo('uf_X20').Value := 'PR'; // Sigla da UF
    aDs.Campo('rntc_X21').Value := '123456'; // Registro Nacional do Transportador
    aDs.Campo('qVol_X27').Value := '1'; // Quantidade de Volumes Transportados
    aDs.Campo('esp_X28').Value := 'ESPECIE'; // Espécie dos Volumes Transportados
    aDs.Campo('marca_X29').Value := 'MARCA'; // Marca dos Volumes Transportados
    aDs.Campo('nVol_X30').Value := '1'; // Numeração dos Volumes Transportados
    aDs.Campo('pesoL_X31').Value := '1000'; // Peso Líquido em Kg
    aDs.Campo('pesoB_X32').Value := '1000'; // Peso Bruto em Kg

    for I := 1 to 3 do
    begin
      aDs.IncluirPart('LACRE');
      aDs.Campo('nLacre_X34').Value := '12345' + IntToStr(i); // Número dos Lacres
      aDs.SalvarPart('LACRE');
    end;
  end;

  procedure DadosImportacao(aDs : TspdNFeDataSets);
  begin
    aDs.IncluirPart('DI');
    aDs.Campo('nDI_I19').Value := '123';
    aDs.Campo('dDI_I20').Value := '2013-12-14';
    aDs.Campo('xLocDesemb_I21').Value := 'GARIBALDI';
    aDs.Campo('UFDesemb_I22').Value := 'RS';
    aDs.Campo('dDesemb_I23').Value := '2013-12-14';
    aDs.Campo('tpViaTransp_I23a').Value := '7';
    //aDs.Campo('vAFRMM_I23b').Value := '12345678901';
    aDs.Campo('tpIntermedio_I23c').Value := '1';
    aDs.Campo('CNPJ_I23d').Value := '94814886000150';
    aDs.Campo('UFTerceiro_I23e').Value := 'RS';
    aDs.Campo('cExportador_I24').Value := '123456';
    aDs.IncluirPart('ADI');
    aDs.Campo('nAdicao_I26').Value := '1';
    aDs.Campo('nSeqAdic_I27').Value := '1';
    aDs.Campo('cFabricante_I28').Value := '1234567';
    aDs.Campo('vDescDI_I29').Value := '0.01';
    aDs.Campo('nDraw_I29a').Value := '12345678901';
    aDs.SalvarPart('ADI');
    aDs.SalvarPart('DI');
  end;

Var
  i : Integer;
begin
	try
	  spdNFeDataSets.LoteNFe.Clear;
	  spdNFeDataSets.Incluir; // Inicia a insercao de dados na NFe
		DadosDoNFe(spdNFeDataSets);
		DadosDoEmitente(spdNFeDataSets);
		DadosDoDestinatario(spdNFeDataSets);
    DadosAutorizadosBaixarXML(spdNFeDataSets);

		for i := 1 to 1 do// experimente aumentar o numero de iterações para ter mais itens na nota
		begin
		  spdNFeDataSets.IncluirItem;
		  DadosDoItem(i,spdNFeDataSets);
		  spdNFeDataSets.SalvarItem;
		end;

    DadosImportacao(spdNFeDataSets);

		DadosTotalizadores(spdNFeDataSets);

		if cbTransportadora.Checked then
		  Transporte(spdNFeDataSets);

		DadosAdicionais(spdNFeDataSets);

		if cbFatDup.Checked then
		  DadosCobranca(spdNFeDataSets);

	  spdNFeDataSets.Salvar; // Salva DataSets e Converte em XML montando um LOTE de XMLS a ser assinados

	  if fTipoEmissao = '1' then
	  begin
      fNFe := spdNFeDataSets.LoteNFe.GetText;  //Copia XML que está Componente p/ Field fNFe
      mmXmlNota.Lines.Text := fNFe;
      FUtils.SaveToFile(fNFe, ExtractFilePath(ParamStr(0)) + 'NotaaAssinar.xml');
      wbNotaGerada.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaaAssinar.xml');
      edtChaveNota.Text := Copy(spdNFeDataSets.Campo('Id_A03').AsString,4,44); //Copia o ID da NFe p/ o Edit
	  end;

	  if ((fTipoEmissao = '2') or (fTipoEmissao = '5'))  then
	  begin
      fNFeFS := spdNFeDataSets.LoteNFe.GetText;  //Copia XML que está Componente p/ Field fNFeFS
      mmXMLNotaFS.Lines.Text := fNFeFS;
      FUtils.SaveToFile(fNFeFS, ExtractFilePath(ParamStr(0)) + 'NotaaAssinarFS.xml');
      wbXMLNotaFS.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaaAssinarFS.xml');
      edtChaveEnvServEstFS.Text := Copy(spdNFeDataSets.Campo('Id_A03').AsString,4,44); //Copia o ID da NFe p/ o Edit
	  end;
	except
    spdNFeDataSets.Cancelar;
	end;
end;

procedure TfrmPrincipal.GerarNFeDataSetISSQN;

  // Informações sobre a NFe
  procedure DadosDoNFe (aDs : TspdNFeDataSets);
  Var _NRNota : String;
  begin
    aDs.Campo('Id_A03').Value := ''; // Calcula Automático. Essa linha é desnecessária
    aDs.Campo('cUF_B02').Value := '43';   //Codigo da UF para o estado de RS
    aDs.Campo('cNF_B03').Value := '04640327'; // Código Interno do Sistema que está integrando com a NFe
    aDs.Campo('natOp_B04').Value := 'VENDA MERC.ADQ.REC.TERC'; // Descrição da(s) CFOP(s) envolvidas nessa NFe
    aDs.Campo('indPag_B05').Value := '1'; // Indicador da Forma de Pgto (1- a Vista, 2 a Prazo)
    aDs.Campo('mod_B06').Value := '55'; //Código do Modelo de Documento Fiscal
    aDs.Campo('serie_B07').Value := '121'; // Série do Documento
    Randomize;
    _NRNota := IntToStr(Random(10000)); // Gera um Número Randomico de NF para Demonstração
    aDs.Campo('nNF_B08').Value := _NRNota; // Número da Nota Fiscal
    aDs.Campo('dhEmi_B09').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',now) + GetFusoUF(cbConfigUF.ItemIndex); //  Data e Hora de Emissão da Nota Fiscal Seguido do Fuso Horario
    aDs.Campo('dhSaiEnt_B10').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',now) + GetFusoUF(cbConfigUF.ItemIndex); // Data e Hora de Saída ou Entrada da Nota Fiscal Seguido do Fuso Horario
    aDs.Campo('tpNF_B11').Value := '1'; // Tipo de Documento Fiscal (0-Entrada, 1-Saída)
    if cbVersao.ItemIndex >= versao_5_0a then
    begin
      if cbUFEmit.Text = cbUFDest.Text then
        aDs.Campo('idDest_B11a').Value := '1' // Identificador de local de destino da operação (1-Operação Interna, 2-Operação Interestadual e 3-Operação com exterior)
      else
        aDs.Campo('idDest_B11a').Value := '2'; // Identificador de local de destino da operação (1-Operação Interna, 2-Operação Interestadual e 3-Operação com exterior)
    end;

    aDs.Campo('cMunFG_B12').Value := '4302105'; // Código do Município, conforme Tabela do IBGE
    aDs.Campo('tpImp_B21').Value := '1'; // Tipo de Impressão da Danfe (1- Retrato , 2-Paisagem)
    aDs.Campo('tpEmis_B22').Value := fTipoEmissao; //Forma de Emissão da NFe (1 - Normal, 2 - FS, 3 - SCAN, 4 - DPEC, 5 - FS-DA)
    aDs.Campo('cDV_B23').Value := ''; // Calcula Automatico - Linha desnecessária já que o componente calcula o Dígito Verificador automaticamente e coloca no devido campo
    aDs.Campo('tpAmb_B24').Value := '2'; // Identificação do Ambiente (1- Producao, 2-Homologação)
    aDs.Campo('finNFe_B25').Value := '1'; // Finalidade da NFe (1-Normal, 2-Complementar, 3-de Ajuste)
    aDs.Campo('indFinal_B25a').Value := '0'; // Indica operação com Consumidor final (0-Não, 1-Consumidor Final)
    aDs.Campo('indPres_B25b').Value := '0'; // Indicador de presença do comprador no estabelecimento comercial ( 0-Não, 1-Operação presencial, 2-Operação não presencial, Internet, 3-Operação Não presencial, teleatendimento, 9-Operação não presencial, outros.)
    aDs.Campo('procEmi_B26').Value := '0'; // Identificador do Processo de emissão (0-Emissão da Nfe com Aplicativo do Contribuinte). Ver outras opções no manual da Receita.
    aDs.Campo('verProc_B27').Value := '000'; // Versão do Aplicativo Emissor

    if fTipoEmissao = '4' then //DPEC
    begin
      aDs.Campo('dhCont_B28').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now) + GetFusoUF(cbConfigUF.ItemIndex); // Data e hora de entrada em contingência no formato AAAA-MM-DDTHH:MM:SS
      aDs.Campo('xJust_B29').Value := 'Exemplo de justificativa de DPEC'; // Justificativa da contingência
    end;

    if ((fTipoEmissao = '2') or (fTipoEmissao = '5')) then //FS
    begin
      aDs.Campo('dhCont_B28').Value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now); // Data e hora de entrada em contingência no formato AAAA-MM-DDTHH:MM:SS
      aDs.Campo('xJust_B29').Value := 'Exemplo de justificativa de FS'; // Justificativa da contingência
    end;

    if cbNotaRef.Checked then
    begin
      aDs.IncluirPart('NRef');
      aDs.Campo('refNFe_B13').Value := '35100761367025000112550010000054241046403270'; // Chave de acesso das NF-e referenciadas
      aDs.SalvarPart('NRef');

      aDs.IncluirPart('NRef');
      aDs.Campo('refNFe_B13').Value := '35100761367025000112550010000054241046403270'; // Chave de acesso das NF-e referenciadas
      aDs.SalvarPart('NRef');
    end;

    // Até Manual 3.0
    if cbVersao.ItemIndex = versao_3_0 then
      aDs.Campo('versao_A02').Value := '1.10' // Versão do Layout que está utilizando
    else if cbVersao.ItemIndex = versao_5_0 then
    begin
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '2.00'; // Versão do Layout que está utilizando - Manual 5.0
    end
    else if cbVersao.ItemIndex = versao_5_0a then
    begin
      // Novos campos do manual 4.0 - Obrigatório
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '3.10'; // Versão do Layout que está utilizando - Manual 4.0
    end
    else
    begin
      aDs.Campo('CRT_C21').Value := '1'; // Código de Regime Tributário
      aDs.Campo('versao_A02').Value := '4.00';
    end;
  end;

  // Informações do Emitente da NFe
  procedure DadosDoEmitente(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('CNPJ_C02').Value := spdNFe.CNPJ; // CNPJ do Emitente
    aDs.Campo('xNome_C03').Value := edtRazaoSocialEmit.Text; // Razão Social ou Nome do Emitente
    aDs.Campo('xFant_C04').Value := edtNomeFantasiaEmit.Text; // Nome Fantasia do Emitente
    aDs.Campo('xLgr_C06').Value := edtEnderecoEmitente.Text; // Logradouro do Emitente
    aDs.Campo('nro_C07').Value := edtNumeroEmitente.Text; // Número do Logradouro do Emitente
    aDs.Campo('xCpl_C08').Value := edtComplementoEmit.Text; // Complemento
    aDs.Campo('xBairro_C09').Value := edtBairro.Text; // Bairro do Emitente
    aDs.Campo('cMun_C10').Value := edtIBGEEmit.Text; // Código da Cidade do Emitente (Tabela do IBGE)
    aDs.Campo('xMun_C11').Value := edtNomeCidadeEmit.Text; // Nome da Cidade do Emitente
    aDs.Campo('UF_C12').Value := cbUFEmit.Text; // Código do Estado do Emitente (Tabela do IBGE)
    aDs.Campo('CEP_C13').Value := edtCEPEmit.Text; // Cep do Emitente
    aDs.Campo('cPais_C14').Value := edtIBGEPaisEmit.Text; // Código do País do Emitente (Tabela BACEN)
    aDs.Campo('xPais_C15').Value := edtPaisEmit.Text; // Nome do País do Emitente
    aDs.Campo('fone_C16').Value := edtTelefoneEmit.Text; // Fone do Emitente
    aDs.Campo('IE_C17').Value := edtIEEmit.Text; // Inscrição Estadual do Emitente
    aDs.Campo('IEST_C18').Value := edtIESTEmit.Text; // Inscrição Estadual do Substituto Tributário Emitente
    if cbNotaConjugada.Checked then
      aDs.Campo('IM_C19').Value := '100000000000015' // Inscrição Municipal
    else
      aDs.Campo('IM_C19').Value := '123456'; // Inscrição Municipal

    aDs.Campo('CNAE_C20').Value := '1234567'; // CNAE Fiscal
    aDs.Campo('CRT_C21').Value := '3'; // Código de Regime Tributário
  end;

  // Informações do Destinatário da NFe
  procedure DadosDoDestinatario(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('CNPJ_E02').Value := edtCpfCnpjDest.Text; // CNPJ do Destinatário
    //aDs.Campo('idEstrangeiro_E03a').Value := 'Comprador EX'; //Identificação do destinatário no caso de comprador estrangeiro
    aDs.Campo('xNome_E04').Value := edtRazaoSocialDest.Text; // Razão social ou Nome do Destinatário
    aDs.Campo('xLgr_E06').Value := edtEnderecoDest.Text; // Logradouro do Destinatário
    aDs.Campo('nro_E07').Value := edtNumeroDest.Text; // Número do Logradouro do Destinatário
    aDs.Campo('xCpl_E08').Value := edtComplementoDest.Text; // Complemento
    aDs.Campo('xBairro_E09').Value := edtBairroDest.Text; // Bairro do Destinatário
    aDs.Campo('cMun_E10').Value := edtIBGECidadeDest.Text; // Código do Município do Destinatário (Tabela IBGE)
    aDs.Campo('xMun_E11').Value := edtNomeCidadeDest.Text; //Nome da Cidade do Destinatário
    aDs.Campo('UF_E12').Value := cbUFDest.Text; // Sigla do Estado do Destinatário
    aDs.Campo('CEP_E13').Value := edtCepDest.Text; // Cep do Destinatário
    aDs.Campo('cPais_E14').Value := edtIBGEPaisDest.Text; // Código do Pais do Destinatário (Tabela do BACEN)
    aDs.Campo('xPais_E15').Value := edtPais.Text;// Nome do País do Destinatário
    aDs.Campo('fone_E16').Value := edtTelefoneDest.Text; // Fone do Destinatário
    aDs.Campo('indIEDest_E16a').Value := '1'; // Indicador da IE do Destinatário 1-Contribuinte ICMS/2-Contribuinte Isento de inscrição/9- Não contribuinte
    aDs.Campo('IE_E17').Value := edtIEDest.Text; // Inscrição Estadual do Destinatário
    aDs.Campo('ISUF_E18').Value := edtISUFDest.Text; // Inscrição na SUFRAMA
    //aDs.Campo('IM_E18a').Value := edtISUFDest.Text; // Inscricao municipal do tomador de serviço
    aDs.Campo('email_E19').Value := edtEmailDest.Text; // Email
  end;

  // Autorizados a baixar o XML
  procedure DadosAutorizadosBaixarXML(aDs : TspdNFeDataSets);
  begin
    if Length(edtAutXMLCNPJCPF.Text) = 14 then
      aDs.Campo('CNPJ_GA02').Value := edtAutXMLCNPJCPF.Text // CNPJ do Autorizado
    else if Length(edtAutXMLCNPJCPF.Text) = 11 then
      aDs.Campo('CPF_GA03').Value := edtAutXMLCNPJCPF.Text; // CPF do Autorizado
  end;

  // Informações Referentes aos ITens da NFe
  procedure DadosDoItem(aNumItem : Integer; aDs : TspdNFeDataSets);
  begin
    aDs.Campo('nItem_H02').Value := IntToStr(aNumItem); // Número do Item da NFe (1 até 990)
    // Dados do Produto Vendido
    aDs.Campo('cProd_I02').Value := '0999'; //Código do PRoduto ou Serviço
    aDs.Campo('cEAN_I03').Value := '8712581497668'; // EAN do Produto
    aDs.Campo('xProd_I04').Value := 'MELAO';// Descrição do PRoduto
    ads.Campo('NCM_I05').Value := '11081200'; // Código do NCM - informar de acordo com o Tabela oficial do NCM
    if cbUFEmit.Text = cbUFDest.Text then
      aDs.Campo('CFOP_I08').Value := '5102' // CFOP incidente neste Item da NF
    else
      aDs.Campo('CFOP_I08').Value := '6102'; // CFOP incidente neste Item da NF
    aDs.Campo('uCom_I09').Value := 'CX'; // Unidade de Medida do Item
    aDs.Campo('qCom_I10').Value := '1'; // Quantidade Comercializada do Item
    aDs.Campo('vUnCom_I10a').Value := '0.0100'; // Valor Comercializado do Item
    aDs.Campo('vProd_I11').Value := '0.01'; // Valor Total Bruto do Item
    aDs.Campo('cEANTrib_I12').Value := '8712581497668'; // EAN Tributável do Item
    aDs.Campo('uTrib_I13').Value := 'CX'; // Unidade de Medida Tributável do Item
    aDs.Campo('qTrib_I14').Value := '1'; // Quantidade Tributável do Item
    aDs.Campo('vUnTrib_I14a').Value := '0.0100'; // Valor Tributável do Item

    //////////////////// Aqui começam os Impostos Incidentes sobre o Item////////////////////////
    /// Verificar Manual pois existe uma variação nos campos de acordo com Tipo de Tributação ////
    // ISSQN
    aDs.Campo('vBC_U02').Value          := '0.01';
    aDs.Campo('vAliq_U03').Value        := '5.00';
    aDs.Campo('vISSQN_U04').Value       := '0.01';
    aDs.Campo('cMunFG_U05').Value       := '5208707';
    aDs.Campo('cListServ_U06').Value    := '14.02';
    aDs.Campo('vDeducao_U07').Value     := '0.01';
    aDs.Campo('vOutro_U08').Value       := '0.01';
    aDs.Campo('vDescIncond_U09').Value  := '0.01';
    aDs.Campo('vDescCond_U10').Value    := '0.01';
    aDs.Campo('vISSRet_U11').Value      := '0.01';
    aDs.Campo('indISS_U12').Value       := '1';
    aDs.Campo('cServico_U13').Value     := '01635';
    aDs.Campo('cMun_U14').Value         := '4308607';
    aDs.Campo('cPais_U15').Value        := '1058';
    aDs.Campo('indIncentivo_U17').Value := '1';
    aDs.Campo('vTotTrib_M02').value     := '0.01';

    // PIS
    case cbPIS.ItemIndex of
      0://PIS Aliquota
      begin
        case frmPISAliq.cbCSTPISAliq.ItemIndex of
          0: aDs.Campo('CST_Q06').Value := '01';
          1: aDs.Campo('CST_Q06').Value := '02';
        end;
        aDs.Campo('vBC_Q07').Value := frmPISAliq.edtvBCPISAliq.Text;
        aDs.Campo('pPIS_Q08').Value := frmPISAliq.edtpPISPISAliq.Text;
        aDs.Campo('vPIS_Q09').Value := frmPISAliq.edtvPISPISAliq.Text;
      end;
      1://PIS Quantidade
      begin
        aDs.Campo('CST_Q06').Value := '03';
        aDs.Campo('qBCProd_Q10').Value := frmPISQtde.edtqBCProdPISQtde.Text;
        aDs.Campo('vAliqProd_Q11').Value := frmPISQtde.edtvAliqProdPISQtde.Text;
        aDs.Campo('vPIS_Q09').Value := frmPISQtde.edtvPISPISQtde.Text;
      end;
      2://PIS NT
      begin
        case frmPISNT.cbCSTPISNT.ItemIndex of
          0: aDs.Campo('CST_Q06').Value := '04';
          1: aDs.Campo('CST_Q06').Value := '05';
          2: aDs.Campo('CST_Q06').Value := '06';
          3: aDs.Campo('CST_Q06').Value := '07';
          4: aDs.Campo('CST_Q06').Value := '08';
          5: aDs.Campo('CST_Q06').Value := '09';
        end;
      end;
      3://PIS Outros
      begin
        aDs.Campo('CST_Q06').Value  := '99';
        if frmPISOutr.rgCalcPISTrib.ItemIndex = 0 then
        begin
          aDs.Campo('vBC_Q07').Value  := frmPISOutr.edtvBCPISOutr.Text;
          aDs.Campo('pPIS_Q08').Value := frmPISOutr.edtpPISPISOutr.Text;
        end
        else
        begin
          aDs.Campo('qBCProd_Q10').Value := frmPISOutr.edtqBCProdPISOutr.Text;
          aDs.Campo('vAliqProd_Q11').Value := frmPISOutr.edtvAliqProdPISOutr.Text;
        end;
        aDs.Campo('vPIS_Q09').Value := frmPISOutr.edtvPISOutr.Text;
      end;
    end;

    //PIS ST
    case cbPISST.ItemIndex of
      0:
      begin
        if frmPISST.rgCalcPISST.ItemIndex = 0 then
        begin
          aDs.Campo('vBC_R02').Value   := frmPISST.edtvBCPISST.Text;
          aDs.Campo('pPIS_R03').Value  := frmPISST.edtpPISST.Text;
        end
        else
        begin
          aDs.Campo('qBCProd_R04').Value   := frmPISST.edtqBCProdPISST.Text;
          aDs.Campo('vAliqProd_R05').Value := frmPISST.edtvAliqProdPISST.Text;
        end;
        aDs.Campo('vPIS_R06').Value  := frmPISST.edtvPISST.Text;
      end;
    end;

    // COFINS
    case cbCOFINS.ItemIndex of
      0://COFINS Aliquota
      begin
        case frmCOFINSAliq.cbCSTCOFINSAliq.ItemIndex of
          0: aDs.Campo('CST_S06').Value := '01';
          1: aDs.Campo('CST_S06').Value := '02';
        end;
        aDs.Campo('vBC_S07').Value := frmCOFINSAliq.edtvBCCOFINSAliq.Text;
        aDs.Campo('pCOFINS_S08').Value := frmCOFINSAliq.edtpCOFINSAliq.Text;
        aDs.Campo('vCOFINS_S11').Value := frmCOFINSAliq.edtCOFINSAliq.Text;
      end;
      1://COFINS Quantidade
      begin
        aDs.Campo('CST_S06').Value := '03';
        aDs.Campo('qBCProd_S09').Value := frmCOFINSQtde.edtqBCProdCOFINSQtde.Text;
        aDs.Campo('vAliqProd_S10').Value := frmCOFINSQtde.edtvAliqProdCOFINSQtde.Text;
        aDs.Campo('vCOFINS_S11').Value := frmCOFINSQtde.edtvCOFINSQtde.Text;
      end;
      2://COFINS NT
      begin
        case frmCOFINSNT.cbCSTCOFINSNT.ItemIndex of
          0: aDs.Campo('CST_S06').Value := '04';
          1: aDs.Campo('CST_S06').Value := '05';
          2: aDs.Campo('CST_S06').Value := '06';
          3: aDs.Campo('CST_S06').Value := '07';
          4: aDs.Campo('CST_S06').Value := '08';
          5: aDs.Campo('CST_S06').Value := '09';
        end;
      end;
      3://COFINS Outros
      begin
        aDs.Campo('CST_S06').Value     := '99';
        if frmCOFINSOutr.rgCalcCOFINSOutr.ItemIndex = 0 then
        begin
          aDs.Campo('vBC_S07').Value     := frmCOFINSOutr.edtvBCCOFINSOutr.Text;
          aDs.Campo('pCOFINS_S08').Value := frmCOFINSOutr.edtpCOFINSOutr.Text;
        end
        else
        begin
          aDs.Campo('qBCProd_S09').Value := frmCOFINSOutr.edtqBCProdCOFINSOutr.Text;
          aDs.Campo('vAliqProd_S10').Value := frmCOFINSOutr.edtvAliqProdCOFINSOutr.Text;
        end;
        aDs.Campo('vCOFINS_S11').Value := frmCOFINSOutr.edtvCOFINSOutr.Text;
      end;
    end;

    //COFINS ST
    case cbCOFINSST.ItemIndex of
      0:
        begin
          if frmCOFINSST.rgCalcCOFINSST.ItemIndex = 0 then
          begin
            aDs.Campo('vBC_T02').Value 	 := frmCOFINSST.edtvBCCOFINSST.Text;
            aDs.Campo('pCOFINS_T03').Value 	 := frmCOFINSST.edtpCOFINSST.Text;
          end
          else
          begin
            aDs.Campo('qBCProd_T04').Value 	:= frmCOFINSST.edtqBCProdCOFINSST.Text;
            aDs.Campo('vAliqProd_T05').Value 	:= frmCOFINSST.edtvAliqProdCOFINSST.Text;
          end;
          aDs.Campo('vCOFINS_T06').Value 	 := frmCOFINSST.edtvCOFINSST.Text;
        end;
    end;

    // Novo campo da 4.0 - para saber se o item totaliza na nota
    if (cbVersao.ItemIndex >= versao_4_0) then
      aDs.Campo('indTot_I17b').Value := '1'; // Indica se valor do Item vProd entra no valor total da NF-e vProd

  end;

  // Totalizadores da NFe
  Procedure DadosTotalizadores(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('vBC_W03').Value := '0.01'; //Base de Cálculo do ICMS
    aDs.Campo('vICMS_W04').Value := '0.01'; // Valor Total do ICMS
    aDs.Campo('vICMSDeson_W04a').Value := '0.01'; // Valor Total do ICMS desonerado
    aDs.Campo('vBCST_W05').Value := '0.00'; // Base de Cálculo do ICMS Subst. Tributária
    aDs.Campo('vST_W06').Value := '0.00'; // Valor Total do ICMS Sibst. Tributária
    aDs.Campo('vProd_W07').Value := '0.01'; // Valor Total de Produtos
    aDs.Campo('vFrete_W08').Value := '0.00'; // Valor Total do Frete
    aDs.Campo('vSeg_W09').Value := '0.00'; // Valor Total do Seguro
    aDs.Campo('vDesc_W10').Value := '0.00'; // Valor Total de Desconto
    aDs.Campo('vII_W11').Value := '0.00'; // Valor Total do II
    aDs.Campo('vIPI_W12').Value := '0.00'; // Valor Total do IPI
    aDs.Campo('vPIS_W13').Value := '0.01'; // Valor Toal do PIS
    aDs.Campo('vCOFINS_W14').Value := '0.01'; // Valor Total do COFINS
    aDs.Campo('vOutro_W15').Value := '0.00'; // Outras Despesas Acessórias
    aDs.Campo('vNF_W16').Value := '0.01'; // Valor Total da NFe - Versão Trial só aceita NF até R$ 1.00
    aDs.Campo('vTotTrib_W16a').Value := '0.01';
    aDs.Campo('vServ_W18').value:='0.01'; // Valor Total dos serviços não tributados pelo ICMS
    aDs.Campo('vBC_W19').value:='0.01'; // Valor de Base de Cálculo do ISS
    aDs.Campo('vISS_W20').value:='0.01'; // Valor Total ISS
    aDs.Campo('vPIS_W21').value:='0.01'; // Valor do PIS sobre serviços
    aDs.Campo('vCOFINS_W22').value:='0.01'; // Valor do COFINS sobre serviços
    aDs.Campo('dCompet_W22a').value:= FormatDateTime('YYYY-MM-DD',now); // "Data da prestação do serviço
    aDs.Campo('vDeducao_W22b').value:='0.01'; // Valor dedução para redução da Base de Cálculo
    aDs.Campo('vOutro_W22c').value:='0.01'; // Valor outras retenções
    aDs.Campo('vDescIncond_W22d').value:='0.01'; // Valor desconto incondicionado
    aDs.Campo('vDescCond_W22e').value:='0.01'; // Valor desconto condicionado
    aDs.Campo('vISSRet_W22f').value:='0.01'; // Valor total retenção ISS
    aDs.Campo('cRegTrib_W22g').value:='1'; // Código do Regie especial de tributação

    // A partir do manual 4.0 mais opções fora disponibilizadas (ver manual)
    aDs.Campo('modFrete_X02').Value := '0'; // Modalidade do Frete
  end;

  // Dados De Cobrança
  procedure DadosCobranca(aDs : TspdNFeDataSets);
  Var i : integer;
    _Data :  TDateTime;
  begin
    //1 - Fatura por NFe
    aDs.Campo('nFat_Y03').Value := '2000'; // Número da Farura
    aDs.Campo('vOrig_Y04').Value := '1000.00'; // Valor Original da Fatura
    aDs.Campo('vDesc_Y05').Value := '100.00'; // Valor do Desconto
    aDs.Campo('vLiq_Y06').Value := '900.00'; // Valor Líquido da Fatura

    _Data := Date;

    // 1 Fatura  - 3 Duplicatas //
    for i := 1 to 3 do
    begin
      // Duplicatas //
      aDs.IncluirCobranca;
      aDs.Campo('nDup_Y08').Value := IntToStr(i); // Número da Duplicata
      aDs.Campo('dVenc_Y09').Value := FormatDateTime('YYYY-MM-DD',_Data); // Data de Vencimento da Duplicata
      aDs.Campo('vDup_Y10').Value := '900.00'; // Valor da Duplicata
      aDs.SalvarCobranca;

      //Incrementa a data das duplicatas.
      _data := IncMonth(_Data,1);
    end;
  end;

  // Dados Adicionais da NFe - Observações
  procedure DadosAdicionais(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('infAdFisco_Z02').Value := 'OBSERVACAO TESTE DA DANFE - FISCO'; // Interesse do Fisco
    aDs.Campo('infCpl_Z03').Value := 'OBSERVACAO TESTE DA DANFE - CONTRIBUINTE'; // Interesse da Empresa
  end;

  // Veículos Novos
  procedure VeiculosNovos(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('tpOp_J02').Value      := '1';                  // Tipo da operacao
    aDs.Campo('chassi_J03').Value    := '9D2KC08104R026030';  // Chassi do veiculo
    aDs.Campo('cCor_J04').Value      := '1234';               // Cor
    aDs.Campo('xCor_J05').Value      := 'Preto prata';        // Descricao da Cor
    aDs.Campo('pot_J06').Value       := '2000';               // Potencia Motor
    aDs.Campo('cilin_J07').Value     := '20';                 // Cilindradas
    aDs.Campo('pesoL_J08').Value     := '1000';               // Peso Liquido
    aDs.Campo('pesoB_J09').Value     := '1000';               // Peso Bruto
    aDs.Campo('nSerie_J10').Value    := '123456789';          // Serial serie
    aDs.Campo('tpComb_J11').Value    := '123456789';           // Tipo de combustivel
    aDs.Campo('nMotor_J12').Value    := '1234567890';         // Numero de Motor
    aDs.Campo('CMT_J13').Value       := '123456789';          // Capacidade Maxima de Tracao
    aDs.Campo('dist_J14').Value      := '1234';               // Distancia entre eixos
    //aDs.Campo('RENAVAM_J15').Value   := '123456789';          // RENAVAM
    aDs.Campo('anoMod_J16').Value    := '1234';               // Ano Modelo de Fabricacao
    aDs.Campo('anoFab_J17').Value    := '1234';               // Ano de Fabricacao
    aDs.Campo('tpPint_J18').Value    := '1';                  // Tipo de Pintura
    aDs.Campo('tpVeic_J19').Value    := '99';                 // Tipo de Veiculo
    aDs.Campo('espVeic_J20').Value   := '1';                  // Especie de Veiculo
    aDs.Campo('VIN_J21').Value       := 'N';                  // Condicao do VIN
    aDs.Campo('condVeic_J22').Value  := '1';                  // Condicao do Veiculo
    aDs.Campo('cMod_J23').Value      := '999999';             // Codigo Marca Modelo
    aDs.Campo('cCorDENATRAN_J24').Value := '02';              // Codigo da Cor (Regra DENATRAN)
    aDs.Campo('lota_J25').Value      := '5';                  // Capacidade Maxima de Lotacao
    aDs.Campo('tpRest_J26').Value    := '0';                  // Restricao
  end;

  procedure Recopi(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('nRECOPI_L109').Value  := '12345678901234567890';                 // Numero do RECOPI
  end;

  //Armamento
  procedure Armamento(aDs : TspdNFeDataSets);
  begin
    aDs.IncluirPart('L');
    aDs.Campo('tpArma_L02').Value := '0';                  // 0 - Uso permitido; 1 - Uso restrito
    aDs.Campo('nSerie_L03').Value := '123456789';          // Número de série da arma
    aDs.Campo('nCano_L04').Value  := '123456789';          // Número de série da cano
    aDs.Campo('descr_L05').Value  := 'Descricao completa'; // Descrição completa da arma
    aDs.SalvarPart('L');
    //aDs.Campo('nRECOPI_L109').Value  := '12345678901234567980';             // Numero do RECOPI
  end;

  //Cana de Açúcar
  procedure CanaAcucar(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('safra_ZC02').Value   := '2010'; // Identificação da safra
    aDs.Campo('ref_ZC03').Value   := '12/2010'; // Mês e ano de referência
    aDs.Campo('qTotMes_ZC07').Value   := '1000.00'; // Quantidade Total do Mês
    aDs.Campo('qTotAnt_ZC08').Value   := '1000.00'; // Quantidade Total Anterior
    aDs.Campo('qTotGer_ZC09').Value   := '2000.00'; // Quantidade Total Geral

    aDs.IncluirPart('FORDIA');
    aDs.Campo('dia_ZC05').Value   := '10'; // Dia
    aDs.Campo('qtde_ZC06').Value   := '1000'; // Quantidade
    aDs.SalvarPart('FORDIA');

    aDs.IncluirPart('FORDIA');
    aDs.Campo('dia_ZC05').Value   := '11'; // Dia
    aDs.Campo('qtde_ZC06').Value   := '1000'; // Quantidade
    aDs.SalvarPart('FORDIA');

    aDs.IncluirPart('DEDUC');
    aDs.Campo('xDed_ZC11').Value := 'descricao da deducao'; // Descrição da Dedução
    aDs.Campo('vDed_ZC12').Value := '0.01'; // Valor da Dedução
    aDs.Campo('vFor_ZC13').Value := '0.01'; // Valor dos Fornecimentos
    aDs.Campo('vTotDed_ZC14').Value := '0.01'; // Valor Total da Dedução
    aDs.Campo('vLiqFor_ZC15').Value := '0.01'; // Valor Líquido dos Fornecimentos
    aDs.SalvarPart('DEDUC');
    //aDs.Campo('nRECOPI_L109').Value  := '12345678901234567890'; // Numero do RECOPI
  end;

  //Combustíveis
  procedure Combustiveis(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('cProdANP_L102').Value      := '210203001';   // tam-(9)  Codigo de produto da ANP
    if aDs.Campo('cProdANP_L102').AsString = '210203001' then
      aDs.Campo('pMixGN_L102a').Value       := '12';   // Percentual de Gás Natural para o produto
    aDs.Campo('CODIF_L103').Value         := '111111111111111111111';        // tam-(21) Codigo  de  autorizacao registro do CODIF
    aDs.Campo('qTemp_L104').Value         := '30000.0000';        // tam-(16) Quantidade de combustível faturada a temperatura ambiente
    aDs.Campo('UFCons_L120').Value        := 'SP';          // tam-(2)  Sigla da UF de consumo
    aDs.Campo('qBCProd_L106').Value       := '20055.0000';        // tam-(16) BC da CIDE
    aDs.Campo('vAliqProd_L107').Value     := '6.0000';        // tam-(15) Valor da alíquota da CIDE
    aDs.Campo('vCIDE_L108').Value         := '1203.30';        // tam-(15) Valor da CIDE
    //aDs.Campo('nRECOPI_L109').Value       := '12345678901234567890';              // Numero do RECOPI
  end;

  //Medicamentos
  procedure Medicamentos(aDs : TspdNFeDataSets);
  begin
    aDs.IncluirPart('K');
    aDs.Campo('nLote_K02').Value   := '12345678901234567890'; //Número do Lote do Medicamento e de matérias-primas farmacêuticas
    aDs.Campo('qLote_K03').Value   := '100'; // Quantidade de Produto no Lote das matérias-primas farmacêuticas
    aDs.Campo('dFab_K04').Value    := '2009-01-01'; // Data de Fabricação
    aDs.Campo('dVal_K05').Value    := '2009-03-01'; // Data de Validade
    aDs.Campo('vPMC_K06').Value    := '10.00'; // Preço Máximo Consumidor
    aDs.SalvarPart('K');
    //aDs.Campo('nRECOPI_L109').Value  := '12345678901234567890';              // Numero do RECOPI
  end;

  //Exportação
  procedure Exportacao(aDs : TspdNFeDataSets);
  begin
    aDs.Campo('UFSaidaPais_ZA02').Value := 'SP'; // Sigla da UF onde ocorrerá o Embarque dos produtos
    aDs.Campo('xLocExporta_ZA03').Value := 'São Paulo'; // Descrição do Local de Embarqueou ou de transposição de fronteira
    aDs.Campo('xLocDespacho_ZA04').Value := 'Vila funda'; //  Descrição do local de despacho
  end;

  //Transporte
  procedure Transporte(aDs : TspdNFeDataSets);
  var
    i: Integer;
  begin
    aDs.Campo('modFrete_X02').Value := '0'; // Modalidade do Frete
    aDs.Campo('CNPJ_X04').Value := '03150059000154'; // CNPJ
    aDs.Campo('xNome_X06').Value := 'ANDRE MARCIANO'; // Razão Social ou nome
    aDs.Campo('IE_X07').Value := '280589948'; // Inscrição Estadual
    aDs.Campo('xEnder_X08').Value := 'AVE PANAMA'; //Endereço completo
    aDs.Campo('xMun_X09').Value := 'IVINHEMA'; // Nome do município
    aDs.Campo('UF_X10').Value := 'MS'; // Sigla da UF
    aDs.Campo('placa_X19').Value := 'ACB0908'; // Placa do veículo
    aDs.Campo('uf_X20').Value := 'PR'; // Sigla da UF
    aDs.Campo('rntc_X21').Value := '123456'; // Registro Nacional do Transportador
    aDs.Campo('qVol_X27').Value := '1'; // Quantidade de Volumes Transportados
    aDs.Campo('esp_X28').Value := 'ESPECIE'; // Espécie dos Volumes Transportados
    aDs.Campo('marca_X29').Value := 'MARCA'; // Marca dos Volumes Transportados
    aDs.Campo('nVol_X30').Value := '1'; // Numeração dos Volumes Transportados
    aDs.Campo('pesoL_X31').Value := '1000'; // Peso Líquido em Kg
    aDs.Campo('pesoB_X32').Value := '1000'; // Peso Bruto em Kg

    for I := 1 to 3 do
    begin
      aDs.IncluirPart('LACRE');
      aDs.Campo('nLacre_X34').Value := '12345' + IntToStr(i); // Número dos Lacres
      aDs.SalvarPart('LACRE');
    end;
  end;

Var
  i : Integer;
begin
	try
	  spdNFeDataSets.LoteNFe.Clear;
	  spdNFeDataSets.Incluir; // Inicia a insercao de dados na NFe
		DadosDoNFe(spdNFeDataSets);
		DadosDoEmitente(spdNFeDataSets);
		DadosDoDestinatario(spdNFeDataSets);
    DadosAutorizadosBaixarXML(spdNFeDataSets);

		for i := 1 to 1 do// experimente aumentar o numero de iterações para ter mais itens na nota
		begin
		  spdNFeDataSets.IncluirItem;
		  DadosDoItem(i,spdNFeDataSets);

		  case rgRamosEspecificos.ItemIndex of
        1: VeiculosNovos(spdNFeDataSets);
        2: Armamento(spdNFeDataSets);
        3: CanaAcucar(spdNFeDataSets);
        4: Combustiveis(spdNFeDataSets);
        5: Medicamentos(spdNFeDataSets);
		  end;
		  spdNFeDataSets.SalvarItem;
		end;

		DadosTotalizadores(spdNFeDataSets);

		if cbTransportadora.Checked then
		  Transporte(spdNFeDataSets);

		DadosAdicionais(spdNFeDataSets);

		if cbFatDup.Checked then
		  DadosCobranca(spdNFeDataSets);

	  spdNFeDataSets.Salvar; // Salva DataSets e Converte em XML montando um LOTE de XMLS a ser assinados

	  if fTipoEmissao = '1' then
	  begin
      fNFe := spdNFeDataSets.LoteNFe.GetText;  //Copia XML que está Componente p/ Field fNFe
      mmXmlNota.Lines.Text := fNFe;
      FUtils.SaveToFile(fNFe, ExtractFilePath(ParamStr(0)) + 'NotaaAssinar.xml');
      wbNotaGerada.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaaAssinar.xml');
      edtChaveNota.Text := Copy(spdNFeDataSets.Campo('Id_A03').AsString,4,44); //Copia o ID da NFe p/ o Edit
	  end;

	  if ((fTipoEmissao = '2') or (fTipoEmissao = '5'))  then
    begin
      fNFeFS := spdNFeDataSets.LoteNFe.GetText;  //Copia XML que está Componente p/ Field fNFeFS
      mmXMLNotaFS.Lines.Text := fNFeFS;
      FUtils.SaveToFile(fNFeFS, ExtractFilePath(ParamStr(0)) + 'NotaaAssinarFS.xml');
      wbXMLNotaFS.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaaAssinarFS.xml');
      edtChaveEnvServEstFS.Text := Copy(spdNFeDataSets.Campo('Id_A03').AsString,4,44); //Copia o ID da NFe p/ o Edit
	  end;
	except
  	spdNFeDataSets.Cancelar;
	end;
end;

function TfrmPrincipal.GetCodigoUF(const aIndexUf: integer): string;
begin
  case aIndexUf of
    0 : Result := '12';//AC
    1 : Result := '27';//AL
    2 : Result := '13';//AM
    3 : Result := '16';//AP
    4 : Result := '29';//BA
    5 : Result := '23';//CE
    6 : Result := '53';//DF
    7 : Result := '32';//ES
    8 : Result := '52';//GO
    9 : Result := '21';//MA
    10 : Result := '31';//MG
    11 : Result := '50';//MS
    12 : Result := '51';//MT
    13 : Result := '15';//PA
    14 : Result := '25';//PB
    15 : Result := '26';//PE
    16 : Result := '22';//PI
    17 : Result := '41';//PR
    18 : Result := '33';//RJ
    19 : Result := '24';//RN
    20 : Result := '11';//RO
    21 : Result := '14';//RR
    22 : Result := '43';//RS
    23 : Result := '42';//SC
    24 : Result := '28';//SE
    25 : Result := '35';//SP
    26 : Result := '17';//TO
  end;
end;

function TfrmPrincipal.GetFusoUF(const aIndexUf: integer): string;
begin
  case aIndexUf of
    0 : Result := '-04:00';//AC
    1 : Result := '-03:00';//AL
    2 : Result := '-04:00';//AM
    3 : Result := '-03:00';//AP
    4 : Result := '-03:00';//BA
    5 : Result := '-03:00';//CE
    6 : Result := '-03:00';//DF
    7 : Result := '-03:00';//ES
    8 : Result := '-03:00';//GO
    9 : Result := '-03:00';//MA
    10 : Result := '-03:00';//MG
    11 : Result := '-04:00';//MS
    12 : Result := '-04:00';//MT
    13 : Result := '-03:00';//PA
    14 : Result := '-03:00';//PB
    15 : Result := '-03:00';//PE
    16 : Result := '-03:00';//PI
    17 : Result := '-03:00';//PR
    18 : Result := '-03:00';//RJ
    19 : Result := '-03:00';//RN
    20 : Result := '-04:00';//RO
    21 : Result := '-04:00';//RR
    22 : Result := '-02:00';//RS
    23 : Result := '-03:00';//SC
    24 : Result := '-03:00';//SE
    25 : Result := '-03:00';//SP
    26 : Result := '-03:00';//TO
  end;
end;

function TfrmPrincipal.ValidarCamposEmitente: Boolean;
begin
  if((edtRazaoSocialEmit.Text = '')or(edtEnderecoEmitente.Text = '')or(edtNumeroEmitente.Text = '')or
     (edtCEPEmit.Text = '')or(edtNomeCidadeEmit.Text = '')or(edtIBGEEmit.Text = '')or
     (edtNomeFantasiaEmit.Text = '')or(edtCpfCnpjEmit.Text = '')or(edtPaisEmit.Text = '')or
     (edtIBGEPaisEmit.Text = '')or(edtBairro.Text = '')or(edtTelefoneEmit.Text = '')or
     (edtIEEmit.Text = '')or(cbCRTEmit.Text = '')) then
  begin
    ShowMessage('Preencha todos os campos obrigatórios!');
    Result := False;
  end
  else
  begin
    Result := true;
  end;
end;

function TfrmPrincipal.ValidarCamposDestinatario:Boolean;
begin
  if cbAmbiente.ItemIndex = 0 then
  begin
    if((edtRazaoSocialDest.Text = '')or(edtEnderecoDest.Text = '')or(edtNumeroDest.Text = '')or
       (edtCepDest.Text = '')or(edtNomeCidadeDest.Text = '')or(edtIBGECidadeDest.Text = '')or
       (edtPais.Text = '')or(edtIBGEPaisDest.Text = '')or(edtTelefoneDest.Text = '')) then
    begin
      ShowMessage('Preencha todos os campos obrigatórios!');
      Result := False;
    end
    else
      Result := true;
  end
  else
  begin
    if((edtRazaoSocialDest.Text = '')or(edtEnderecoDest.Text = '')or(edtNumeroDest.Text = '')or
     (edtCepDest.Text = '')or(edtNomeCidadeDest.Text = '')or(edtIBGECidadeDest.Text = '')or
     (edtPais.Text = '')or(edtIBGEPaisDest.Text = '')or(edtTelefoneDest.Text = '')or(edtIEDest.Text = '')) then
    begin
      ShowMessage('Preencha todos os campos obrigatórios!');
      Result := False;
    end
    else
      Result := true;
  end;
end;

function TfrmPrincipal.LoadXmlDestinatario(aChaveNFe : String) : WideString;
Var
  _fileName : String;
begin
  _fileName := FUTils.ExpandPath(spdNFe.DiretorioXmlDestinatario) + edtChaveNota.Text + '-nfe.xml';

  if Not FileExists(_fileName) then
    raise Exception.CreateFmt('Não foi possível encontrar o arquivo XML %s .Verifique se NFe está Autorizada.',[_fileName]);

  Result := FUtils.LoadFromFile(_fileName);
end;

procedure TfrmPrincipal.btnAvancarClick(Sender: TObject);
begin
  BtnAvancarControl;
end;

procedure TfrmPrincipal.btnVoltarClick(Sender: TObject);
begin
  BtnVoltarControl;
end;

procedure TfrmPrincipal.lblMaisTipoCertificadoClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/TipoCertificado'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.LoadConfig;
var
  _versaoRtm:String;
begin
  fCnpjSoftwareHouse := '12345678901234';
  spdNFe.ConfigurarSoftwareHouse(fCnpjSoftwareHouse, ''); //***Configure com o CNPJ de sua Software House
  spdNFe.LoadConfig;

  //Versão Manual
  case spdNFe.VersaoManual of
    vm202a: cbVersao.ItemIndex := versao_2_02a;
    vm30:
      begin
        cbVersao.ItemIndex := versao_3_0;
        spdNFeDataSets.VersaoEsquema := pl_005d;
        _versaoRtm := 'Vm30';
      end;
    vm40:
      begin
        cbVersao.ItemIndex := versao_4_0;
        spdNFeDataSets.VersaoEsquema := pl_006j;
        _versaoRtm := 'Vm40';
      end;
    vm50:
      begin
        cbVersao.ItemIndex := versao_5_0;
        spdNFeDataSets.VersaoEsquema := pl_006q;
        _versaoRtm := 'Vm50';
      end;
    vm50a:
      begin
        cbVersao.ItemIndex := versao_5_0a;
        spdNFeDataSets.VersaoEsquema := pl_008h;
        _versaoRtm := 'Vm50a';
      end;
    vm60:
      begin
        cbVersao.ItemIndex := versao_6_0;
        spdNFeDataSets.VersaoEsquema := pl_009;
        _versaoRtm := 'Vm60';
      end;
  end;
  spdNFeDataSets.XMLDicionario := spdNFe.DiretorioTemplates + 'Conversor\NFeDataSets.xml';

  //Dados Inutilização
  edtAnoInut.Text           := '18';
  edtModeloInut.Text        := '55';
  edtSerieInut.Text         := '1';
  edtNfeIniInut.Text        := '1';
  edtNFeFinInut.Text        := '10';
  edtJustificativaInut.Text := 'Exemplo de inutilizacao da NFe';

  LoadDadosEmitente;
  LoadDadosDestinatario;

  //Certificado
  edtPinCode.Text := EmptyStr;
  case spdNFe.TipoCertificado of
    ckActiveDiretory: cbTipoCertificado.ItemIndex := 0;
    ckFile: cbTipoCertificado.ItemIndex := 1;
    ckLocalMachine: cbTipoCertificado.ItemIndex := 2;
    ckMemory: cbTipoCertificado.ItemIndex := 3;
    ckSmartCard:
    begin
      cbTipoCertificado.ItemIndex := 4;
      edtPinCode.Text := spdNFe.PinCode;
    end;
  end;

  cbConfigUF.ItemIndex := cbConfigUF.Items.IndexOf(spdNFe.UF);
  edtCNPJ.Text:= spdNFe.CNPJ;
  edtCpfCnpjEmit.Text := edtCNPJ.Text;

  //Ambiente
  case spdNFe.Ambiente of
    akHomologacao: cbAmbiente.ItemIndex := 0;
    akProducao: cbAmbiente.ItemIndex := 1;
  end;

  cbNomeCertificado.Clear;
  spdNFe.ListarCertificados(cbNomeCertificado.Items);
  cbNomeCertificado.ItemIndex := cbNomeCertificado.Items.IndexOf(Trim(spdNFe.NomeCertificado.Text));

  edtServHomolog.Text := spdNFe.ArquivoServidoresHom;
  edtServProd.Text := spdNFe.ArquivoServidoresProd;

  if spdNFe.DiretorioXmlDestinatario = 'XmlDestinatario\' then
    edtConfigXmlDest.Text := FUtils.GetActualDir + spdNFe.DiretorioXmlDestinatario
  else
    edtConfigXmlDest.Text := spdNFe.DiretorioXmlDestinatario;

  if spdNFe.DiretorioLog = 'Log\' then
    edtDiretorioLog.Text := FUtils.GetActualDir + spdNFe.DiretorioLog
  else
    edtDiretorioLog.Text := spdNFe.DiretorioLog;

  edtConfigUsu.Text := spdNFe.Usuario;
  edtConfigSenha.Text := spdNFe.Senha;
  edtConfigProxy.Text := spdNFe.Proxy;
  edtTimeOut.Text := IntToStr(spdNFe.TimeOut);
  edtMaxSizeLoteEnvio.Text := IntToStr(spdNFe.MaxSizeLoteEnvio);
  edtDirEsquemas.Text := spdNFe.DiretorioEsquemas;
  edtDirTemplates.Text := spdNFe.DiretorioTemplates;

  if spdNFe.IgnoreInvalidCertificates then
    cbIgnoreInvCert.Checked := True
  else
    cbIgnoreInvCert.Checked := False;

  if spdNFe.AnexarDanfePDF then
    cbAnexarDanfePdf.Checked := True
  else
    cbAnexarDanfePdf.Checked := False;

  if spdNFe.ValidarEsquemaAntesEnvio then
    cbValidEsquema.Checked := True
  else
    cbValidEsquema.Checked := False;

  //Danfe
  edtFraseContingencia.Text := spdNFe.DanfeSettings.FraseContingencia;
  edtFraseHomolog.Text := spdNFe.DanfeSettings.FraseHomologacao;

  if spdNFe.DanfeSettings.ModeloRetrato = 'Templates\'+_versaoRtm+'\Danfe\retrato.rtm' then
    edtModRetrato.Text := FUtils.GetActualDir + spdNFe.DanfeSettings.ModeloRetrato
  else
    edtModRetrato.Text := spdNFe.DanfeSettings.ModeloRetrato;

  if spdNFe.DanfeSettings.ModeloPaisagem = 'Templates\'+_versaoRtm+'\Danfe\paisagem.rtm' then
    edtModPaisagem.Text := FUtils.GetActualDir + spdNFe.DanfeSettings.ModeloPaisagem
  else
    edtModPaisagem.Text := spdNFe.DanfeSettings.ModeloPaisagem;

  edtCopias.Text := IntToStr(spdNFe.DanfeSettings.QtdeCopias);
  edtLineDelimiter.Text := spdNFe.DanfeSettings.LineDelimiter;
  edtLogoEmitente.Text := spdNFe.DanfeSettings.LogotipoEmitente;

  //EmailSettings
  edtEmailConfigServ.Text := spdNFe.EmailSettings.ServidorSmtp;
  edtEmailConfigPorta.Text := IntToStr(spdNFe.EmailSettings.Porta);
  //Autenticação
  if spdNFe.EmailSettings.Autenticacao then
    cbEmailConfigAut.Checked := True
  else
    cbEmailConfigAut.Checked := False;

  edtEmailConfigRem.Text := spdNFe.EmailSettings.EmailRemetente;
  edtEmailConfigDest.Text := spdNFe.EmailSettings.EmailDestinatario;
  edtEmailConfigCc.Text := spdNFe.EmailSettings.CC;
  edtEmailConfigCco.Text := spdNFe.EmailSettings.CCo;
  edtEmailConfigAssunto.Text := spdNFe.EmailSettings.Assunto;
  mmEmailConfigMens.Lines.Text := spdNFe.EmailSettings.Mensagem;
  edtEmailConfigUsu.Text := spdNFe.EmailSettings.Usuario;
  meEmailConfigSenha.Text := spdNFe.EmailSettings.Senha;

  SetNotaBasica;
  SetCombosImpressao;
  CarregarInfAuxiliares;
end;

procedure TfrmPrincipal.btnStatusClick(Sender: TObject);
begin
  btnStatus.Enabled := False;
  UpdateStatus('Verificando status do serviço...');
  try
    try
      ///////Utilização do componente para verificar status do serviço\\\\\\\
      mmStatus.Lines.Text := RemoveCaracterEsp40(spdNFe.StatusDoServico);
      ///////////////////////////////////////////////////////////////////////

      wbStatusServico.Navigate(fCaminhoLogRet);
      edtcStatStatusServ.Text := GetValueTag('cStat',mmStatus.Lines.Text);
      edtMotivoStatusServ.Text := GetValueTag('xMotivo',mmStatus.Lines.Text);
      btnLogEnvio.Enabled := True;
      btnLogRetorno.Enabled := True;

      UpdateStatus(' OK', False, True);
    finally
      btnStatus.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnStatus.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnServHologClick(Sender: TObject);
begin
  if odlgServHomolog.Execute then
    edtServHomolog.Text := odlgServHomolog.FileName;
end;

procedure TfrmPrincipal.btnServProdClick(Sender: TObject);
begin
  if odlgServProd.Execute then
    edtServProd.Text := odlgServProd.FileName;
end;

procedure TfrmPrincipal.btnModRetratoClick(Sender: TObject);
begin
  if odlgModRetrato.Execute then
    edtModRetrato.Text := odlgModRetrato.FileName;
end;

procedure TfrmPrincipal.btnModPaisagemClick(Sender: TObject);
begin
  if odlgModPaisagem.Execute then
    edtModPaisagem.Text := odlgModPaisagem.FileName;
end;

procedure TfrmPrincipal.btnLogoEmitenteClick(Sender: TObject);
begin
  if odlgLogoEmit.Execute then
    edtLogoEmitente.Text := odlgLogoEmit.FileName;
end;

procedure TfrmPrincipal.btnSetarPropriedadesClick(Sender: TObject);
begin
  if((edtCNPJ.Text = '') or
     (cbConfigUF.Text = '') or
     (edtServHomolog.Text = '') or
     (edtServProd.Text = '') or
     (edtModRetrato.Text = '') or
     (edtModPaisagem.Text = '') or
     (edtConfigXmlDest.Text = '')) then
  begin
    ShowMessage('Preencha todos os campos obrigatórios!')
  end
  else
  begin
    //Certificado
    case cbTipoCertificado.ItemIndex of
      0: spdNFe.TipoCertificado := ckActiveDiretory;
      1: spdNFe.TipoCertificado := ckFile;
      2: spdNFe.TipoCertificado := ckLocalMachine;
      3: spdNFe.TipoCertificado := ckMemory;
      4: spdNFe.TipoCertificado := ckSmartCard;
    end;

    spdNFe.CNPJ := edtCNPJ.Text;
    spdNFe.UF := cbConfigUF.Text;

    //Ambiente
    case cbAmbiente.ItemIndex of
      0: spdNFe.Ambiente := akHomologacao;
      1: spdNFe.Ambiente := akProducao;
    end;

    spdNFe.NomeCertificado.Text := cbNomeCertificado.Text;
    spdNFe.ArquivoServidoresHom := edtServHomolog.Text;
    spdNFe.ArquivoServidoresProd := edtServProd.Text;

    spdNFe.DiretorioXmlDestinatario := edtConfigXmlDest.Text;
    spdNFe.DiretorioLog := edtDiretorioLog.Text;
    spdNFe.Usuario := edtConfigUsu.Text;
    spdNFe.Senha := edtConfigSenha.Text;
    spdNFe.Proxy := edtConfigProxy.Text;
    spdNFe.TimeOut := StrToInt(edtTimeOut.Text);
    spdNFe.MaxSizeLoteEnvio := StrToInt(edtMaxSizeLoteEnvio.Text);
    spdNFe.DiretorioEsquemas := edtDirEsquemas.Text;
    spdNFe.DiretorioTemplates := edtDirTemplates.Text;

    if cbIgnoreInvCert.Checked then
      spdNFe.IgnoreInvalidCertificates := True
    else
      spdNFe.IgnoreInvalidCertificates := False;

    if cbAnexarDanfePdf.Checked then
      spdNFe.AnexarDanfePDF := True
    else
      spdNFe.AnexarDanfePDF := False;

    if cbValidEsquema.Checked then
      spdNFe.ValidarEsquemaAntesEnvio := True
    else
      spdNFe.ValidarEsquemaAntesEnvio := False;

    spdNFe.DanfeSettings.FraseContingencia := edtFraseContingencia.Text;
    spdNFe.DanfeSettings.FraseHomologacao := edtFraseHomolog.Text;
    spdNFe.DanfeSettings.QtdeCopias := StrToInt(edtCopias.Text);
    spdNFe.DanfeSettings.LineDelimiter := edtLineDelimiter.Text;
    spdNFe.DanfeSettings.ModeloRetrato := edtModRetrato.Text;
    spdNFe.DanfeSettings.ModeloPaisagem := edtModPaisagem.Text;
    spdNFe.DanfeSettings.LogotipoEmitente := edtLogoEmitente.Text;
  end;
end;

procedure TfrmPrincipal.btnLoadConfigClick(Sender: TObject);
begin
  ///////Utilização dos componentes spdNFe para carregar configurações pré-definidas\\\\\\\
  LoadConfig;
  /////////////////////////////////////////////////////////////////////////////////////////////////////
end;

procedure TfrmPrincipal.btnSaveConfigClick(Sender: TObject);
begin
  ///////Utilização dos componentes spdNFe para salvar configurações\\\\\\\
  if SetConfigPropriedades(spdNFe) then
    spdNFe.SaveConfig;

  LoadConfig;
 /////////////////////////////////////////////////////////////////////////////////////
end;

procedure TfrmPrincipal.UpdateStatus(aMsg: string; Clear : Boolean = true; ReplaceLast : Boolean = False);
begin
  if Clear then
    mmStatusGeral.Clear;
  if ReplaceLast then
    mmStatusGeral.Lines[mmStatusGeral.Lines.Count-1] := mmStatusGeral.Lines[mmStatusGeral.Lines.Count-1] + aMsg
  else
    mmStatusGeral.Lines.Text := aMsg;
  mmStatusGeral.Refresh;
end;

procedure TfrmPrincipal.spdNFeLog(const aNome, aID, aFileName: String);
begin
  if aNome = 'ped-sta' then
  begin
    fCaminhoLogEnvio := aFileName;
    lblNomeArquivoLogEnvio.Caption := ExtractFileName(aFileName);
  end;

  if aNome = 'sta' then
  begin
    fCaminhoLogRet := aFileName;
    lblNomeArquivoLogRetorno.Caption := ExtractFileName(aFileName);
  end;

  if aNome = 'rec' then
  begin
    case AnsiIndexStr(fBtnEnviarDisparado,['EnviarSefazNormal','EnviarSefazFS']) of
      0: wbNotaEnviada.Navigate(aFileName);
      1: wbEnviarServEstFS.Navigate(aFileName);
    end;
  end;

  if aNome = 'pro-rec' then
  begin
    case AnsiIndexStr(fBtnReciboDisparado,['ConsRecNormal','ConsRecFS']) of
      0: wbNotaConsulta.Navigate(aFileName);
      1: wbConsultarFS.Navigate(aFileName);
    end;
  end;

  if aNome = 'sit' then
  begin
    case AnsiIndexStr(fBtnChaveDisparado,['ConsChaveNormal','ConsChaveFS']) of
      0: wbNotaConsulta.Navigate(aFileName);
      1: wbConsultarFS.Navigate(aFileName);
    end;
  end;

  if aNome = 'ped-can' then
    fCancEnvioDest := aFileName;

  if aNome = 'can' then
  begin
    fCancRetDest := aFileName;
    wbCancelar.Navigate(aFileName);
  end;

  if aNome = 'inu' then
    wbInutilizar.Navigate(aFileName);

  if aNome = 'mandest-ret' then
    wbManifestacao.Navigate(aFileName);

  if aNome = 'caneve-ret' then
  begin
    fCancNFeEvento := aFileName;
    wbCancelarNFeEvento.Navigate(aFileName);
  end;

  if aNome = 'down-ret' then
    wbDownloadNFe.Navigate(aFileName);
end;

procedure TfrmPrincipal.btnXmlDestClick(Sender: TObject);
var
  _diretorio : String;
begin
  _diretorio := FUtils.BrowseDialog('Selecione um diretório:', 0);

  if _diretorio <> '' then
    edtConfigXmlDest.Text := _diretorio;
end;

procedure TfrmPrincipal.btnDiretorioLogClick(Sender: TObject);
var
  _diretorio : String;
begin
  _diretorio := FUtils.BrowseDialog('Selecione um diretório:', 0);

  if _diretorio <> '' then
    edtDiretorioLog.Text := _diretorio;
end;

procedure TfrmPrincipal.btnDirEsquemasClick(Sender: TObject);
var
  _diretorio : String;
begin
  _diretorio := FUtils.BrowseDialog('Selecione um diretório:', 0);

  if _diretorio <> '' then
    edtDirEsquemas.Text := _diretorio;
end;

procedure TfrmPrincipal.btnDirTemplatesClick(Sender: TObject);
var
  _diretorio : String;
begin
  _diretorio := FUtils.BrowseDialog('Selecione um diretório:', 0);

  if _diretorio <> '' then
    edtDirTemplates.Text := _diretorio;
end;

procedure TfrmPrincipal.btnObterValidadeClick(Sender: TObject);
begin
  spdNFe.NomeCertificado.Text := cbNomeCertificado.Text;
  ShowMessage('Certificado válido até ' + DateToStr(spdNFe.GetVencimentoCertificado) + ' as ' + TimeToStr(spdNFe.GetVencimentoCertificado) + '.');
end;

procedure TfrmPrincipal.btnAssinarNotaClick(Sender: TObject);
begin
  btnAssinarNota.Enabled := False;
  try
    try
      UpdateStatus('Assinando NFe...');

      ///////Utilização do componente para assinar a nota gerada\\\\\\\
      fNFe := spdNFe.AssinarNota(mmXmlNota.Lines.Text);
      /////////////////////////////////////////////////////////////////

      UpdateStatus(' OK', False, True);
      mmXmlAssinado.Lines.Text := fNFe;

      pcXmlAssinado.TabIndex := 1;
      pcXmlAssinado.TabIndex := 0;

      FUtils.SaveToFile(fNFe, ExtractFilePath(ParamStr(0)) + 'NotaAssinada.xml');
      wbXmlAssinado.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaAssinada.xml');

      if not btnAvancar.Enabled then
        btnAvancar.Enabled := True;

      if not btnValidador.Enabled then
        btnValidador.Enabled := True;
    finally
      btnAssinarNota.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnAssinarNota.Enabled := True;
    raise;
  end;

end;

procedure TfrmPrincipal.btnEnviarNotaClick(Sender: TObject);
var
  _XML: string;
begin
  spdNFe.ValidarEsquemaAntesEnvio := cbValidEsquema.Checked;
  btnEnviarNota.Enabled := False;
  try
    try
      UpdateStatus('Enviando NFe...');

      fBtnEnviarDisparado := 'EnviarSefazNormal';
      ///////Utilização do componente para enviar a nota ao Sefaz\\\\\\\
      if (cbVersao.ItemIndex < versao_5_0a) then
        _XML := RemoveCaracterEsp40(spdNFe.EnviarNF('00001', fNFe, false))
      else
      begin
        if (rbEnvSinc.Checked = False) then
          _XML := RemoveCaracterEsp40(spdNFe.EnviarNF('00001', fNFe, chkCompactado.Checked))
        else
          _XML := RemoveCaracterEsp40(spdNFe.EnviarNFSincrono('00001', fNFe, chkCompactado.Checked));
      end;
      //////////////////////////////////////////////////////////////////
      mmEnviarNota.Lines.Text := _XML;
      UpdateStatus(' OK', False, True);
      edtNumeroRecibo.Text := GetValueTag('nRec',_XML);

      edtStatusEnviar.Text := GetValueTag('cStat',_XML);
      edtMotivoEnviar.Text := GetValueTag('xMotivo',_XML);

      edtNumeroReciboConsulta.Text := edtNumeroRecibo.Text;
      edtChaveNotaConsulta.Text := edtChaveNota.Text;

      //103 retorno do envio Assincrono e 104 retorno do envio Síncrono
      if (GetValueTag('cStat', _XML) = '103') or
        (GetValueTag('cStat', _XML) = '104') then //Lote recebido com sucesso
        btnAvancar.Enabled := True;
    finally
      btnEnviarNota.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnEnviarNota.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnConsultarReciboClick(Sender: TObject);
var
  _XML, _status : string;
begin
  btnConsultarRecibo.Enabled := False;
  try
    try
      UpdateStatus('Consultando Recibo da NFe...');

      fBtnReciboDisparado := 'ConsRecNormal';

      ///////Utilização do componente para consultar o recibo da nota\\\\\\\
      _XML := RemoveCaracterEsp40(spdNFe.ConsultarRecibo(edtNumeroReciboConsulta.Text));
      //////////////////////////////////////////////////////////////////////
      mmConsultarRecibo.Lines.Text := _XML;
      UpdateStatus(' OK', False, True);
      edtProtocoloAutorizacao.Text := GetValueTag('nProt',_XML);

      _status := GetValueTag('infProt',_XML);

      edtStatusConsulta.Text := GetValueTag('cStat', _status);
      edtMotivoConsulta.Text := GetValueTag('xMotivo',_status);

      if GetValueTag('cStat',_status) = '100' then //Autorizado o uso da NF-e
      begin
        edtChaveCancelar.Text := edtChaveNotaConsulta.Text;
        edtProtCancelar.Text := edtProtocoloAutorizacao.Text;
        edtJustificativaCanc.Text := 'Exemplo de cancelamento da NFe';
        edtChaveManisfestacao.Text := edtChaveNotaConsulta.Text;
        edtChaveDownload.Text := edtChaveNotaConsulta.Text;
        edtChaveCancNFeEvento.Text := edtChaveNotaConsulta.Text;
        edtProtCancNFeEvento.Text := edtProtocoloAutorizacao.Text;
        if mmCancelar.Lines.Text <> '' then
        begin
          mmCancelar.Clear;
          wbCancelar.Navigate('about:blank');
          edtStatusCanc.Clear;
          edtMotivoCanc.Clear;

          mmCancDest.Clear;
          wbCancDest.Navigate('about:blank');
          edtEmailDestCanc.Clear;
          lblCaminhoCancDest.Caption := '';
          btnEnviarCancDest.Enabled := False;
        end;
        btnAvancar.Enabled := True;
      end
      else
      begin
        btnAvancar.Enabled := False;
      end;

    finally
      btnConsultarRecibo.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnConsultarRecibo.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnConsultarChaveClick(Sender: TObject);
var
  _XML, _status, _canc : String;
begin
  btnConsultarChave.Enabled := False;
  try
    try
      UpdateStatus('Consultando NFe...');

      fBtnChaveDisparado := 'ConsChaveNormal';

      ///////Utilização do componente para consultar a chave da nota\\\\\\\
      _XML := RemoveCaracterEsp40(spdNFe.ConsultarNF(edtChaveNotaConsulta.Text));
      /////////////////////////////////////////////////////////////////////
      _canc := GetValueTag('infCanc', _XML);

      if _canc <> '' then
      begin
        edtStatusConsulta.Text := GetValueTag('cStat', _canc);
        edtMotivoConsulta.Text := GetValueTag('xMotivo', _canc);
        btnAvancar.Enabled := False;
      end
      else
      begin
        mmConsultarRecibo.Lines.Text := _XML;
        UpdateStatus(' OK', False, True);
        edtProtocoloAutorizacao.Text := GetValueTag('nProt', _XML);

        _status := GetValueTag('infProt', _XML);

        edtStatusConsulta.Text := GetValueTag('cStat', _status);
        edtMotivoConsulta.Text := GetValueTag('xMotivo', _status);

        if GetValueTag('cStat', _status) = '100' then //Autorizado o uso da NF-e
        begin
          edtChaveCancelar.Text := edtChaveNotaConsulta.Text;
          edtProtCancelar.Text := edtProtocoloAutorizacao.Text;
          edtJustificativaCanc.Text := 'Exemplo de cancelamento da NFe';
          edtChaveManisfestacao.Text := edtChaveNotaConsulta.Text;
          edtChaveDownload.Text := edtChaveNotaConsulta.Text;
          edtChaveCancNFeEvento.Text := edtChaveNotaConsulta.Text;
          edtProtCancNFeEvento.Text := edtProtocoloAutorizacao.Text;
          if mmCancelar.Lines.Text <> '' then
          begin
            mmCancelar.Clear;
            wbCancelar.Navigate('about:blank');
            edtStatusCanc.Clear;
            edtMotivoCanc.Clear;
          end;
          btnAvancar.Enabled := True;
        end
        else
        begin
          btnAvancar.Enabled := False;
        end;
      end;
    finally
      btnConsultarChave.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnConsultarChave.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnEnviarNFeDestClick(Sender: TObject);
var
  i : Integer;
  _lista : String;
begin
  btnEnviarNFeDest.Enabled := False;
  try
    Screen.Cursor := crHourGlass;
    try
      UpdateStatus('Enviando NFe ao destinatário...');

      if edtEmailXmlDest.Text <> '' then
        spdNFe.EmailSettings.EmailDestinatario :=edtEmailXmlDest.Text;

      if clbAnexosEmail.Items.Count = 0 then
      begin
        ///////Utilização do componente para enviar a nota ao destinatário por email\\\\\\\
        spdNFe.EnviarNotaDestinatario(edtChaveNota.Text)
        ///////////////////////////////////////////////////////////////////////////////////
      end
      else
      begin
        for i:=0 to clbAnexosEmail.Items.Count - 1 do
        begin
          if _lista = '' then
          begin
            if clbAnexosEmail.Checked[i] = True then
            _lista := _lista + clbAnexosEmail.Items[i]
          end
          else
          begin
            if clbAnexosEmail.Checked[i] = True then
            _lista := _lista + ',' + clbAnexosEmail.Items[i];
          end;
        end;
        if _lista = '' then
        begin
          edtAnexar.Clear;
          clbAnexosEmail.Clear;
          ///////Utilização do componente para enviar a nota ao destinatário por email\\\\\\\
          spdNFe.EnviarNotaDestinatario(edtChaveNota.Text);
          ///////////////////////////////////////////////////////////////////////////////////
        end
        else
        begin
          ///////Utilização do componente para enviar anexos ao destinatário por email\\\\\\\
          spdNFe.EnviarNotaDestinatarioAnexos('',fCaminhoXmlDest,_lista)
          ///////////////////////////////////////////////////////////////////////////////////
        end;
      end;

      UpdateStatus(' OK', False, True);
    finally
      btnEnviarNFeDest.Enabled := True;
      Screen.Cursor := crDefault;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnEnviarNFeDest.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnValidadorClick(Sender: TObject);
begin
  spdValidadorClientX.Servidor := 'http://validadornfe.tecnospeed.com.br:8181/validadorgui/validar';
  spdValidadorClientX.ModoOperacao := moLocal;
  spdValidadorClientX.ExibirRegrasValidacao := True;
  spdValidadorClientX.TipoResposta := trJSON;
  spdValidadorClientX.LinguagemResposta := tlJavaScript;
  spdValidadorClientX.DiretorioTemplates := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Templates\auditor\';
  spdValidadorClientX.DiretorioEsquemas := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Esquemas\auditor\';
  spdValidadorClientX.DiretorioRegras := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Templates\auditor\Regras\';
  spdValidadorClientX.DiretorioLogErro := '\LogErro\';

  spdValidadorClientX.WidthHtml := 700;
  spdValidadorClientX.HeigthHtml := 500;

  ShowMessage(spdValidadorClientX.ValidarXml(mmXmlAssinado.Text,'|'));
end;

procedure TfrmPrincipal.btnVisualizarClick(Sender: TObject);
begin
  btnVisualizar.Enabled := False;
  try
    try
      UpdateStatus('Gerando visualização do DANFE...');

      fNFe := LoadXmlDestinatario(edtChaveNota.Text);

      ///////Utilização do componente para visualização da DANFE\\\\\\\      
      spdNFe.VisualizarDanfe('00001', fNFe, edtModeloRtm.Text);
      /////////////////////////////////////////////////////////////////
      UpdateStatus(' OK', False, True);
    finally
      btnVisualizar.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnVisualizar.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnImprimirClick(Sender: TObject);
begin
  btnImprimir.Enabled := False;
  try
    try
      UpdateStatus('Imprimindo DANFE...');

      fNFe := LoadXmlDestinatario(edtChaveNota.Text);

      if cbImpressorasDanfe.Text <> '' then
        ///////Utilização do componente para impressão da DANFE\\\\\\\        
        spdNFe.ImprimirDanfe('00001', fNFe, edtModeloRtm.Text, cbImpressorasDanfe.Text)
        /////////////////////////////////////////////////////////////////
      else
        spdNFe.ImprimirDanfe('00001', fNFe, edtModeloRtm.Text,'');

      UpdateStatus(' OK', False, True);
    finally
      btnImprimir.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnImprimir.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnEditarClick(Sender: TObject);
begin
  fNFe := LoadXmlDestinatario(edtChaveNota.Text);

  ///////Utilização do componente para edição da DANFE\\\\\\\  
  spdNFe.EditarModeloDanfe('00000', fNFe, edtModeloRtm.Text);
  ///////////////////////////////////////////////////////////
end;

procedure TfrmPrincipal.btnExportarClick(Sender: TObject);
begin
  btnExportar.Enabled := False;
  try
    try
      UpdateStatus('Exportando DANFE...');

      fNFe := LoadXmlDestinatario(edtChaveNota.Text);

      if edtArqExportDanfe.Text <> '' then
        ///////Utilização do componente para exportar DANFE\\\\\\\        
        spdNFe.ExportarDanfe('00001', fNFe, edtModeloRtm.Text, 1, edtArqExportDanfe.Text)
        //////////////////////////////////////////////////////////
      else
        spdNFe.ExportarDanfe('00001', fNFe, edtModeloRtm.Text);
      UpdateStatus(' OK', False, True);
    finally
      btnExportar.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnExportar.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnLogEnvioClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),'notepad.exe',PChar(fCaminhoLogEnvio),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.btnLogRetornoClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),'notepad.exe',PChar(fCaminhoLogRet),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.btnAbrirXmlDestClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),'notepad.exe',PChar(fCaminhoXmlDest),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisNomeCertificadoClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/NomeCertificado'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisServHomologClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/ServidoresHomo'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisServProdClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/ServidoresProd'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisModRetratoClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/ModeloRetrato'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisModPaisagemClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/ModeloPaisagem'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisVeicNovosClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/VeiculosNovos'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblArmamentoClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/Armamento'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblCanaClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/CanaAcucar'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblCombustiveisClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/Combustiveis'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMedicamentoClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/Medicamento'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisExportacaoClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/NFExportacao'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisNotaRefClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/NFReferenciada'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisNotaConjClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/NFConjugada'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblTransportadoraClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/NFTranportadora'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblFatDupClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/NFFaturaDuplicatas'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisIBGEEmitClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/CodIBGENomeCidade'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisPaisEmitClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/CodIBGENomePais'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisIBGECidadeDestClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/CodIBGENomeCidade'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisIBGEPaisDestClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/CodIBGENomePais'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisConsultarReciboClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/ConsultarRecibo'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisConsultarChaveClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/ConsultarChave'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisNotaBasicaClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/ModelNFBasica'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisStatMotTestClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/TagcStatRet'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisStatMotEnvioClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/TagcStatRet'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisStatMotConsClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/TagcStatRet'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisStatMotCancClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/TagcStatRet'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisInutClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/TagcStatRet'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.btnInutilizarClick(Sender: TObject);
begin
  btnInutilizar.Enabled := False;
  try
    try
      UpdateStatus('Inutilizando NFe...');
      ///////Utilização do componente para inutilizar numeração de NFe\\\\\\\
      mmInutilizar.Lines.Text := RemoveCaracterEsp40(spdNFe.InutilizarNF('',edtAnoInut.Text,edtCNPJ.Text,edtModeloInut.Text,edtSerieInut.Text,edtNfeIniInut.Text,edtNFeFinInut.Text,edtJustificativaInut.Text));
      ///////////////////////////////////////////////////////////////////////

      edtStatInut.Text := GetValueTag('cStat',mmInutilizar.Lines.Text);
      edtMotInut.Text := GetValueTag('xMotivo',mmInutilizar.Lines.Text);

      UpdateStatus(' OK', False, True);
    finally
      btnInutilizar.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnInutilizar.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnAnexarClick(Sender: TObject);
begin
  if odlgAnexos.Execute then
  begin
    edtAnexar.Text := odlgAnexos.FileName;
    clbAnexosEmail.Items.Add(odlgAnexos.FileName);

    if clbAnexosEmail.Checked[clbAnexosEmail.Items.Count - 1] = False then
      clbAnexosEmail.Checked[clbAnexosEmail.Items.Count - 1] := True;
  end;
end;

procedure TfrmPrincipal.btnCancDestClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),'notepad.exe',PChar(ExtractFilePath(ParamStr(0)) + 'CancDest\' + edtChaveCancelar.Text + '-cancdest.xml'),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.btnEnviarCancDestClick(Sender: TObject);
begin
  btnEnviarCancDest.Enabled := False;
  try
    Screen.Cursor := crHourGlass;
    try
      UpdateStatus('Enviando nota de cancelamento ao destinatário...');

      if edtEmailDestCanc.Text <> '' then
        spdNFe.EmailSettings.EmailDestinatario := edtEmailDestCanc.Text;

      ///////Utilização do componente para enviar nota de cancelamento ao destinatário por email\\\\\\\
      spdNFe.EnviarNotaCanceladaDestinatario(edtChaveCancelar.Text);
      /////////////////////////////////////////////////////////////////////////////////////////////////

      UpdateStatus(' OK', False, True);
    finally
      btnEnviarCancDest.Enabled := True;
      Screen.Cursor := crDefault;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnEnviarCancDest.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnEnviarDFeClick(Sender: TObject);
var
  _tipoNSU : TNSUKind;
begin
  if rbNsuEspecifico.Checked then
    _tipoNSU := nkEspecifico
  else
    _tipoNSU := nkUltimo;

  mmoDFe.Lines.Text := spdNFe.ConsultarDistribuicaoDFe(edtCodUFDFe.Text,edtCNPJCPFDFe.Text,edtNSUDFe.Text,_tipoNSU);
  mmoDFeDescompactar.Lines.Text := mmoDFe.Lines.Text;
end;

procedure TfrmPrincipal.ICMSController(ICMSItemIndex : Integer);
begin
  case ICMSItemIndex of
    0:
      begin
        if frmICMS00 = nil then
          frmICMS00 := TfrmICMS00.Create(Self);

        frmICMS00.ShowModal;
      end;
    1:
      begin
        if frmICMS10 = nil then
          frmICMS10 := TfrmICMS10.Create(Self);

        frmICMS10.ShowModal;
      end;
    2:
      begin
        if frmICMS20 = nil then
          frmICMS20 := TfrmICMS20.Create(Self);

        frmICMS20.ShowModal;
        if cbVersao.ItemIndex >= versao_5_0a then
        begin
          frmICMS20.edtValorICMS20Deson.Enabled := true;
          frmICMS20.cbMotDesICMS20.Enabled := true;
        end;
      end;
    3:
      begin
        if frmICMS30 = nil then
          frmICMS30 := TfrmICMS30.Create(Self);

        frmICMS30.ShowModal;
        if cbVersao.ItemIndex >= versao_5_0a then
        begin
          frmICMS30.edtValorICMS30Deson.Enabled := true;
          frmICMS30.cbbMotDesICMS30.Enabled := true;
        end;
      end;
    4:
      begin
        if frmICMS40 = nil then
          frmICMS40 := TfrmICMS40.Create(Self);

        frmICMS40.ShowModal;
      end;
    5:
      begin
        if frmICMS51 = nil then
          frmICMS51 := TfrmICMS51.Create(Self);

        frmICMS51.ShowModal;
        if cbVersao.ItemIndex >= versao_5_0a then
        begin
          frmICMS51.edtvICMSOp51.Enabled := true;
          frmICMS51.edtpDif51.Enabled := true;
          frmICMS51.edtvICMSDif51.Enabled := true;
        end;
      end;
    6:
      begin
        if frmICMS60 = nil then
          frmICMS60 := TfrmICMS60.Create(Self);

        frmICMS60.ShowModal;
      end;
    7:
      begin
        if frmICMS70 = nil then
          frmICMS70 := TfrmICMS70.Create(Self);

        frmICMS70.ShowModal;
        if cbVersao.ItemIndex >= versao_5_0a then
        begin
          frmICMS70.cbbMotDesICMS70.Enabled := true;
          frmICMS70.edtvICMSDeson70.Enabled := true;
        end;
      end;
    8:
      begin
        if frmICMS90 = nil then
          frmICMS90 := TfrmICMS90.Create(Self);

        frmICMS90.ShowModal;
        if cbVersao.ItemIndex >= versao_5_0a then
        begin
          frmICMS90.cbbMotDesICMS90.Enabled := true;
          frmICMS90.edtvICMSDeson90.Enabled := true;
        end;
      end;
    9:
      begin
        if frmICMSPart = nil then
          frmICMSPart := TfrmICMSPart.Create(Self);

        frmICMSPart.ShowModal;
      end;
    10:
      begin
        if frmICMSST = nil then
          frmICMSST := TfrmICMSST.Create(Self);

        frmICMSST.ShowModal;
      end;
    11:
      begin
        if frmICMSSN101 = nil then
          frmICMSSN101 := TfrmICMSN101.Create(Self);

        frmICMSSN101.ShowModal;
      end;
    12:
      begin
        if frmICMSSN102 = nil then
          frmICMSSN102 := TfrmICMS102.Create(Self);

        frmICMSSN102.ShowModal;
      end;
    13:
      begin
        if frmICMSSN201 = nil then
          frmICMSSN201 := TfrmICMSSN201.Create(Self);

        frmICMSSN201.ShowModal;
      end;
    14:
      begin
        if frmICMSSN202 = nil then
          frmICMSSN202 := TfrmICMSSN202.Create(Self);

        frmICMSSN202.ShowModal;
      end;
    15:
      begin
        if frmICMSSN500 = nil then
          frmICMSSN500 := TfrmICMSSN500.Create(Self);

        frmICMSSN500.ShowModal;
      end;
    16:
      begin
        if frmICMSSN900 = nil then
          frmICMSSN900 := TfrmICMSSN900.Create(Self);

        frmICMSSN900.ShowModal;
      end;
  end;
end;

procedure TfrmPrincipal.IPIController(IPIItemIndex : Integer);
begin
  case IPIItemIndex of
    0:
      begin
        if frmIPITrib = nil then
          frmIPITrib := TfrmIPITrib.Create(Self);

        frmIPITrib.ShowModal;
      end;
    1:
      begin
        if frmIPINT = nil then
          frmIPINT := TfrmIPINT.Create(Self);

        frmIPINT.ShowModal;
      end;
  end;
end;

procedure TfrmPrincipal.IIController(IIItemIndex : Integer);
begin
  case IIItemIndex of
    0:
      begin
        if frmII = nil then
          frmII := TfrmII.Create(Self);

        frmII.ShowModal;
      end;
  end;
end;

procedure TfrmPrincipal.PISController(PISItemIndex : Integer);
begin
  case PISItemIndex of
    0:
      begin
        if frmPISAliq = nil then
          frmPISAliq := TfrmPISAliq.Create(Self);

        frmPISAliq.ShowModal;
      end;
    1:
      begin
        if frmPISQtde = nil then
          frmPISQtde := TfrmPISQtde.Create(Self);

        frmPISQtde.ShowModal;
      end;
    2:
      begin
        if frmPISNT = nil then
          frmPISNT := TfrmPISNT.Create(Self);

        frmPISNT.ShowModal;
      end;
    3:
      begin
        if frmPISOutr = nil then
          frmPISOutr := TfrmPISOutr.Create(Self);

        frmPISOutr.ShowModal;
      end;
  end;
end;

procedure TfrmPrincipal.PISSTController(PISSTItemIndex : Integer);
begin
  case PISSTItemIndex of
    0:
      begin
        if frmPISST = nil then
          frmPISST := TfrmPISST.Create(Self);

        frmPISST.ShowModal;
      end;
  end;
end;

procedure TfrmPrincipal.COFINSController(COFINSItemIndex : Integer);
begin
  case COFINSItemIndex of
    0:
      begin
        if frmCOFINSAliq = nil then
          frmCOFINSAliq := TfrmCOFINSAliq.Create(Self);

        frmCOFINSAliq.ShowModal;
      end;
    1:
      begin
        if frmCOFINSQtde = nil then
          frmCOFINSQtde := TfrmCOFINSQtde.Create(Self);

        frmCOFINSQtde.ShowModal;
      end;
    2:
      begin
        if frmCOFINSNT = nil then
          frmCOFINSNT := TfrmCOFINSNT.Create(Self);

        frmCOFINSNT.ShowModal;
      end;
    3:
      begin
        if frmCOFINSOutr = nil then
          frmCOFINSOutr := TfrmCOFINSOutr.Create(Self);

        frmCOFINSOutr.ShowModal;
      end;
  end;
end;

procedure TfrmPrincipal.COFINSSTController(COFINSSTItemIndex: Integer);
begin
  case COFINSSTItemIndex of
    0:
      begin
        if frmCOFINSST = nil then
          frmCOFINSST := TfrmCOFINSST.Create(Self);

        frmCOFINSST.ShowModal;
      end;
  end;
end;

procedure TfrmPrincipal.ISSQNController(ISSQNItemIndex : Integer);
begin
  case ISSQNItemIndex of
    0:
      begin
        if frmISSQN = nil then
          frmISSQN := TfrmISSQN.Create(Self);

        frmISSQN.ShowModal;
        if cbVersao.ItemIndex >= versao_5_0a then
        begin
          frmISSQN.edtvDeducaoISSQN.Enabled := true;
          frmISSQN.edtvOutroISSQN.Enabled := true;
          frmISSQN.edtvDescIncondISSQN.Enabled := true;
          frmISSQN.edtvDescCondISSQN.Enabled := true;
          frmISSQN.edtvISSRetISSQN.Enabled := true;
          frmISSQN.cbbindISSISSQN.Enabled := true;
          frmISSQN.edtcServicoISSQN.Enabled := true;
          frmISSQN.edtcMunISSQN.Enabled := true;
          frmISSQN.cbbindISSISSQN.Enabled := true;
          frmISSQN.cbbindIncentivoISSQN.Enabled := true;
        end;
      end;
  end;
end;

procedure TfrmPrincipal.DestruirForms;
begin
  //ICMS
  if frmICMS00 <> nil then
    frmICMS00.Free;
  if frmICMS10 <> nil then
    frmICMS10.Free;
  if frmICMS20 <> nil then
    frmICMS20.Free;
  if frmICMS30 <> nil then
    frmICMS30.Free;
  if frmICMS40 <> nil then
    frmICMS40.Free;
  if frmICMS51 <> nil then
    frmICMS51.Free;
  if frmICMS60 <> nil then
    frmICMS60.Free;
  if frmICMS70 <> nil then
    frmICMS70.Free;
  if frmICMS90 <> nil then
    frmICMS90.Free;
  if frmICMSPart <> nil then
    frmICMSPart.Free;
  if frmICMSST <> nil then
    frmICMSST.Free;
  if frmICMSSN101 <> nil then
    frmICMSSN101.Free;
  if frmICMSSN102 <> nil then
    frmICMSSN102.Free;
  if frmICMSSN201 <> nil then
    frmICMSSN201.Free;
  if frmICMSSN202 <> nil then
    frmICMSSN202.Free;
  if frmICMSSN500 <> nil then
    frmICMSSN500.Free;
  if frmICMSSN900 <> nil then
    frmICMSSN900.Free;

  //IPI
  if frmIPITrib <> nil then
    frmIPITrib.Free;
  if frmIPINT <> nil then
    frmIPINT.Free;

  //II
  if frmII <> nil then
    frmII.Free;

  //PIS
  if frmPISAliq <> nil then
    frmPISAliq.Free;
  if frmPISQtde <> nil then
    frmPISQtde.Free;
  if frmPISNT <> nil then
    frmPISNT.Free;
  if frmPISOutr <> nil then
    frmPISOutr.Free;

  //PISST
  if frmPISST <> nil then
    frmPISST.Free;

  //COFINS
  if frmCOFINSAliq <> nil then
    frmCOFINSAliq.Free;
  if frmCOFINSQtde <> nil then
    frmCOFINSQtde.Free;
  if frmCOFINSNT <> nil then
    frmCOFINSNT.Free;
  if frmCOFINSOutr <> nil then
    frmCOFINSOutr.Free;

  //COFINSST
  if frmCOFINSST <> nil then
    frmCOFINSST.Free;

  //ISSQN
  if frmISSQN <> nil then
    frmISSQN.Free;
end;

procedure TfrmPrincipal.cbICMSChange(Sender: TObject);
begin
  ICMSController(cbICMS.ItemIndex);
end;

procedure TfrmPrincipal.cbIPIChange(Sender: TObject);
begin
  IPIController(cbIPI.ItemIndex);
end;

procedure TfrmPrincipal.cbIIChange(Sender: TObject);
begin
  IIController(cbII.ItemIndex);
end;

procedure TfrmPrincipal.cbPISChange(Sender: TObject);
begin
  PISController(cbPIS.ItemIndex);
end;

procedure TfrmPrincipal.cbPISSTChange(Sender: TObject);
begin
  PISSTController(cbPISST.ItemIndex);
end;

procedure TfrmPrincipal.cbCOFINSChange(Sender: TObject);
begin
  COFINSController(cbCOFINS.ItemIndex);
end;

procedure TfrmPrincipal.cbCOFINSSTChange(Sender: TObject);
begin
  COFINSSTController(cbCOFINSST.ItemIndex);
end;

procedure TfrmPrincipal.cbISSQNChange(Sender: TObject);
begin
  ISSQNController(cbISSQN.ItemIndex);
end;

procedure TfrmPrincipal.cbNomeCertificadoDropDown(Sender: TObject);
begin
  cbNomeCertificado.Clear;
  spdNFe.ListarCertificados(cbNomeCertificado.Items);
//  cbNomeCertificado.ItemIndex := 0;
  cbNomeCertificado.ItemIndex := cbNomeCertificado.Items.IndexOf(Trim(spdNFe.NomeCertificado.Text));
end;

procedure TfrmPrincipal.cbNotaConjugadaClick(Sender: TObject);
begin
  if cbNotaConjugada.Checked then
  begin
    if frmISSQN = nil then
      frmISSQN := TfrmISSQN.Create(Self);

    if ((edtIMEmit.Text = '')or(edtCNAEEmit.Text = '')) then
      ShowMessage('É necessário preencher os campos ''Inscrição Municipal'' e ''CNAE Fiscal'' do Emitente');

    cbICMS.ItemIndex := -1;
    cbICMS.Enabled := False;
    cbIPI.ItemIndex := -1;
    cbIPI.Enabled := False;
    cbII.ItemIndex := -1;
    cbII.Enabled := False;
    cbISSQN.ItemIndex := 0;
    cbISSQN.Enabled := True;
  end
  else
  begin
    cbICMS.ItemIndex := 0;
    cbICMS.Enabled := True;
    cbIPI.Enabled := True;
    cbII.Enabled := True;
    cbISSQN.ItemIndex := -1;
    cbISSQN.Enabled := False;
  end;
end;

procedure TfrmPrincipal.rgRamosEspecificosClick(Sender: TObject);
begin
  if rgRamosEspecificos.ItemIndex = 0 then
    SetNotaBasica;
end;

procedure TfrmPrincipal.cbIPIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key = VK_DELETE) or (Key = VK_BACK)) then
    cbIPI.ItemIndex := -1;
end;

procedure TfrmPrincipal.cbIIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key = VK_DELETE) or (Key = VK_BACK)) then
    cbII.ItemIndex := -1;
end;

procedure TfrmPrincipal.cbPISSTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key = VK_DELETE) or (Key = VK_BACK)) then
    cbPISST.ItemIndex := -1;
end;

procedure TfrmPrincipal.cbCOFINSSTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key = VK_DELETE) or (Key = VK_BACK)) then
    cbCOFINSST.ItemIndex := -1;
end;

procedure TfrmPrincipal.tvNFeCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Node.Selected = True then
  begin
    tvNFe.Canvas.Brush.Color := clHighlight;
    tvNFe.Canvas.Font.Color := clWhite;
  end
  else
  begin
    tvNFe.Canvas.Brush.Color := clWhite;
    tvNFe.Canvas.Font.Color := clWindowText;
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FUtils.Free;
  spdNFe.Free;
  spdNFeDataSets.Free;
  spdValidadorClientX.Free;
  DestruirForms;
end;

procedure TfrmPrincipal.btnAssinarEPECMontado1Click(Sender: TObject);
begin
  btnassinarNotaEPEC.Enabled := False;
  try
    try
      UpdateStatus('Assinando NFe...');

      ///////Utilização do componente para assinar a nota gerada\\\\\\\
      fNFeEPEC := spdNFe.AssinarEPEC(mmoAssinarEPECMontado1.Lines.Text);
      /////////////////////////////////////////////////////////////////

      UpdateStatus(' OK', False, True);
      mmoAssinarEPECMontadoAssinado.Lines.Text := fNFeEPEC;

      FUtils.SaveToFile(fNFeEPEC, ExtractFilePath(ParamStr(0)) + 'XMLEPECAssinado.xml');
      wbAssinarEPECMontadoAssinado.Navigate(ExtractFilePath(ParamStr(0)) + 'XMLEPECAssinado.xml');

      if not btnAvancar.Enabled then
        btnAvancar.Enabled := True;
    finally
      btnassinarNotaEPEC.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnassinarNotaEPEC.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnMontarEPECClick(Sender: TObject);
var
  _XML : String;
begin
  btnMontarEPEC.Enabled := False;
  try
    if (edtDhEventoEPEC.text <> EmptyStr) and (cbbFusoEPEC.Text <> EmptyStr) then
    begin
      try
        UpdateStatus('Montando XML EPEC...');

        ///////Utilização do componente spdNFe para montar o XML EPEC\\\\\\\
        _XML := spdNFe.MontarEPEC('0001',fNFeEPEC,edtDhEventoEPEC.text,cbbFusoEPEC.Text);
        ///////////////////////////////////////////////////////////////////////
        mmoMontarEPEC.Lines.Text := _XML;
        UpdateStatus(' OK', False, True);

        FUtils.SaveToFile(_XML, ExtractFilePath(ParamStr(0)) + 'XMLEPECMontado.xml');
        wbMontarEPEC.Navigate(ExtractFilePath(ParamStr(0)) + 'XMLEPECMontado.xml');

        mmoAssinarEPECMontado1.Lines.Text := _XML;
        wbAssinarEPECMontado1.Navigate(ExtractFilePath(ParamStr(0)) + 'XMLEPECMontado.xml');

        if not btnAvancar.Enabled then
          btnAvancar.Enabled := True;
      finally
        btnMontarEPEC.Enabled := True;
      end;
    end
    else
    begin
      btnMontarEPEC.Enabled := True;
      ShowMessage('Preencha os campos Data Hora evento e o Fuso horário.');
    end;
  except
    UpdateStatus(' falha', False, True);
    btnMontarEPEC.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnImprimirEPEC5Click(Sender: TObject);
begin
  if dlgOpenEPEC.Execute then
    edtImprimirEPEC.Text := dlgOpenEPEC.FileName;
end;

procedure TfrmPrincipal.btnImprimirEPECClick(Sender: TObject);
begin
  btnImprimirEPEC.Enabled := False;
  try
    try
      UpdateStatus('Imprimindo DANFE...');

      if cbbImpressorasEPEC.Text <> '' then
        ///////Utilização do componente para impressão do EPEC\\\\\\\
        spdNFe.ImprimirDanfe('00001', fNFeEPEC,'',cbbImpressorasEPEC.Text)
        //////////////////////////////////////////////////////////
      else
        spdNFe.ImprimirDanfe('00001', fNFeEPEC,'','');

      UpdateStatus(' OK', False, True);
    finally
      btnImprimirEPEC.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnImprimirEPEC.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnEditarEPECClick(Sender: TObject);
begin
  ///////Utilização do componente para edição da DANFE\\\\\\\
  spdNFe.EditarModeloDanfe('00000', fNFeEPEC, edtModeloRtm.Text);
  ///////////////////////////////////////////////////////////
end;

procedure TfrmPrincipal.btnExportarEPECClick(Sender: TObject);
begin
  btnExportarEPEC.Enabled := False;
  try
    try
      UpdateStatus('Exportando DANFE...');

      if edtImprimirEPEC.Text <> '' then
        ///////Utilização do componente para exportar EPEC\\\\\\\
        spdNFe.ExportarDanfe('00001', fNFeEPEC, '', 1, edtImprimirEPEC.Text)
        ///////////////////////////////////////////////////////
      else
        spdNFe.ExportarDanfe('00001', fNFeEPEC);

      UpdateStatus(' OK', False, True);
    finally
      btnExportarEPEC.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnExportarEPEC.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnVisualizarEPECClick(Sender: TObject);
begin
  btnVisualizarEPEC.Enabled := False;
  try
    try
      UpdateStatus('Gerando visualização do DANFE...');

      ///////Utilização do componente spdNFe para visualização da EPEC\\\\\\\
      spdNFe.VisualizarDanfe('00001', fNFeEPEC);
      /////////////////////////////////////////////////////////////////
      UpdateStatus(' OK', False, True);
    finally
      btnVisualizarEPEC.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnVisualizarEPEC.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnAssinarFSClick(Sender: TObject);
begin
  btnAssinarFS.Enabled := False;
  try
    try
      UpdateStatus('Assinando NFe...');

      ///////Utilização do componente para assinar a nota gerada\\\\\\\
      fNFeFS := spdNFe.AssinarNota(mmXMLNotaFS.Lines.Text);
      /////////////////////////////////////////////////////////////////

      UpdateStatus(' OK', False, True);
      mmXmlAssinadoFS.Lines.Text := fNFeFS;

      pcXmlAssinadoFS.TabIndex := 1;
      pcXmlAssinadoFS.TabIndex := 0;

      FUtils.SaveToFile(fNFeFS, ExtractFilePath(ParamStr(0)) + 'NotaAssinadaFS.xml');
      wbXmlAssinadoFS.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaAssinadaFS.xml');

      if not btnAvancar.Enabled then
        btnAvancar.Enabled := True;
    finally
      btnAssinarFS.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnAssinarFS.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnImprimirFSClick(Sender: TObject);
begin
  btnImprimirFS.Enabled := False;
  try
    try
      UpdateStatus('Imprimindo DANFE...');

      if cbImpressorasFS.Text <> '' then
        ///////Utilização do componente para impressão do FS\\\\\\\
        spdNFe.ImprimirDanfe('00001', fNFeFS,'',cbImpressorasFS.Text)
        //////////////////////////////////////////////////////////
      else
        spdNFe.ImprimirDanfe('00001', fNFeFS,'','');

      UpdateStatus(' OK', False, True);
    finally
      btnImprimirFS.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnImprimirFS.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnEditarFSClick(Sender: TObject);
begin
  ///////Utilização do componente para edição do FS\\\\\\\
  spdNFe.EditarModeloDanfe('00000', fNFeFS);
  ///////////////////////////////////////////////////////
end;

procedure TfrmPrincipal.btnExportarFSClick(Sender: TObject);
begin
  btnExportarFS.Enabled := False;
  try
    try
      UpdateStatus('Exportando DANFE...');

      if edtArqExportFS.Text <> '' then
        ///////Utilização do componente para exportar FS\\\\\\\
        spdNFe.ExportarDanfe('00001', fNFeFS, '', 1, edtArqExportFS.Text)
        ///////////////////////////////////////////////////////
      else
        spdNFe.ExportarDanfe('00001', fNFeFS);

      UpdateStatus(' OK', False, True);
    finally
      btnExportarFS.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnExportarFS.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnVisualizarFSClick(Sender: TObject);
begin
  btnVisualizarFS.Enabled := False;
  try
    try
      UpdateStatus('Gerando visualização do DANFE...');

      ///////Utilização do componente para visualização do FS\\\\\\\
      spdNFe.VisualizarDanfe('00001', fNFeFS);
      /////////////////////////////////////////////////////////////

      UpdateStatus(' OK', False, True);
    finally
      btnVisualizarFS.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnVisualizarFS.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnEnviarServEstFSClick(Sender: TObject);
var
  _XML: string;
begin
  //spdNFe.ValidarEsquemaAntesEnvio := True;

  btnEnviarServEstFS.Enabled := False;
  try
    try
      UpdateStatus('Enviando NFe...');

      fBtnEnviarDisparado := 'EnviarSefazFS';
      ///////Utilização do componente para enviar a nota ao Sefaz\\\\\\\
      _XML := RemoveCaracterEsp40(spdNFe.EnviarNF('00001', fNFeFS));
      //////////////////////////////////////////////////////////////////
      mmEnviarServEstFS.Lines.Text := _XML;
      UpdateStatus(' OK', False, True);
      edtNumRecEnvServEstFS.Text := GetValueTag('nRec',_XML);

      edtStatusEnviarServEstFS.Text := GetValueTag('cStat',_XML);
      edtMotivoEnviarServEstFS.Text := GetValueTag('xMotivo',_XML);

      edtNumeroReciboFS.Text := edtNumRecEnvServEstFS.Text;
      edtChaveNotaFS.Text := edtChaveEnvServEstFS.Text;

      if GetValueTag('cStat', _XML) = '103' then //Lote recebido com sucesso
        btnAvancar.Enabled := True;
    finally
      btnEnviarServEstFS.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnEnviarServEstFS.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnEnvServEstEPEC1Click(Sender: TObject);
var
  _XML : String;
begin
  btnEnvServEstEPEC1.Enabled := False;
  try
    try
      UpdateStatus('Enviando EPEC ao SEFAZ...');

      ///////Utilização do componente spdNFe para enviar EPEC ao SEFAZ\\\\\\\
      _XML := spdNFe.EnviarNF('001',mmoEPECAssinado.Lines.Text);
      ///////////////////////////////////////////////////////////////////////////
      mmoEnvServEstEPEC1.Lines.Text := _XML;

      UpdateStatus(' OK', False, True);

      edtEnvServEstEPECStatus.Text := GetValueTag('cStat',_XML);
      edtEnvServEstEPECMotivo.Text := GetValueTag('xMotivo',_XML);

      edtEnvServEstEPECNRecibo.Text := GetValueTag('nRec',_XML);

      edtConsultarEPECNRecibo.Text := edtEnvServEstEPECChave.Text;

      //103 retorno do envio Assincrono e 104 retorno do envio Síncrono
      if (GetValueTag('cStat', _XML) = '103') or
        (GetValueTag('cStat', _XML) = '104') then //Lote recebido com sucesso
        btnAvancar.Enabled := True;
    finally
      btnEnvServEstEPEC1.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnEnvServEstEPEC1.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnConsultarReciboFSClick(Sender: TObject);
var
  _XML, _status : string;
begin
  btnConsultarReciboFS.Enabled := False;
  try
    try
      UpdateStatus('Consultando Recibo da NFe...');

      fBtnReciboDisparado := 'ConsRecFS';

      ///////Utilização do componente para consultar o recibo da nota\\\\\\\
      _XML := RemoveCaracterEsp40(spdNFe.ConsultarRecibo(edtNumeroReciboFS.Text));
      //////////////////////////////////////////////////////////////////////

      mmConsultarFS.Lines.Text := _XML;
      UpdateStatus(' OK', False, True);
      edtProtocoloFS.Text := GetValueTag('nProt',_XML);

      _status := GetValueTag('infProt',_XML);

      edtStatusConsultarFS.Text := GetValueTag('cStat', _status);
      edtMotivoConsultarFS.Text := GetValueTag('xMotivo',_status);

      if GetValueTag('cStat',_status) = '100' then //Autorizado o uso da NF-e
        btnAvancar.Enabled := True;

    finally
      btnConsultarReciboFS.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnConsultarReciboFS.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnConsultarChaveFSClick(Sender: TObject);
var
  _XML, _status, _canc : String;
begin
  btnConsultarChaveFS.Enabled := False;
  try
    try
      UpdateStatus('Consultando NFe...');

      fBtnChaveDisparado := 'ConsChaveFS';

      ///////Utilização do componente para consultar a chave da nota\\\\\\\
      _XML := RemoveCaracterEsp40(spdNFe.ConsultarNF(edtChaveNotaFS.Text));
      /////////////////////////////////////////////////////////////////////

      _canc := GetValueTag('infCanc', _XML);

      if _canc <> '' then
      begin
        edtStatusConsultarFS.Text := GetValueTag('cStat', _canc);
        edtMotivoConsultarFS.Text := GetValueTag('xMotivo',_canc);
        btnAvancar.Enabled := False;
      end
      else
      begin
        mmConsultarFS.Lines.Text := _XML;
        UpdateStatus(' OK', False, True);
        edtProtocoloFS.Text := GetValueTag('nProt',_XML);

        _status := GetValueTag('infProt',_XML);

        edtStatusConsultarFS.Text := GetValueTag('cStat', _status);
        edtMotivoConsultarFS.Text := GetValueTag('xMotivo',_status);

        if GetValueTag('cStat',_status) = '100' then //Autorizado o uso da NF-e
          btnAvancar.Enabled := True;
      end;
    finally
      btnConsultarChaveFS.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnConsultarChaveFS.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnConsultarEPEC2Click(Sender: TObject);
var
  _XML, _status, _canc : String;
begin
  btnConsultarEPEC2.Enabled := False;
  try
    try
      UpdateStatus('Consultando NFe...');

      fBtnChaveDisparado := 'ConsChaveEPEC';

      ///////Utilização do componente para consultar a chave da nota\\\\\\\
      _XML := RemoveCaracterEsp40(spdNFe.ConsultarNF(edtConsultarChaveEPEC.Text));
      /////////////////////////////////////////////////////////////////////
      _canc := GetValueTag('infCanc', _XML);

      if _canc <> '' then
      begin
        edtConsultarEPECStatus.Text := GetValueTag('cStat', _canc);
        edtConsultarEPECMotivo.Text := GetValueTag('xMotivo', _canc);
        btnAvancar.Enabled := False;
      end
      else
      begin
        mmoConsultarEPEC1.Lines.Text := _XML;
        UpdateStatus(' OK', False, True);
        edtConsultarProtocoloEPEC.Text := GetValueTag('nProt', _XML);

        _status := GetValueTag('infProt', _XML);

        edtConsultarEPECStatus.Text := GetValueTag('cStat', _status);
        edtConsultarEPECMotivo.Text := GetValueTag('xMotivo', _status);

        if GetValueTag('cStat', _status) = '100' then //Autorizado o uso da NF-e
          btnAvancar.Enabled := True;

      end;
    finally
      btnConsultarEPEC2.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnConsultarEPEC2.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnConsultarReciboEPECClick(Sender: TObject);
var
  aXML, status : string;
begin
  btnConsultarReciboEPEC.Enabled := False;
  try
    try
      UpdateStatus('Consultando Recibo da NFe...');

      fBtnReciboDisparado := 'ConsRecEPEC';

      ///////Utilização do componente para consultar o recibo da EPEC\\\\\\\
      aXML := RemoveCaracterEsp40(spdNFe.ConsultarRecibo(edtConsultarEPECNRecibo.Text));
      //////////////////////////////////////////////////////////////////////
      mmoConsultarEPEC1.Lines.Text := aXML;
      UpdateStatus(' OK', False, True);
      edtConsultarProtocoloEPEC.Text := GetValueTag('nProt',aXML);

      status := GetValueTag('infProt',aXML);

      edtConsultarEPECStatus.Text := GetValueTag('cStat', status);
      edtConsultarEPECMotivo.Text := GetValueTag('xMotivo',status);

      if GetValueTag('cStat', status) = '100' then //Autorizado o uso da NF-e
        btnAvancar.Enabled := True;
    finally
      btnConsultarReciboEPEC.Enabled := True;
      btnConsultarEPEC2.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnConsultarReciboEPEC.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnAnexarFSClick(Sender: TObject);
begin
  if odlgAnexosFS.Execute then
  begin
    edtAnexarFS.Text := odlgAnexosFS.FileName;
    clbAnexosFS.Items.Add(odlgAnexosFS.FileName);

    if clbAnexosFS.Checked[clbAnexosFS.Items.Count - 1] = False then
      clbAnexosFS.Checked[clbAnexosFS.Items.Count - 1] := True;
  end;
end;

procedure TfrmPrincipal.btnEnviarEmailDestFSClick(Sender: TObject);
var
  i : Integer;
  _lista : String;
begin
  btnEnviarEmailDestFS.Enabled := False;
  try
    Screen.Cursor := crHourGlass;
    try
      UpdateStatus('Enviando NFe ao destinatário...');

      if edtEmailDestFS.Text <> '' then
        spdNFe.EmailSettings.EmailDestinatario := edtEmailDestFS.Text;

      if clbAnexosFS.Items.Count = 0 then
      begin
        ///////Utilização do componente para enviar a nota ao destinatário por email\\\\\\\
        spdNFe.EnviarNotaDestinatario(edtChaveNotaFS.Text)
        ///////////////////////////////////////////////////////////////////////////////////
      end
      else
      begin
        for i:=0 to clbAnexosFS.Items.Count - 1 do
        begin
          if _lista = '' then
          begin
            if clbAnexosFS.Checked[i] = True then
              _lista := _lista + clbAnexosFS.Items[i]
          end
          else
          begin
            if clbAnexosFS.Checked[i] = True then
              _lista := _lista + ',' + clbAnexosFS.Items[i];
          end;
        end;
        if _lista = '' then
        begin
          edtAnexarFS.Clear;
          clbAnexosFS.Clear;
          ///////Utilização do componente para enviar a nota ao destinatário por email\\\\\\\
          spdNFe.EnviarNotaDestinatario(edtChaveNotaFS.Text);
          ///////////////////////////////////////////////////////////////////////////////////
        end
        else
        begin
          ///////Utilização do componente para enviar anexos ao destinatário por email\\\\\\\
          spdNFe.EnviarNotaDestinatarioAnexos('',fXmlDestFS,_lista)
          ///////////////////////////////////////////////////////////////////////////////////
        end;
      end;

      UpdateStatus(' OK', False, True);
    finally
      btnEnviarEmailDestFS.Enabled := True;
      btnAvancar.Enabled := True;
      Screen.Cursor := crDefault;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnEnviarEmailDestFS.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnEnviarEPECClick(Sender: TObject);
var
  _posIni, _posFim:integer;
  _xmlRetorno, _XML:string;
begin
  btnEnviarEPEC.Enabled := False;
  try
    try
      UpdateStatus('Enviando EPEC ao SEFAZ...');

      ///////Utilização do componente spdNFe para enviar o evento EPEC ao SEFAZ\\\\\\\
      _XML := spdNFe.EnviarEPEC(mmoAssinarEPECMontadoAssinado.Lines.Text);
      ///////////////////////////////////////////////////////////////////////////
      mmoEnviarEPEC1.Lines.Text := _XML;

      UpdateStatus(' OK', False, True);

      _posIni := Pos('<infEvento',mmoEnviarEPEC1.Lines.Text);
      _posFim := Pos('</infEvento>',mmoEnviarEPEC1.Lines.Text);

      _xmlRetorno := Copy(mmoEnviarEPEC1.Lines.Text, _posIni, _posFim);

      edtEnviarEPECStatus.Text := GetValueTag('cStat', _xmlRetorno);
      edtEnviarEPECmotivo.Text := GetValueTag('xMotivo', _xmlRetorno);

      if GetValueTag('cStat', _XML) = '136' then //EPEC recebido pelo Sistema de Contingência Eletrônica
        btnAvancar.Enabled := True;
    finally
      btnEnviarEPEC.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnEnviarEPEC.Enabled := True;
    raise;
  end;

end;

procedure TfrmPrincipal.cbTipoEmissaoFSChange(Sender: TObject);
begin
  if cbTipoEmissaoFS.ItemIndex = 0 then
  begin
    fTipoEmissao := '2';
    GerarNFeDataSet;

    if mmXmlAssinadoFS.Lines.Text <> '' then
    begin
      mmXmlAssinadoFS.Clear;
      wbXmlAssinadoFS.Navigate('about:blank');
      btnAvancar.Enabled := False;
    end;
  end
  else
  begin
    fTipoEmissao := '5';
    GerarNFeDataSet;

    if mmXmlAssinadoFS.Lines.Text <> '' then
    begin
      mmXmlAssinadoFS.Clear;
      wbXmlAssinadoFS.Navigate('about:blank');
      btnAvancar.Enabled := False;
    end;
  end;
end;

procedure TfrmPrincipal.chkEmailHtmlClick(Sender: TObject);
begin
  spdNfe.EmailSettings.ConteudoHtml := chkEmailHtml.Checked;
  spdNFe.SaveConfig;
end;

procedure TfrmPrincipal.btnPDFPreverAssinadoClick(Sender: TObject);
begin
  btnPDFPreverAssinado.Enabled := False;
  try
    try
      UpdateStatus('Gerando PDF de pré-visualização da Danfe...');

      ///////Utilização do componente para prever Danfe\\\\\\\\\\\\\\\\
      spdNFe.ExportarPreverDanfe(fNFe);
      /////////////////////////////////////////////////////////////////
      UpdateStatus(' OK', False, True);

    finally
      btnPDFPreverAssinado.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnPDFPreverAssinado.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnPreverDanfeClick(Sender: TObject);
begin
  btnPreverDanfe.Enabled := False;
  try
    try
      UpdateStatus('Gerando pré-visualização da Danfe...');

      ///////Utilização do componente para prever Danfe\\\\\\\\\\\\\\\\
      spdNFe.PreverDanfe(mmXmlNota.Lines.Text);
      /////////////////////////////////////////////////////////////////
      UpdateStatus(' OK', False, True);

    finally
      btnPreverDanfe.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnPreverDanfe.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnExportDanfeClick(Sender: TObject);
begin
  if odlgExportarDanfe.Execute then
    edtArqExportDanfe.Text := odlgExportarDanfe.FileName;
end;

procedure TfrmPrincipal.btnArqExportFSClick(Sender: TObject);
begin
  if odlgExportarFS.Execute then
    edtArqExportFS.Text := odlgExportarFS.FileName;
end;

procedure TfrmPrincipal.lblMaisStatMotEnvServEstDPECClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/TagcStatRet'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisConsDPECClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/TagcStatRet'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisEnviarFSClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/TagcStatRet'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisConsFSClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/TagcStatRet'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisConsRecDPECClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/ConsultarRecibo'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisConsRecFSClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/ConsultarRecibo'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisConsChaveDPECClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/ConsultarChave'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisConsChaveFSClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/ConsultarChave'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisMontarDPECClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/MontarXMLDPEC'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisAssinarDPECClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/AssinarXMLDPEC'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.Label39Click(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/StatusMotivoDPEC'),PChar(0),nil,SW_NORMAL);
end;

procedure TfrmPrincipal.lblMaisEnviarSefazDPECClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('Open'),PChar('http://ciranda.me/tsdn/search/EnviarDPEC'),PChar(0),nil,SW_NORMAL);
end;

function TfrmPrincipal.RemoveCaracterEsp40(texto: String): String;
begin
  texto := StringReplace(texto,'Ã§', 'ç', [rfReplaceAll]);
  texto := StringReplace(texto,'Ã£', 'ã', [rfReplaceAll]);
  texto := StringReplace(texto,'Ãº', 'ú', [rfReplaceAll]);
  texto := StringReplace(texto,'Ã¡', 'á', [rfReplaceAll]);
  Result := Texto;
end;

function TfrmPrincipal.RemoveNameSpaces(aXMLString: String): String;
const
  // An XSLT script for removing the namespaces from any document. It will remove the prefix as well.
  // From http://wiki.tei-c.org/index.php/Remove-Namespaces.xsl
  cRemoveNSTransform =
    '<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">'
    + '<xsl:output method="xml" indent="no"/>' +

    '<xsl:template match="/|comment()|processing-instruction()">' +
    '    <xsl:copy>' + '      <xsl:apply-templates/>' + '    </xsl:copy>' +
    '</xsl:template>' +

    '<xsl:template match="*">' + '    <xsl:element name="{local-name()}">' +
    '      <xsl:apply-templates select="@*|node()"/>' + '    </xsl:element>' +
    '</xsl:template>' +

    '<xsl:template match="@*">' + '    <xsl:attribute name="{local-name()}">' +
    '      <xsl:value-of select="."/>' + '    </xsl:attribute>' +
    '</xsl:template>' +

    '</xsl:stylesheet>';
var
  Doc, XSL: IXMLDOMDocument2;
  Res: string;
  p: integer;
begin
  Doc := CoDOMDocument60.Create;
  Doc.ASync := false;
  XSL := CoDOMDocument60.Create;
  XSL.ASync := false;
  try
    Doc.loadXML(aXMLString);
    XSL.loadXML(cRemoveNSTransform);
    Res := Doc.TransFormNode(XSL);
    // This now contains the original text with a <?xml version="1.0" encoding="UTF-16"?> prepended; remove it:
    p := Pos('?>', Res);
    result := Copy(Res, p + 2, Length(Res));
  except
    on E: Exception do
      result := E.Message;
  end;
end;

procedure TfrmPrincipal.cbTipoCertificadoChange(Sender: TObject);
begin
  edtPinCode.Enabled := cbTipoCertificado.ItemIndex=4;
end;

procedure TfrmPrincipal.btnModeloRtmClick(Sender: TObject);
begin
  if odlgModeloRtm.Execute then
    edtModeloRtm.Text := odlgModeloRtm.FileName;
end;

procedure TfrmPrincipal.btnEnviarManifestacaoClick(Sender: TObject);
begin
  if ( (Trim(cbTipoEvento.Text) = EmptyStr) or
       (Trim(cbFusoManifestacao.Text) = EmptyStr) or
       (Trim(edtDataEvento.Text) = EmptyStr) or
       (Trim(edtChaveManisfestacao.Text) = EmptyStr) or
       (Trim(edtCNPJManifestacao.Text) = EmptyStr) or
       (Trim(edtJustivicativaManifestacao.Text) = EmptyStr) ) then
  begin
    ShowMessage('O Tipo da Manifestação, Data Evento, Justificativa, Chave NFe, '
      +'CNPJ Destinatário e Fuso horário são obrigatórios.');
  end
  else
  begin
    btnEnviarManifestacao.Enabled := False;
    try
      try
        UpdateStatus('Enviando Manisfestação NFe...');
        ///////Utilização do componente para enviar a manisfestação do destinatario\\\\\\\
        mmManifestacao.Lines.Text := RemoveCaracterEsp40(spdNFe.EnviarManifestacaoDestinatario(
          cbTipoEvento.ItemIndex,
          edtChaveManisfestacao.Text,
          edtCNPJManifestacao.Text,
          edtJustivicativaManifestacao.Text,
          edtDataEvento.Text,
          1,
          cbFusoManifestacao.Text,
          edtOrgaoManifestacao.Text));
        ///////////////////////////////////////////////////////////

        edtStatusManifestacao.Text := FUtils.GetValueTag('cStat', mmManifestacao.Lines.Text, 'infEvento', 0);
        edtMotivoManifestacao.Text := FUtils.GetValueTag('xMotivo', mmManifestacao.Lines.Text, 'infEvento', 0);

        UpdateStatus(' OK', False, True);
      finally
        btnEnviarManifestacao.Enabled := True;
      end;
    except
      UpdateStatus(' falha', False, True);
      btnEnviarManifestacao.Enabled := True;
      raise;
    end;
  end;
end;

procedure TfrmPrincipal.btnDataEventoClick(Sender: TObject);
begin
  edtDataEvento.Text := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now);
end;

procedure TfrmPrincipal.btnDHEventoEPECClick(Sender: TObject);
begin
  edtDhEventoEPEC.Text := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS', now);
end;

procedure TfrmPrincipal.btnDescompactarDFeClick(Sender: TObject);

  var
    lXMLDoc: IXMLDOMDocument2;

  procedure confgObject(XML: WideString);
  begin
    try
      lXMLDoc := CoDOMDocument60.Create;
      lXMLDoc.setProperty('SelectionLanguage', 'XPath');
      if XML <> '' then
        lXMLDoc.loadXML(RemoveNameSpaces(XML))
      else
        raise Exception.Create('XML não informado!');
    except
      on E: Exception do
        Exception.Create(E.Message);
    end;
  end;

var
  auxXML : Widestring;
  i,j,jx : Integer;
  listaXML, chaves : TStringList;
  lNodeList, iRSEmitente, iVNF : IXMLDOMNodeList; //tipagem da MSXML6_TLB
  qtdChaves, linhaGrid : Integer;
begin
  strngrdNotas.ColCount := 0;
  strngrdNotas.RowCount := 0;
  strngrdNotas.Cells[0, 0] := '';

  if (mmoDFeDescompactar.Text = EmptyStr) then
  begin
    ShowMessage('O Retorno DFe deve ser preenchido.');
    mmoDFeDescompactar.SetFocus;
  end
  else
  begin
    try
      listaXML := TStringList.Create;
      chaves := TStringList.Create;
      qtdChaves := 0;
      confgObject(mmoDFeDescompactar.Text);

      //Criando NodeList com XML compactado
      lNodeList := lXMLDoc.selectNodes('//retDistDFeInt/loteDistDFeInt/docZip');
      //Verifica se o NodeList não está vazia, para evitar AV
      if (lNodeList.length > 0) then
      begin
        for i := 0 to lNodeList.length - 1 do
        begin
          auxXML := lNodeList.item[i].text;
          //Descompactando XML e adicionando a lista
          listaXML.Add(spdNFe.DescompactarXMLZip(auxXML));
        end;

        //contando Chaves
        for jx := 0 to listaXML.Count - 1 do
        begin
          confgObject(listaXML.Strings[jx]);
          //Criando NodeList com as chaves
          lNodeList := lXMLDoc.selectNodes('//resNFe/chNFe');
          if (lNodeList.length > 0) then
          begin
            for i := 0 to lNodeList.length - 1 do
            begin
              qtdChaves := qtdChaves + 1;
            end;
          end;
        end;

        //Montar Grid
        with strngrdNotas Do
        begin
          ColCount := 4;
          RowCount := qtdChaves + 1;

          Cells[0, 0] := 'Chave NF-e';
          Cells[1, 0] := 'Emitente';
          Cells[2, 0] := 'vNF (R$)';
          Cells[3, 0] := 'XML';

          strngrdNotas.ColWidths[0] := 270;
          strngrdNotas.ColWidths[1] := 200;
          strngrdNotas.ColWidths[2] := 50;
          strngrdNotas.ColWidths[3] := 300;
        end;

        //Loop para carregar XML's da lista.
        linhaGrid := 1;
        for j := 0 to listaXML.Count - 1 do
        begin
          confgObject(listaXML.Strings[j]);
          //Criando NodeList com as chaves
          lNodeList := lXMLDoc.selectNodes('//resNFe/chNFe');
          iRSEmitente := lXMLDoc.selectNodes('//resNFe/xNome');
          iVNF := lXMLDoc.selectNodes('//resNFe/vNF');

          if (lNodeList.length > 0) then
          begin
            for i := 0 to lNodeList.length - 1 do
            begin
              with strngrdNotas do
              begin
                Cells[0, linhaGrid] := lNodeList.item[i].text;
                Cells[1, linhaGrid] := iRSEmitente.item[i].text;
                Cells[2, linhaGrid] := 'R$ ' + iVNF.item[i].text;
                Cells[3, linhaGrid] := listaXML.Strings[j];
              end;
              linhaGrid := linhaGrid + 1;

              edtChaveManisfestacao.Text := lNodeList.item[i].text;
              edtChaveDownload.Text := lNodeList.item[i].text;
            end;
          end;
        end;
      end;

      lblTextoQtdNotas.Visible := true;
      lblQtdNotas.Visible := true;
      lblQtdNotas.Caption := IntToStr(qtdChaves);
    finally
      FreeAndNil(listaXML);
      FreeAndNil(chaves);
    end;
  end;
end;

procedure TfrmPrincipal.btnDownloadNFeClick(Sender: TObject);

  var
    lXMLDocDownload: IXMLDOMDocument2;
    lNodeListDownload: IXMLDOMNodeList;
    lNodeDownload: IXMLDOMNode;
    xmlDownload: string;

  procedure configObjDownload(XML: widestring);
  begin
    try
      lXMLDocDownload := CoDOMDocument60.Create;
      lXMLDocDownload.setProperty('SelectionLanguage', 'XPath');
      if XML <> '' then
        lXMLDocDownload.loadXML(RemoveNameSpaces(XML))
      else
        raise Exception.Create('XML não informado!');
    except
      on E: Exception do
        Exception.Create(E.Message);
    end;
  end;

  function trataRetDownload(retDownload: WideString): String;
  begin
    configObjDownload(retDownload);
    lNodeListDownload := lXMLDocDownload.selectNodes('//retDistDFeInt/xMotivo');
    if (lNodeListDownload.length > 0 ) then
    begin
      lNodeDownload := lNodeListDownload.item[0];
      if lNodeDownload.text = 'Documento localizado' then
        Result := 'XML disponível em: ' +Char(13)
        + spdNFe.DiretorioDownloads + edtChaveDownload.Text + '-nfe.xml'
      else
        Result := lNodeDownload.text;
    end
    else
      raise Exception.Create('Estrutura não encontrada no XML');
  end;


begin
  if (Trim(edtChaveDownload.Text) = EmptyStr) then
  begin
    ShowMessage('O campo Chave NFe é obrigatório.');
  end
  else
  begin
    btnDownloadNFe.Enabled := False;
    try
      try
        UpdateStatus('Fazendo Download das NFe...');
        xmlDownload := spdNFe.ConsultarDistribuicaoDFeChave(GetCodigoUF(cbConfigUF.ItemIndex),
          edtCpfCnpjEmit.Text, edtChaveDownload.Text);
        mmDownloadNFe.Lines.Text := xmlDownload;
        mmEventoDownloadNFe.Lines.Text := trataRetDownload(xmlDownload);

        edtStatusDownloadNFe.Text := GetValueTagFilho('retDistDFeInt','cStat', mmDownloadNFe.Lines.Text);
        edtMotivoDownloadNFe.Text := GetValueTagFilho('retDistDFeInt','xMotivo', mmDownloadNFe.Lines.Text);

        UpdateStatus(' OK', False, True);
      finally
        btnDownloadNFe.Enabled := True;
      end;
    except
      UpdateStatus(' falha', False, True);
      btnDownloadNFe.Enabled := True;
      raise;
    end;
  end;
end;

procedure TfrmPrincipal.btnCancelarNFeEventoClick(Sender: TObject);
var
  _posIni, _posFim:integer;
  _xmlRetorno:string;
begin
  if ( (Trim(edtChaveCancNFeEvento.Text) = EmptyStr) or
       (Trim(edtProtCancNFeEvento.Text) = EmptyStr) or
       (Trim(cbFusoCancNFeEvento.Text) = EmptyStr) or
       (Trim(edtJustificativaCancNFeEvento.Text) = EmptyStr) or
       (Trim(edtDataCancNFeEvento.Text) = EmptyStr) ) then
  begin
    ShowMessage('Os campos Chave da Nota, Protocolo Autorização, Fuso horário, '
      +'Justificativa e Data Evento são obrigatórios.');
  end
  else
  begin
    btnCancelarNFeEvento.Enabled := False;
    try
      try
        UpdateStatus('Cancelando NFe por Evento...');
        ///////Utilização do componente para cancelar a nota por evento\\\\\\\
        mmCancelarNFeEvento.Lines.Text := RemoveCaracterEsp40(spdNFe.CancelarNFeEvento(edtChaveCancelar.Text, edtProtCancelar.Text, edtJustificativaCancNFeEvento.Text,edtDataCancNFeEvento.Text,1,cbFusoCancNFeEvento.Text));
        ///////////////////////////////////////////////////////////

        _posIni := Pos('<infEvento',mmCancelarNFeEvento.Lines.Text);
        _posFim := Pos('</infEvento>',mmCancelarNFeEvento.Lines.Text);

        _xmlRetorno := Copy(mmCancelarNFeEvento.Lines.Text,_posIni,_posFim);

        edtStatusCancNFeEvento.Text := GetValueTag('cStat', _xmlRetorno);
        edtMotivoCancNFeEvento.Text := GetValueTag('xMotivo', _xmlRetorno);

        UpdateStatus(' OK', False, True);
      finally
        btnCancelarNFeEvento.Enabled := True;
      end;
    except
      UpdateStatus(' falha', False, True);
      btnCancelarNFeEvento.Enabled := True;
      raise;
    end;
  end;
end;

procedure TfrmPrincipal.btnDataCancNFeEventoClick(Sender: TObject);
begin
  edtDataCancNFeEvento.Text := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now);
end;

procedure TfrmPrincipal.btnassinarNotaEPECClick(Sender: TObject);
begin
  btnassinarNotaEPEC.Enabled := False;
  try
    try
      UpdateStatus('Assinando NFe...');

      ///////Utilização do componente para assinar a nota gerada\\\\\\\
      fNFeEPEC := spdNFe.AssinarNota(mmoassinarEPEC.Lines.Text);
      /////////////////////////////////////////////////////////////////

      UpdateStatus(' OK', False, True);
      mmoEPECAssinado.Lines.Text := fNFeEPEC;

      FUtils.SaveToFile(fNFeEPEC, ExtractFilePath(ParamStr(0)) + 'NotaAssinadaNFeEPEC.xml');
      wbassinarEPEC1.Navigate(ExtractFilePath(ParamStr(0)) + 'NotaAssinadaNFeEPEC.xml');

      if not btnAvancar.Enabled then
        btnAvancar.Enabled := True;
    finally
      btnassinarNotaEPEC.Enabled := True;
    end;
  except
    UpdateStatus(' falha', False, True);
    btnassinarNotaEPEC.Enabled := True;
    raise;
  end;
end;

procedure TfrmPrincipal.btnOutrosRecursosClick(Sender: TObject);
var
  pt : tPoint;
begin
  pt := Mouse.CursorPos;
  pmOutrosRecursos.Popup(pt.x, pt.y);
end;

procedure TfrmPrincipal.AvancarParaFluxo(aIndice: Integer; aNome: String);
begin
  //Para fechar os nós dos principais fluxos
  tvNFe.Items[0].Collapse(True);
  tvNFe.Items[22].Collapse(True);
  tvNFe.Items[28].Collapse(True);

  //Posicina no fluxo
  nbControle.ActivePage := aNome;
  tvNFe.Items[aIndice].DropTarget := True;
  tvnfe.Items[aIndice].Selected := True;

  btnSaveConfig.Visible := False;
  btnVoltar.Visible := aIndice > 0;
  btnVoltar.Enabled := True;
  btnAvancar.Enabled := True;
end;

procedure TfrmPrincipal.mniFluxoNormalClick(Sender: TObject);
begin
  AvancarParaFluxo(0, 'FluxoNFeNormal');
end;

procedure TfrmPrincipal.mniFluxoFSClick(Sender: TObject);
begin
  AvancarParaFluxo(22, 'FluxoFS');
end;

procedure TfrmPrincipal.mniFluxoEPECClick(Sender: TObject);
begin
  AvancarParaFluxo(28, 'FluxoEPEC');
end;

procedure TfrmPrincipal.mniCancelamentoNFeClick(Sender: TObject);
begin
  AvancarParaFluxo(16, 'CancelarNFeEvento');
end;

procedure TfrmPrincipal.mniDistribuicaoDFeClick(Sender: TObject);
begin
  AvancarParaFluxo(18, 'DistribuicaoDFe');
end;

procedure TfrmPrincipal.mniManifestacaoNFeClick(Sender: TObject);
begin
  AvancarParaFluxo(20, 'ManifestacaoNFe');
end;

procedure TfrmPrincipal.mniImportacaoXmlDatasetClick(Sender: TObject);
var
  _frmImportacaoXmlNFe : TfrmImportacaoXmlNFe;
begin
  _frmImportacaoXmlNFe := TfrmImportacaoXmlNFe.Create(nil);
  try
    _frmImportacaoXmlNFe.fCnpjSoftwareHouse := fCnpjSoftwareHouse;
    _frmImportacaoXmlNFe.ShowModal;
  finally
    _frmImportacaoXmlNFe.Free;
  end;
end;

procedure TfrmPrincipal.CarregarInfAuxiliares;
begin
  edtCNPJManifestacao.Text := edtCpfCnpjEmit.Text;
  edtCNPJCPFDFe.Text := edtCpfCnpjEmit.Text;
  edtCodUFDFe.Text := GetCodigoUF(cbConfigUF.ItemIndex);
  edtOrgaoManifestacao.Text := edtCodUFDFe.Text;
end;

end.