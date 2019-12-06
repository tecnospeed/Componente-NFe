namespace WindowsFormsApplication1
{
    partial class frmPrincipal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.TreeNode treeNode1 = new System.Windows.Forms.TreeNode("Email*");
            System.Windows.Forms.TreeNode treeNode2 = new System.Windows.Forms.TreeNode("Passo1 - Configurações Gerais*", new System.Windows.Forms.TreeNode[] {
            treeNode1});
            System.Windows.Forms.TreeNode treeNode3 = new System.Windows.Forms.TreeNode("Passo2 - Testar Comunicação");
            System.Windows.Forms.TreeNode treeNode4 = new System.Windows.Forms.TreeNode("Passo3 - Inutilizar Numeração");
            System.Windows.Forms.TreeNode treeNode5 = new System.Windows.Forms.TreeNode("Dados do Emissor*");
            System.Windows.Forms.TreeNode treeNode6 = new System.Windows.Forms.TreeNode("Dados do Destinátario*");
            System.Windows.Forms.TreeNode treeNode7 = new System.Windows.Forms.TreeNode("Modelos de Notas");
            System.Windows.Forms.TreeNode treeNode8 = new System.Windows.Forms.TreeNode("Passo4 - Gerar Nota*", new System.Windows.Forms.TreeNode[] {
            treeNode5,
            treeNode6,
            treeNode7});
            System.Windows.Forms.TreeNode treeNode9 = new System.Windows.Forms.TreeNode("Passo5 - Assinatura*");
            System.Windows.Forms.TreeNode treeNode10 = new System.Windows.Forms.TreeNode("Enviar Nota(s)*");
            System.Windows.Forms.TreeNode treeNode11 = new System.Windows.Forms.TreeNode("Consultar*");
            System.Windows.Forms.TreeNode treeNode12 = new System.Windows.Forms.TreeNode("Passo6 - Autorizar NFe*", new System.Windows.Forms.TreeNode[] {
            treeNode10,
            treeNode11});
            System.Windows.Forms.TreeNode treeNode13 = new System.Windows.Forms.TreeNode("Informações sobre o arquivo");
            System.Windows.Forms.TreeNode treeNode14 = new System.Windows.Forms.TreeNode("Enviar XML Destinatário");
            System.Windows.Forms.TreeNode treeNode15 = new System.Windows.Forms.TreeNode("Passo7 - XML Destinatário", new System.Windows.Forms.TreeNode[] {
            treeNode13,
            treeNode14});
            System.Windows.Forms.TreeNode treeNode16 = new System.Windows.Forms.TreeNode("Passo8 - Cancelamento NFe Evento");
            System.Windows.Forms.TreeNode treeNode17 = new System.Windows.Forms.TreeNode("Passo9 - DANFE*");
            System.Windows.Forms.TreeNode treeNode18 = new System.Windows.Forms.TreeNode("Passo10 - Manifestação Destinatário");
            System.Windows.Forms.TreeNode treeNode19 = new System.Windows.Forms.TreeNode("NFe - Normal", new System.Windows.Forms.TreeNode[] {
            treeNode2,
            treeNode3,
            treeNode4,
            treeNode8,
            treeNode9,
            treeNode12,
            treeNode15,
            treeNode16,
            treeNode17,
            treeNode18});
            System.Windows.Forms.TreeNode treeNode20 = new System.Windows.Forms.TreeNode("Passo 1 - Assinar Nota Gerada");
            System.Windows.Forms.TreeNode treeNode21 = new System.Windows.Forms.TreeNode("Passo 2 - Imprimir FS / FS-DA");
            System.Windows.Forms.TreeNode treeNode22 = new System.Windows.Forms.TreeNode("Passo 3 - Enviar ao Serv. Estadual");
            System.Windows.Forms.TreeNode treeNode23 = new System.Windows.Forms.TreeNode("Passo 4 - Consultar FS / FS-DA");
            System.Windows.Forms.TreeNode treeNode24 = new System.Windows.Forms.TreeNode("Passo 5 - Enviar XML FS / FS-DA Destinatário");
            System.Windows.Forms.TreeNode treeNode25 = new System.Windows.Forms.TreeNode("NFe - FS ou FS-DA", new System.Windows.Forms.TreeNode[] {
            treeNode20,
            treeNode21,
            treeNode22,
            treeNode23,
            treeNode24});
            this.pnlPublicitario = new System.Windows.Forms.Panel();
            this.wbPublicidade = new System.Windows.Forms.WebBrowser();
            this.pnlPrincipal = new System.Windows.Forms.Panel();
            this.tvNFe = new System.Windows.Forms.TreeView();
            this.pnlRodape = new System.Windows.Forms.Panel();
            this.btnOutrosRecursos = new System.Windows.Forms.Button();
            this.cmsOutrosRecursos = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.mniImportacaoXmlDataset = new System.Windows.Forms.ToolStripMenuItem();
            this.mniConsultaDistribuçãoDFe = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripSeparator();
            this.mniFluxoNormal = new System.Windows.Forms.ToolStripMenuItem();
            this.mniFluxoFS = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem2 = new System.Windows.Forms.ToolStripSeparator();
            this.mniCancelamentoNFe = new System.Windows.Forms.ToolStripMenuItem();
            this.mniManifestacaoNFe = new System.Windows.Forms.ToolStripMenuItem();
            this.btnAvancar = new System.Windows.Forms.Button();
            this.btnVoltar = new System.Windows.Forms.Button();
            this.btnSaveConfig = new System.Windows.Forms.Button();
            this.pnlModelosNotas = new System.Windows.Forms.Panel();
            this.lblModeloNota = new System.Windows.Forms.Label();
            this.gbModelosCOFINSST = new System.Windows.Forms.GroupBox();
            this.cboCOFINSST = new System.Windows.Forms.ComboBox();
            this.gbModeloCOFINS = new System.Windows.Forms.GroupBox();
            this.cboCOFINS = new System.Windows.Forms.ComboBox();
            this.gbModeloPISST = new System.Windows.Forms.GroupBox();
            this.cboPISST = new System.Windows.Forms.ComboBox();
            this.gbModelosPIS = new System.Windows.Forms.GroupBox();
            this.cboPIS = new System.Windows.Forms.ComboBox();
            this.gbModelosISSQN = new System.Windows.Forms.GroupBox();
            this.cboISSQN = new System.Windows.Forms.ComboBox();
            this.gbModelosII = new System.Windows.Forms.GroupBox();
            this.cboII = new System.Windows.Forms.ComboBox();
            this.gbModelosIPI = new System.Windows.Forms.GroupBox();
            this.cboIPI = new System.Windows.Forms.ComboBox();
            this.gbModeloICMS = new System.Windows.Forms.GroupBox();
            this.cboICMS = new System.Windows.Forms.ComboBox();
            this.llbFatura = new System.Windows.Forms.LinkLabel();
            this.llbTransportadora = new System.Windows.Forms.LinkLabel();
            this.llbNotaConjulgada = new System.Windows.Forms.LinkLabel();
            this.llbNotaReferencia = new System.Windows.Forms.LinkLabel();
            this.llbExportacao = new System.Windows.Forms.LinkLabel();
            this.llbMedicamento = new System.Windows.Forms.LinkLabel();
            this.llbCombustivel = new System.Windows.Forms.LinkLabel();
            this.llbCanaAcucar = new System.Windows.Forms.LinkLabel();
            this.llbArmamento = new System.Windows.Forms.LinkLabel();
            this.llbVeiculosNovos = new System.Windows.Forms.LinkLabel();
            this.llbNotaBasica = new System.Windows.Forms.LinkLabel();
            this.bgOutrosDados = new System.Windows.Forms.GroupBox();
            this.chkPartilha = new System.Windows.Forms.CheckBox();
            this.chkFatura = new System.Windows.Forms.CheckBox();
            this.chkTransportadora = new System.Windows.Forms.CheckBox();
            this.chkNotaConjugada = new System.Windows.Forms.CheckBox();
            this.chkNotaReferenciada = new System.Windows.Forms.CheckBox();
            this.chkExportacao = new System.Windows.Forms.CheckBox();
            this.gbRamosEspecificos = new System.Windows.Forms.GroupBox();
            this.rbMedicamento = new System.Windows.Forms.RadioButton();
            this.rbCombustiveis = new System.Windows.Forms.RadioButton();
            this.rbCanaAcucar = new System.Windows.Forms.RadioButton();
            this.rbArmamento = new System.Windows.Forms.RadioButton();
            this.rdVeiculosNovos = new System.Windows.Forms.RadioButton();
            this.rbNota = new System.Windows.Forms.RadioButton();
            this.pnlDanfe = new System.Windows.Forms.Panel();
            this.btnModeloRTM = new System.Windows.Forms.Button();
            this.txtModeloRTM = new System.Windows.Forms.TextBox();
            this.lblDanfe = new System.Windows.Forms.Label();
            this.cboImpressora = new System.Windows.Forms.ComboBox();
            this.btnExportarDanfeCaminho = new System.Windows.Forms.Button();
            this.txtExportarDanfe = new System.Windows.Forms.TextBox();
            this.btnVisualizar = new System.Windows.Forms.Button();
            this.btnImprimir = new System.Windows.Forms.Button();
            this.btnExportar = new System.Windows.Forms.Button();
            this.btnEditar = new System.Windows.Forms.Button();
            this.pnlConfiguracao = new System.Windows.Forms.Panel();
            this.tbConfiguracoes = new System.Windows.Forms.TabControl();
            this.tbPrincipal = new System.Windows.Forms.TabPage();
            this.txtPinCode = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.llbServProd = new System.Windows.Forms.LinkLabel();
            this.llbServHomolog = new System.Windows.Forms.LinkLabel();
            this.llbNomeCertificado = new System.Windows.Forms.LinkLabel();
            this.llbTipoCertificado = new System.Windows.Forms.LinkLabel();
            this.lblObrigatorio4 = new System.Windows.Forms.Label();
            this.lblObrigatorio3 = new System.Windows.Forms.Label();
            this.lblObrigatorio2 = new System.Windows.Forms.Label();
            this.lblObrigatorio7 = new System.Windows.Forms.Label();
            this.lblObrigatorio6 = new System.Windows.Forms.Label();
            this.lblObrigatorio8 = new System.Windows.Forms.Label();
            this.lblObrigatorio5 = new System.Windows.Forms.Label();
            this.lblObrigatorio1 = new System.Windows.Forms.Label();
            this.btnLoadConfig = new System.Windows.Forms.Button();
            this.chkIgnCertInvalido = new System.Windows.Forms.CheckBox();
            this.chkValidEsquema = new System.Windows.Forms.CheckBox();
            this.chkAnexarDanfePdf = new System.Windows.Forms.CheckBox();
            this.lblMaxSizeLoteEnvio = new System.Windows.Forms.Label();
            this.txtMaxSizeLoteEnvio = new System.Windows.Forms.TextBox();
            this.btnDirTemplates = new System.Windows.Forms.Button();
            this.btnDirLog = new System.Windows.Forms.Button();
            this.btnServProd = new System.Windows.Forms.Button();
            this.btnDirEsquema = new System.Windows.Forms.Button();
            this.btnXmlDestinatario = new System.Windows.Forms.Button();
            this.btnServHomolog = new System.Windows.Forms.Button();
            this.lblDiretorioTemplates = new System.Windows.Forms.Label();
            this.lblDiretorioEsquemas = new System.Windows.Forms.Label();
            this.lblDiretorioLog = new System.Windows.Forms.Label();
            this.lblXmlDestinatario = new System.Windows.Forms.Label();
            this.lblServidoresProducao = new System.Windows.Forms.Label();
            this.lblServidoresHomologacao = new System.Windows.Forms.Label();
            this.txtDirEsquema = new System.Windows.Forms.TextBox();
            this.txtDirTemplate = new System.Windows.Forms.TextBox();
            this.txtDirLog = new System.Windows.Forms.TextBox();
            this.txtServProd = new System.Windows.Forms.TextBox();
            this.txtXmlDestinatario = new System.Windows.Forms.TextBox();
            this.txtServHomolog = new System.Windows.Forms.TextBox();
            this.lblNomeDoCertificado = new System.Windows.Forms.Label();
            this.btnObterValidade = new System.Windows.Forms.Button();
            this.cboNomeCertificado = new System.Windows.Forms.ComboBox();
            this.lblVersao = new System.Windows.Forms.Label();
            this.lblCnpj = new System.Windows.Forms.Label();
            this.lblUF = new System.Windows.Forms.Label();
            this.lblAmbiente = new System.Windows.Forms.Label();
            this.lblTipoCertificado = new System.Windows.Forms.Label();
            this.txtCnpj = new System.Windows.Forms.TextBox();
            this.cboVersao = new System.Windows.Forms.ComboBox();
            this.cboUF = new System.Windows.Forms.ComboBox();
            this.cboAmbiente = new System.Windows.Forms.ComboBox();
            this.cboTipoCertificado = new System.Windows.Forms.ComboBox();
            this.tbProxy = new System.Windows.Forms.TabPage();
            this.txtSenha = new System.Windows.Forms.TextBox();
            this.txtUsuario = new System.Windows.Forms.TextBox();
            this.txtTimeOut = new System.Windows.Forms.TextBox();
            this.txtProxy = new System.Windows.Forms.TextBox();
            this.lblUsuario = new System.Windows.Forms.Label();
            this.lblSenha = new System.Windows.Forms.Label();
            this.lblTimeOut = new System.Windows.Forms.Label();
            this.lblProxy = new System.Windows.Forms.Label();
            this.tbDanfe = new System.Windows.Forms.TabPage();
            this.llbModeloPaisagem = new System.Windows.Forms.LinkLabel();
            this.llbModeloRetrato = new System.Windows.Forms.LinkLabel();
            this.lblObrigatorio25 = new System.Windows.Forms.Label();
            this.lblObrigatorio24 = new System.Windows.Forms.Label();
            this.btnLogoTipoEmitente = new System.Windows.Forms.Button();
            this.btnModeloRetrato = new System.Windows.Forms.Button();
            this.btnModeloPaisagem = new System.Windows.Forms.Button();
            this.txtLogoTipoEmitente = new System.Windows.Forms.TextBox();
            this.txtModeloRetrato = new System.Windows.Forms.TextBox();
            this.txtModeloPaisagem = new System.Windows.Forms.TextBox();
            this.txtLineDelimiter = new System.Windows.Forms.TextBox();
            this.txtCopias = new System.Windows.Forms.TextBox();
            this.txtFraseHomolog = new System.Windows.Forms.TextBox();
            this.txtFraseContigencia = new System.Windows.Forms.TextBox();
            this.lblModeloRetrato = new System.Windows.Forms.Label();
            this.lblModeloPaisagem = new System.Windows.Forms.Label();
            this.lblCopias = new System.Windows.Forms.Label();
            this.lblLineDelimiter = new System.Windows.Forms.Label();
            this.lblLogoTipoEmitente = new System.Windows.Forms.Label();
            this.lblFraseHomologacao = new System.Windows.Forms.Label();
            this.lblFraseContigencia = new System.Windows.Forms.Label();
            this.lblConfGerais = new System.Windows.Forms.Label();
            this.pnlInfoArquivo = new System.Windows.Forms.Panel();
            this.lblInfo = new System.Windows.Forms.Label();
            this.tcInfo = new System.Windows.Forms.TabControl();
            this.tptextoInfo = new System.Windows.Forms.TabPage();
            this.rtbXMLinfo = new System.Windows.Forms.RichTextBox();
            this.tpBrowserInfo = new System.Windows.Forms.TabPage();
            this.wbXMLinfo = new System.Windows.Forms.WebBrowser();
            this.btnAbrirXmlDest = new System.Windows.Forms.Button();
            this.lblCaminhoArquivo = new System.Windows.Forms.Label();
            this.lblArquivo = new System.Windows.Forms.Label();
            this.pnlEmailConfig = new System.Windows.Forms.Panel();
            this.txtEmailTimeOut = new System.Windows.Forms.TextBox();
            this.lblEmailTimeOut = new System.Windows.Forms.Label();
            this.lblemail = new System.Windows.Forms.Label();
            this.chkAutenticacao = new System.Windows.Forms.CheckBox();
            this.rtbEmailMensagem = new System.Windows.Forms.RichTextBox();
            this.txtEmailUsuario = new System.Windows.Forms.TextBox();
            this.txtCC = new System.Windows.Forms.TextBox();
            this.txtAssunto = new System.Windows.Forms.TextBox();
            this.txtCCo = new System.Windows.Forms.TextBox();
            this.txtEmailSenha = new System.Windows.Forms.TextBox();
            this.txtEmailDestinatario = new System.Windows.Forms.TextBox();
            this.txtPorta = new System.Windows.Forms.TextBox();
            this.txtEmailRemetente = new System.Windows.Forms.TextBox();
            this.txtServidor = new System.Windows.Forms.TextBox();
            this.lblMensagem = new System.Windows.Forms.Label();
            this.lblEmailSenha = new System.Windows.Forms.Label();
            this.lblEmailUsuario = new System.Windows.Forms.Label();
            this.lblCCo = new System.Windows.Forms.Label();
            this.lblAssunto = new System.Windows.Forms.Label();
            this.lblEmailDestinatario = new System.Windows.Forms.Label();
            this.lblCC = new System.Windows.Forms.Label();
            this.lblPorta = new System.Windows.Forms.Label();
            this.lblEmailRemetente = new System.Windows.Forms.Label();
            this.lblServidor = new System.Windows.Forms.Label();
            this.pnlEnviarNota = new System.Windows.Forms.Panel();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.rbEnvCompac = new System.Windows.Forms.RadioButton();
            this.rbEnvDescompac = new System.Windows.Forms.RadioButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.rbEnvSinc = new System.Windows.Forms.RadioButton();
            this.rbEnvAssinc = new System.Windows.Forms.RadioButton();
            this.lblEnviarNota = new System.Windows.Forms.Label();
            this.llbMotivoEnvio = new System.Windows.Forms.LinkLabel();
            this.txtMotivoEnvio = new System.Windows.Forms.TextBox();
            this.txtStatusEnvio = new System.Windows.Forms.TextBox();
            this.lblMotivoEnviar = new System.Windows.Forms.Label();
            this.lblStatusEnviar = new System.Windows.Forms.Label();
            this.tbEnvio = new System.Windows.Forms.TabControl();
            this.tpTextoEnviar = new System.Windows.Forms.TabPage();
            this.rtbXMLenvio = new System.Windows.Forms.RichTextBox();
            this.tpBrowserEnviar = new System.Windows.Forms.TabPage();
            this.wbXMLenvio = new System.Windows.Forms.WebBrowser();
            this.txtNumeroRecibo = new System.Windows.Forms.TextBox();
            this.txtChaveNota = new System.Windows.Forms.TextBox();
            this.lblNumeroRecibo = new System.Windows.Forms.Label();
            this.lblChaveNota = new System.Windows.Forms.Label();
            this.btnEnviarNota = new System.Windows.Forms.Button();
            this.pnlConsultarRecibo = new System.Windows.Forms.Panel();
            this.txtMotivoConsulta = new System.Windows.Forms.TextBox();
            this.lblConsultar = new System.Windows.Forms.Label();
            this.txtStatusConsulta = new System.Windows.Forms.TextBox();
            this.lblMotivoConsulta = new System.Windows.Forms.Label();
            this.lblStatusConsulta = new System.Windows.Forms.Label();
            this.tcConsultar = new System.Windows.Forms.TabControl();
            this.tptextoConsulta = new System.Windows.Forms.TabPage();
            this.rtbXmlConsulta = new System.Windows.Forms.RichTextBox();
            this.tpBrowserConsulta = new System.Windows.Forms.TabPage();
            this.wbXMLconsulta = new System.Windows.Forms.WebBrowser();
            this.txtProtocoloAutorizacao = new System.Windows.Forms.TextBox();
            this.lblProtocoloAutorizacao = new System.Windows.Forms.Label();
            this.btnConsultarChave = new System.Windows.Forms.Button();
            this.txtChaveNotaCom = new System.Windows.Forms.TextBox();
            this.lblChaveNotaCom = new System.Windows.Forms.Label();
            this.lblOU = new System.Windows.Forms.Label();
            this.llbMotivoConsulta = new System.Windows.Forms.LinkLabel();
            this.llbConsultarChave = new System.Windows.Forms.LinkLabel();
            this.llbConsultaRecibo = new System.Windows.Forms.LinkLabel();
            this.btnConsultaRecibo = new System.Windows.Forms.Button();
            this.txtNumeroReciboCom = new System.Windows.Forms.TextBox();
            this.lblNumeroReciboCom = new System.Windows.Forms.Label();
            this.pnlAssinatura = new System.Windows.Forms.Panel();
            this.lblAssinarNFe = new System.Windows.Forms.Label();
            this.btnPreverDanfe = new System.Windows.Forms.Button();
            this.btnAssinarNota = new System.Windows.Forms.Button();
            this.tcXmlAssinado = new System.Windows.Forms.TabControl();
            this.tpTextoXmlAssinado = new System.Windows.Forms.TabPage();
            this.rtbXmlNotaAssinado = new System.Windows.Forms.RichTextBox();
            this.tpBrowserXmlAssinado = new System.Windows.Forms.TabPage();
            this.wbXmlNotaAssinado = new System.Windows.Forms.WebBrowser();
            this.tcXmlNota = new System.Windows.Forms.TabControl();
            this.tpTextoXml = new System.Windows.Forms.TabPage();
            this.rtbXmlNota = new System.Windows.Forms.RichTextBox();
            this.tpBrowserXml = new System.Windows.Forms.TabPage();
            this.wbXmlNota = new System.Windows.Forms.WebBrowser();
            this.lblXmlAssinado = new System.Windows.Forms.Label();
            this.lblXmlNota = new System.Windows.Forms.Label();
            this.pnlEnviarNFeDest = new System.Windows.Forms.Panel();
            this.chkNota = new System.Windows.Forms.CheckBox();
            this.lblENviarXml = new System.Windows.Forms.Label();
            this.clbAnexos = new System.Windows.Forms.CheckedListBox();
            this.lblAnexos = new System.Windows.Forms.Label();
            this.txtAnexar = new System.Windows.Forms.TextBox();
            this.lblAnexar = new System.Windows.Forms.Label();
            this.btnAnexar = new System.Windows.Forms.Button();
            this.btnEnviar = new System.Windows.Forms.Button();
            this.txtEnviarEmailDestinatario = new System.Windows.Forms.TextBox();
            this.lblEnviarEmailDestinatario = new System.Windows.Forms.Label();
            this.pnlCancelar = new System.Windows.Forms.Panel();
            this.lblCancelarNfe = new System.Windows.Forms.Label();
            this.llbMotivoCancelamentoNota = new System.Windows.Forms.LinkLabel();
            this.tcCancelarNota = new System.Windows.Forms.TabControl();
            this.tpXMLCancelarNota = new System.Windows.Forms.TabPage();
            this.rtbCancelarNota = new System.Windows.Forms.RichTextBox();
            this.tpWebXMLCancelarNota = new System.Windows.Forms.TabPage();
            this.wbXMLCancelamentoNota = new System.Windows.Forms.WebBrowser();
            this.btnCancelarNota = new System.Windows.Forms.Button();
            this.txtCancProtocoloAut = new System.Windows.Forms.TextBox();
            this.txtCancChaveNota = new System.Windows.Forms.TextBox();
            this.txtCancJustificativa = new System.Windows.Forms.TextBox();
            this.txtCancStatus = new System.Windows.Forms.TextBox();
            this.txtCancMotivo = new System.Windows.Forms.TextBox();
            this.lblCancMotivo = new System.Windows.Forms.Label();
            this.lblCancStatus = new System.Windows.Forms.Label();
            this.lblCancJustificativa = new System.Windows.Forms.Label();
            this.lblCancProtocoloAut = new System.Windows.Forms.Label();
            this.lblCancChaveNota = new System.Windows.Forms.Label();
            this.pnlCancelamentoEvento = new System.Windows.Forms.Panel();
            this.label28 = new System.Windows.Forms.Label();
            this.txtMotivoCancEvento = new System.Windows.Forms.TextBox();
            this.label29 = new System.Windows.Forms.Label();
            this.txtStatusCancEvento = new System.Windows.Forms.TextBox();
            this.tabControl5 = new System.Windows.Forms.TabControl();
            this.tabPage7 = new System.Windows.Forms.TabPage();
            this.txtTextoCancEvento = new System.Windows.Forms.TextBox();
            this.tabPage8 = new System.Windows.Forms.TabPage();
            this.wbCancEvento = new System.Windows.Forms.WebBrowser();
            this.btnCancEvento = new System.Windows.Forms.Button();
            this.btnDataHoraCancEvento = new System.Windows.Forms.Button();
            this.label30 = new System.Windows.Forms.Label();
            this.txtJustificativaCancEvento = new System.Windows.Forms.TextBox();
            this.label32 = new System.Windows.Forms.Label();
            this.cboFusoCancEvento = new System.Windows.Forms.ComboBox();
            this.label33 = new System.Windows.Forms.Label();
            this.txtDataHoraCancEvento = new System.Windows.Forms.MaskedTextBox();
            this.label34 = new System.Windows.Forms.Label();
            this.txtProtocoloCancEvento = new System.Windows.Forms.TextBox();
            this.label35 = new System.Windows.Forms.Label();
            this.txtChaveCancEvento = new System.Windows.Forms.TextBox();
            this.label36 = new System.Windows.Forms.Label();
            this.pnlEnviaCancDest = new System.Windows.Forms.Panel();
            this.lblXmlCancelado = new System.Windows.Forms.Label();
            this.tcEnviarCancDest = new System.Windows.Forms.TabControl();
            this.tpEnviarCancDest = new System.Windows.Forms.TabPage();
            this.rtbXMLEnviarCancDest = new System.Windows.Forms.RichTextBox();
            this.tpWebEnviarCancDest = new System.Windows.Forms.TabPage();
            this.wbXMLEnviarCancDest = new System.Windows.Forms.WebBrowser();
            this.BtnCandDest = new System.Windows.Forms.Button();
            this.btnEnviarCancDest = new System.Windows.Forms.Button();
            this.txtEmailCancDest = new System.Windows.Forms.TextBox();
            this.lblCancDestEmail = new System.Windows.Forms.Label();
            this.lblCaminhoCancDet = new System.Windows.Forms.Label();
            this.lblEnviaCancArquivo = new System.Windows.Forms.Label();
            this.pnlEnviarDestinatarioFS = new System.Windows.Forms.Panel();
            this.chkNotaFS = new System.Windows.Forms.CheckBox();
            this.lblEnvXMLFSDet = new System.Windows.Forms.Label();
            this.btnAnexarFS = new System.Windows.Forms.Button();
            this.btnEnviarEmailFS = new System.Windows.Forms.Button();
            this.clbAnexosFS = new System.Windows.Forms.CheckedListBox();
            this.txtAnexarFS = new System.Windows.Forms.TextBox();
            this.txtEmailDestFS = new System.Windows.Forms.TextBox();
            this.lblAnexarFS = new System.Windows.Forms.Label();
            this.lblAnexosFS = new System.Windows.Forms.Label();
            this.lblEmailDestFS = new System.Windows.Forms.Label();
            this.pnlEmitente = new System.Windows.Forms.Panel();
            this.edtAuthXML = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.lblObrigatorio23 = new System.Windows.Forms.Label();
            this.lblObrigatorio22 = new System.Windows.Forms.Label();
            this.lblObrigatorio21 = new System.Windows.Forms.Label();
            this.lblObrigatorio20 = new System.Windows.Forms.Label();
            this.lblObrigatorio19 = new System.Windows.Forms.Label();
            this.lblObrigatorio18 = new System.Windows.Forms.Label();
            this.lblObrigatorio17 = new System.Windows.Forms.Label();
            this.lblObrigatorio16 = new System.Windows.Forms.Label();
            this.lblObrigatorio15 = new System.Windows.Forms.Label();
            this.lblObrigatorio14 = new System.Windows.Forms.Label();
            this.lblObrigatorio13 = new System.Windows.Forms.Label();
            this.lblObrigatorio12 = new System.Windows.Forms.Label();
            this.lblObrigatorio11 = new System.Windows.Forms.Label();
            this.lblObrigatorio10 = new System.Windows.Forms.Label();
            this.lblObrigatorio9 = new System.Windows.Forms.Label();
            this.llbCodCidIbgeEmit = new System.Windows.Forms.LinkLabel();
            this.llbCodPaisIbgeEmit = new System.Windows.Forms.LinkLabel();
            this.cboCodRegimeTrib = new System.Windows.Forms.ComboBox();
            this.cboUfEmit = new System.Windows.Forms.ComboBox();
            this.txtCidadeEmit = new System.Windows.Forms.TextBox();
            this.txtPaisEmit = new System.Windows.Forms.TextBox();
            this.txtInscricaoMunicipalEmit = new System.Windows.Forms.TextBox();
            this.txtTelefoneEmit = new System.Windows.Forms.TextBox();
            this.txtCpfCnpjEmit = new System.Windows.Forms.TextBox();
            this.txtCnaeEmit = new System.Windows.Forms.TextBox();
            this.txtComplementoEmit = new System.Windows.Forms.TextBox();
            this.txtIeEmit = new System.Windows.Forms.TextBox();
            this.txtCodCidIbgeEmit = new System.Windows.Forms.TextBox();
            this.txtCepEmit = new System.Windows.Forms.TextBox();
            this.txtBairroEmit = new System.Windows.Forms.TextBox();
            this.txtIeSubTribEmit = new System.Windows.Forms.TextBox();
            this.txtCodPaisIbgeEmit = new System.Windows.Forms.TextBox();
            this.txtNomeFantasiaEmit = new System.Windows.Forms.TextBox();
            this.txtEnderecoEmit = new System.Windows.Forms.TextBox();
            this.txtNumeroEmit = new System.Windows.Forms.TextBox();
            this.txtRazaoSocialEmit = new System.Windows.Forms.TextBox();
            this.lblNomeCidadeEmit = new System.Windows.Forms.Label();
            this.lblcodCidIbgeEmit = new System.Windows.Forms.Label();
            this.lblCepEmit = new System.Windows.Forms.Label();
            this.lblCnaeFiscalEmit = new System.Windows.Forms.Label();
            this.lblCodPaisIbgeEmit = new System.Windows.Forms.Label();
            this.lblIeSubstitutoEmit = new System.Windows.Forms.Label();
            this.lblBairroEmit = new System.Windows.Forms.Label();
            this.lblUfEmit = new System.Windows.Forms.Label();
            this.lblNomeDoPais = new System.Windows.Forms.Label();
            this.lblComplementoEmit = new System.Windows.Forms.Label();
            this.lblEnderecoEmit = new System.Windows.Forms.Label();
            this.lblCodigoRegimeTrib = new System.Windows.Forms.Label();
            this.lblNumeroEmit = new System.Windows.Forms.Label();
            this.lblIeEmit = new System.Windows.Forms.Label();
            this.lblNomeFanstasiaEmit = new System.Windows.Forms.Label();
            this.lblInscricaoMunicipalEmit = new System.Windows.Forms.Label();
            this.lblDadosDoEmitente = new System.Windows.Forms.Label();
            this.lblTelefoneEmit = new System.Windows.Forms.Label();
            this.lblCpfCnpjEmit = new System.Windows.Forms.Label();
            this.lblRazaoSocialEmit = new System.Windows.Forms.Label();
            this.pnlDestinatario = new System.Windows.Forms.Panel();
            this.lblObrigatorio38 = new System.Windows.Forms.Label();
            this.lblObrigatorio37 = new System.Windows.Forms.Label();
            this.lblObrigatorio36 = new System.Windows.Forms.Label();
            this.lblObrigatorio35 = new System.Windows.Forms.Label();
            this.lblObrigatorio34 = new System.Windows.Forms.Label();
            this.lblObrigatorio33 = new System.Windows.Forms.Label();
            this.lblObrigatorio32 = new System.Windows.Forms.Label();
            this.lblObrigatorio31 = new System.Windows.Forms.Label();
            this.lblObrigatorio30 = new System.Windows.Forms.Label();
            this.lblObrigatorio29 = new System.Windows.Forms.Label();
            this.lblObrigatorio28 = new System.Windows.Forms.Label();
            this.lblObrigatorio27 = new System.Windows.Forms.Label();
            this.lblObrigatorio26 = new System.Windows.Forms.Label();
            this.cboUfDest = new System.Windows.Forms.ComboBox();
            this.llbCodPaisIbgeDest = new System.Windows.Forms.LinkLabel();
            this.llbCodCidIbgeDest = new System.Windows.Forms.LinkLabel();
            this.txtCpfCnpjDest = new System.Windows.Forms.TextBox();
            this.txtIsufDest = new System.Windows.Forms.TextBox();
            this.txtNumeroDest = new System.Windows.Forms.TextBox();
            this.txtTelefoneDest = new System.Windows.Forms.TextBox();
            this.txtComplementoDest = new System.Windows.Forms.TextBox();
            this.txtPaisDest = new System.Windows.Forms.TextBox();
            this.txtRazaoSocialDest = new System.Windows.Forms.TextBox();
            this.txtcodPaisIbgeDest = new System.Windows.Forms.TextBox();
            this.txtEnderecoDest = new System.Windows.Forms.TextBox();
            this.txtCepDest = new System.Windows.Forms.TextBox();
            this.txtBairroDest = new System.Windows.Forms.TextBox();
            this.txtEmailDest = new System.Windows.Forms.TextBox();
            this.txtCidadeDest = new System.Windows.Forms.TextBox();
            this.txtCodCidIbgeDest = new System.Windows.Forms.TextBox();
            this.txtIeDest = new System.Windows.Forms.TextBox();
            this.lblIsufDest = new System.Windows.Forms.Label();
            this.lblTelefoneDest = new System.Windows.Forms.Label();
            this.lblCepDest = new System.Windows.Forms.Label();
            this.lblIeDest = new System.Windows.Forms.Label();
            this.lblNomeCidadeDest = new System.Windows.Forms.Label();
            this.lblUfDest = new System.Windows.Forms.Label();
            this.lblNumeroDest = new System.Windows.Forms.Label();
            this.lblComplementoDest = new System.Windows.Forms.Label();
            this.lblEmailDest = new System.Windows.Forms.Label();
            this.lblCpfCnpjDest = new System.Windows.Forms.Label();
            this.lblCodCidIbgeDest = new System.Windows.Forms.Label();
            this.lblCodPaisIbgeDest = new System.Windows.Forms.Label();
            this.lblBairroDest = new System.Windows.Forms.Label();
            this.lblNomePaisDest = new System.Windows.Forms.Label();
            this.lblEnderecoDest = new System.Windows.Forms.Label();
            this.lblRazaoSocalDest = new System.Windows.Forms.Label();
            this.lblDadosDestinatario = new System.Windows.Forms.Label();
            this.pnlConsultarFS = new System.Windows.Forms.Panel();
            this.llbConsFsMot = new System.Windows.Forms.LinkLabel();
            this.llbConsFSChave = new System.Windows.Forms.LinkLabel();
            this.llbConsFSRec = new System.Windows.Forms.LinkLabel();
            this.lblConsultarFS = new System.Windows.Forms.Label();
            this.tcConsultarFS = new System.Windows.Forms.TabControl();
            this.tpXmlConsultaFS = new System.Windows.Forms.TabPage();
            this.rtbXmlConsultarFS = new System.Windows.Forms.RichTextBox();
            this.tpwbConsultarFS = new System.Windows.Forms.TabPage();
            this.wbXMLConsultaFS = new System.Windows.Forms.WebBrowser();
            this.btnConsultarChaveFS = new System.Windows.Forms.Button();
            this.btnConsultaRecFS = new System.Windows.Forms.Button();
            this.txtMotivoConsultarFS = new System.Windows.Forms.TextBox();
            this.txtStatusConsultarFs = new System.Windows.Forms.TextBox();
            this.txtProtAutoFS = new System.Windows.Forms.TextBox();
            this.txtChaveNotaFS = new System.Windows.Forms.TextBox();
            this.txtNumRecFS = new System.Windows.Forms.TextBox();
            this.lblStatusConsultarFS = new System.Windows.Forms.Label();
            this.lblMotivoConsultarFS = new System.Windows.Forms.Label();
            this.lblProtocoloAutFS = new System.Windows.Forms.Label();
            this.lblOuFS = new System.Windows.Forms.Label();
            this.lblChaveNotaFSCons = new System.Windows.Forms.Label();
            this.lblNumeroRecFSCons = new System.Windows.Forms.Label();
            this.pnlEnviarServEstFS = new System.Windows.Forms.Panel();
            this.llbServEstFSMot = new System.Windows.Forms.LinkLabel();
            this.lblEnviarServEstadual = new System.Windows.Forms.Label();
            this.btnEnviarServEstFS = new System.Windows.Forms.Button();
            this.txtMotivoEnviServEstFS = new System.Windows.Forms.TextBox();
            this.txtStatusEnvServEstFS = new System.Windows.Forms.TextBox();
            this.txtNumReciboFS = new System.Windows.Forms.TextBox();
            this.txtChaveFS = new System.Windows.Forms.TextBox();
            this.lblMotivoEnviarServEstFS = new System.Windows.Forms.Label();
            this.lblStatusEnviarServEstFS = new System.Windows.Forms.Label();
            this.lblNumeroRecFS = new System.Windows.Forms.Label();
            this.lblChaveNotaFS = new System.Windows.Forms.Label();
            this.tcEnviarServEstFs = new System.Windows.Forms.TabControl();
            this.tpXmlEnviarServEstFs = new System.Windows.Forms.TabPage();
            this.rtbEnviarXmlServEstFS = new System.Windows.Forms.RichTextBox();
            this.tpwbEnviarNotaServEstFS = new System.Windows.Forms.TabPage();
            this.wbXmlEnviarServEstFS = new System.Windows.Forms.WebBrowser();
            this.pnlEnviarServEstadual = new System.Windows.Forms.Panel();
            this.lblenviarservest = new System.Windows.Forms.Label();
            this.txtMotivoEnviarServEst = new System.Windows.Forms.TextBox();
            this.txtStatusEnviarServEst = new System.Windows.Forms.TextBox();
            this.lblMotivoEnviarServEst = new System.Windows.Forms.Label();
            this.lblStatusEnviarServEst = new System.Windows.Forms.Label();
            this.tcEnviarServEst = new System.Windows.Forms.TabControl();
            this.tpXmlEnviarServEst = new System.Windows.Forms.TabPage();
            this.rtbXmlEnviarServEst = new System.Windows.Forms.RichTextBox();
            this.tpwbXmlEnviarServEst = new System.Windows.Forms.TabPage();
            this.wbXmlEnviarServEst = new System.Windows.Forms.WebBrowser();
            this.btnEnviarServEstad = new System.Windows.Forms.Button();
            this.pnlAssinarNotaFs = new System.Windows.Forms.Panel();
            this.lblAssinarFS = new System.Windows.Forms.Label();
            this.btnAssinarFs = new System.Windows.Forms.Button();
            this.tcXmlNotaFsAss = new System.Windows.Forms.TabControl();
            this.tpXmlNotaFSAss = new System.Windows.Forms.TabPage();
            this.rtbXmlNotaFsAss = new System.Windows.Forms.RichTextBox();
            this.tpWbXmlNotaFsAss = new System.Windows.Forms.TabPage();
            this.wbXmlNotaFsAss = new System.Windows.Forms.WebBrowser();
            this.tcNotaFs = new System.Windows.Forms.TabControl();
            this.tpXmlNotaFS = new System.Windows.Forms.TabPage();
            this.rtbXMLNotaFs = new System.Windows.Forms.RichTextBox();
            this.tpwbXmlNotaFS = new System.Windows.Forms.TabPage();
            this.wbXmlNotaFS = new System.Windows.Forms.WebBrowser();
            this.cboTipoEmissFS = new System.Windows.Forms.ComboBox();
            this.lblTipoEmissaoFS = new System.Windows.Forms.Label();
            this.lblXmlAssinadoFs = new System.Windows.Forms.Label();
            this.lblXmlNotaFs = new System.Windows.Forms.Label();
            this.pnlComunicacao = new System.Windows.Forms.Panel();
            this.lblComunicacao = new System.Windows.Forms.Label();
            this.llbMotivo = new System.Windows.Forms.LinkLabel();
            this.btnVerificarStatus = new System.Windows.Forms.Button();
            this.txtMotivoStatus = new System.Windows.Forms.TextBox();
            this.txtStatusServidor = new System.Windows.Forms.TextBox();
            this.lblMotivo = new System.Windows.Forms.Label();
            this.lblStatus = new System.Windows.Forms.Label();
            this.lblVerificacaoStatus = new System.Windows.Forms.Label();
            this.tcStatusServico = new System.Windows.Forms.TabControl();
            this.tpTexto = new System.Windows.Forms.TabPage();
            this.rtbStatusServico = new System.Windows.Forms.RichTextBox();
            this.tpBrowser = new System.Windows.Forms.TabPage();
            this.wbStatusServico = new System.Windows.Forms.WebBrowser();
            this.pnlImprimirFs = new System.Windows.Forms.Panel();
            this.lblImprimirFS = new System.Windows.Forms.Label();
            this.cboImpressoraFS = new System.Windows.Forms.ComboBox();
            this.txtCaminhoArqFS = new System.Windows.Forms.TextBox();
            this.btnExportarArqFS = new System.Windows.Forms.Button();
            this.btnVisualizarFS = new System.Windows.Forms.Button();
            this.btnExportarFS = new System.Windows.Forms.Button();
            this.btnImprimirFS = new System.Windows.Forms.Button();
            this.btnEditarFS = new System.Windows.Forms.Button();
            this.pnlFluxoNormal = new System.Windows.Forms.Panel();
            this.PBFluxoNormal = new System.Windows.Forms.PictureBox();
            this.pnlFluxoFS = new System.Windows.Forms.Panel();
            this.PBFluxoFS = new System.Windows.Forms.PictureBox();
            this.pnlManifestacao = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.txtMotivoManEvento = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtStatusManEvento = new System.Windows.Forms.TextBox();
            this.tabControl3 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.txtTextoManEvento = new System.Windows.Forms.TextBox();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.wbManEvento = new System.Windows.Forms.WebBrowser();
            this.btnEnviarManifestacao = new System.Windows.Forms.Button();
            this.btnDataHoraManEvento = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.txtJustificativaManEvento = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cboTipoEventoMan = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.cboFusoManEvento = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtDataHoraManEvento = new System.Windows.Forms.MaskedTextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtCNPJDestEvento = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtChaveManEvento = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.pnlInutilizar = new System.Windows.Forms.Panel();
            this.lblInutilizarNumeracao = new System.Windows.Forms.Label();
            this.tcInutilizar = new System.Windows.Forms.TabControl();
            this.tpTextoInutilizar = new System.Windows.Forms.TabPage();
            this.rtbXMLInutilizar = new System.Windows.Forms.RichTextBox();
            this.tpWebInutilizar = new System.Windows.Forms.TabPage();
            this.wbXMLInutilizar = new System.Windows.Forms.WebBrowser();
            this.llbMotivoInutilizar = new System.Windows.Forms.LinkLabel();
            this.btnInutilizar = new System.Windows.Forms.Button();
            this.txtInuModelo = new System.Windows.Forms.TextBox();
            this.txtInuNfeIni = new System.Windows.Forms.TextBox();
            this.txtInuStatus = new System.Windows.Forms.TextBox();
            this.txtInuAno = new System.Windows.Forms.TextBox();
            this.txtInuMotivo = new System.Windows.Forms.TextBox();
            this.txtInuSerie = new System.Windows.Forms.TextBox();
            this.txtInuNfeFinal = new System.Windows.Forms.TextBox();
            this.txtInuJustificativa = new System.Windows.Forms.TextBox();
            this.LblInuAno = new System.Windows.Forms.Label();
            this.lblInuSerie = new System.Windows.Forms.Label();
            this.lblInuModelo = new System.Windows.Forms.Label();
            this.lblInuA = new System.Windows.Forms.Label();
            this.lblInuNFeInicial = new System.Windows.Forms.Label();
            this.lblInuNFeFinal = new System.Windows.Forms.Label();
            this.lblInuJustificativa = new System.Windows.Forms.Label();
            this.lbl = new System.Windows.Forms.Label();
            this.lblStatusInutilizar = new System.Windows.Forms.Label();
            this.btnMontarXml = new System.Windows.Forms.Button();
            this.txtCaminhoArquivo = new System.Windows.Forms.TextBox();
            this.btnExportarArq = new System.Windows.Forms.Button();
            this.txtDataHora = new System.Windows.Forms.TextBox();
            this.lblDataHora = new System.Windows.Forms.Label();
            this.OFDServHomolog = new System.Windows.Forms.OpenFileDialog();
            this.OFDServProd = new System.Windows.Forms.OpenFileDialog();
            this.FBDXmlDestinatario = new System.Windows.Forms.FolderBrowserDialog();
            this.FBDDiretorioLog = new System.Windows.Forms.FolderBrowserDialog();
            this.FBDDiretorioEsquema = new System.Windows.Forms.FolderBrowserDialog();
            this.FBDDiretorioTemplate = new System.Windows.Forms.FolderBrowserDialog();
            this.OFDModeloRetrato = new System.Windows.Forms.OpenFileDialog();
            this.OFDModeloPaisagem = new System.Windows.Forms.OpenFileDialog();
            this.OFDAnexos = new System.Windows.Forms.OpenFileDialog();
            this.OFDLogotipo = new System.Windows.Forms.OpenFileDialog();
            this.OFDAnexosFS = new System.Windows.Forms.OpenFileDialog();
            this.OFDCaminhoArquivo = new System.Windows.Forms.OpenFileDialog();
            this.pnlPublicitario.SuspendLayout();
            this.pnlPrincipal.SuspendLayout();
            this.pnlRodape.SuspendLayout();
            this.cmsOutrosRecursos.SuspendLayout();
            this.pnlModelosNotas.SuspendLayout();
            this.gbModelosCOFINSST.SuspendLayout();
            this.gbModeloCOFINS.SuspendLayout();
            this.gbModeloPISST.SuspendLayout();
            this.gbModelosPIS.SuspendLayout();
            this.gbModelosISSQN.SuspendLayout();
            this.gbModelosII.SuspendLayout();
            this.gbModelosIPI.SuspendLayout();
            this.gbModeloICMS.SuspendLayout();
            this.bgOutrosDados.SuspendLayout();
            this.gbRamosEspecificos.SuspendLayout();
            this.pnlDanfe.SuspendLayout();
            this.pnlConfiguracao.SuspendLayout();
            this.tbConfiguracoes.SuspendLayout();
            this.tbPrincipal.SuspendLayout();
            this.tbProxy.SuspendLayout();
            this.tbDanfe.SuspendLayout();
            this.pnlInfoArquivo.SuspendLayout();
            this.tcInfo.SuspendLayout();
            this.tptextoInfo.SuspendLayout();
            this.tpBrowserInfo.SuspendLayout();
            this.pnlEmailConfig.SuspendLayout();
            this.pnlEnviarNota.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.tbEnvio.SuspendLayout();
            this.tpTextoEnviar.SuspendLayout();
            this.tpBrowserEnviar.SuspendLayout();
            this.pnlConsultarRecibo.SuspendLayout();
            this.tcConsultar.SuspendLayout();
            this.tptextoConsulta.SuspendLayout();
            this.tpBrowserConsulta.SuspendLayout();
            this.pnlAssinatura.SuspendLayout();
            this.tcXmlAssinado.SuspendLayout();
            this.tpTextoXmlAssinado.SuspendLayout();
            this.tpBrowserXmlAssinado.SuspendLayout();
            this.tcXmlNota.SuspendLayout();
            this.tpTextoXml.SuspendLayout();
            this.tpBrowserXml.SuspendLayout();
            this.pnlEnviarNFeDest.SuspendLayout();
            this.pnlCancelar.SuspendLayout();
            this.tcCancelarNota.SuspendLayout();
            this.tpXMLCancelarNota.SuspendLayout();
            this.tpWebXMLCancelarNota.SuspendLayout();
            this.pnlCancelamentoEvento.SuspendLayout();
            this.tabControl5.SuspendLayout();
            this.tabPage7.SuspendLayout();
            this.tabPage8.SuspendLayout();
            this.pnlEnviaCancDest.SuspendLayout();
            this.tcEnviarCancDest.SuspendLayout();
            this.tpEnviarCancDest.SuspendLayout();
            this.tpWebEnviarCancDest.SuspendLayout();
            this.pnlEnviarDestinatarioFS.SuspendLayout();
            this.pnlEmitente.SuspendLayout();
            this.pnlDestinatario.SuspendLayout();
            this.pnlConsultarFS.SuspendLayout();
            this.tcConsultarFS.SuspendLayout();
            this.tpXmlConsultaFS.SuspendLayout();
            this.tpwbConsultarFS.SuspendLayout();
            this.pnlEnviarServEstFS.SuspendLayout();
            this.tcEnviarServEstFs.SuspendLayout();
            this.tpXmlEnviarServEstFs.SuspendLayout();
            this.tpwbEnviarNotaServEstFS.SuspendLayout();
            this.pnlEnviarServEstadual.SuspendLayout();
            this.tcEnviarServEst.SuspendLayout();
            this.tpXmlEnviarServEst.SuspendLayout();
            this.tpwbXmlEnviarServEst.SuspendLayout();
            this.pnlAssinarNotaFs.SuspendLayout();
            this.tcXmlNotaFsAss.SuspendLayout();
            this.tpXmlNotaFSAss.SuspendLayout();
            this.tpWbXmlNotaFsAss.SuspendLayout();
            this.tcNotaFs.SuspendLayout();
            this.tpXmlNotaFS.SuspendLayout();
            this.tpwbXmlNotaFS.SuspendLayout();
            this.pnlComunicacao.SuspendLayout();
            this.tcStatusServico.SuspendLayout();
            this.tpTexto.SuspendLayout();
            this.tpBrowser.SuspendLayout();
            this.pnlImprimirFs.SuspendLayout();
            this.pnlFluxoNormal.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PBFluxoNormal)).BeginInit();
            this.pnlFluxoFS.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PBFluxoFS)).BeginInit();
            this.pnlManifestacao.SuspendLayout();
            this.tabControl3.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.pnlInutilizar.SuspendLayout();
            this.tcInutilizar.SuspendLayout();
            this.tpTextoInutilizar.SuspendLayout();
            this.tpWebInutilizar.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlPublicitario
            // 
            this.pnlPublicitario.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.pnlPublicitario.Controls.Add(this.wbPublicidade);
            this.pnlPublicitario.Location = new System.Drawing.Point(3, 1);
            this.pnlPublicitario.Name = "pnlPublicitario";
            this.pnlPublicitario.Size = new System.Drawing.Size(810, 106);
            this.pnlPublicitario.TabIndex = 0;
            // 
            // wbPublicidade
            // 
            this.wbPublicidade.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbPublicidade.Location = new System.Drawing.Point(0, 0);
            this.wbPublicidade.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbPublicidade.Name = "wbPublicidade";
            this.wbPublicidade.ScrollBarsEnabled = false;
            this.wbPublicidade.Size = new System.Drawing.Size(810, 106);
            this.wbPublicidade.TabIndex = 0;
            this.wbPublicidade.Url = new System.Uri("http://www.tecno-services.com/imagens/BannerNFe.gif", System.UriKind.Absolute);
            // 
            // pnlPrincipal
            // 
            this.pnlPrincipal.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.pnlPrincipal.Controls.Add(this.tvNFe);
            this.pnlPrincipal.Controls.Add(this.pnlRodape);
            this.pnlPrincipal.Controls.Add(this.pnlModelosNotas);
            this.pnlPrincipal.Controls.Add(this.pnlDanfe);
            this.pnlPrincipal.Controls.Add(this.pnlConfiguracao);
            this.pnlPrincipal.Controls.Add(this.pnlInfoArquivo);
            this.pnlPrincipal.Controls.Add(this.pnlEmailConfig);
            this.pnlPrincipal.Controls.Add(this.pnlEnviarNota);
            this.pnlPrincipal.Controls.Add(this.pnlConsultarRecibo);
            this.pnlPrincipal.Controls.Add(this.pnlAssinatura);
            this.pnlPrincipal.Controls.Add(this.pnlEnviarNFeDest);
            this.pnlPrincipal.Controls.Add(this.pnlCancelar);
            this.pnlPrincipal.Controls.Add(this.pnlCancelamentoEvento);
            this.pnlPrincipal.Controls.Add(this.pnlEnviaCancDest);
            this.pnlPrincipal.Controls.Add(this.pnlEnviarDestinatarioFS);
            this.pnlPrincipal.Controls.Add(this.pnlEmitente);
            this.pnlPrincipal.Controls.Add(this.pnlDestinatario);
            this.pnlPrincipal.Controls.Add(this.pnlConsultarFS);
            this.pnlPrincipal.Controls.Add(this.pnlEnviarServEstFS);
            this.pnlPrincipal.Controls.Add(this.pnlEnviarServEstadual);
            this.pnlPrincipal.Controls.Add(this.pnlAssinarNotaFs);
            this.pnlPrincipal.Controls.Add(this.pnlComunicacao);
            this.pnlPrincipal.Controls.Add(this.pnlImprimirFs);
            this.pnlPrincipal.Controls.Add(this.pnlFluxoNormal);
            this.pnlPrincipal.Controls.Add(this.pnlFluxoFS);
            this.pnlPrincipal.Controls.Add(this.pnlManifestacao);
            this.pnlPrincipal.Controls.Add(this.pnlInutilizar);
            this.pnlPrincipal.Location = new System.Drawing.Point(3, 98);
            this.pnlPrincipal.Name = "pnlPrincipal";
            this.pnlPrincipal.Size = new System.Drawing.Size(813, 466);
            this.pnlPrincipal.TabIndex = 0;
            // 
            // tvNFe
            // 
            this.tvNFe.Enabled = false;
            this.tvNFe.Location = new System.Drawing.Point(6, 7);
            this.tvNFe.Name = "tvNFe";
            treeNode1.Name = "Email";
            treeNode1.Text = "Email*";
            treeNode2.Name = "Passo1";
            treeNode2.Text = "Passo1 - Configurações Gerais*";
            treeNode3.Name = "Passo2";
            treeNode3.Text = "Passo2 - Testar Comunicação";
            treeNode4.Name = "Passo3";
            treeNode4.Text = "Passo3 - Inutilizar Numeração";
            treeNode5.Name = "Empresa";
            treeNode5.Text = "Dados do Emissor*";
            treeNode6.Name = "Destinatario";
            treeNode6.Text = "Dados do Destinátario*";
            treeNode7.Name = "Modelo";
            treeNode7.Text = "Modelos de Notas";
            treeNode8.Name = "Passo4";
            treeNode8.Text = "Passo4 - Gerar Nota*";
            treeNode9.Name = "Passo5";
            treeNode9.Text = "Passo5 - Assinatura*";
            treeNode10.Name = "Enviar";
            treeNode10.Text = "Enviar Nota(s)*";
            treeNode11.Name = "Consultar";
            treeNode11.Text = "Consultar*";
            treeNode12.Name = "Passo6";
            treeNode12.Text = "Passo6 - Autorizar NFe*";
            treeNode13.Name = "Informacoes";
            treeNode13.Text = "Informações sobre o arquivo";
            treeNode14.Name = "EnviarDestinatario";
            treeNode14.Text = "Enviar XML Destinatário";
            treeNode15.Name = "Passo7";
            treeNode15.Text = "Passo7 - XML Destinatário";
            treeNode16.Name = "Passo8";
            treeNode16.Text = "Passo8 - Cancelamento NFe Evento";
            treeNode17.Name = "Passo9";
            treeNode17.Text = "Passo9 - DANFE*";
            treeNode18.Name = "Passo10";
            treeNode18.Text = "Passo10 - Manifestação Destinatário";
            treeNode19.Name = "Nfe";
            treeNode19.Text = "NFe - Normal";
            treeNode20.Name = "FSPasso1";
            treeNode20.Text = "Passo 1 - Assinar Nota Gerada";
            treeNode21.Name = "FSPasso2";
            treeNode21.Text = "Passo 2 - Imprimir FS / FS-DA";
            treeNode22.Name = "FSPasso3";
            treeNode22.Text = "Passo 3 - Enviar ao Serv. Estadual";
            treeNode23.Name = "FSPasso4";
            treeNode23.Text = "Passo 4 - Consultar FS / FS-DA";
            treeNode24.Name = "FSPasso5";
            treeNode24.Text = "Passo 5 - Enviar XML FS / FS-DA Destinatário";
            treeNode25.Name = "FSFSA";
            treeNode25.Text = "NFe - FS ou FS-DA";
            this.tvNFe.Nodes.AddRange(new System.Windows.Forms.TreeNode[] {
            treeNode19,
            treeNode25});
            this.tvNFe.Size = new System.Drawing.Size(202, 411);
            this.tvNFe.TabIndex = 2;
            // 
            // pnlRodape
            // 
            this.pnlRodape.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlRodape.Controls.Add(this.btnOutrosRecursos);
            this.pnlRodape.Controls.Add(this.btnAvancar);
            this.pnlRodape.Controls.Add(this.btnVoltar);
            this.pnlRodape.Controls.Add(this.btnSaveConfig);
            this.pnlRodape.Location = new System.Drawing.Point(6, 425);
            this.pnlRodape.Name = "pnlRodape";
            this.pnlRodape.Size = new System.Drawing.Size(796, 35);
            this.pnlRodape.TabIndex = 0;
            // 
            // btnOutrosRecursos
            // 
            this.btnOutrosRecursos.ContextMenuStrip = this.cmsOutrosRecursos;
            this.btnOutrosRecursos.Location = new System.Drawing.Point(7, 5);
            this.btnOutrosRecursos.Name = "btnOutrosRecursos";
            this.btnOutrosRecursos.Size = new System.Drawing.Size(97, 23);
            this.btnOutrosRecursos.TabIndex = 26;
            this.btnOutrosRecursos.Text = "Outros Recursos";
            this.btnOutrosRecursos.UseVisualStyleBackColor = true;
            this.btnOutrosRecursos.Click += new System.EventHandler(this.btnOutrosRecursos_Click);
            // 
            // cmsOutrosRecursos
            // 
            this.cmsOutrosRecursos.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mniImportacaoXmlDataset,
            this.mniConsultaDistribuçãoDFe,
            this.toolStripMenuItem1,
            this.mniFluxoNormal,
            this.mniFluxoFS,
            this.toolStripMenuItem2,
            this.mniCancelamentoNFe,
            this.mniManifestacaoNFe});
            this.cmsOutrosRecursos.Name = "cmsOutrosRecursos";
            this.cmsOutrosRecursos.Size = new System.Drawing.Size(342, 170);
            // 
            // mniImportacaoXmlDataset
            // 
            this.mniImportacaoXmlDataset.Name = "mniImportacaoXmlDataset";
            this.mniImportacaoXmlDataset.Size = new System.Drawing.Size(341, 22);
            this.mniImportacaoXmlDataset.Text = "Exemplo de Importação de Xml NF-e para Dataset";
            this.mniImportacaoXmlDataset.Click += new System.EventHandler(this.mniImportacaoXmlDataset_Click);
            // 
            // mniConsultaDistribuçãoDFe
            // 
            this.mniConsultaDistribuçãoDFe.Name = "mniConsultaDistribuçãoDFe";
            this.mniConsultaDistribuçãoDFe.Size = new System.Drawing.Size(341, 22);
            this.mniConsultaDistribuçãoDFe.Text = "Exemplo de Consulta Distribuição DF-e / Download NF-e";
            this.mniConsultaDistribuçãoDFe.Click += new System.EventHandler(this.mniConsultaDistribuçãoDFe_Click);
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(338, 6);
            this.toolStripMenuItem1.Visible = false;
            // 
            // mniFluxoNormal
            // 
            this.mniFluxoNormal.Name = "mniFluxoNormal";
            this.mniFluxoNormal.Size = new System.Drawing.Size(341, 22);
            this.mniFluxoNormal.Text = "Avançar para o Fluxo NFe - Normal";
            this.mniFluxoNormal.Visible = false;
            this.mniFluxoNormal.Click += new System.EventHandler(this.mniFluxoNormal_Click);
            // 
            // mniFluxoFS
            // 
            this.mniFluxoFS.Name = "mniFluxoFS";
            this.mniFluxoFS.Size = new System.Drawing.Size(341, 22);
            this.mniFluxoFS.Text = "Avançar para o Fluxo NFe - FS ou FS-DA";
            this.mniFluxoFS.Visible = false;
            this.mniFluxoFS.Click += new System.EventHandler(this.mniFluxoFS_Click);
            // 
            // toolStripMenuItem2
            // 
            this.toolStripMenuItem2.Name = "toolStripMenuItem2";
            this.toolStripMenuItem2.Size = new System.Drawing.Size(338, 6);
            this.toolStripMenuItem2.Visible = false;
            // 
            // mniCancelamentoNFe
            // 
            this.mniCancelamentoNFe.Name = "mniCancelamentoNFe";
            this.mniCancelamentoNFe.Size = new System.Drawing.Size(341, 22);
            this.mniCancelamentoNFe.Text = "Avançar para o Fluxo de Cancelamento de NF-e";
            this.mniCancelamentoNFe.Visible = false;
            this.mniCancelamentoNFe.Click += new System.EventHandler(this.mniCancelamentoNFe_Click);
            // 
            // mniManifestacaoNFe
            // 
            this.mniManifestacaoNFe.Name = "mniManifestacaoNFe";
            this.mniManifestacaoNFe.Size = new System.Drawing.Size(341, 22);
            this.mniManifestacaoNFe.Text = "Avançar para o Fluxo de Manifestação Destinatário";
            this.mniManifestacaoNFe.Visible = false;
            this.mniManifestacaoNFe.Click += new System.EventHandler(this.mniManifestacaoNFe_Click);
            // 
            // btnAvancar
            // 
            this.btnAvancar.Location = new System.Drawing.Point(707, 5);
            this.btnAvancar.Name = "btnAvancar";
            this.btnAvancar.Size = new System.Drawing.Size(75, 23);
            this.btnAvancar.TabIndex = 25;
            this.btnAvancar.Text = "Avançar";
            this.btnAvancar.UseVisualStyleBackColor = true;
            this.btnAvancar.Click += new System.EventHandler(this.btnAvancar_Click);
            // 
            // btnVoltar
            // 
            this.btnVoltar.Location = new System.Drawing.Point(628, 5);
            this.btnVoltar.Name = "btnVoltar";
            this.btnVoltar.Size = new System.Drawing.Size(75, 23);
            this.btnVoltar.TabIndex = 0;
            this.btnVoltar.Text = "Voltar";
            this.btnVoltar.UseVisualStyleBackColor = true;
            this.btnVoltar.Click += new System.EventHandler(this.btnVoltar_Click);
            // 
            // btnSaveConfig
            // 
            this.btnSaveConfig.Location = new System.Drawing.Point(369, 5);
            this.btnSaveConfig.Name = "btnSaveConfig";
            this.btnSaveConfig.Size = new System.Drawing.Size(108, 23);
            this.btnSaveConfig.TabIndex = 24;
            this.btnSaveConfig.Text = "Save Config";
            this.btnSaveConfig.UseVisualStyleBackColor = true;
            this.btnSaveConfig.Click += new System.EventHandler(this.btnSaveConfig_Click);
            // 
            // pnlModelosNotas
            // 
            this.pnlModelosNotas.Controls.Add(this.lblModeloNota);
            this.pnlModelosNotas.Controls.Add(this.gbModelosCOFINSST);
            this.pnlModelosNotas.Controls.Add(this.gbModeloCOFINS);
            this.pnlModelosNotas.Controls.Add(this.gbModeloPISST);
            this.pnlModelosNotas.Controls.Add(this.gbModelosPIS);
            this.pnlModelosNotas.Controls.Add(this.gbModelosISSQN);
            this.pnlModelosNotas.Controls.Add(this.gbModelosII);
            this.pnlModelosNotas.Controls.Add(this.gbModelosIPI);
            this.pnlModelosNotas.Controls.Add(this.gbModeloICMS);
            this.pnlModelosNotas.Controls.Add(this.llbFatura);
            this.pnlModelosNotas.Controls.Add(this.llbTransportadora);
            this.pnlModelosNotas.Controls.Add(this.llbNotaConjulgada);
            this.pnlModelosNotas.Controls.Add(this.llbNotaReferencia);
            this.pnlModelosNotas.Controls.Add(this.llbExportacao);
            this.pnlModelosNotas.Controls.Add(this.llbMedicamento);
            this.pnlModelosNotas.Controls.Add(this.llbCombustivel);
            this.pnlModelosNotas.Controls.Add(this.llbCanaAcucar);
            this.pnlModelosNotas.Controls.Add(this.llbArmamento);
            this.pnlModelosNotas.Controls.Add(this.llbVeiculosNovos);
            this.pnlModelosNotas.Controls.Add(this.llbNotaBasica);
            this.pnlModelosNotas.Controls.Add(this.bgOutrosDados);
            this.pnlModelosNotas.Controls.Add(this.gbRamosEspecificos);
            this.pnlModelosNotas.Location = new System.Drawing.Point(217, 8);
            this.pnlModelosNotas.Name = "pnlModelosNotas";
            this.pnlModelosNotas.Size = new System.Drawing.Size(585, 411);
            this.pnlModelosNotas.TabIndex = 7;
            this.pnlModelosNotas.Visible = false;
            // 
            // lblModeloNota
            // 
            this.lblModeloNota.AutoSize = true;
            this.lblModeloNota.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblModeloNota.Location = new System.Drawing.Point(6, 9);
            this.lblModeloNota.Name = "lblModeloNota";
            this.lblModeloNota.Size = new System.Drawing.Size(176, 24);
            this.lblModeloNota.TabIndex = 25;
            this.lblModeloNota.Text = "Modelos de notas";
            // 
            // gbModelosCOFINSST
            // 
            this.gbModelosCOFINSST.Controls.Add(this.cboCOFINSST);
            this.gbModelosCOFINSST.Location = new System.Drawing.Point(379, 363);
            this.gbModelosCOFINSST.Name = "gbModelosCOFINSST";
            this.gbModelosCOFINSST.Size = new System.Drawing.Size(200, 44);
            this.gbModelosCOFINSST.TabIndex = 24;
            this.gbModelosCOFINSST.TabStop = false;
            this.gbModelosCOFINSST.Text = "Modelos de COFINSST do item da NFe";
            // 
            // cboCOFINSST
            // 
            this.cboCOFINSST.FormattingEnabled = true;
            this.cboCOFINSST.Items.AddRange(new object[] {
            "COFINS Substituição Tributária"});
            this.cboCOFINSST.Location = new System.Drawing.Point(11, 15);
            this.cboCOFINSST.Name = "cboCOFINSST";
            this.cboCOFINSST.Size = new System.Drawing.Size(177, 21);
            this.cboCOFINSST.TabIndex = 0;
            this.cboCOFINSST.SelectedIndexChanged += new System.EventHandler(this.cboCOFINSST_SelectedIndexChanged);
            this.cboCOFINSST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // gbModeloCOFINS
            // 
            this.gbModeloCOFINS.Controls.Add(this.cboCOFINS);
            this.gbModeloCOFINS.Location = new System.Drawing.Point(379, 316);
            this.gbModeloCOFINS.Name = "gbModeloCOFINS";
            this.gbModeloCOFINS.Size = new System.Drawing.Size(200, 44);
            this.gbModeloCOFINS.TabIndex = 24;
            this.gbModeloCOFINS.TabStop = false;
            this.gbModeloCOFINS.Text = "Modelos de COFINS do item da NFe";
            // 
            // cboCOFINS
            // 
            this.cboCOFINS.FormattingEnabled = true;
            this.cboCOFINS.Items.AddRange(new object[] {
            "COFINS Alíquota",
            "COFINS Quantidade",
            "COFINS Não Tributado",
            "COFINS Outras Operações"});
            this.cboCOFINS.Location = new System.Drawing.Point(11, 15);
            this.cboCOFINS.Name = "cboCOFINS";
            this.cboCOFINS.Size = new System.Drawing.Size(177, 21);
            this.cboCOFINS.TabIndex = 0;
            this.cboCOFINS.SelectedIndexChanged += new System.EventHandler(this.cboCOFINS_SelectedIndexChanged);
            this.cboCOFINS.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // gbModeloPISST
            // 
            this.gbModeloPISST.Controls.Add(this.cboPISST);
            this.gbModeloPISST.Location = new System.Drawing.Point(379, 265);
            this.gbModeloPISST.Name = "gbModeloPISST";
            this.gbModeloPISST.Size = new System.Drawing.Size(200, 44);
            this.gbModeloPISST.TabIndex = 24;
            this.gbModeloPISST.TabStop = false;
            this.gbModeloPISST.Text = "Modelos de PISST do item da NFe";
            // 
            // cboPISST
            // 
            this.cboPISST.FormattingEnabled = true;
            this.cboPISST.Items.AddRange(new object[] {
            "PIS Substituição Tributária"});
            this.cboPISST.Location = new System.Drawing.Point(11, 15);
            this.cboPISST.Name = "cboPISST";
            this.cboPISST.Size = new System.Drawing.Size(177, 21);
            this.cboPISST.TabIndex = 0;
            this.cboPISST.SelectedIndexChanged += new System.EventHandler(this.cboPISST_SelectedIndexChanged);
            this.cboPISST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // gbModelosPIS
            // 
            this.gbModelosPIS.Controls.Add(this.cboPIS);
            this.gbModelosPIS.Location = new System.Drawing.Point(379, 214);
            this.gbModelosPIS.Name = "gbModelosPIS";
            this.gbModelosPIS.Size = new System.Drawing.Size(200, 44);
            this.gbModelosPIS.TabIndex = 24;
            this.gbModelosPIS.TabStop = false;
            this.gbModelosPIS.Text = "Modelos de PIS do item da NFe";
            // 
            // cboPIS
            // 
            this.cboPIS.FormattingEnabled = true;
            this.cboPIS.Items.AddRange(new object[] {
            "PIS Alíquota",
            "PIS Quantidade",
            "PIS Não Tributado",
            "PIS Outras Operações"});
            this.cboPIS.Location = new System.Drawing.Point(13, 15);
            this.cboPIS.Name = "cboPIS";
            this.cboPIS.Size = new System.Drawing.Size(177, 21);
            this.cboPIS.TabIndex = 0;
            this.cboPIS.SelectedIndexChanged += new System.EventHandler(this.cboPIS_SelectedIndexChanged);
            this.cboPIS.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // gbModelosISSQN
            // 
            this.gbModelosISSQN.Controls.Add(this.cboISSQN);
            this.gbModelosISSQN.Location = new System.Drawing.Point(379, 163);
            this.gbModelosISSQN.Name = "gbModelosISSQN";
            this.gbModelosISSQN.Size = new System.Drawing.Size(200, 44);
            this.gbModelosISSQN.TabIndex = 24;
            this.gbModelosISSQN.TabStop = false;
            this.gbModelosISSQN.Text = "Modelos de ISSQN do item da NFe";
            // 
            // cboISSQN
            // 
            this.cboISSQN.FormattingEnabled = true;
            this.cboISSQN.Items.AddRange(new object[] {
            "ISSQN"});
            this.cboISSQN.Location = new System.Drawing.Point(11, 15);
            this.cboISSQN.Name = "cboISSQN";
            this.cboISSQN.Size = new System.Drawing.Size(177, 21);
            this.cboISSQN.TabIndex = 0;
            this.cboISSQN.SelectedIndexChanged += new System.EventHandler(this.cboISSQN_SelectedIndexChanged);
            this.cboISSQN.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // gbModelosII
            // 
            this.gbModelosII.Controls.Add(this.cboII);
            this.gbModelosII.Location = new System.Drawing.Point(379, 112);
            this.gbModelosII.Name = "gbModelosII";
            this.gbModelosII.Size = new System.Drawing.Size(200, 44);
            this.gbModelosII.TabIndex = 24;
            this.gbModelosII.TabStop = false;
            this.gbModelosII.Text = "Modelos de II do item da NFe";
            // 
            // cboII
            // 
            this.cboII.FormattingEnabled = true;
            this.cboII.Items.AddRange(new object[] {
            "II"});
            this.cboII.Location = new System.Drawing.Point(11, 15);
            this.cboII.Name = "cboII";
            this.cboII.Size = new System.Drawing.Size(177, 21);
            this.cboII.TabIndex = 0;
            this.cboII.SelectedIndexChanged += new System.EventHandler(this.cboII_SelectedIndexChanged);
            this.cboII.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // gbModelosIPI
            // 
            this.gbModelosIPI.Controls.Add(this.cboIPI);
            this.gbModelosIPI.Location = new System.Drawing.Point(379, 61);
            this.gbModelosIPI.Name = "gbModelosIPI";
            this.gbModelosIPI.Size = new System.Drawing.Size(200, 44);
            this.gbModelosIPI.TabIndex = 24;
            this.gbModelosIPI.TabStop = false;
            this.gbModelosIPI.Text = "Modelos de IPI do Item da NFe";
            // 
            // cboIPI
            // 
            this.cboIPI.FormattingEnabled = true;
            this.cboIPI.Items.AddRange(new object[] {
            "IPI Tributado",
            "IPI Não Tributado"});
            this.cboIPI.Location = new System.Drawing.Point(11, 15);
            this.cboIPI.Name = "cboIPI";
            this.cboIPI.Size = new System.Drawing.Size(177, 21);
            this.cboIPI.TabIndex = 0;
            this.cboIPI.SelectedIndexChanged += new System.EventHandler(this.cboIPI_SelectedIndexChanged);
            this.cboIPI.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // gbModeloICMS
            // 
            this.gbModeloICMS.Controls.Add(this.cboICMS);
            this.gbModeloICMS.Location = new System.Drawing.Point(379, 10);
            this.gbModeloICMS.Name = "gbModeloICMS";
            this.gbModeloICMS.Size = new System.Drawing.Size(200, 44);
            this.gbModeloICMS.TabIndex = 23;
            this.gbModeloICMS.TabStop = false;
            this.gbModeloICMS.Text = "Modeos de ICMS do Item da NFE";
            // 
            // cboICMS
            // 
            this.cboICMS.FormattingEnabled = true;
            this.cboICMS.Items.AddRange(new object[] {
            "ICMS 00",
            "ICMS 10",
            "ICMS 20",
            "ICMS 30",
            "ICMS 40",
            "ICMS 51",
            "ICMS 60",
            "ICMS 70",
            "ICMS 90",
            "ICMS Partilha",
            "ICMS Substituição Tributária",
            "ICMS Simples Nacional 101",
            "ICMS Simples Nacional 102",
            "ICMS Simples Nacional 201",
            "ICMS Simples Nacional 202",
            "ICMS Simples Nacional 500",
            "ICMS Simples Nacional 900"});
            this.cboICMS.Location = new System.Drawing.Point(11, 15);
            this.cboICMS.Name = "cboICMS";
            this.cboICMS.Size = new System.Drawing.Size(177, 21);
            this.cboICMS.TabIndex = 0;
            this.cboICMS.SelectedIndexChanged += new System.EventHandler(this.cboICMS_SelectedIndexChanged);
            this.cboICMS.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // llbFatura
            // 
            this.llbFatura.AutoSize = true;
            this.llbFatura.Location = new System.Drawing.Point(169, 345);
            this.llbFatura.Name = "llbFatura";
            this.llbFatura.Size = new System.Drawing.Size(34, 13);
            this.llbFatura.TabIndex = 22;
            this.llbFatura.TabStop = true;
            this.llbFatura.Text = "(mais)";
            this.llbFatura.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbFatura_LinkClicked);
            // 
            // llbTransportadora
            // 
            this.llbTransportadora.AutoSize = true;
            this.llbTransportadora.Location = new System.Drawing.Point(169, 319);
            this.llbTransportadora.Name = "llbTransportadora";
            this.llbTransportadora.Size = new System.Drawing.Size(34, 13);
            this.llbTransportadora.TabIndex = 21;
            this.llbTransportadora.TabStop = true;
            this.llbTransportadora.Text = "(mais)";
            this.llbTransportadora.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbTransportadora_LinkClicked);
            // 
            // llbNotaConjulgada
            // 
            this.llbNotaConjulgada.AutoSize = true;
            this.llbNotaConjulgada.Location = new System.Drawing.Point(169, 292);
            this.llbNotaConjulgada.Name = "llbNotaConjulgada";
            this.llbNotaConjulgada.Size = new System.Drawing.Size(34, 13);
            this.llbNotaConjulgada.TabIndex = 20;
            this.llbNotaConjulgada.TabStop = true;
            this.llbNotaConjulgada.Text = "(mais)";
            this.llbNotaConjulgada.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbNotaConjulgada_LinkClicked);
            // 
            // llbNotaReferencia
            // 
            this.llbNotaReferencia.AutoSize = true;
            this.llbNotaReferencia.Location = new System.Drawing.Point(169, 266);
            this.llbNotaReferencia.Name = "llbNotaReferencia";
            this.llbNotaReferencia.Size = new System.Drawing.Size(34, 13);
            this.llbNotaReferencia.TabIndex = 19;
            this.llbNotaReferencia.TabStop = true;
            this.llbNotaReferencia.Text = "(mais)";
            this.llbNotaReferencia.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbNotaReferencia_LinkClicked);
            // 
            // llbExportacao
            // 
            this.llbExportacao.AutoSize = true;
            this.llbExportacao.Location = new System.Drawing.Point(169, 240);
            this.llbExportacao.Name = "llbExportacao";
            this.llbExportacao.Size = new System.Drawing.Size(34, 13);
            this.llbExportacao.TabIndex = 18;
            this.llbExportacao.TabStop = true;
            this.llbExportacao.Text = "(mais)";
            this.llbExportacao.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbExportacao_LinkClicked);
            // 
            // llbMedicamento
            // 
            this.llbMedicamento.AutoSize = true;
            this.llbMedicamento.Location = new System.Drawing.Point(169, 172);
            this.llbMedicamento.Name = "llbMedicamento";
            this.llbMedicamento.Size = new System.Drawing.Size(34, 13);
            this.llbMedicamento.TabIndex = 17;
            this.llbMedicamento.TabStop = true;
            this.llbMedicamento.Text = "(mais)";
            this.llbMedicamento.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbMedicamento_LinkClicked);
            // 
            // llbCombustivel
            // 
            this.llbCombustivel.AutoSize = true;
            this.llbCombustivel.Location = new System.Drawing.Point(169, 151);
            this.llbCombustivel.Name = "llbCombustivel";
            this.llbCombustivel.Size = new System.Drawing.Size(34, 13);
            this.llbCombustivel.TabIndex = 16;
            this.llbCombustivel.TabStop = true;
            this.llbCombustivel.Text = "(mais)";
            this.llbCombustivel.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbCombustivel_LinkClicked);
            // 
            // llbCanaAcucar
            // 
            this.llbCanaAcucar.AutoSize = true;
            this.llbCanaAcucar.Location = new System.Drawing.Point(169, 131);
            this.llbCanaAcucar.Name = "llbCanaAcucar";
            this.llbCanaAcucar.Size = new System.Drawing.Size(34, 13);
            this.llbCanaAcucar.TabIndex = 15;
            this.llbCanaAcucar.TabStop = true;
            this.llbCanaAcucar.Text = "(mais)";
            this.llbCanaAcucar.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbCanaAcucar_LinkClicked);
            // 
            // llbArmamento
            // 
            this.llbArmamento.AutoSize = true;
            this.llbArmamento.Location = new System.Drawing.Point(169, 111);
            this.llbArmamento.Name = "llbArmamento";
            this.llbArmamento.Size = new System.Drawing.Size(34, 13);
            this.llbArmamento.TabIndex = 14;
            this.llbArmamento.TabStop = true;
            this.llbArmamento.Text = "(mais)";
            this.llbArmamento.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbArmamento_LinkClicked);
            // 
            // llbVeiculosNovos
            // 
            this.llbVeiculosNovos.AutoSize = true;
            this.llbVeiculosNovos.Location = new System.Drawing.Point(169, 89);
            this.llbVeiculosNovos.Name = "llbVeiculosNovos";
            this.llbVeiculosNovos.Size = new System.Drawing.Size(34, 13);
            this.llbVeiculosNovos.TabIndex = 13;
            this.llbVeiculosNovos.TabStop = true;
            this.llbVeiculosNovos.Text = "(mais)";
            this.llbVeiculosNovos.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbVeiculosNovos_LinkClicked);
            // 
            // llbNotaBasica
            // 
            this.llbNotaBasica.AutoSize = true;
            this.llbNotaBasica.Location = new System.Drawing.Point(169, 66);
            this.llbNotaBasica.Name = "llbNotaBasica";
            this.llbNotaBasica.Size = new System.Drawing.Size(34, 13);
            this.llbNotaBasica.TabIndex = 12;
            this.llbNotaBasica.TabStop = true;
            this.llbNotaBasica.Text = "(mais)";
            this.llbNotaBasica.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbNotaBasica_LinkClicked);
            // 
            // bgOutrosDados
            // 
            this.bgOutrosDados.Controls.Add(this.chkPartilha);
            this.bgOutrosDados.Controls.Add(this.chkFatura);
            this.bgOutrosDados.Controls.Add(this.chkTransportadora);
            this.bgOutrosDados.Controls.Add(this.chkNotaConjugada);
            this.bgOutrosDados.Controls.Add(this.chkNotaReferenciada);
            this.bgOutrosDados.Controls.Add(this.chkExportacao);
            this.bgOutrosDados.Location = new System.Drawing.Point(18, 214);
            this.bgOutrosDados.Name = "bgOutrosDados";
            this.bgOutrosDados.Size = new System.Drawing.Size(140, 183);
            this.bgOutrosDados.TabIndex = 1;
            this.bgOutrosDados.TabStop = false;
            this.bgOutrosDados.Text = "Outros Dados";
            // 
            // chkPartilha
            // 
            this.chkPartilha.AutoSize = true;
            this.chkPartilha.Location = new System.Drawing.Point(13, 155);
            this.chkPartilha.Name = "chkPartilha";
            this.chkPartilha.Size = new System.Drawing.Size(92, 17);
            this.chkPartilha.TabIndex = 12;
            this.chkPartilha.Text = "Partilha / FCP";
            this.chkPartilha.UseVisualStyleBackColor = true;
            // 
            // chkFatura
            // 
            this.chkFatura.AutoSize = true;
            this.chkFatura.Location = new System.Drawing.Point(13, 129);
            this.chkFatura.Name = "chkFatura";
            this.chkFatura.Size = new System.Drawing.Size(111, 17);
            this.chkFatura.TabIndex = 11;
            this.chkFatura.Text = "Fatura/Duplicatas";
            this.chkFatura.UseVisualStyleBackColor = true;
            // 
            // chkTransportadora
            // 
            this.chkTransportadora.AutoSize = true;
            this.chkTransportadora.Location = new System.Drawing.Point(13, 103);
            this.chkTransportadora.Name = "chkTransportadora";
            this.chkTransportadora.Size = new System.Drawing.Size(98, 17);
            this.chkTransportadora.TabIndex = 10;
            this.chkTransportadora.Text = "Transportadora";
            this.chkTransportadora.UseVisualStyleBackColor = true;
            // 
            // chkNotaConjugada
            // 
            this.chkNotaConjugada.AutoSize = true;
            this.chkNotaConjugada.Location = new System.Drawing.Point(13, 77);
            this.chkNotaConjugada.Name = "chkNotaConjugada";
            this.chkNotaConjugada.Size = new System.Drawing.Size(105, 17);
            this.chkNotaConjugada.TabIndex = 9;
            this.chkNotaConjugada.Text = "Nota Conjulgada";
            this.chkNotaConjugada.UseVisualStyleBackColor = true;
            this.chkNotaConjugada.CheckedChanged += new System.EventHandler(this.chkNotaConjugada_CheckedChanged);
            // 
            // chkNotaReferenciada
            // 
            this.chkNotaReferenciada.AutoSize = true;
            this.chkNotaReferenciada.Location = new System.Drawing.Point(13, 51);
            this.chkNotaReferenciada.Name = "chkNotaReferenciada";
            this.chkNotaReferenciada.Size = new System.Drawing.Size(116, 17);
            this.chkNotaReferenciada.TabIndex = 8;
            this.chkNotaReferenciada.Text = "Nota Referenciada";
            this.chkNotaReferenciada.UseVisualStyleBackColor = true;
            // 
            // chkExportacao
            // 
            this.chkExportacao.AutoSize = true;
            this.chkExportacao.Location = new System.Drawing.Point(13, 25);
            this.chkExportacao.Name = "chkExportacao";
            this.chkExportacao.Size = new System.Drawing.Size(80, 17);
            this.chkExportacao.TabIndex = 7;
            this.chkExportacao.Text = "Exportação";
            this.chkExportacao.UseVisualStyleBackColor = true;
            // 
            // gbRamosEspecificos
            // 
            this.gbRamosEspecificos.Controls.Add(this.rbMedicamento);
            this.gbRamosEspecificos.Controls.Add(this.rbCombustiveis);
            this.gbRamosEspecificos.Controls.Add(this.rbCanaAcucar);
            this.gbRamosEspecificos.Controls.Add(this.rbArmamento);
            this.gbRamosEspecificos.Controls.Add(this.rdVeiculosNovos);
            this.gbRamosEspecificos.Controls.Add(this.rbNota);
            this.gbRamosEspecificos.Location = new System.Drawing.Point(18, 44);
            this.gbRamosEspecificos.Name = "gbRamosEspecificos";
            this.gbRamosEspecificos.Size = new System.Drawing.Size(140, 155);
            this.gbRamosEspecificos.TabIndex = 0;
            this.gbRamosEspecificos.TabStop = false;
            this.gbRamosEspecificos.Text = "Ramos Específicos";
            // 
            // rbMedicamento
            // 
            this.rbMedicamento.AutoSize = true;
            this.rbMedicamento.Location = new System.Drawing.Point(10, 126);
            this.rbMedicamento.Name = "rbMedicamento";
            this.rbMedicamento.Size = new System.Drawing.Size(89, 17);
            this.rbMedicamento.TabIndex = 6;
            this.rbMedicamento.TabStop = true;
            this.rbMedicamento.Text = "Medicamento";
            this.rbMedicamento.UseVisualStyleBackColor = true;
            // 
            // rbCombustiveis
            // 
            this.rbCombustiveis.AutoSize = true;
            this.rbCombustiveis.Location = new System.Drawing.Point(10, 105);
            this.rbCombustiveis.Name = "rbCombustiveis";
            this.rbCombustiveis.Size = new System.Drawing.Size(89, 17);
            this.rbCombustiveis.TabIndex = 5;
            this.rbCombustiveis.TabStop = true;
            this.rbCombustiveis.Text = "Combustíveis";
            this.rbCombustiveis.UseVisualStyleBackColor = true;
            // 
            // rbCanaAcucar
            // 
            this.rbCanaAcucar.AutoSize = true;
            this.rbCanaAcucar.Location = new System.Drawing.Point(9, 84);
            this.rbCanaAcucar.Name = "rbCanaAcucar";
            this.rbCanaAcucar.Size = new System.Drawing.Size(102, 17);
            this.rbCanaAcucar.TabIndex = 4;
            this.rbCanaAcucar.TabStop = true;
            this.rbCanaAcucar.Text = "Cana de Açúcar";
            this.rbCanaAcucar.UseVisualStyleBackColor = true;
            // 
            // rbArmamento
            // 
            this.rbArmamento.AutoSize = true;
            this.rbArmamento.Location = new System.Drawing.Point(9, 63);
            this.rbArmamento.Name = "rbArmamento";
            this.rbArmamento.Size = new System.Drawing.Size(78, 17);
            this.rbArmamento.TabIndex = 3;
            this.rbArmamento.TabStop = true;
            this.rbArmamento.Text = "Armamento";
            this.rbArmamento.UseVisualStyleBackColor = true;
            // 
            // rdVeiculosNovos
            // 
            this.rdVeiculosNovos.AutoSize = true;
            this.rdVeiculosNovos.Location = new System.Drawing.Point(9, 42);
            this.rdVeiculosNovos.Name = "rdVeiculosNovos";
            this.rdVeiculosNovos.Size = new System.Drawing.Size(101, 17);
            this.rdVeiculosNovos.TabIndex = 2;
            this.rdVeiculosNovos.TabStop = true;
            this.rdVeiculosNovos.Text = "Veículos Novos";
            this.rdVeiculosNovos.UseVisualStyleBackColor = true;
            // 
            // rbNota
            // 
            this.rbNota.AutoSize = true;
            this.rbNota.Checked = true;
            this.rbNota.Location = new System.Drawing.Point(9, 21);
            this.rbNota.Name = "rbNota";
            this.rbNota.Size = new System.Drawing.Size(83, 17);
            this.rbNota.TabIndex = 1;
            this.rbNota.TabStop = true;
            this.rbNota.Text = "Nota Básica";
            this.rbNota.UseVisualStyleBackColor = true;
            // 
            // pnlDanfe
            // 
            this.pnlDanfe.Controls.Add(this.btnModeloRTM);
            this.pnlDanfe.Controls.Add(this.txtModeloRTM);
            this.pnlDanfe.Controls.Add(this.lblDanfe);
            this.pnlDanfe.Controls.Add(this.cboImpressora);
            this.pnlDanfe.Controls.Add(this.btnExportarDanfeCaminho);
            this.pnlDanfe.Controls.Add(this.txtExportarDanfe);
            this.pnlDanfe.Controls.Add(this.btnVisualizar);
            this.pnlDanfe.Controls.Add(this.btnImprimir);
            this.pnlDanfe.Controls.Add(this.btnExportar);
            this.pnlDanfe.Controls.Add(this.btnEditar);
            this.pnlDanfe.Location = new System.Drawing.Point(217, 8);
            this.pnlDanfe.Name = "pnlDanfe";
            this.pnlDanfe.Size = new System.Drawing.Size(585, 411);
            this.pnlDanfe.TabIndex = 13;
            this.pnlDanfe.Visible = false;
            // 
            // btnModeloRTM
            // 
            this.btnModeloRTM.Location = new System.Drawing.Point(433, 75);
            this.btnModeloRTM.Name = "btnModeloRTM";
            this.btnModeloRTM.Size = new System.Drawing.Size(30, 23);
            this.btnModeloRTM.TabIndex = 12;
            this.btnModeloRTM.Text = "...";
            this.btnModeloRTM.UseVisualStyleBackColor = true;
            this.btnModeloRTM.Click += new System.EventHandler(this.btnModeloRTM_Click);
            // 
            // txtModeloRTM
            // 
            this.txtModeloRTM.Location = new System.Drawing.Point(112, 77);
            this.txtModeloRTM.Name = "txtModeloRTM";
            this.txtModeloRTM.Size = new System.Drawing.Size(311, 20);
            this.txtModeloRTM.TabIndex = 11;
            // 
            // lblDanfe
            // 
            this.lblDanfe.AutoSize = true;
            this.lblDanfe.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDanfe.Location = new System.Drawing.Point(14, 15);
            this.lblDanfe.Name = "lblDanfe";
            this.lblDanfe.Size = new System.Drawing.Size(80, 24);
            this.lblDanfe.TabIndex = 10;
            this.lblDanfe.Text = "DANFE";
            // 
            // cboImpressora
            // 
            this.cboImpressora.FormattingEnabled = true;
            this.cboImpressora.Location = new System.Drawing.Point(112, 157);
            this.cboImpressora.Name = "cboImpressora";
            this.cboImpressora.Size = new System.Drawing.Size(312, 21);
            this.cboImpressora.TabIndex = 9;
            // 
            // btnExportarDanfeCaminho
            // 
            this.btnExportarDanfeCaminho.Location = new System.Drawing.Point(433, 113);
            this.btnExportarDanfeCaminho.Name = "btnExportarDanfeCaminho";
            this.btnExportarDanfeCaminho.Size = new System.Drawing.Size(30, 23);
            this.btnExportarDanfeCaminho.TabIndex = 7;
            this.btnExportarDanfeCaminho.Text = "...";
            this.btnExportarDanfeCaminho.UseVisualStyleBackColor = true;
            this.btnExportarDanfeCaminho.Click += new System.EventHandler(this.btnExportarDanfeCaminho_Click);
            // 
            // txtExportarDanfe
            // 
            this.txtExportarDanfe.Location = new System.Drawing.Point(113, 117);
            this.txtExportarDanfe.Name = "txtExportarDanfe";
            this.txtExportarDanfe.Size = new System.Drawing.Size(311, 20);
            this.txtExportarDanfe.TabIndex = 5;
            // 
            // btnVisualizar
            // 
            this.btnVisualizar.Location = new System.Drawing.Point(17, 194);
            this.btnVisualizar.Name = "btnVisualizar";
            this.btnVisualizar.Size = new System.Drawing.Size(75, 23);
            this.btnVisualizar.TabIndex = 4;
            this.btnVisualizar.Text = "Visualizar";
            this.btnVisualizar.UseVisualStyleBackColor = true;
            this.btnVisualizar.Click += new System.EventHandler(this.btnVisualizar_Click);
            // 
            // btnImprimir
            // 
            this.btnImprimir.Location = new System.Drawing.Point(17, 154);
            this.btnImprimir.Name = "btnImprimir";
            this.btnImprimir.Size = new System.Drawing.Size(75, 23);
            this.btnImprimir.TabIndex = 3;
            this.btnImprimir.Text = "Imprimir";
            this.btnImprimir.UseVisualStyleBackColor = true;
            this.btnImprimir.Click += new System.EventHandler(this.btnImprimir_Click);
            // 
            // btnExportar
            // 
            this.btnExportar.Location = new System.Drawing.Point(17, 114);
            this.btnExportar.Name = "btnExportar";
            this.btnExportar.Size = new System.Drawing.Size(75, 23);
            this.btnExportar.TabIndex = 2;
            this.btnExportar.Text = "Exportar";
            this.btnExportar.UseVisualStyleBackColor = true;
            this.btnExportar.Click += new System.EventHandler(this.btnExportar_Click);
            // 
            // btnEditar
            // 
            this.btnEditar.Location = new System.Drawing.Point(17, 74);
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(75, 23);
            this.btnEditar.TabIndex = 1;
            this.btnEditar.Text = "Editar";
            this.btnEditar.UseVisualStyleBackColor = true;
            this.btnEditar.Click += new System.EventHandler(this.btnEditar_Click);
            // 
            // pnlConfiguracao
            // 
            this.pnlConfiguracao.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlConfiguracao.Controls.Add(this.tbConfiguracoes);
            this.pnlConfiguracao.Controls.Add(this.lblConfGerais);
            this.pnlConfiguracao.Location = new System.Drawing.Point(217, 8);
            this.pnlConfiguracao.Name = "pnlConfiguracao";
            this.pnlConfiguracao.Size = new System.Drawing.Size(585, 411);
            this.pnlConfiguracao.TabIndex = 1;
            this.pnlConfiguracao.Visible = false;
            // 
            // tbConfiguracoes
            // 
            this.tbConfiguracoes.Controls.Add(this.tbPrincipal);
            this.tbConfiguracoes.Controls.Add(this.tbProxy);
            this.tbConfiguracoes.Controls.Add(this.tbDanfe);
            this.tbConfiguracoes.Location = new System.Drawing.Point(4, 39);
            this.tbConfiguracoes.Name = "tbConfiguracoes";
            this.tbConfiguracoes.SelectedIndex = 0;
            this.tbConfiguracoes.Size = new System.Drawing.Size(577, 364);
            this.tbConfiguracoes.TabIndex = 0;
            // 
            // tbPrincipal
            // 
            this.tbPrincipal.Controls.Add(this.txtPinCode);
            this.tbPrincipal.Controls.Add(this.label1);
            this.tbPrincipal.Controls.Add(this.llbServProd);
            this.tbPrincipal.Controls.Add(this.llbServHomolog);
            this.tbPrincipal.Controls.Add(this.llbNomeCertificado);
            this.tbPrincipal.Controls.Add(this.llbTipoCertificado);
            this.tbPrincipal.Controls.Add(this.lblObrigatorio4);
            this.tbPrincipal.Controls.Add(this.lblObrigatorio3);
            this.tbPrincipal.Controls.Add(this.lblObrigatorio2);
            this.tbPrincipal.Controls.Add(this.lblObrigatorio7);
            this.tbPrincipal.Controls.Add(this.lblObrigatorio6);
            this.tbPrincipal.Controls.Add(this.lblObrigatorio8);
            this.tbPrincipal.Controls.Add(this.lblObrigatorio5);
            this.tbPrincipal.Controls.Add(this.lblObrigatorio1);
            this.tbPrincipal.Controls.Add(this.btnLoadConfig);
            this.tbPrincipal.Controls.Add(this.chkIgnCertInvalido);
            this.tbPrincipal.Controls.Add(this.chkValidEsquema);
            this.tbPrincipal.Controls.Add(this.chkAnexarDanfePdf);
            this.tbPrincipal.Controls.Add(this.lblMaxSizeLoteEnvio);
            this.tbPrincipal.Controls.Add(this.txtMaxSizeLoteEnvio);
            this.tbPrincipal.Controls.Add(this.btnDirTemplates);
            this.tbPrincipal.Controls.Add(this.btnDirLog);
            this.tbPrincipal.Controls.Add(this.btnServProd);
            this.tbPrincipal.Controls.Add(this.btnDirEsquema);
            this.tbPrincipal.Controls.Add(this.btnXmlDestinatario);
            this.tbPrincipal.Controls.Add(this.btnServHomolog);
            this.tbPrincipal.Controls.Add(this.lblDiretorioTemplates);
            this.tbPrincipal.Controls.Add(this.lblDiretorioEsquemas);
            this.tbPrincipal.Controls.Add(this.lblDiretorioLog);
            this.tbPrincipal.Controls.Add(this.lblXmlDestinatario);
            this.tbPrincipal.Controls.Add(this.lblServidoresProducao);
            this.tbPrincipal.Controls.Add(this.lblServidoresHomologacao);
            this.tbPrincipal.Controls.Add(this.txtDirEsquema);
            this.tbPrincipal.Controls.Add(this.txtDirTemplate);
            this.tbPrincipal.Controls.Add(this.txtDirLog);
            this.tbPrincipal.Controls.Add(this.txtServProd);
            this.tbPrincipal.Controls.Add(this.txtXmlDestinatario);
            this.tbPrincipal.Controls.Add(this.txtServHomolog);
            this.tbPrincipal.Controls.Add(this.lblNomeDoCertificado);
            this.tbPrincipal.Controls.Add(this.btnObterValidade);
            this.tbPrincipal.Controls.Add(this.cboNomeCertificado);
            this.tbPrincipal.Controls.Add(this.lblVersao);
            this.tbPrincipal.Controls.Add(this.lblCnpj);
            this.tbPrincipal.Controls.Add(this.lblUF);
            this.tbPrincipal.Controls.Add(this.lblAmbiente);
            this.tbPrincipal.Controls.Add(this.lblTipoCertificado);
            this.tbPrincipal.Controls.Add(this.txtCnpj);
            this.tbPrincipal.Controls.Add(this.cboVersao);
            this.tbPrincipal.Controls.Add(this.cboUF);
            this.tbPrincipal.Controls.Add(this.cboAmbiente);
            this.tbPrincipal.Controls.Add(this.cboTipoCertificado);
            this.tbPrincipal.Location = new System.Drawing.Point(4, 22);
            this.tbPrincipal.Name = "tbPrincipal";
            this.tbPrincipal.Padding = new System.Windows.Forms.Padding(3);
            this.tbPrincipal.Size = new System.Drawing.Size(569, 338);
            this.tbPrincipal.TabIndex = 0;
            this.tbPrincipal.Text = "Principal";
            this.tbPrincipal.UseVisualStyleBackColor = true;
            // 
            // txtPinCode
            // 
            this.txtPinCode.Enabled = false;
            this.txtPinCode.Location = new System.Drawing.Point(335, 81);
            this.txtPinCode.Name = "txtPinCode";
            this.txtPinCode.Size = new System.Drawing.Size(108, 20);
            this.txtPinCode.TabIndex = 31;
            this.txtPinCode.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(338, 63);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 13);
            this.label1.TabIndex = 30;
            this.label1.Text = "PinCode";
            // 
            // llbServProd
            // 
            this.llbServProd.AutoSize = true;
            this.llbServProd.Location = new System.Drawing.Point(411, 110);
            this.llbServProd.Name = "llbServProd";
            this.llbServProd.Size = new System.Drawing.Size(34, 13);
            this.llbServProd.TabIndex = 29;
            this.llbServProd.TabStop = true;
            this.llbServProd.Text = "(mais)";
            this.llbServProd.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbServProd_LinkClicked);
            // 
            // llbServHomolog
            // 
            this.llbServHomolog.AutoSize = true;
            this.llbServHomolog.Location = new System.Drawing.Point(167, 110);
            this.llbServHomolog.Name = "llbServHomolog";
            this.llbServHomolog.Size = new System.Drawing.Size(34, 13);
            this.llbServHomolog.TabIndex = 28;
            this.llbServHomolog.TabStop = true;
            this.llbServHomolog.Text = "(mais)";
            this.llbServHomolog.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbServHomolog_LinkClicked);
            // 
            // llbNomeCertificado
            // 
            this.llbNomeCertificado.AutoSize = true;
            this.llbNomeCertificado.Location = new System.Drawing.Point(124, 65);
            this.llbNomeCertificado.Name = "llbNomeCertificado";
            this.llbNomeCertificado.Size = new System.Drawing.Size(34, 13);
            this.llbNomeCertificado.TabIndex = 27;
            this.llbNomeCertificado.TabStop = true;
            this.llbNomeCertificado.Text = "(mais)";
            this.llbNomeCertificado.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbNomeCertificado_LinkClicked);
            // 
            // llbTipoCertificado
            // 
            this.llbTipoCertificado.AutoSize = true;
            this.llbTipoCertificado.Location = new System.Drawing.Point(111, 16);
            this.llbTipoCertificado.Name = "llbTipoCertificado";
            this.llbTipoCertificado.Size = new System.Drawing.Size(34, 13);
            this.llbTipoCertificado.TabIndex = 26;
            this.llbTipoCertificado.TabStop = true;
            this.llbTipoCertificado.Text = "(mais)";
            this.llbTipoCertificado.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbTipoCertificado_LinkClicked);
            // 
            // lblObrigatorio4
            // 
            this.lblObrigatorio4.AutoSize = true;
            this.lblObrigatorio4.BackColor = System.Drawing.Color.Transparent;
            this.lblObrigatorio4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio4.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio4.Location = new System.Drawing.Point(466, 14);
            this.lblObrigatorio4.Name = "lblObrigatorio4";
            this.lblObrigatorio4.Size = new System.Drawing.Size(14, 16);
            this.lblObrigatorio4.TabIndex = 14;
            this.lblObrigatorio4.Text = "*";
            // 
            // lblObrigatorio3
            // 
            this.lblObrigatorio3.AutoSize = true;
            this.lblObrigatorio3.BackColor = System.Drawing.Color.Transparent;
            this.lblObrigatorio3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio3.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio3.Location = new System.Drawing.Point(296, 14);
            this.lblObrigatorio3.Name = "lblObrigatorio3";
            this.lblObrigatorio3.Size = new System.Drawing.Size(14, 16);
            this.lblObrigatorio3.TabIndex = 14;
            this.lblObrigatorio3.Text = "*";
            // 
            // lblObrigatorio2
            // 
            this.lblObrigatorio2.AutoSize = true;
            this.lblObrigatorio2.BackColor = System.Drawing.Color.Transparent;
            this.lblObrigatorio2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio2.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio2.Location = new System.Drawing.Point(181, 14);
            this.lblObrigatorio2.Name = "lblObrigatorio2";
            this.lblObrigatorio2.Size = new System.Drawing.Size(14, 16);
            this.lblObrigatorio2.TabIndex = 14;
            this.lblObrigatorio2.Text = "*";
            // 
            // lblObrigatorio7
            // 
            this.lblObrigatorio7.AutoSize = true;
            this.lblObrigatorio7.BackColor = System.Drawing.Color.Transparent;
            this.lblObrigatorio7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio7.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio7.Location = new System.Drawing.Point(89, 157);
            this.lblObrigatorio7.Name = "lblObrigatorio7";
            this.lblObrigatorio7.Size = new System.Drawing.Size(14, 16);
            this.lblObrigatorio7.TabIndex = 14;
            this.lblObrigatorio7.Text = "*";
            // 
            // lblObrigatorio6
            // 
            this.lblObrigatorio6.AutoSize = true;
            this.lblObrigatorio6.BackColor = System.Drawing.Color.Transparent;
            this.lblObrigatorio6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio6.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio6.Location = new System.Drawing.Point(381, 110);
            this.lblObrigatorio6.Name = "lblObrigatorio6";
            this.lblObrigatorio6.Size = new System.Drawing.Size(14, 16);
            this.lblObrigatorio6.TabIndex = 14;
            this.lblObrigatorio6.Text = "*";
            // 
            // lblObrigatorio8
            // 
            this.lblObrigatorio8.AutoSize = true;
            this.lblObrigatorio8.BackColor = System.Drawing.Color.Transparent;
            this.lblObrigatorio8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio8.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio8.Location = new System.Drawing.Point(136, 110);
            this.lblObrigatorio8.Name = "lblObrigatorio8";
            this.lblObrigatorio8.Size = new System.Drawing.Size(14, 16);
            this.lblObrigatorio8.TabIndex = 14;
            this.lblObrigatorio8.Text = "*";
            // 
            // lblObrigatorio5
            // 
            this.lblObrigatorio5.AutoSize = true;
            this.lblObrigatorio5.BackColor = System.Drawing.Color.Transparent;
            this.lblObrigatorio5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio5.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio5.Location = new System.Drawing.Point(111, 62);
            this.lblObrigatorio5.Name = "lblObrigatorio5";
            this.lblObrigatorio5.Size = new System.Drawing.Size(14, 16);
            this.lblObrigatorio5.TabIndex = 14;
            this.lblObrigatorio5.Text = "*";
            // 
            // lblObrigatorio1
            // 
            this.lblObrigatorio1.AutoSize = true;
            this.lblObrigatorio1.BackColor = System.Drawing.Color.Transparent;
            this.lblObrigatorio1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio1.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio1.Location = new System.Drawing.Point(97, 14);
            this.lblObrigatorio1.Name = "lblObrigatorio1";
            this.lblObrigatorio1.Size = new System.Drawing.Size(14, 16);
            this.lblObrigatorio1.TabIndex = 14;
            this.lblObrigatorio1.Text = "*";
            // 
            // btnLoadConfig
            // 
            this.btnLoadConfig.Location = new System.Drawing.Point(231, 307);
            this.btnLoadConfig.Name = "btnLoadConfig";
            this.btnLoadConfig.Size = new System.Drawing.Size(112, 23);
            this.btnLoadConfig.TabIndex = 23;
            this.btnLoadConfig.Text = "Load Config";
            this.btnLoadConfig.UseVisualStyleBackColor = true;
            this.btnLoadConfig.Click += new System.EventHandler(this.btnLoadConfig_Click);
            // 
            // chkIgnCertInvalido
            // 
            this.chkIgnCertInvalido.AutoSize = true;
            this.chkIgnCertInvalido.Location = new System.Drawing.Point(420, 261);
            this.chkIgnCertInvalido.Name = "chkIgnCertInvalido";
            this.chkIgnCertInvalido.Size = new System.Drawing.Size(151, 17);
            this.chkIgnCertInvalido.TabIndex = 22;
            this.chkIgnCertInvalido.Text = "Ignorar certificado Invalido";
            this.chkIgnCertInvalido.UseVisualStyleBackColor = true;
            // 
            // chkValidEsquema
            // 
            this.chkValidEsquema.AutoSize = true;
            this.chkValidEsquema.Location = new System.Drawing.Point(232, 261);
            this.chkValidEsquema.Name = "chkValidEsquema";
            this.chkValidEsquema.Size = new System.Drawing.Size(187, 17);
            this.chkValidEsquema.TabIndex = 21;
            this.chkValidEsquema.Text = "Validar o Esquema antes do envio";
            this.chkValidEsquema.UseVisualStyleBackColor = true;
            // 
            // chkAnexarDanfePdf
            // 
            this.chkAnexarDanfePdf.AutoSize = true;
            this.chkAnexarDanfePdf.Location = new System.Drawing.Point(111, 261);
            this.chkAnexarDanfePdf.Name = "chkAnexarDanfePdf";
            this.chkAnexarDanfePdf.Size = new System.Drawing.Size(115, 17);
            this.chkAnexarDanfePdf.TabIndex = 20;
            this.chkAnexarDanfePdf.Text = "Anexar Danfe PDF";
            this.chkAnexarDanfePdf.UseVisualStyleBackColor = true;
            // 
            // lblMaxSizeLoteEnvio
            // 
            this.lblMaxSizeLoteEnvio.AutoSize = true;
            this.lblMaxSizeLoteEnvio.Location = new System.Drawing.Point(5, 245);
            this.lblMaxSizeLoteEnvio.Name = "lblMaxSizeLoteEnvio";
            this.lblMaxSizeLoteEnvio.Size = new System.Drawing.Size(95, 13);
            this.lblMaxSizeLoteEnvio.TabIndex = 11;
            this.lblMaxSizeLoteEnvio.Text = "MaxSizeLoteEnvio";
            // 
            // txtMaxSizeLoteEnvio
            // 
            this.txtMaxSizeLoteEnvio.Location = new System.Drawing.Point(6, 261);
            this.txtMaxSizeLoteEnvio.Name = "txtMaxSizeLoteEnvio";
            this.txtMaxSizeLoteEnvio.Size = new System.Drawing.Size(100, 20);
            this.txtMaxSizeLoteEnvio.TabIndex = 19;
            this.txtMaxSizeLoteEnvio.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // btnDirTemplates
            // 
            this.btnDirTemplates.Location = new System.Drawing.Point(504, 216);
            this.btnDirTemplates.Name = "btnDirTemplates";
            this.btnDirTemplates.Size = new System.Drawing.Size(31, 23);
            this.btnDirTemplates.TabIndex = 18;
            this.btnDirTemplates.Text = "...";
            this.btnDirTemplates.UseVisualStyleBackColor = true;
            this.btnDirTemplates.Click += new System.EventHandler(this.btnDirTemplates_Click);
            // 
            // btnDirLog
            // 
            this.btnDirLog.Location = new System.Drawing.Point(504, 171);
            this.btnDirLog.Name = "btnDirLog";
            this.btnDirLog.Size = new System.Drawing.Size(31, 23);
            this.btnDirLog.TabIndex = 14;
            this.btnDirLog.Text = "...";
            this.btnDirLog.UseVisualStyleBackColor = true;
            this.btnDirLog.Click += new System.EventHandler(this.btnDirLog_Click);
            // 
            // btnServProd
            // 
            this.btnServProd.Location = new System.Drawing.Point(503, 126);
            this.btnServProd.Name = "btnServProd";
            this.btnServProd.Size = new System.Drawing.Size(31, 23);
            this.btnServProd.TabIndex = 10;
            this.btnServProd.Text = "...";
            this.btnServProd.UseVisualStyleBackColor = true;
            this.btnServProd.Click += new System.EventHandler(this.btnServProd_Click);
            // 
            // btnDirEsquema
            // 
            this.btnDirEsquema.Location = new System.Drawing.Point(232, 216);
            this.btnDirEsquema.Name = "btnDirEsquema";
            this.btnDirEsquema.Size = new System.Drawing.Size(31, 23);
            this.btnDirEsquema.TabIndex = 16;
            this.btnDirEsquema.Text = "...";
            this.btnDirEsquema.UseVisualStyleBackColor = true;
            this.btnDirEsquema.Click += new System.EventHandler(this.btnDirEsquema_Click);
            // 
            // btnXmlDestinatario
            // 
            this.btnXmlDestinatario.Location = new System.Drawing.Point(231, 173);
            this.btnXmlDestinatario.Name = "btnXmlDestinatario";
            this.btnXmlDestinatario.Size = new System.Drawing.Size(31, 23);
            this.btnXmlDestinatario.TabIndex = 12;
            this.btnXmlDestinatario.Text = "...";
            this.btnXmlDestinatario.UseVisualStyleBackColor = true;
            this.btnXmlDestinatario.Click += new System.EventHandler(this.btnXmlDestinatario_Click);
            // 
            // btnServHomolog
            // 
            this.btnServHomolog.Location = new System.Drawing.Point(231, 126);
            this.btnServHomolog.Name = "btnServHomolog";
            this.btnServHomolog.Size = new System.Drawing.Size(31, 23);
            this.btnServHomolog.TabIndex = 8;
            this.btnServHomolog.Text = "...";
            this.btnServHomolog.UseVisualStyleBackColor = true;
            this.btnServHomolog.Click += new System.EventHandler(this.btnServHomolog_Click);
            // 
            // lblDiretorioTemplates
            // 
            this.lblDiretorioTemplates.AutoSize = true;
            this.lblDiretorioTemplates.Location = new System.Drawing.Point(279, 202);
            this.lblDiretorioTemplates.Name = "lblDiretorioTemplates";
            this.lblDiretorioTemplates.Size = new System.Drawing.Size(98, 13);
            this.lblDiretorioTemplates.TabIndex = 8;
            this.lblDiretorioTemplates.Text = "Diretório Templates";
            // 
            // lblDiretorioEsquemas
            // 
            this.lblDiretorioEsquemas.AutoSize = true;
            this.lblDiretorioEsquemas.Location = new System.Drawing.Point(5, 202);
            this.lblDiretorioEsquemas.Name = "lblDiretorioEsquemas";
            this.lblDiretorioEsquemas.Size = new System.Drawing.Size(98, 13);
            this.lblDiretorioEsquemas.TabIndex = 8;
            this.lblDiretorioEsquemas.Text = "Diretório Esquemas";
            // 
            // lblDiretorioLog
            // 
            this.lblDiretorioLog.AutoSize = true;
            this.lblDiretorioLog.Location = new System.Drawing.Point(279, 159);
            this.lblDiretorioLog.Name = "lblDiretorioLog";
            this.lblDiretorioLog.Size = new System.Drawing.Size(67, 13);
            this.lblDiretorioLog.TabIndex = 8;
            this.lblDiretorioLog.Text = "Diretório Log";
            // 
            // lblXmlDestinatario
            // 
            this.lblXmlDestinatario.AutoSize = true;
            this.lblXmlDestinatario.Location = new System.Drawing.Point(5, 159);
            this.lblXmlDestinatario.Name = "lblXmlDestinatario";
            this.lblXmlDestinatario.Size = new System.Drawing.Size(88, 13);
            this.lblXmlDestinatario.TabIndex = 8;
            this.lblXmlDestinatario.Text = "XML Destinatário";
            // 
            // lblServidoresProducao
            // 
            this.lblServidoresProducao.AutoSize = true;
            this.lblServidoresProducao.Location = new System.Drawing.Point(279, 110);
            this.lblServidoresProducao.Name = "lblServidoresProducao";
            this.lblServidoresProducao.Size = new System.Drawing.Size(106, 13);
            this.lblServidoresProducao.TabIndex = 8;
            this.lblServidoresProducao.Text = "Servidores Produção";
            // 
            // lblServidoresHomologacao
            // 
            this.lblServidoresHomologacao.AutoSize = true;
            this.lblServidoresHomologacao.Location = new System.Drawing.Point(5, 110);
            this.lblServidoresHomologacao.Name = "lblServidoresHomologacao";
            this.lblServidoresHomologacao.Size = new System.Drawing.Size(132, 13);
            this.lblServidoresHomologacao.TabIndex = 8;
            this.lblServidoresHomologacao.Text = "Servidoreas Homologação";
            // 
            // txtDirEsquema
            // 
            this.txtDirEsquema.Location = new System.Drawing.Point(10, 218);
            this.txtDirEsquema.Name = "txtDirEsquema";
            this.txtDirEsquema.Size = new System.Drawing.Size(220, 20);
            this.txtDirEsquema.TabIndex = 15;
            // 
            // txtDirTemplate
            // 
            this.txtDirTemplate.Location = new System.Drawing.Point(282, 218);
            this.txtDirTemplate.Name = "txtDirTemplate";
            this.txtDirTemplate.Size = new System.Drawing.Size(220, 20);
            this.txtDirTemplate.TabIndex = 17;
            // 
            // txtDirLog
            // 
            this.txtDirLog.Location = new System.Drawing.Point(282, 173);
            this.txtDirLog.Name = "txtDirLog";
            this.txtDirLog.Size = new System.Drawing.Size(220, 20);
            this.txtDirLog.TabIndex = 13;
            // 
            // txtServProd
            // 
            this.txtServProd.Location = new System.Drawing.Point(282, 128);
            this.txtServProd.Name = "txtServProd";
            this.txtServProd.Size = new System.Drawing.Size(220, 20);
            this.txtServProd.TabIndex = 9;
            // 
            // txtXmlDestinatario
            // 
            this.txtXmlDestinatario.Location = new System.Drawing.Point(9, 175);
            this.txtXmlDestinatario.Name = "txtXmlDestinatario";
            this.txtXmlDestinatario.Size = new System.Drawing.Size(220, 20);
            this.txtXmlDestinatario.TabIndex = 11;
            // 
            // txtServHomolog
            // 
            this.txtServHomolog.Location = new System.Drawing.Point(9, 127);
            this.txtServHomolog.Name = "txtServHomolog";
            this.txtServHomolog.Size = new System.Drawing.Size(220, 20);
            this.txtServHomolog.TabIndex = 7;
            // 
            // lblNomeDoCertificado
            // 
            this.lblNomeDoCertificado.AutoSize = true;
            this.lblNomeDoCertificado.Location = new System.Drawing.Point(12, 63);
            this.lblNomeDoCertificado.Name = "lblNomeDoCertificado";
            this.lblNomeDoCertificado.Size = new System.Drawing.Size(103, 13);
            this.lblNomeDoCertificado.TabIndex = 6;
            this.lblNomeDoCertificado.Text = "Nome do Certificado";
            // 
            // btnObterValidade
            // 
            this.btnObterValidade.Location = new System.Drawing.Point(445, 78);
            this.btnObterValidade.Name = "btnObterValidade";
            this.btnObterValidade.Size = new System.Drawing.Size(98, 23);
            this.btnObterValidade.TabIndex = 6;
            this.btnObterValidade.Text = "Obter Validade";
            this.btnObterValidade.UseVisualStyleBackColor = true;
            this.btnObterValidade.Click += new System.EventHandler(this.btnObterValidade_Click);
            // 
            // cboNomeCertificado
            // 
            this.cboNomeCertificado.FormattingEnabled = true;
            this.cboNomeCertificado.Location = new System.Drawing.Point(10, 81);
            this.cboNomeCertificado.Name = "cboNomeCertificado";
            this.cboNomeCertificado.Size = new System.Drawing.Size(323, 21);
            this.cboNomeCertificado.TabIndex = 5;
            this.cboNomeCertificado.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblVersao
            // 
            this.lblVersao.AutoSize = true;
            this.lblVersao.Location = new System.Drawing.Point(338, 17);
            this.lblVersao.Name = "lblVersao";
            this.lblVersao.Size = new System.Drawing.Size(40, 13);
            this.lblVersao.TabIndex = 3;
            this.lblVersao.Text = "Versão";
            // 
            // lblCnpj
            // 
            this.lblCnpj.AutoSize = true;
            this.lblCnpj.Location = new System.Drawing.Point(151, 17);
            this.lblCnpj.Name = "lblCnpj";
            this.lblCnpj.Size = new System.Drawing.Size(34, 13);
            this.lblCnpj.TabIndex = 3;
            this.lblCnpj.Text = "CNPJ";
            // 
            // lblUF
            // 
            this.lblUF.AutoSize = true;
            this.lblUF.Location = new System.Drawing.Point(279, 17);
            this.lblUF.Name = "lblUF";
            this.lblUF.Size = new System.Drawing.Size(21, 13);
            this.lblUF.TabIndex = 3;
            this.lblUF.Text = "UF";
            // 
            // lblAmbiente
            // 
            this.lblAmbiente.AutoSize = true;
            this.lblAmbiente.Location = new System.Drawing.Point(419, 17);
            this.lblAmbiente.Name = "lblAmbiente";
            this.lblAmbiente.Size = new System.Drawing.Size(51, 13);
            this.lblAmbiente.TabIndex = 3;
            this.lblAmbiente.Text = "Ambiente";
            // 
            // lblTipoCertificado
            // 
            this.lblTipoCertificado.AccessibleDescription = "";
            this.lblTipoCertificado.AutoSize = true;
            this.lblTipoCertificado.Location = new System.Drawing.Point(6, 17);
            this.lblTipoCertificado.Name = "lblTipoCertificado";
            this.lblTipoCertificado.Size = new System.Drawing.Size(96, 13);
            this.lblTipoCertificado.TabIndex = 3;
            this.lblTipoCertificado.Tag = "";
            this.lblTipoCertificado.Text = "Tipo de Certificado";
            // 
            // txtCnpj
            // 
            this.txtCnpj.Location = new System.Drawing.Point(154, 34);
            this.txtCnpj.MaxLength = 14;
            this.txtCnpj.Name = "txtCnpj";
            this.txtCnpj.Size = new System.Drawing.Size(122, 20);
            this.txtCnpj.TabIndex = 1;
            this.txtCnpj.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboVersao
            // 
            this.cboVersao.FormattingEnabled = true;
            this.cboVersao.Items.AddRange(new object[] {
            "5.0a",
            "6.0"});
            this.cboVersao.Location = new System.Drawing.Point(341, 33);
            this.cboVersao.Name = "cboVersao";
            this.cboVersao.Size = new System.Drawing.Size(75, 21);
            this.cboVersao.TabIndex = 3;
            this.cboVersao.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // cboUF
            // 
            this.cboUF.FormattingEnabled = true;
            this.cboUF.Items.AddRange(new object[] {
            "AM",
            "AP",
            "BA",
            "CE",
            "DF",
            "ES",
            "GO",
            "MA",
            "MG",
            "MS",
            "MT",
            "PA",
            "PB",
            "PE",
            "PI",
            "PR",
            "RJ",
            "RN",
            "RO",
            "RR",
            "RS",
            "SC",
            "SE",
            "SP",
            "TO"});
            this.cboUF.Location = new System.Drawing.Point(282, 33);
            this.cboUF.Name = "cboUF";
            this.cboUF.Size = new System.Drawing.Size(53, 21);
            this.cboUF.TabIndex = 2;
            this.cboUF.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // cboAmbiente
            // 
            this.cboAmbiente.FormattingEnabled = true;
            this.cboAmbiente.Items.AddRange(new object[] {
            "Homologação",
            "Produção"});
            this.cboAmbiente.Location = new System.Drawing.Point(422, 33);
            this.cboAmbiente.Name = "cboAmbiente";
            this.cboAmbiente.Size = new System.Drawing.Size(121, 21);
            this.cboAmbiente.TabIndex = 4;
            this.cboAmbiente.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // cboTipoCertificado
            // 
            this.cboTipoCertificado.BackColor = System.Drawing.SystemColors.Window;
            this.cboTipoCertificado.FormattingEnabled = true;
            this.cboTipoCertificado.Items.AddRange(new object[] {
            "ActiveDirectory",
            "File",
            "LocalMachine",
            "Memory",
            "SmartCard"});
            this.cboTipoCertificado.Location = new System.Drawing.Point(10, 33);
            this.cboTipoCertificado.Name = "cboTipoCertificado";
            this.cboTipoCertificado.Size = new System.Drawing.Size(140, 21);
            this.cboTipoCertificado.TabIndex = 0;
            this.cboTipoCertificado.SelectedIndexChanged += new System.EventHandler(this.cboTipoCertificado_SelectedIndexChanged);
            this.cboTipoCertificado.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // tbProxy
            // 
            this.tbProxy.Controls.Add(this.txtSenha);
            this.tbProxy.Controls.Add(this.txtUsuario);
            this.tbProxy.Controls.Add(this.txtTimeOut);
            this.tbProxy.Controls.Add(this.txtProxy);
            this.tbProxy.Controls.Add(this.lblUsuario);
            this.tbProxy.Controls.Add(this.lblSenha);
            this.tbProxy.Controls.Add(this.lblTimeOut);
            this.tbProxy.Controls.Add(this.lblProxy);
            this.tbProxy.Location = new System.Drawing.Point(4, 22);
            this.tbProxy.Name = "tbProxy";
            this.tbProxy.Padding = new System.Windows.Forms.Padding(3);
            this.tbProxy.Size = new System.Drawing.Size(569, 338);
            this.tbProxy.TabIndex = 1;
            this.tbProxy.Text = "Proxy";
            this.tbProxy.UseVisualStyleBackColor = true;
            // 
            // txtSenha
            // 
            this.txtSenha.Location = new System.Drawing.Point(6, 150);
            this.txtSenha.Name = "txtSenha";
            this.txtSenha.PasswordChar = '*';
            this.txtSenha.Size = new System.Drawing.Size(100, 20);
            this.txtSenha.TabIndex = 4;
            // 
            // txtUsuario
            // 
            this.txtUsuario.Location = new System.Drawing.Point(6, 89);
            this.txtUsuario.Name = "txtUsuario";
            this.txtUsuario.Size = new System.Drawing.Size(100, 20);
            this.txtUsuario.TabIndex = 3;
            // 
            // txtTimeOut
            // 
            this.txtTimeOut.Location = new System.Drawing.Point(155, 33);
            this.txtTimeOut.Name = "txtTimeOut";
            this.txtTimeOut.Size = new System.Drawing.Size(100, 20);
            this.txtTimeOut.TabIndex = 2;
            this.txtTimeOut.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtProxy
            // 
            this.txtProxy.Location = new System.Drawing.Point(6, 33);
            this.txtProxy.Name = "txtProxy";
            this.txtProxy.Size = new System.Drawing.Size(100, 20);
            this.txtProxy.TabIndex = 1;
            // 
            // lblUsuario
            // 
            this.lblUsuario.AutoSize = true;
            this.lblUsuario.Location = new System.Drawing.Point(6, 73);
            this.lblUsuario.Name = "lblUsuario";
            this.lblUsuario.Size = new System.Drawing.Size(43, 13);
            this.lblUsuario.TabIndex = 0;
            this.lblUsuario.Text = "Usuario";
            // 
            // lblSenha
            // 
            this.lblSenha.AutoSize = true;
            this.lblSenha.Location = new System.Drawing.Point(6, 134);
            this.lblSenha.Name = "lblSenha";
            this.lblSenha.Size = new System.Drawing.Size(38, 13);
            this.lblSenha.TabIndex = 0;
            this.lblSenha.Text = "Senha";
            // 
            // lblTimeOut
            // 
            this.lblTimeOut.AutoSize = true;
            this.lblTimeOut.Location = new System.Drawing.Point(152, 17);
            this.lblTimeOut.Name = "lblTimeOut";
            this.lblTimeOut.Size = new System.Drawing.Size(50, 13);
            this.lblTimeOut.TabIndex = 0;
            this.lblTimeOut.Text = "Time Out";
            // 
            // lblProxy
            // 
            this.lblProxy.AutoSize = true;
            this.lblProxy.Location = new System.Drawing.Point(6, 17);
            this.lblProxy.Name = "lblProxy";
            this.lblProxy.Size = new System.Drawing.Size(33, 13);
            this.lblProxy.TabIndex = 0;
            this.lblProxy.Text = "Proxy";
            // 
            // tbDanfe
            // 
            this.tbDanfe.Controls.Add(this.llbModeloPaisagem);
            this.tbDanfe.Controls.Add(this.llbModeloRetrato);
            this.tbDanfe.Controls.Add(this.lblObrigatorio25);
            this.tbDanfe.Controls.Add(this.lblObrigatorio24);
            this.tbDanfe.Controls.Add(this.btnLogoTipoEmitente);
            this.tbDanfe.Controls.Add(this.btnModeloRetrato);
            this.tbDanfe.Controls.Add(this.btnModeloPaisagem);
            this.tbDanfe.Controls.Add(this.txtLogoTipoEmitente);
            this.tbDanfe.Controls.Add(this.txtModeloRetrato);
            this.tbDanfe.Controls.Add(this.txtModeloPaisagem);
            this.tbDanfe.Controls.Add(this.txtLineDelimiter);
            this.tbDanfe.Controls.Add(this.txtCopias);
            this.tbDanfe.Controls.Add(this.txtFraseHomolog);
            this.tbDanfe.Controls.Add(this.txtFraseContigencia);
            this.tbDanfe.Controls.Add(this.lblModeloRetrato);
            this.tbDanfe.Controls.Add(this.lblModeloPaisagem);
            this.tbDanfe.Controls.Add(this.lblCopias);
            this.tbDanfe.Controls.Add(this.lblLineDelimiter);
            this.tbDanfe.Controls.Add(this.lblLogoTipoEmitente);
            this.tbDanfe.Controls.Add(this.lblFraseHomologacao);
            this.tbDanfe.Controls.Add(this.lblFraseContigencia);
            this.tbDanfe.Location = new System.Drawing.Point(4, 22);
            this.tbDanfe.Name = "tbDanfe";
            this.tbDanfe.Padding = new System.Windows.Forms.Padding(3);
            this.tbDanfe.Size = new System.Drawing.Size(569, 338);
            this.tbDanfe.TabIndex = 2;
            this.tbDanfe.Text = "Danfe";
            this.tbDanfe.UseVisualStyleBackColor = true;
            // 
            // llbModeloPaisagem
            // 
            this.llbModeloPaisagem.AutoSize = true;
            this.llbModeloPaisagem.Location = new System.Drawing.Point(316, 74);
            this.llbModeloPaisagem.Name = "llbModeloPaisagem";
            this.llbModeloPaisagem.Size = new System.Drawing.Size(34, 13);
            this.llbModeloPaisagem.TabIndex = 12;
            this.llbModeloPaisagem.TabStop = true;
            this.llbModeloPaisagem.Text = "(mais)";
            this.llbModeloPaisagem.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbModeloPaisagem_LinkClicked);
            // 
            // llbModeloRetrato
            // 
            this.llbModeloRetrato.AutoSize = true;
            this.llbModeloRetrato.Location = new System.Drawing.Point(115, 74);
            this.llbModeloRetrato.Name = "llbModeloRetrato";
            this.llbModeloRetrato.Size = new System.Drawing.Size(34, 13);
            this.llbModeloRetrato.TabIndex = 11;
            this.llbModeloRetrato.TabStop = true;
            this.llbModeloRetrato.Text = "(mais)";
            this.llbModeloRetrato.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbModeloRetrato_LinkClicked);
            // 
            // lblObrigatorio25
            // 
            this.lblObrigatorio25.AutoSize = true;
            this.lblObrigatorio25.BackColor = System.Drawing.Color.Transparent;
            this.lblObrigatorio25.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio25.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio25.Location = new System.Drawing.Point(296, 74);
            this.lblObrigatorio25.Name = "lblObrigatorio25";
            this.lblObrigatorio25.Size = new System.Drawing.Size(14, 16);
            this.lblObrigatorio25.TabIndex = 15;
            this.lblObrigatorio25.Text = "*";
            // 
            // lblObrigatorio24
            // 
            this.lblObrigatorio24.AutoSize = true;
            this.lblObrigatorio24.BackColor = System.Drawing.Color.Transparent;
            this.lblObrigatorio24.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio24.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio24.Location = new System.Drawing.Point(89, 74);
            this.lblObrigatorio24.Name = "lblObrigatorio24";
            this.lblObrigatorio24.Size = new System.Drawing.Size(14, 16);
            this.lblObrigatorio24.TabIndex = 15;
            this.lblObrigatorio24.Text = "*";
            // 
            // btnLogoTipoEmitente
            // 
            this.btnLogoTipoEmitente.Location = new System.Drawing.Point(533, 88);
            this.btnLogoTipoEmitente.Name = "btnLogoTipoEmitente";
            this.btnLogoTipoEmitente.Size = new System.Drawing.Size(32, 23);
            this.btnLogoTipoEmitente.TabIndex = 10;
            this.btnLogoTipoEmitente.Text = "...";
            this.btnLogoTipoEmitente.UseVisualStyleBackColor = true;
            this.btnLogoTipoEmitente.Click += new System.EventHandler(this.btnLogoTipoEmitente_Click);
            // 
            // btnModeloRetrato
            // 
            this.btnModeloRetrato.Location = new System.Drawing.Point(172, 87);
            this.btnModeloRetrato.Name = "btnModeloRetrato";
            this.btnModeloRetrato.Size = new System.Drawing.Size(28, 23);
            this.btnModeloRetrato.TabIndex = 6;
            this.btnModeloRetrato.Text = "...";
            this.btnModeloRetrato.UseVisualStyleBackColor = true;
            this.btnModeloRetrato.Click += new System.EventHandler(this.btnModeloRetrato_Click);
            // 
            // btnModeloPaisagem
            // 
            this.btnModeloPaisagem.Location = new System.Drawing.Point(370, 88);
            this.btnModeloPaisagem.Name = "btnModeloPaisagem";
            this.btnModeloPaisagem.Size = new System.Drawing.Size(30, 23);
            this.btnModeloPaisagem.TabIndex = 8;
            this.btnModeloPaisagem.Text = "...";
            this.btnModeloPaisagem.UseVisualStyleBackColor = true;
            this.btnModeloPaisagem.Click += new System.EventHandler(this.btnModeloPaisagem_Click);
            // 
            // txtLogoTipoEmitente
            // 
            this.txtLogoTipoEmitente.Location = new System.Drawing.Point(418, 90);
            this.txtLogoTipoEmitente.Name = "txtLogoTipoEmitente";
            this.txtLogoTipoEmitente.ReadOnly = true;
            this.txtLogoTipoEmitente.Size = new System.Drawing.Size(112, 20);
            this.txtLogoTipoEmitente.TabIndex = 9;
            // 
            // txtModeloRetrato
            // 
            this.txtModeloRetrato.Location = new System.Drawing.Point(14, 90);
            this.txtModeloRetrato.Name = "txtModeloRetrato";
            this.txtModeloRetrato.ReadOnly = true;
            this.txtModeloRetrato.Size = new System.Drawing.Size(156, 20);
            this.txtModeloRetrato.TabIndex = 5;
            // 
            // txtModeloPaisagem
            // 
            this.txtModeloPaisagem.Location = new System.Drawing.Point(212, 90);
            this.txtModeloPaisagem.Name = "txtModeloPaisagem";
            this.txtModeloPaisagem.ReadOnly = true;
            this.txtModeloPaisagem.Size = new System.Drawing.Size(157, 20);
            this.txtModeloPaisagem.TabIndex = 7;
            // 
            // txtLineDelimiter
            // 
            this.txtLineDelimiter.Location = new System.Drawing.Point(451, 33);
            this.txtLineDelimiter.Name = "txtLineDelimiter";
            this.txtLineDelimiter.Size = new System.Drawing.Size(100, 20);
            this.txtLineDelimiter.TabIndex = 4;
            // 
            // txtCopias
            // 
            this.txtCopias.Location = new System.Drawing.Point(370, 33);
            this.txtCopias.Name = "txtCopias";
            this.txtCopias.Size = new System.Drawing.Size(53, 20);
            this.txtCopias.TabIndex = 3;
            this.txtCopias.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtFraseHomolog
            // 
            this.txtFraseHomolog.Location = new System.Drawing.Point(206, 33);
            this.txtFraseHomolog.Name = "txtFraseHomolog";
            this.txtFraseHomolog.Size = new System.Drawing.Size(144, 20);
            this.txtFraseHomolog.TabIndex = 2;
            // 
            // txtFraseContigencia
            // 
            this.txtFraseContigencia.Location = new System.Drawing.Point(14, 33);
            this.txtFraseContigencia.Name = "txtFraseContigencia";
            this.txtFraseContigencia.Size = new System.Drawing.Size(175, 20);
            this.txtFraseContigencia.TabIndex = 1;
            // 
            // lblModeloRetrato
            // 
            this.lblModeloRetrato.AutoSize = true;
            this.lblModeloRetrato.Location = new System.Drawing.Point(11, 74);
            this.lblModeloRetrato.Name = "lblModeloRetrato";
            this.lblModeloRetrato.Size = new System.Drawing.Size(80, 13);
            this.lblModeloRetrato.TabIndex = 0;
            this.lblModeloRetrato.Text = "Modelo Retrato";
            // 
            // lblModeloPaisagem
            // 
            this.lblModeloPaisagem.AutoSize = true;
            this.lblModeloPaisagem.Location = new System.Drawing.Point(209, 74);
            this.lblModeloPaisagem.Name = "lblModeloPaisagem";
            this.lblModeloPaisagem.Size = new System.Drawing.Size(91, 13);
            this.lblModeloPaisagem.TabIndex = 0;
            this.lblModeloPaisagem.Text = "Modelo Paisagem";
            // 
            // lblCopias
            // 
            this.lblCopias.AutoSize = true;
            this.lblCopias.Location = new System.Drawing.Point(367, 13);
            this.lblCopias.Name = "lblCopias";
            this.lblCopias.Size = new System.Drawing.Size(39, 13);
            this.lblCopias.TabIndex = 0;
            this.lblCopias.Text = "Cópias";
            // 
            // lblLineDelimiter
            // 
            this.lblLineDelimiter.AutoSize = true;
            this.lblLineDelimiter.Location = new System.Drawing.Point(450, 13);
            this.lblLineDelimiter.Name = "lblLineDelimiter";
            this.lblLineDelimiter.Size = new System.Drawing.Size(70, 13);
            this.lblLineDelimiter.TabIndex = 0;
            this.lblLineDelimiter.Text = "Line Delimiter";
            // 
            // lblLogoTipoEmitente
            // 
            this.lblLogoTipoEmitente.AutoSize = true;
            this.lblLogoTipoEmitente.Location = new System.Drawing.Point(415, 74);
            this.lblLogoTipoEmitente.Name = "lblLogoTipoEmitente";
            this.lblLogoTipoEmitente.Size = new System.Drawing.Size(96, 13);
            this.lblLogoTipoEmitente.TabIndex = 0;
            this.lblLogoTipoEmitente.Text = "LogoTipo Emitente";
            // 
            // lblFraseHomologacao
            // 
            this.lblFraseHomologacao.AutoSize = true;
            this.lblFraseHomologacao.Location = new System.Drawing.Point(208, 13);
            this.lblFraseHomologacao.Name = "lblFraseHomologacao";
            this.lblFraseHomologacao.Size = new System.Drawing.Size(102, 13);
            this.lblFraseHomologacao.TabIndex = 0;
            this.lblFraseHomologacao.Text = "Frase Homologação";
            // 
            // lblFraseContigencia
            // 
            this.lblFraseContigencia.AutoSize = true;
            this.lblFraseContigencia.Location = new System.Drawing.Point(11, 13);
            this.lblFraseContigencia.Name = "lblFraseContigencia";
            this.lblFraseContigencia.Size = new System.Drawing.Size(92, 13);
            this.lblFraseContigencia.TabIndex = 0;
            this.lblFraseContigencia.Text = "Frase Contigência";
            // 
            // lblConfGerais
            // 
            this.lblConfGerais.AutoSize = true;
            this.lblConfGerais.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblConfGerais.Location = new System.Drawing.Point(7, 12);
            this.lblConfGerais.Name = "lblConfGerais";
            this.lblConfGerais.Size = new System.Drawing.Size(211, 24);
            this.lblConfGerais.TabIndex = 1;
            this.lblConfGerais.Text = "Configurações Gerais";
            // 
            // pnlInfoArquivo
            // 
            this.pnlInfoArquivo.Controls.Add(this.lblInfo);
            this.pnlInfoArquivo.Controls.Add(this.tcInfo);
            this.pnlInfoArquivo.Controls.Add(this.btnAbrirXmlDest);
            this.pnlInfoArquivo.Controls.Add(this.lblCaminhoArquivo);
            this.pnlInfoArquivo.Controls.Add(this.lblArquivo);
            this.pnlInfoArquivo.Location = new System.Drawing.Point(217, 8);
            this.pnlInfoArquivo.Name = "pnlInfoArquivo";
            this.pnlInfoArquivo.Size = new System.Drawing.Size(585, 411);
            this.pnlInfoArquivo.TabIndex = 11;
            this.pnlInfoArquivo.Visible = false;
            // 
            // lblInfo
            // 
            this.lblInfo.AutoSize = true;
            this.lblInfo.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblInfo.Location = new System.Drawing.Point(13, 15);
            this.lblInfo.Name = "lblInfo";
            this.lblInfo.Size = new System.Drawing.Size(276, 24);
            this.lblInfo.TabIndex = 16;
            this.lblInfo.Text = "Informações sobre o arquivo";
            // 
            // tcInfo
            // 
            this.tcInfo.Controls.Add(this.tptextoInfo);
            this.tcInfo.Controls.Add(this.tpBrowserInfo);
            this.tcInfo.Location = new System.Drawing.Point(8, 77);
            this.tcInfo.Name = "tcInfo";
            this.tcInfo.SelectedIndex = 0;
            this.tcInfo.Size = new System.Drawing.Size(565, 326);
            this.tcInfo.TabIndex = 2;
            // 
            // tptextoInfo
            // 
            this.tptextoInfo.Controls.Add(this.rtbXMLinfo);
            this.tptextoInfo.Location = new System.Drawing.Point(4, 22);
            this.tptextoInfo.Name = "tptextoInfo";
            this.tptextoInfo.Padding = new System.Windows.Forms.Padding(3);
            this.tptextoInfo.Size = new System.Drawing.Size(557, 300);
            this.tptextoInfo.TabIndex = 0;
            this.tptextoInfo.Text = "Texto";
            this.tptextoInfo.UseVisualStyleBackColor = true;
            // 
            // rtbXMLinfo
            // 
            this.rtbXMLinfo.BackColor = System.Drawing.SystemColors.Window;
            this.rtbXMLinfo.Location = new System.Drawing.Point(-1, 0);
            this.rtbXMLinfo.Name = "rtbXMLinfo";
            this.rtbXMLinfo.ReadOnly = true;
            this.rtbXMLinfo.Size = new System.Drawing.Size(559, 300);
            this.rtbXMLinfo.TabIndex = 0;
            this.rtbXMLinfo.Text = "";
            // 
            // tpBrowserInfo
            // 
            this.tpBrowserInfo.Controls.Add(this.wbXMLinfo);
            this.tpBrowserInfo.Location = new System.Drawing.Point(4, 22);
            this.tpBrowserInfo.Name = "tpBrowserInfo";
            this.tpBrowserInfo.Padding = new System.Windows.Forms.Padding(3);
            this.tpBrowserInfo.Size = new System.Drawing.Size(557, 300);
            this.tpBrowserInfo.TabIndex = 1;
            this.tpBrowserInfo.Text = "Browser";
            this.tpBrowserInfo.UseVisualStyleBackColor = true;
            // 
            // wbXMLinfo
            // 
            this.wbXMLinfo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXMLinfo.Location = new System.Drawing.Point(3, 3);
            this.wbXMLinfo.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXMLinfo.Name = "wbXMLinfo";
            this.wbXMLinfo.Size = new System.Drawing.Size(551, 294);
            this.wbXMLinfo.TabIndex = 0;
            // 
            // btnAbrirXmlDest
            // 
            this.btnAbrirXmlDest.Location = new System.Drawing.Point(455, 51);
            this.btnAbrirXmlDest.Name = "btnAbrirXmlDest";
            this.btnAbrirXmlDest.Size = new System.Drawing.Size(29, 23);
            this.btnAbrirXmlDest.TabIndex = 1;
            this.btnAbrirXmlDest.Text = "...";
            this.btnAbrirXmlDest.UseVisualStyleBackColor = true;
            this.btnAbrirXmlDest.Click += new System.EventHandler(this.btnAbrirXmlDest_Click);
            // 
            // lblCaminhoArquivo
            // 
            this.lblCaminhoArquivo.AutoSize = true;
            this.lblCaminhoArquivo.Location = new System.Drawing.Point(72, 56);
            this.lblCaminhoArquivo.Name = "lblCaminhoArquivo";
            this.lblCaminhoArquivo.Size = new System.Drawing.Size(0, 13);
            this.lblCaminhoArquivo.TabIndex = 1;
            // 
            // lblArquivo
            // 
            this.lblArquivo.AutoSize = true;
            this.lblArquivo.Location = new System.Drawing.Point(20, 57);
            this.lblArquivo.Name = "lblArquivo";
            this.lblArquivo.Size = new System.Drawing.Size(49, 13);
            this.lblArquivo.TabIndex = 0;
            this.lblArquivo.Text = "Arquivo: ";
            // 
            // pnlEmailConfig
            // 
            this.pnlEmailConfig.Controls.Add(this.txtEmailTimeOut);
            this.pnlEmailConfig.Controls.Add(this.lblEmailTimeOut);
            this.pnlEmailConfig.Controls.Add(this.lblemail);
            this.pnlEmailConfig.Controls.Add(this.chkAutenticacao);
            this.pnlEmailConfig.Controls.Add(this.rtbEmailMensagem);
            this.pnlEmailConfig.Controls.Add(this.txtEmailUsuario);
            this.pnlEmailConfig.Controls.Add(this.txtCC);
            this.pnlEmailConfig.Controls.Add(this.txtAssunto);
            this.pnlEmailConfig.Controls.Add(this.txtCCo);
            this.pnlEmailConfig.Controls.Add(this.txtEmailSenha);
            this.pnlEmailConfig.Controls.Add(this.txtEmailDestinatario);
            this.pnlEmailConfig.Controls.Add(this.txtPorta);
            this.pnlEmailConfig.Controls.Add(this.txtEmailRemetente);
            this.pnlEmailConfig.Controls.Add(this.txtServidor);
            this.pnlEmailConfig.Controls.Add(this.lblMensagem);
            this.pnlEmailConfig.Controls.Add(this.lblEmailSenha);
            this.pnlEmailConfig.Controls.Add(this.lblEmailUsuario);
            this.pnlEmailConfig.Controls.Add(this.lblCCo);
            this.pnlEmailConfig.Controls.Add(this.lblAssunto);
            this.pnlEmailConfig.Controls.Add(this.lblEmailDestinatario);
            this.pnlEmailConfig.Controls.Add(this.lblCC);
            this.pnlEmailConfig.Controls.Add(this.lblPorta);
            this.pnlEmailConfig.Controls.Add(this.lblEmailRemetente);
            this.pnlEmailConfig.Controls.Add(this.lblServidor);
            this.pnlEmailConfig.Location = new System.Drawing.Point(217, 8);
            this.pnlEmailConfig.Name = "pnlEmailConfig";
            this.pnlEmailConfig.Size = new System.Drawing.Size(585, 411);
            this.pnlEmailConfig.TabIndex = 4;
            this.pnlEmailConfig.Visible = false;
            // 
            // txtEmailTimeOut
            // 
            this.txtEmailTimeOut.Location = new System.Drawing.Point(407, 374);
            this.txtEmailTimeOut.Name = "txtEmailTimeOut";
            this.txtEmailTimeOut.Size = new System.Drawing.Size(99, 20);
            this.txtEmailTimeOut.TabIndex = 14;
            this.txtEmailTimeOut.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblEmailTimeOut
            // 
            this.lblEmailTimeOut.AutoSize = true;
            this.lblEmailTimeOut.Location = new System.Drawing.Point(405, 358);
            this.lblEmailTimeOut.Name = "lblEmailTimeOut";
            this.lblEmailTimeOut.Size = new System.Drawing.Size(50, 13);
            this.lblEmailTimeOut.TabIndex = 13;
            this.lblEmailTimeOut.Text = "Time Out";
            // 
            // lblemail
            // 
            this.lblemail.AutoSize = true;
            this.lblemail.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblemail.Location = new System.Drawing.Point(6, 11);
            this.lblemail.Name = "lblemail";
            this.lblemail.Size = new System.Drawing.Size(62, 24);
            this.lblemail.TabIndex = 12;
            this.lblemail.Text = "Email";
            // 
            // chkAutenticacao
            // 
            this.chkAutenticacao.AutoSize = true;
            this.chkAutenticacao.Location = new System.Drawing.Point(426, 68);
            this.chkAutenticacao.Name = "chkAutenticacao";
            this.chkAutenticacao.Size = new System.Drawing.Size(89, 17);
            this.chkAutenticacao.TabIndex = 3;
            this.chkAutenticacao.Text = "Autenticação";
            this.chkAutenticacao.UseVisualStyleBackColor = true;
            // 
            // rtbEmailMensagem
            // 
            this.rtbEmailMensagem.Location = new System.Drawing.Point(8, 255);
            this.rtbEmailMensagem.Name = "rtbEmailMensagem";
            this.rtbEmailMensagem.Size = new System.Drawing.Size(498, 100);
            this.rtbEmailMensagem.TabIndex = 9;
            this.rtbEmailMensagem.Text = "";
            // 
            // txtEmailUsuario
            // 
            this.txtEmailUsuario.Location = new System.Drawing.Point(5, 375);
            this.txtEmailUsuario.Name = "txtEmailUsuario";
            this.txtEmailUsuario.Size = new System.Drawing.Size(198, 20);
            this.txtEmailUsuario.TabIndex = 10;
            // 
            // txtCC
            // 
            this.txtCC.Location = new System.Drawing.Point(7, 160);
            this.txtCC.Name = "txtCC";
            this.txtCC.Size = new System.Drawing.Size(233, 20);
            this.txtCC.TabIndex = 6;
            // 
            // txtAssunto
            // 
            this.txtAssunto.Location = new System.Drawing.Point(7, 207);
            this.txtAssunto.Name = "txtAssunto";
            this.txtAssunto.Size = new System.Drawing.Size(499, 20);
            this.txtAssunto.TabIndex = 8;
            // 
            // txtCCo
            // 
            this.txtCCo.Location = new System.Drawing.Point(250, 160);
            this.txtCCo.Name = "txtCCo";
            this.txtCCo.Size = new System.Drawing.Size(256, 20);
            this.txtCCo.TabIndex = 7;
            // 
            // txtEmailSenha
            // 
            this.txtEmailSenha.Location = new System.Drawing.Point(212, 374);
            this.txtEmailSenha.Name = "txtEmailSenha";
            this.txtEmailSenha.PasswordChar = '*';
            this.txtEmailSenha.Size = new System.Drawing.Size(187, 20);
            this.txtEmailSenha.TabIndex = 11;
            // 
            // txtEmailDestinatario
            // 
            this.txtEmailDestinatario.Location = new System.Drawing.Point(250, 113);
            this.txtEmailDestinatario.Name = "txtEmailDestinatario";
            this.txtEmailDestinatario.Size = new System.Drawing.Size(256, 20);
            this.txtEmailDestinatario.TabIndex = 5;
            // 
            // txtPorta
            // 
            this.txtPorta.Location = new System.Drawing.Point(250, 66);
            this.txtPorta.Name = "txtPorta";
            this.txtPorta.Size = new System.Drawing.Size(149, 20);
            this.txtPorta.TabIndex = 2;
            this.txtPorta.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtEmailRemetente
            // 
            this.txtEmailRemetente.Location = new System.Drawing.Point(7, 113);
            this.txtEmailRemetente.Name = "txtEmailRemetente";
            this.txtEmailRemetente.Size = new System.Drawing.Size(236, 20);
            this.txtEmailRemetente.TabIndex = 4;
            // 
            // txtServidor
            // 
            this.txtServidor.Location = new System.Drawing.Point(8, 66);
            this.txtServidor.Name = "txtServidor";
            this.txtServidor.Size = new System.Drawing.Size(209, 20);
            this.txtServidor.TabIndex = 1;
            // 
            // lblMensagem
            // 
            this.lblMensagem.AutoSize = true;
            this.lblMensagem.Location = new System.Drawing.Point(8, 234);
            this.lblMensagem.Name = "lblMensagem";
            this.lblMensagem.Size = new System.Drawing.Size(59, 13);
            this.lblMensagem.TabIndex = 0;
            this.lblMensagem.Text = "Mensagem";
            // 
            // lblEmailSenha
            // 
            this.lblEmailSenha.AutoSize = true;
            this.lblEmailSenha.Location = new System.Drawing.Point(215, 358);
            this.lblEmailSenha.Name = "lblEmailSenha";
            this.lblEmailSenha.Size = new System.Drawing.Size(38, 13);
            this.lblEmailSenha.TabIndex = 0;
            this.lblEmailSenha.Text = "Senha";
            // 
            // lblEmailUsuario
            // 
            this.lblEmailUsuario.AutoSize = true;
            this.lblEmailUsuario.Location = new System.Drawing.Point(16, 358);
            this.lblEmailUsuario.Name = "lblEmailUsuario";
            this.lblEmailUsuario.Size = new System.Drawing.Size(43, 13);
            this.lblEmailUsuario.TabIndex = 0;
            this.lblEmailUsuario.Text = "Usuário";
            // 
            // lblCCo
            // 
            this.lblCCo.AutoSize = true;
            this.lblCCo.Location = new System.Drawing.Point(247, 141);
            this.lblCCo.Name = "lblCCo";
            this.lblCCo.Size = new System.Drawing.Size(27, 13);
            this.lblCCo.TabIndex = 0;
            this.lblCCo.Text = "CCo";
            // 
            // lblAssunto
            // 
            this.lblAssunto.AutoSize = true;
            this.lblAssunto.Location = new System.Drawing.Point(7, 191);
            this.lblAssunto.Name = "lblAssunto";
            this.lblAssunto.Size = new System.Drawing.Size(45, 13);
            this.lblAssunto.TabIndex = 0;
            this.lblAssunto.Text = "Assunto";
            // 
            // lblEmailDestinatario
            // 
            this.lblEmailDestinatario.AutoSize = true;
            this.lblEmailDestinatario.Location = new System.Drawing.Point(247, 97);
            this.lblEmailDestinatario.Name = "lblEmailDestinatario";
            this.lblEmailDestinatario.Size = new System.Drawing.Size(91, 13);
            this.lblEmailDestinatario.TabIndex = 0;
            this.lblEmailDestinatario.Text = "Email Destinatário";
            // 
            // lblCC
            // 
            this.lblCC.AutoSize = true;
            this.lblCC.Location = new System.Drawing.Point(8, 144);
            this.lblCC.Name = "lblCC";
            this.lblCC.Size = new System.Drawing.Size(21, 13);
            this.lblCC.TabIndex = 0;
            this.lblCC.Text = "CC";
            // 
            // lblPorta
            // 
            this.lblPorta.AutoSize = true;
            this.lblPorta.Location = new System.Drawing.Point(247, 51);
            this.lblPorta.Name = "lblPorta";
            this.lblPorta.Size = new System.Drawing.Size(32, 13);
            this.lblPorta.TabIndex = 0;
            this.lblPorta.Text = "Porta";
            // 
            // lblEmailRemetente
            // 
            this.lblEmailRemetente.AutoSize = true;
            this.lblEmailRemetente.Location = new System.Drawing.Point(9, 97);
            this.lblEmailRemetente.Name = "lblEmailRemetente";
            this.lblEmailRemetente.Size = new System.Drawing.Size(87, 13);
            this.lblEmailRemetente.TabIndex = 0;
            this.lblEmailRemetente.Text = "Email Remetente";
            // 
            // lblServidor
            // 
            this.lblServidor.AutoSize = true;
            this.lblServidor.Location = new System.Drawing.Point(6, 51);
            this.lblServidor.Name = "lblServidor";
            this.lblServidor.Size = new System.Drawing.Size(46, 13);
            this.lblServidor.TabIndex = 0;
            this.lblServidor.Text = "Servidor";
            // 
            // pnlEnviarNota
            // 
            this.pnlEnviarNota.Controls.Add(this.groupBox2);
            this.pnlEnviarNota.Controls.Add(this.groupBox1);
            this.pnlEnviarNota.Controls.Add(this.lblEnviarNota);
            this.pnlEnviarNota.Controls.Add(this.llbMotivoEnvio);
            this.pnlEnviarNota.Controls.Add(this.txtMotivoEnvio);
            this.pnlEnviarNota.Controls.Add(this.txtStatusEnvio);
            this.pnlEnviarNota.Controls.Add(this.lblMotivoEnviar);
            this.pnlEnviarNota.Controls.Add(this.lblStatusEnviar);
            this.pnlEnviarNota.Controls.Add(this.tbEnvio);
            this.pnlEnviarNota.Controls.Add(this.txtNumeroRecibo);
            this.pnlEnviarNota.Controls.Add(this.txtChaveNota);
            this.pnlEnviarNota.Controls.Add(this.lblNumeroRecibo);
            this.pnlEnviarNota.Controls.Add(this.lblChaveNota);
            this.pnlEnviarNota.Controls.Add(this.btnEnviarNota);
            this.pnlEnviarNota.Location = new System.Drawing.Point(217, 8);
            this.pnlEnviarNota.Name = "pnlEnviarNota";
            this.pnlEnviarNota.Size = new System.Drawing.Size(585, 411);
            this.pnlEnviarNota.TabIndex = 9;
            this.pnlEnviarNota.Visible = false;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.rbEnvCompac);
            this.groupBox2.Controls.Add(this.rbEnvDescompac);
            this.groupBox2.Location = new System.Drawing.Point(355, 7);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(130, 86);
            this.groupBox2.TabIndex = 13;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Compactação";
            // 
            // rbEnvCompac
            // 
            this.rbEnvCompac.AutoCheck = false;
            this.rbEnvCompac.AutoSize = true;
            this.rbEnvCompac.Enabled = false;
            this.rbEnvCompac.Location = new System.Drawing.Point(14, 25);
            this.rbEnvCompac.Name = "rbEnvCompac";
            this.rbEnvCompac.Size = new System.Drawing.Size(85, 17);
            this.rbEnvCompac.TabIndex = 10;
            this.rbEnvCompac.TabStop = true;
            this.rbEnvCompac.Text = "Compactado";
            this.rbEnvCompac.UseVisualStyleBackColor = true;
            // 
            // rbEnvDescompac
            // 
            this.rbEnvDescompac.AutoSize = true;
            this.rbEnvDescompac.Checked = true;
            this.rbEnvDescompac.Enabled = false;
            this.rbEnvDescompac.Location = new System.Drawing.Point(14, 55);
            this.rbEnvDescompac.Name = "rbEnvDescompac";
            this.rbEnvDescompac.Size = new System.Drawing.Size(103, 17);
            this.rbEnvDescompac.TabIndex = 11;
            this.rbEnvDescompac.TabStop = true;
            this.rbEnvDescompac.Text = "Descompactado";
            this.rbEnvDescompac.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rbEnvSinc);
            this.groupBox1.Controls.Add(this.rbEnvAssinc);
            this.groupBox1.Location = new System.Drawing.Point(179, 8);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(130, 86);
            this.groupBox1.TabIndex = 12;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Tipo de Envio";
            // 
            // rbEnvSinc
            // 
            this.rbEnvSinc.AutoSize = true;
            this.rbEnvSinc.Checked = true;
            this.rbEnvSinc.Location = new System.Drawing.Point(14, 25);
            this.rbEnvSinc.Name = "rbEnvSinc";
            this.rbEnvSinc.Size = new System.Drawing.Size(99, 17);
            this.rbEnvSinc.TabIndex = 10;
            this.rbEnvSinc.TabStop = true;
            this.rbEnvSinc.Text = "Envio Síncrono";
            this.rbEnvSinc.UseVisualStyleBackColor = true;
            // 
            // rbEnvAssinc
            // 
            this.rbEnvAssinc.AutoSize = true;
            this.rbEnvAssinc.Location = new System.Drawing.Point(14, 55);
            this.rbEnvAssinc.Name = "rbEnvAssinc";
            this.rbEnvAssinc.Size = new System.Drawing.Size(109, 17);
            this.rbEnvAssinc.TabIndex = 11;
            this.rbEnvAssinc.TabStop = true;
            this.rbEnvAssinc.Text = "Envio Assíncrono";
            this.rbEnvAssinc.UseVisualStyleBackColor = true;
            // 
            // lblEnviarNota
            // 
            this.lblEnviarNota.AutoSize = true;
            this.lblEnviarNota.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEnviarNota.Location = new System.Drawing.Point(11, 15);
            this.lblEnviarNota.Name = "lblEnviarNota";
            this.lblEnviarNota.Size = new System.Drawing.Size(142, 24);
            this.lblEnviarNota.TabIndex = 9;
            this.lblEnviarNota.Text = "Enviar Nota(s)";
            // 
            // llbMotivoEnvio
            // 
            this.llbMotivoEnvio.AutoSize = true;
            this.llbMotivoEnvio.Location = new System.Drawing.Point(456, 381);
            this.llbMotivoEnvio.Name = "llbMotivoEnvio";
            this.llbMotivoEnvio.Size = new System.Drawing.Size(34, 13);
            this.llbMotivoEnvio.TabIndex = 3;
            this.llbMotivoEnvio.TabStop = true;
            this.llbMotivoEnvio.Text = "(mais)";
            this.llbMotivoEnvio.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LinkMotivo);
            // 
            // txtMotivoEnvio
            // 
            this.txtMotivoEnvio.BackColor = System.Drawing.SystemColors.Window;
            this.txtMotivoEnvio.Location = new System.Drawing.Point(268, 378);
            this.txtMotivoEnvio.Name = "txtMotivoEnvio";
            this.txtMotivoEnvio.ReadOnly = true;
            this.txtMotivoEnvio.Size = new System.Drawing.Size(182, 20);
            this.txtMotivoEnvio.TabIndex = 6;
            this.txtMotivoEnvio.TabStop = false;
            // 
            // txtStatusEnvio
            // 
            this.txtStatusEnvio.BackColor = System.Drawing.SystemColors.Window;
            this.txtStatusEnvio.Location = new System.Drawing.Point(54, 378);
            this.txtStatusEnvio.Name = "txtStatusEnvio";
            this.txtStatusEnvio.ReadOnly = true;
            this.txtStatusEnvio.Size = new System.Drawing.Size(139, 20);
            this.txtStatusEnvio.TabIndex = 5;
            this.txtStatusEnvio.TabStop = false;
            // 
            // lblMotivoEnviar
            // 
            this.lblMotivoEnviar.AutoSize = true;
            this.lblMotivoEnviar.Location = new System.Drawing.Point(231, 381);
            this.lblMotivoEnviar.Name = "lblMotivoEnviar";
            this.lblMotivoEnviar.Size = new System.Drawing.Size(39, 13);
            this.lblMotivoEnviar.TabIndex = 6;
            this.lblMotivoEnviar.Text = "Motivo";
            // 
            // lblStatusEnviar
            // 
            this.lblStatusEnviar.AutoSize = true;
            this.lblStatusEnviar.Location = new System.Drawing.Point(20, 381);
            this.lblStatusEnviar.Name = "lblStatusEnviar";
            this.lblStatusEnviar.Size = new System.Drawing.Size(37, 13);
            this.lblStatusEnviar.TabIndex = 5;
            this.lblStatusEnviar.Text = "Status";
            // 
            // tbEnvio
            // 
            this.tbEnvio.Controls.Add(this.tpTextoEnviar);
            this.tbEnvio.Controls.Add(this.tpBrowserEnviar);
            this.tbEnvio.Location = new System.Drawing.Point(14, 140);
            this.tbEnvio.Name = "tbEnvio";
            this.tbEnvio.SelectedIndex = 0;
            this.tbEnvio.Size = new System.Drawing.Size(547, 228);
            this.tbEnvio.TabIndex = 2;
            // 
            // tpTextoEnviar
            // 
            this.tpTextoEnviar.Controls.Add(this.rtbXMLenvio);
            this.tpTextoEnviar.Location = new System.Drawing.Point(4, 22);
            this.tpTextoEnviar.Name = "tpTextoEnviar";
            this.tpTextoEnviar.Padding = new System.Windows.Forms.Padding(3);
            this.tpTextoEnviar.Size = new System.Drawing.Size(539, 202);
            this.tpTextoEnviar.TabIndex = 0;
            this.tpTextoEnviar.Text = "Texto";
            this.tpTextoEnviar.UseVisualStyleBackColor = true;
            // 
            // rtbXMLenvio
            // 
            this.rtbXMLenvio.BackColor = System.Drawing.SystemColors.Window;
            this.rtbXMLenvio.Location = new System.Drawing.Point(-1, 0);
            this.rtbXMLenvio.Name = "rtbXMLenvio";
            this.rtbXMLenvio.ReadOnly = true;
            this.rtbXMLenvio.Size = new System.Drawing.Size(540, 202);
            this.rtbXMLenvio.TabIndex = 0;
            this.rtbXMLenvio.Text = "";
            // 
            // tpBrowserEnviar
            // 
            this.tpBrowserEnviar.Controls.Add(this.wbXMLenvio);
            this.tpBrowserEnviar.Location = new System.Drawing.Point(4, 22);
            this.tpBrowserEnviar.Name = "tpBrowserEnviar";
            this.tpBrowserEnviar.Padding = new System.Windows.Forms.Padding(3);
            this.tpBrowserEnviar.Size = new System.Drawing.Size(539, 202);
            this.tpBrowserEnviar.TabIndex = 1;
            this.tpBrowserEnviar.Text = "Browser";
            this.tpBrowserEnviar.UseVisualStyleBackColor = true;
            // 
            // wbXMLenvio
            // 
            this.wbXMLenvio.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXMLenvio.Location = new System.Drawing.Point(3, 3);
            this.wbXMLenvio.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXMLenvio.Name = "wbXMLenvio";
            this.wbXMLenvio.Size = new System.Drawing.Size(533, 196);
            this.wbXMLenvio.TabIndex = 0;
            // 
            // txtNumeroRecibo
            // 
            this.txtNumeroRecibo.BackColor = System.Drawing.SystemColors.Window;
            this.txtNumeroRecibo.Location = new System.Drawing.Point(354, 116);
            this.txtNumeroRecibo.Name = "txtNumeroRecibo";
            this.txtNumeroRecibo.ReadOnly = true;
            this.txtNumeroRecibo.Size = new System.Drawing.Size(182, 20);
            this.txtNumeroRecibo.TabIndex = 3;
            this.txtNumeroRecibo.TabStop = false;
            // 
            // txtChaveNota
            // 
            this.txtChaveNota.BackColor = System.Drawing.SystemColors.Window;
            this.txtChaveNota.Location = new System.Drawing.Point(15, 116);
            this.txtChaveNota.Name = "txtChaveNota";
            this.txtChaveNota.ReadOnly = true;
            this.txtChaveNota.Size = new System.Drawing.Size(320, 20);
            this.txtChaveNota.TabIndex = 2;
            this.txtChaveNota.TabStop = false;
            // 
            // lblNumeroRecibo
            // 
            this.lblNumeroRecibo.AutoSize = true;
            this.lblNumeroRecibo.Location = new System.Drawing.Point(354, 97);
            this.lblNumeroRecibo.Name = "lblNumeroRecibo";
            this.lblNumeroRecibo.Size = new System.Drawing.Size(96, 13);
            this.lblNumeroRecibo.TabIndex = 1;
            this.lblNumeroRecibo.Text = "Número de Recibo";
            // 
            // lblChaveNota
            // 
            this.lblChaveNota.AutoSize = true;
            this.lblChaveNota.Location = new System.Drawing.Point(17, 99);
            this.lblChaveNota.Name = "lblChaveNota";
            this.lblChaveNota.Size = new System.Drawing.Size(79, 13);
            this.lblChaveNota.TabIndex = 1;
            this.lblChaveNota.Text = "Chave da Nota";
            // 
            // btnEnviarNota
            // 
            this.btnEnviarNota.Location = new System.Drawing.Point(16, 62);
            this.btnEnviarNota.Name = "btnEnviarNota";
            this.btnEnviarNota.Size = new System.Drawing.Size(134, 29);
            this.btnEnviarNota.TabIndex = 1;
            this.btnEnviarNota.Text = "Enviar Nota ao Sefaz";
            this.btnEnviarNota.UseVisualStyleBackColor = true;
            this.btnEnviarNota.Click += new System.EventHandler(this.btnEnviarNota_Click);
            // 
            // pnlConsultarRecibo
            // 
            this.pnlConsultarRecibo.Controls.Add(this.txtMotivoConsulta);
            this.pnlConsultarRecibo.Controls.Add(this.lblConsultar);
            this.pnlConsultarRecibo.Controls.Add(this.txtStatusConsulta);
            this.pnlConsultarRecibo.Controls.Add(this.lblMotivoConsulta);
            this.pnlConsultarRecibo.Controls.Add(this.lblStatusConsulta);
            this.pnlConsultarRecibo.Controls.Add(this.tcConsultar);
            this.pnlConsultarRecibo.Controls.Add(this.txtProtocoloAutorizacao);
            this.pnlConsultarRecibo.Controls.Add(this.lblProtocoloAutorizacao);
            this.pnlConsultarRecibo.Controls.Add(this.btnConsultarChave);
            this.pnlConsultarRecibo.Controls.Add(this.txtChaveNotaCom);
            this.pnlConsultarRecibo.Controls.Add(this.lblChaveNotaCom);
            this.pnlConsultarRecibo.Controls.Add(this.lblOU);
            this.pnlConsultarRecibo.Controls.Add(this.llbMotivoConsulta);
            this.pnlConsultarRecibo.Controls.Add(this.llbConsultarChave);
            this.pnlConsultarRecibo.Controls.Add(this.llbConsultaRecibo);
            this.pnlConsultarRecibo.Controls.Add(this.btnConsultaRecibo);
            this.pnlConsultarRecibo.Controls.Add(this.txtNumeroReciboCom);
            this.pnlConsultarRecibo.Controls.Add(this.lblNumeroReciboCom);
            this.pnlConsultarRecibo.Location = new System.Drawing.Point(217, 9);
            this.pnlConsultarRecibo.Name = "pnlConsultarRecibo";
            this.pnlConsultarRecibo.Size = new System.Drawing.Size(585, 410);
            this.pnlConsultarRecibo.TabIndex = 10;
            this.pnlConsultarRecibo.Visible = false;
            // 
            // txtMotivoConsulta
            // 
            this.txtMotivoConsulta.BackColor = System.Drawing.SystemColors.Window;
            this.txtMotivoConsulta.Location = new System.Drawing.Point(172, 377);
            this.txtMotivoConsulta.Name = "txtMotivoConsulta";
            this.txtMotivoConsulta.ReadOnly = true;
            this.txtMotivoConsulta.Size = new System.Drawing.Size(149, 20);
            this.txtMotivoConsulta.TabIndex = 14;
            this.txtMotivoConsulta.TabStop = false;
            // 
            // lblConsultar
            // 
            this.lblConsultar.AutoSize = true;
            this.lblConsultar.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblConsultar.Location = new System.Drawing.Point(15, 15);
            this.lblConsultar.Name = "lblConsultar";
            this.lblConsultar.Size = new System.Drawing.Size(144, 24);
            this.lblConsultar.TabIndex = 15;
            this.lblConsultar.Text = "Consultar NFe";
            // 
            // txtStatusConsulta
            // 
            this.txtStatusConsulta.BackColor = System.Drawing.SystemColors.Window;
            this.txtStatusConsulta.Location = new System.Drawing.Point(51, 377);
            this.txtStatusConsulta.Name = "txtStatusConsulta";
            this.txtStatusConsulta.ReadOnly = true;
            this.txtStatusConsulta.Size = new System.Drawing.Size(61, 20);
            this.txtStatusConsulta.TabIndex = 13;
            this.txtStatusConsulta.TabStop = false;
            // 
            // lblMotivoConsulta
            // 
            this.lblMotivoConsulta.AutoSize = true;
            this.lblMotivoConsulta.Location = new System.Drawing.Point(132, 380);
            this.lblMotivoConsulta.Name = "lblMotivoConsulta";
            this.lblMotivoConsulta.Size = new System.Drawing.Size(39, 13);
            this.lblMotivoConsulta.TabIndex = 12;
            this.lblMotivoConsulta.Text = "Motivo";
            // 
            // lblStatusConsulta
            // 
            this.lblStatusConsulta.AutoSize = true;
            this.lblStatusConsulta.Location = new System.Drawing.Point(14, 380);
            this.lblStatusConsulta.Name = "lblStatusConsulta";
            this.lblStatusConsulta.Size = new System.Drawing.Size(37, 13);
            this.lblStatusConsulta.TabIndex = 11;
            this.lblStatusConsulta.Text = "Status";
            // 
            // tcConsultar
            // 
            this.tcConsultar.Controls.Add(this.tptextoConsulta);
            this.tcConsultar.Controls.Add(this.tpBrowserConsulta);
            this.tcConsultar.Location = new System.Drawing.Point(11, 151);
            this.tcConsultar.Name = "tcConsultar";
            this.tcConsultar.SelectedIndex = 0;
            this.tcConsultar.Size = new System.Drawing.Size(560, 220);
            this.tcConsultar.TabIndex = 5;
            // 
            // tptextoConsulta
            // 
            this.tptextoConsulta.Controls.Add(this.rtbXmlConsulta);
            this.tptextoConsulta.Location = new System.Drawing.Point(4, 22);
            this.tptextoConsulta.Name = "tptextoConsulta";
            this.tptextoConsulta.Padding = new System.Windows.Forms.Padding(3);
            this.tptextoConsulta.Size = new System.Drawing.Size(552, 194);
            this.tptextoConsulta.TabIndex = 0;
            this.tptextoConsulta.Text = "Texto";
            this.tptextoConsulta.UseVisualStyleBackColor = true;
            // 
            // rtbXmlConsulta
            // 
            this.rtbXmlConsulta.BackColor = System.Drawing.SystemColors.Window;
            this.rtbXmlConsulta.Location = new System.Drawing.Point(1, 1);
            this.rtbXmlConsulta.Name = "rtbXmlConsulta";
            this.rtbXmlConsulta.ReadOnly = true;
            this.rtbXmlConsulta.Size = new System.Drawing.Size(551, 192);
            this.rtbXmlConsulta.TabIndex = 0;
            this.rtbXmlConsulta.Text = "";
            // 
            // tpBrowserConsulta
            // 
            this.tpBrowserConsulta.Controls.Add(this.wbXMLconsulta);
            this.tpBrowserConsulta.Location = new System.Drawing.Point(4, 22);
            this.tpBrowserConsulta.Name = "tpBrowserConsulta";
            this.tpBrowserConsulta.Padding = new System.Windows.Forms.Padding(3);
            this.tpBrowserConsulta.Size = new System.Drawing.Size(552, 194);
            this.tpBrowserConsulta.TabIndex = 1;
            this.tpBrowserConsulta.Text = "Browser";
            this.tpBrowserConsulta.UseVisualStyleBackColor = true;
            // 
            // wbXMLconsulta
            // 
            this.wbXMLconsulta.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXMLconsulta.Location = new System.Drawing.Point(3, 3);
            this.wbXMLconsulta.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXMLconsulta.Name = "wbXMLconsulta";
            this.wbXMLconsulta.Size = new System.Drawing.Size(546, 188);
            this.wbXMLconsulta.TabIndex = 0;
            // 
            // txtProtocoloAutorizacao
            // 
            this.txtProtocoloAutorizacao.BackColor = System.Drawing.SystemColors.Window;
            this.txtProtocoloAutorizacao.Location = new System.Drawing.Point(455, 126);
            this.txtProtocoloAutorizacao.Name = "txtProtocoloAutorizacao";
            this.txtProtocoloAutorizacao.ReadOnly = true;
            this.txtProtocoloAutorizacao.Size = new System.Drawing.Size(119, 20);
            this.txtProtocoloAutorizacao.TabIndex = 9;
            this.txtProtocoloAutorizacao.TabStop = false;
            // 
            // lblProtocoloAutorizacao
            // 
            this.lblProtocoloAutorizacao.AutoSize = true;
            this.lblProtocoloAutorizacao.Location = new System.Drawing.Point(451, 109);
            this.lblProtocoloAutorizacao.Name = "lblProtocoloAutorizacao";
            this.lblProtocoloAutorizacao.Size = new System.Drawing.Size(126, 13);
            this.lblProtocoloAutorizacao.TabIndex = 8;
            this.lblProtocoloAutorizacao.Text = "Protocolo de Autorização";
            // 
            // btnConsultarChave
            // 
            this.btnConsultarChave.Location = new System.Drawing.Point(293, 125);
            this.btnConsultarChave.Name = "btnConsultarChave";
            this.btnConsultarChave.Size = new System.Drawing.Size(99, 23);
            this.btnConsultarChave.TabIndex = 3;
            this.btnConsultarChave.Text = "Consultar Chave";
            this.btnConsultarChave.UseVisualStyleBackColor = true;
            this.btnConsultarChave.Click += new System.EventHandler(this.btnConsultarChave_Click);
            // 
            // txtChaveNotaCom
            // 
            this.txtChaveNotaCom.BackColor = System.Drawing.SystemColors.Window;
            this.txtChaveNotaCom.Location = new System.Drawing.Point(13, 126);
            this.txtChaveNotaCom.Name = "txtChaveNotaCom";
            this.txtChaveNotaCom.ReadOnly = true;
            this.txtChaveNotaCom.Size = new System.Drawing.Size(272, 20);
            this.txtChaveNotaCom.TabIndex = 6;
            this.txtChaveNotaCom.TabStop = false;
            // 
            // lblChaveNotaCom
            // 
            this.lblChaveNotaCom.AutoSize = true;
            this.lblChaveNotaCom.Location = new System.Drawing.Point(16, 109);
            this.lblChaveNotaCom.Name = "lblChaveNotaCom";
            this.lblChaveNotaCom.Size = new System.Drawing.Size(79, 13);
            this.lblChaveNotaCom.TabIndex = 5;
            this.lblChaveNotaCom.Text = "Chave da Nota";
            // 
            // lblOU
            // 
            this.lblOU.AutoSize = true;
            this.lblOU.Location = new System.Drawing.Point(390, 98);
            this.lblOU.Name = "lblOU";
            this.lblOU.Size = new System.Drawing.Size(23, 13);
            this.lblOU.TabIndex = 4;
            this.lblOU.Text = "OU";
            // 
            // llbMotivoConsulta
            // 
            this.llbMotivoConsulta.AutoSize = true;
            this.llbMotivoConsulta.Location = new System.Drawing.Point(327, 380);
            this.llbMotivoConsulta.Name = "llbMotivoConsulta";
            this.llbMotivoConsulta.Size = new System.Drawing.Size(34, 13);
            this.llbMotivoConsulta.TabIndex = 6;
            this.llbMotivoConsulta.TabStop = true;
            this.llbMotivoConsulta.Text = "(mais)";
            this.llbMotivoConsulta.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LinkMotivo);
            // 
            // llbConsultarChave
            // 
            this.llbConsultarChave.AutoSize = true;
            this.llbConsultarChave.Location = new System.Drawing.Point(398, 128);
            this.llbConsultarChave.Name = "llbConsultarChave";
            this.llbConsultarChave.Size = new System.Drawing.Size(34, 13);
            this.llbConsultarChave.TabIndex = 4;
            this.llbConsultarChave.TabStop = true;
            this.llbConsultarChave.Text = "(mais)";
            this.llbConsultarChave.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbConsultarChave_LinkClicked);
            // 
            // llbConsultaRecibo
            // 
            this.llbConsultaRecibo.AutoSize = true;
            this.llbConsultaRecibo.Location = new System.Drawing.Point(317, 74);
            this.llbConsultaRecibo.Name = "llbConsultaRecibo";
            this.llbConsultaRecibo.Size = new System.Drawing.Size(34, 13);
            this.llbConsultaRecibo.TabIndex = 2;
            this.llbConsultaRecibo.TabStop = true;
            this.llbConsultaRecibo.Text = "(mais)";
            this.llbConsultaRecibo.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbConsultaRecibo_LinkClicked);
            // 
            // btnConsultaRecibo
            // 
            this.btnConsultaRecibo.Location = new System.Drawing.Point(205, 68);
            this.btnConsultaRecibo.Name = "btnConsultaRecibo";
            this.btnConsultaRecibo.Size = new System.Drawing.Size(106, 23);
            this.btnConsultaRecibo.TabIndex = 1;
            this.btnConsultaRecibo.Text = "Consulta Recibo";
            this.btnConsultaRecibo.UseVisualStyleBackColor = true;
            this.btnConsultaRecibo.Click += new System.EventHandler(this.btnConsultaRecibo_Click);
            // 
            // txtNumeroReciboCom
            // 
            this.txtNumeroReciboCom.BackColor = System.Drawing.SystemColors.Window;
            this.txtNumeroReciboCom.Location = new System.Drawing.Point(14, 70);
            this.txtNumeroReciboCom.Name = "txtNumeroReciboCom";
            this.txtNumeroReciboCom.ReadOnly = true;
            this.txtNumeroReciboCom.Size = new System.Drawing.Size(178, 20);
            this.txtNumeroReciboCom.TabIndex = 1;
            this.txtNumeroReciboCom.TabStop = false;
            // 
            // lblNumeroReciboCom
            // 
            this.lblNumeroReciboCom.AutoSize = true;
            this.lblNumeroReciboCom.Location = new System.Drawing.Point(13, 47);
            this.lblNumeroReciboCom.Name = "lblNumeroReciboCom";
            this.lblNumeroReciboCom.Size = new System.Drawing.Size(96, 13);
            this.lblNumeroReciboCom.TabIndex = 0;
            this.lblNumeroReciboCom.Text = "Número de Recibo";
            // 
            // pnlAssinatura
            // 
            this.pnlAssinatura.Controls.Add(this.lblAssinarNFe);
            this.pnlAssinatura.Controls.Add(this.btnPreverDanfe);
            this.pnlAssinatura.Controls.Add(this.btnAssinarNota);
            this.pnlAssinatura.Controls.Add(this.tcXmlAssinado);
            this.pnlAssinatura.Controls.Add(this.tcXmlNota);
            this.pnlAssinatura.Controls.Add(this.lblXmlAssinado);
            this.pnlAssinatura.Controls.Add(this.lblXmlNota);
            this.pnlAssinatura.Location = new System.Drawing.Point(217, 7);
            this.pnlAssinatura.Name = "pnlAssinatura";
            this.pnlAssinatura.Size = new System.Drawing.Size(585, 411);
            this.pnlAssinatura.TabIndex = 8;
            this.pnlAssinatura.Visible = false;
            // 
            // lblAssinarNFe
            // 
            this.lblAssinarNFe.AutoSize = true;
            this.lblAssinarNFe.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAssinarNFe.Location = new System.Drawing.Point(9, 12);
            this.lblAssinarNFe.Name = "lblAssinarNFe";
            this.lblAssinarNFe.Size = new System.Drawing.Size(125, 24);
            this.lblAssinarNFe.TabIndex = 9;
            this.lblAssinarNFe.Text = "Assinar NFe";
            // 
            // btnPreverDanfe
            // 
            this.btnPreverDanfe.Location = new System.Drawing.Point(254, 232);
            this.btnPreverDanfe.Name = "btnPreverDanfe";
            this.btnPreverDanfe.Size = new System.Drawing.Size(124, 23);
            this.btnPreverDanfe.TabIndex = 4;
            this.btnPreverDanfe.Text = "Prever DANFE";
            this.btnPreverDanfe.UseVisualStyleBackColor = true;
            this.btnPreverDanfe.Click += new System.EventHandler(this.btnPreverDanfe_Click);
            // 
            // btnAssinarNota
            // 
            this.btnAssinarNota.Location = new System.Drawing.Point(391, 232);
            this.btnAssinarNota.Name = "btnAssinarNota";
            this.btnAssinarNota.Size = new System.Drawing.Size(119, 23);
            this.btnAssinarNota.TabIndex = 2;
            this.btnAssinarNota.Text = "Assinar Nota";
            this.btnAssinarNota.UseVisualStyleBackColor = true;
            this.btnAssinarNota.Click += new System.EventHandler(this.btnAssinarNota_Click);
            // 
            // tcXmlAssinado
            // 
            this.tcXmlAssinado.Controls.Add(this.tpTextoXmlAssinado);
            this.tcXmlAssinado.Controls.Add(this.tpBrowserXmlAssinado);
            this.tcXmlAssinado.Location = new System.Drawing.Point(15, 257);
            this.tcXmlAssinado.Name = "tcXmlAssinado";
            this.tcXmlAssinado.SelectedIndex = 0;
            this.tcXmlAssinado.Size = new System.Drawing.Size(504, 150);
            this.tcXmlAssinado.TabIndex = 3;
            // 
            // tpTextoXmlAssinado
            // 
            this.tpTextoXmlAssinado.Controls.Add(this.rtbXmlNotaAssinado);
            this.tpTextoXmlAssinado.Location = new System.Drawing.Point(4, 22);
            this.tpTextoXmlAssinado.Name = "tpTextoXmlAssinado";
            this.tpTextoXmlAssinado.Padding = new System.Windows.Forms.Padding(3);
            this.tpTextoXmlAssinado.Size = new System.Drawing.Size(496, 124);
            this.tpTextoXmlAssinado.TabIndex = 0;
            this.tpTextoXmlAssinado.Text = "Texto";
            this.tpTextoXmlAssinado.UseVisualStyleBackColor = true;
            // 
            // rtbXmlNotaAssinado
            // 
            this.rtbXmlNotaAssinado.BackColor = System.Drawing.SystemColors.Window;
            this.rtbXmlNotaAssinado.Location = new System.Drawing.Point(1, 0);
            this.rtbXmlNotaAssinado.Name = "rtbXmlNotaAssinado";
            this.rtbXmlNotaAssinado.ReadOnly = true;
            this.rtbXmlNotaAssinado.Size = new System.Drawing.Size(495, 123);
            this.rtbXmlNotaAssinado.TabIndex = 0;
            this.rtbXmlNotaAssinado.Text = "";
            // 
            // tpBrowserXmlAssinado
            // 
            this.tpBrowserXmlAssinado.Controls.Add(this.wbXmlNotaAssinado);
            this.tpBrowserXmlAssinado.Location = new System.Drawing.Point(4, 22);
            this.tpBrowserXmlAssinado.Name = "tpBrowserXmlAssinado";
            this.tpBrowserXmlAssinado.Padding = new System.Windows.Forms.Padding(3);
            this.tpBrowserXmlAssinado.Size = new System.Drawing.Size(496, 124);
            this.tpBrowserXmlAssinado.TabIndex = 1;
            this.tpBrowserXmlAssinado.Text = "Browser";
            this.tpBrowserXmlAssinado.UseVisualStyleBackColor = true;
            // 
            // wbXmlNotaAssinado
            // 
            this.wbXmlNotaAssinado.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXmlNotaAssinado.Location = new System.Drawing.Point(3, 3);
            this.wbXmlNotaAssinado.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXmlNotaAssinado.Name = "wbXmlNotaAssinado";
            this.wbXmlNotaAssinado.Size = new System.Drawing.Size(490, 118);
            this.wbXmlNotaAssinado.TabIndex = 0;
            // 
            // tcXmlNota
            // 
            this.tcXmlNota.Controls.Add(this.tpTextoXml);
            this.tcXmlNota.Controls.Add(this.tpBrowserXml);
            this.tcXmlNota.Location = new System.Drawing.Point(11, 72);
            this.tcXmlNota.Name = "tcXmlNota";
            this.tcXmlNota.SelectedIndex = 0;
            this.tcXmlNota.Size = new System.Drawing.Size(504, 156);
            this.tcXmlNota.TabIndex = 1;
            // 
            // tpTextoXml
            // 
            this.tpTextoXml.Controls.Add(this.rtbXmlNota);
            this.tpTextoXml.Location = new System.Drawing.Point(4, 22);
            this.tpTextoXml.Name = "tpTextoXml";
            this.tpTextoXml.Padding = new System.Windows.Forms.Padding(3);
            this.tpTextoXml.Size = new System.Drawing.Size(496, 130);
            this.tpTextoXml.TabIndex = 0;
            this.tpTextoXml.Text = "Texto";
            this.tpTextoXml.UseVisualStyleBackColor = true;
            // 
            // rtbXmlNota
            // 
            this.rtbXmlNota.BackColor = System.Drawing.SystemColors.Window;
            this.rtbXmlNota.Location = new System.Drawing.Point(0, 0);
            this.rtbXmlNota.Name = "rtbXmlNota";
            this.rtbXmlNota.ReadOnly = true;
            this.rtbXmlNota.Size = new System.Drawing.Size(493, 130);
            this.rtbXmlNota.TabIndex = 0;
            this.rtbXmlNota.Text = "";
            // 
            // tpBrowserXml
            // 
            this.tpBrowserXml.Controls.Add(this.wbXmlNota);
            this.tpBrowserXml.Location = new System.Drawing.Point(4, 22);
            this.tpBrowserXml.Name = "tpBrowserXml";
            this.tpBrowserXml.Padding = new System.Windows.Forms.Padding(3);
            this.tpBrowserXml.Size = new System.Drawing.Size(496, 130);
            this.tpBrowserXml.TabIndex = 1;
            this.tpBrowserXml.Text = "Browser";
            this.tpBrowserXml.UseVisualStyleBackColor = true;
            // 
            // wbXmlNota
            // 
            this.wbXmlNota.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXmlNota.Location = new System.Drawing.Point(3, 3);
            this.wbXmlNota.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXmlNota.Name = "wbXmlNota";
            this.wbXmlNota.Size = new System.Drawing.Size(490, 124);
            this.wbXmlNota.TabIndex = 0;
            // 
            // lblXmlAssinado
            // 
            this.lblXmlAssinado.AutoSize = true;
            this.lblXmlAssinado.Location = new System.Drawing.Point(15, 243);
            this.lblXmlAssinado.Name = "lblXmlAssinado";
            this.lblXmlAssinado.Size = new System.Drawing.Size(75, 13);
            this.lblXmlAssinado.TabIndex = 1;
            this.lblXmlAssinado.Text = "XML Assinado";
            // 
            // lblXmlNota
            // 
            this.lblXmlNota.AutoSize = true;
            this.lblXmlNota.Location = new System.Drawing.Point(9, 55);
            this.lblXmlNota.Name = "lblXmlNota";
            this.lblXmlNota.Size = new System.Drawing.Size(70, 13);
            this.lblXmlNota.TabIndex = 0;
            this.lblXmlNota.Text = "XML da Nota";
            // 
            // pnlEnviarNFeDest
            // 
            this.pnlEnviarNFeDest.Controls.Add(this.chkNota);
            this.pnlEnviarNFeDest.Controls.Add(this.lblENviarXml);
            this.pnlEnviarNFeDest.Controls.Add(this.clbAnexos);
            this.pnlEnviarNFeDest.Controls.Add(this.lblAnexos);
            this.pnlEnviarNFeDest.Controls.Add(this.txtAnexar);
            this.pnlEnviarNFeDest.Controls.Add(this.lblAnexar);
            this.pnlEnviarNFeDest.Controls.Add(this.btnAnexar);
            this.pnlEnviarNFeDest.Controls.Add(this.btnEnviar);
            this.pnlEnviarNFeDest.Controls.Add(this.txtEnviarEmailDestinatario);
            this.pnlEnviarNFeDest.Controls.Add(this.lblEnviarEmailDestinatario);
            this.pnlEnviarNFeDest.Location = new System.Drawing.Point(217, 9);
            this.pnlEnviarNFeDest.Name = "pnlEnviarNFeDest";
            this.pnlEnviarNFeDest.Size = new System.Drawing.Size(585, 410);
            this.pnlEnviarNFeDest.TabIndex = 12;
            this.pnlEnviarNFeDest.Visible = false;
            // 
            // chkNota
            // 
            this.chkNota.AutoSize = true;
            this.chkNota.Checked = true;
            this.chkNota.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chkNota.Enabled = false;
            this.chkNota.Location = new System.Drawing.Point(21, 94);
            this.chkNota.Name = "chkNota";
            this.chkNota.Size = new System.Drawing.Size(80, 17);
            this.chkNota.TabIndex = 17;
            this.chkNota.Text = "checkBox1";
            this.chkNota.UseVisualStyleBackColor = true;
            // 
            // lblENviarXml
            // 
            this.lblENviarXml.AutoSize = true;
            this.lblENviarXml.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblENviarXml.Location = new System.Drawing.Point(12, 8);
            this.lblENviarXml.Name = "lblENviarXml";
            this.lblENviarXml.Size = new System.Drawing.Size(233, 24);
            this.lblENviarXml.TabIndex = 16;
            this.lblENviarXml.Text = "Enviar XML Destinatário";
            // 
            // clbAnexos
            // 
            this.clbAnexos.FormattingEnabled = true;
            this.clbAnexos.Location = new System.Drawing.Point(23, 176);
            this.clbAnexos.Name = "clbAnexos";
            this.clbAnexos.Size = new System.Drawing.Size(552, 214);
            this.clbAnexos.TabIndex = 7;
            // 
            // lblAnexos
            // 
            this.lblAnexos.AutoSize = true;
            this.lblAnexos.Location = new System.Drawing.Point(22, 159);
            this.lblAnexos.Name = "lblAnexos";
            this.lblAnexos.Size = new System.Drawing.Size(42, 13);
            this.lblAnexos.TabIndex = 6;
            this.lblAnexos.Text = "Anexos";
            // 
            // txtAnexar
            // 
            this.txtAnexar.BackColor = System.Drawing.SystemColors.Window;
            this.txtAnexar.Location = new System.Drawing.Point(19, 134);
            this.txtAnexar.Name = "txtAnexar";
            this.txtAnexar.ReadOnly = true;
            this.txtAnexar.Size = new System.Drawing.Size(234, 20);
            this.txtAnexar.TabIndex = 5;
            // 
            // lblAnexar
            // 
            this.lblAnexar.AutoSize = true;
            this.lblAnexar.Location = new System.Drawing.Point(19, 116);
            this.lblAnexar.Name = "lblAnexar";
            this.lblAnexar.Size = new System.Drawing.Size(40, 13);
            this.lblAnexar.TabIndex = 4;
            this.lblAnexar.Text = "Anexar";
            // 
            // btnAnexar
            // 
            this.btnAnexar.Location = new System.Drawing.Point(263, 131);
            this.btnAnexar.Name = "btnAnexar";
            this.btnAnexar.Size = new System.Drawing.Size(42, 23);
            this.btnAnexar.TabIndex = 3;
            this.btnAnexar.Text = "...";
            this.btnAnexar.UseVisualStyleBackColor = true;
            this.btnAnexar.Click += new System.EventHandler(this.btnAnexar_Click);
            // 
            // btnEnviar
            // 
            this.btnEnviar.Location = new System.Drawing.Point(317, 62);
            this.btnEnviar.Name = "btnEnviar";
            this.btnEnviar.Size = new System.Drawing.Size(75, 23);
            this.btnEnviar.TabIndex = 2;
            this.btnEnviar.Text = "Enviar";
            this.btnEnviar.UseVisualStyleBackColor = true;
            this.btnEnviar.Click += new System.EventHandler(this.btnEnviar_Click);
            // 
            // txtEnviarEmailDestinatario
            // 
            this.txtEnviarEmailDestinatario.Location = new System.Drawing.Point(19, 63);
            this.txtEnviarEmailDestinatario.Name = "txtEnviarEmailDestinatario";
            this.txtEnviarEmailDestinatario.Size = new System.Drawing.Size(292, 20);
            this.txtEnviarEmailDestinatario.TabIndex = 1;
            // 
            // lblEnviarEmailDestinatario
            // 
            this.lblEnviarEmailDestinatario.AutoSize = true;
            this.lblEnviarEmailDestinatario.Location = new System.Drawing.Point(17, 43);
            this.lblEnviarEmailDestinatario.Name = "lblEnviarEmailDestinatario";
            this.lblEnviarEmailDestinatario.Size = new System.Drawing.Size(106, 13);
            this.lblEnviarEmailDestinatario.TabIndex = 0;
            this.lblEnviarEmailDestinatario.Text = "Email do Destinatário";
            // 
            // pnlCancelar
            // 
            this.pnlCancelar.Controls.Add(this.lblCancelarNfe);
            this.pnlCancelar.Controls.Add(this.llbMotivoCancelamentoNota);
            this.pnlCancelar.Controls.Add(this.tcCancelarNota);
            this.pnlCancelar.Controls.Add(this.btnCancelarNota);
            this.pnlCancelar.Controls.Add(this.txtCancProtocoloAut);
            this.pnlCancelar.Controls.Add(this.txtCancChaveNota);
            this.pnlCancelar.Controls.Add(this.txtCancJustificativa);
            this.pnlCancelar.Controls.Add(this.txtCancStatus);
            this.pnlCancelar.Controls.Add(this.txtCancMotivo);
            this.pnlCancelar.Controls.Add(this.lblCancMotivo);
            this.pnlCancelar.Controls.Add(this.lblCancStatus);
            this.pnlCancelar.Controls.Add(this.lblCancJustificativa);
            this.pnlCancelar.Controls.Add(this.lblCancProtocoloAut);
            this.pnlCancelar.Controls.Add(this.lblCancChaveNota);
            this.pnlCancelar.Location = new System.Drawing.Point(217, 8);
            this.pnlCancelar.Name = "pnlCancelar";
            this.pnlCancelar.Size = new System.Drawing.Size(585, 411);
            this.pnlCancelar.TabIndex = 15;
            this.pnlCancelar.Visible = false;
            // 
            // lblCancelarNfe
            // 
            this.lblCancelarNfe.AutoSize = true;
            this.lblCancelarNfe.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCancelarNfe.Location = new System.Drawing.Point(14, 12);
            this.lblCancelarNfe.Name = "lblCancelarNfe";
            this.lblCancelarNfe.Size = new System.Drawing.Size(139, 24);
            this.lblCancelarNfe.TabIndex = 17;
            this.lblCancelarNfe.Text = "Cancelar NFe";
            // 
            // llbMotivoCancelamentoNota
            // 
            this.llbMotivoCancelamentoNota.AutoSize = true;
            this.llbMotivoCancelamentoNota.Location = new System.Drawing.Point(355, 382);
            this.llbMotivoCancelamentoNota.Name = "llbMotivoCancelamentoNota";
            this.llbMotivoCancelamentoNota.Size = new System.Drawing.Size(34, 13);
            this.llbMotivoCancelamentoNota.TabIndex = 8;
            this.llbMotivoCancelamentoNota.TabStop = true;
            this.llbMotivoCancelamentoNota.Text = "(mais)";
            this.llbMotivoCancelamentoNota.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LinkMotivo);
            // 
            // tcCancelarNota
            // 
            this.tcCancelarNota.Controls.Add(this.tpXMLCancelarNota);
            this.tcCancelarNota.Controls.Add(this.tpWebXMLCancelarNota);
            this.tcCancelarNota.Location = new System.Drawing.Point(13, 139);
            this.tcCancelarNota.Name = "tcCancelarNota";
            this.tcCancelarNota.SelectedIndex = 0;
            this.tcCancelarNota.Size = new System.Drawing.Size(566, 233);
            this.tcCancelarNota.TabIndex = 7;
            // 
            // tpXMLCancelarNota
            // 
            this.tpXMLCancelarNota.Controls.Add(this.rtbCancelarNota);
            this.tpXMLCancelarNota.Location = new System.Drawing.Point(4, 22);
            this.tpXMLCancelarNota.Name = "tpXMLCancelarNota";
            this.tpXMLCancelarNota.Padding = new System.Windows.Forms.Padding(3);
            this.tpXMLCancelarNota.Size = new System.Drawing.Size(558, 207);
            this.tpXMLCancelarNota.TabIndex = 0;
            this.tpXMLCancelarNota.Text = "Texto";
            this.tpXMLCancelarNota.UseVisualStyleBackColor = true;
            // 
            // rtbCancelarNota
            // 
            this.rtbCancelarNota.BackColor = System.Drawing.SystemColors.Window;
            this.rtbCancelarNota.Location = new System.Drawing.Point(0, 0);
            this.rtbCancelarNota.Name = "rtbCancelarNota";
            this.rtbCancelarNota.ReadOnly = true;
            this.rtbCancelarNota.Size = new System.Drawing.Size(560, 205);
            this.rtbCancelarNota.TabIndex = 0;
            this.rtbCancelarNota.Text = "";
            // 
            // tpWebXMLCancelarNota
            // 
            this.tpWebXMLCancelarNota.Controls.Add(this.wbXMLCancelamentoNota);
            this.tpWebXMLCancelarNota.Location = new System.Drawing.Point(4, 22);
            this.tpWebXMLCancelarNota.Name = "tpWebXMLCancelarNota";
            this.tpWebXMLCancelarNota.Padding = new System.Windows.Forms.Padding(3);
            this.tpWebXMLCancelarNota.Size = new System.Drawing.Size(558, 207);
            this.tpWebXMLCancelarNota.TabIndex = 1;
            this.tpWebXMLCancelarNota.Text = "Browser";
            this.tpWebXMLCancelarNota.UseVisualStyleBackColor = true;
            // 
            // wbXMLCancelamentoNota
            // 
            this.wbXMLCancelamentoNota.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXMLCancelamentoNota.Location = new System.Drawing.Point(3, 3);
            this.wbXMLCancelamentoNota.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXMLCancelamentoNota.Name = "wbXMLCancelamentoNota";
            this.wbXMLCancelamentoNota.Size = new System.Drawing.Size(552, 201);
            this.wbXMLCancelamentoNota.TabIndex = 0;
            // 
            // btnCancelarNota
            // 
            this.btnCancelarNota.Location = new System.Drawing.Point(471, 106);
            this.btnCancelarNota.Name = "btnCancelarNota";
            this.btnCancelarNota.Size = new System.Drawing.Size(102, 23);
            this.btnCancelarNota.TabIndex = 6;
            this.btnCancelarNota.Text = "Cancelar Nota";
            this.btnCancelarNota.UseVisualStyleBackColor = true;
            this.btnCancelarNota.Click += new System.EventHandler(this.btnCancelarNota_Click);
            // 
            // txtCancProtocoloAut
            // 
            this.txtCancProtocoloAut.BackColor = System.Drawing.SystemColors.Window;
            this.txtCancProtocoloAut.Location = new System.Drawing.Point(328, 72);
            this.txtCancProtocoloAut.Name = "txtCancProtocoloAut";
            this.txtCancProtocoloAut.ReadOnly = true;
            this.txtCancProtocoloAut.Size = new System.Drawing.Size(127, 20);
            this.txtCancProtocoloAut.TabIndex = 5;
            // 
            // txtCancChaveNota
            // 
            this.txtCancChaveNota.BackColor = System.Drawing.SystemColors.Window;
            this.txtCancChaveNota.Location = new System.Drawing.Point(14, 72);
            this.txtCancChaveNota.Name = "txtCancChaveNota";
            this.txtCancChaveNota.ReadOnly = true;
            this.txtCancChaveNota.Size = new System.Drawing.Size(302, 20);
            this.txtCancChaveNota.TabIndex = 5;
            // 
            // txtCancJustificativa
            // 
            this.txtCancJustificativa.Location = new System.Drawing.Point(14, 109);
            this.txtCancJustificativa.Name = "txtCancJustificativa";
            this.txtCancJustificativa.Size = new System.Drawing.Size(442, 20);
            this.txtCancJustificativa.TabIndex = 5;
            // 
            // txtCancStatus
            // 
            this.txtCancStatus.BackColor = System.Drawing.SystemColors.Window;
            this.txtCancStatus.Location = new System.Drawing.Point(48, 378);
            this.txtCancStatus.Name = "txtCancStatus";
            this.txtCancStatus.ReadOnly = true;
            this.txtCancStatus.Size = new System.Drawing.Size(44, 20);
            this.txtCancStatus.TabIndex = 5;
            // 
            // txtCancMotivo
            // 
            this.txtCancMotivo.BackColor = System.Drawing.SystemColors.Window;
            this.txtCancMotivo.Location = new System.Drawing.Point(147, 378);
            this.txtCancMotivo.Name = "txtCancMotivo";
            this.txtCancMotivo.ReadOnly = true;
            this.txtCancMotivo.Size = new System.Drawing.Size(202, 20);
            this.txtCancMotivo.TabIndex = 5;
            // 
            // lblCancMotivo
            // 
            this.lblCancMotivo.AutoSize = true;
            this.lblCancMotivo.Location = new System.Drawing.Point(112, 381);
            this.lblCancMotivo.Name = "lblCancMotivo";
            this.lblCancMotivo.Size = new System.Drawing.Size(39, 13);
            this.lblCancMotivo.TabIndex = 4;
            this.lblCancMotivo.Text = "Motivo";
            // 
            // lblCancStatus
            // 
            this.lblCancStatus.AutoSize = true;
            this.lblCancStatus.Location = new System.Drawing.Point(11, 381);
            this.lblCancStatus.Name = "lblCancStatus";
            this.lblCancStatus.Size = new System.Drawing.Size(37, 13);
            this.lblCancStatus.TabIndex = 3;
            this.lblCancStatus.Text = "Status";
            // 
            // lblCancJustificativa
            // 
            this.lblCancJustificativa.AutoSize = true;
            this.lblCancJustificativa.Location = new System.Drawing.Point(13, 96);
            this.lblCancJustificativa.Name = "lblCancJustificativa";
            this.lblCancJustificativa.Size = new System.Drawing.Size(62, 13);
            this.lblCancJustificativa.TabIndex = 2;
            this.lblCancJustificativa.Text = "Justificativa";
            // 
            // lblCancProtocoloAut
            // 
            this.lblCancProtocoloAut.AutoSize = true;
            this.lblCancProtocoloAut.Location = new System.Drawing.Point(329, 56);
            this.lblCancProtocoloAut.Name = "lblCancProtocoloAut";
            this.lblCancProtocoloAut.Size = new System.Drawing.Size(126, 13);
            this.lblCancProtocoloAut.TabIndex = 1;
            this.lblCancProtocoloAut.Text = "Protocolo de Autorização";
            // 
            // lblCancChaveNota
            // 
            this.lblCancChaveNota.AutoSize = true;
            this.lblCancChaveNota.Location = new System.Drawing.Point(13, 57);
            this.lblCancChaveNota.Name = "lblCancChaveNota";
            this.lblCancChaveNota.Size = new System.Drawing.Size(79, 13);
            this.lblCancChaveNota.TabIndex = 0;
            this.lblCancChaveNota.Text = "Chave da Nota";
            // 
            // pnlCancelamentoEvento
            // 
            this.pnlCancelamentoEvento.Controls.Add(this.label28);
            this.pnlCancelamentoEvento.Controls.Add(this.txtMotivoCancEvento);
            this.pnlCancelamentoEvento.Controls.Add(this.label29);
            this.pnlCancelamentoEvento.Controls.Add(this.txtStatusCancEvento);
            this.pnlCancelamentoEvento.Controls.Add(this.tabControl5);
            this.pnlCancelamentoEvento.Controls.Add(this.btnCancEvento);
            this.pnlCancelamentoEvento.Controls.Add(this.btnDataHoraCancEvento);
            this.pnlCancelamentoEvento.Controls.Add(this.label30);
            this.pnlCancelamentoEvento.Controls.Add(this.txtJustificativaCancEvento);
            this.pnlCancelamentoEvento.Controls.Add(this.label32);
            this.pnlCancelamentoEvento.Controls.Add(this.cboFusoCancEvento);
            this.pnlCancelamentoEvento.Controls.Add(this.label33);
            this.pnlCancelamentoEvento.Controls.Add(this.txtDataHoraCancEvento);
            this.pnlCancelamentoEvento.Controls.Add(this.label34);
            this.pnlCancelamentoEvento.Controls.Add(this.txtProtocoloCancEvento);
            this.pnlCancelamentoEvento.Controls.Add(this.label35);
            this.pnlCancelamentoEvento.Controls.Add(this.txtChaveCancEvento);
            this.pnlCancelamentoEvento.Controls.Add(this.label36);
            this.pnlCancelamentoEvento.Location = new System.Drawing.Point(218, 7);
            this.pnlCancelamentoEvento.Name = "pnlCancelamentoEvento";
            this.pnlCancelamentoEvento.Size = new System.Drawing.Size(584, 410);
            this.pnlCancelamentoEvento.TabIndex = 36;
            this.pnlCancelamentoEvento.Visible = false;
            // 
            // label28
            // 
            this.label28.AutoSize = true;
            this.label28.Location = new System.Drawing.Point(264, 383);
            this.label28.Name = "label28";
            this.label28.Size = new System.Drawing.Size(39, 13);
            this.label28.TabIndex = 19;
            this.label28.Text = "Motivo";
            // 
            // txtMotivoCancEvento
            // 
            this.txtMotivoCancEvento.Location = new System.Drawing.Point(308, 379);
            this.txtMotivoCancEvento.Name = "txtMotivoCancEvento";
            this.txtMotivoCancEvento.Size = new System.Drawing.Size(211, 20);
            this.txtMotivoCancEvento.TabIndex = 18;
            // 
            // label29
            // 
            this.label29.AutoSize = true;
            this.label29.Location = new System.Drawing.Point(62, 384);
            this.label29.Name = "label29";
            this.label29.Size = new System.Drawing.Size(37, 13);
            this.label29.TabIndex = 17;
            this.label29.Text = "Status";
            // 
            // txtStatusCancEvento
            // 
            this.txtStatusCancEvento.Location = new System.Drawing.Point(105, 380);
            this.txtStatusCancEvento.Name = "txtStatusCancEvento";
            this.txtStatusCancEvento.Size = new System.Drawing.Size(75, 20);
            this.txtStatusCancEvento.TabIndex = 16;
            // 
            // tabControl5
            // 
            this.tabControl5.Controls.Add(this.tabPage7);
            this.tabControl5.Controls.Add(this.tabPage8);
            this.tabControl5.Location = new System.Drawing.Point(12, 184);
            this.tabControl5.Name = "tabControl5";
            this.tabControl5.SelectedIndex = 0;
            this.tabControl5.Size = new System.Drawing.Size(560, 177);
            this.tabControl5.TabIndex = 15;
            // 
            // tabPage7
            // 
            this.tabPage7.Controls.Add(this.txtTextoCancEvento);
            this.tabPage7.Location = new System.Drawing.Point(4, 22);
            this.tabPage7.Name = "tabPage7";
            this.tabPage7.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage7.Size = new System.Drawing.Size(552, 151);
            this.tabPage7.TabIndex = 0;
            this.tabPage7.Text = "Texto";
            this.tabPage7.UseVisualStyleBackColor = true;
            // 
            // txtTextoCancEvento
            // 
            this.txtTextoCancEvento.Location = new System.Drawing.Point(0, 0);
            this.txtTextoCancEvento.Multiline = true;
            this.txtTextoCancEvento.Name = "txtTextoCancEvento";
            this.txtTextoCancEvento.Size = new System.Drawing.Size(552, 151);
            this.txtTextoCancEvento.TabIndex = 2;
            // 
            // tabPage8
            // 
            this.tabPage8.Controls.Add(this.wbCancEvento);
            this.tabPage8.Location = new System.Drawing.Point(4, 22);
            this.tabPage8.Name = "tabPage8";
            this.tabPage8.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage8.Size = new System.Drawing.Size(552, 151);
            this.tabPage8.TabIndex = 1;
            this.tabPage8.Text = "Browser";
            this.tabPage8.UseVisualStyleBackColor = true;
            // 
            // wbCancEvento
            // 
            this.wbCancEvento.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbCancEvento.Location = new System.Drawing.Point(3, 3);
            this.wbCancEvento.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbCancEvento.Name = "wbCancEvento";
            this.wbCancEvento.Size = new System.Drawing.Size(546, 145);
            this.wbCancEvento.TabIndex = 0;
            // 
            // btnCancEvento
            // 
            this.btnCancEvento.Font = new System.Drawing.Font("Tahoma", 8.25F);
            this.btnCancEvento.Location = new System.Drawing.Point(461, 131);
            this.btnCancEvento.Name = "btnCancEvento";
            this.btnCancEvento.Size = new System.Drawing.Size(110, 25);
            this.btnCancEvento.TabIndex = 14;
            this.btnCancEvento.Text = "Cancelar Nota";
            this.btnCancEvento.UseVisualStyleBackColor = true;
            this.btnCancEvento.Click += new System.EventHandler(this.btnCancEvento_Click);
            // 
            // btnDataHoraCancEvento
            // 
            this.btnDataHoraCancEvento.Font = new System.Drawing.Font("Wingdings", 9F);
            this.btnDataHoraCancEvento.Location = new System.Drawing.Point(427, 134);
            this.btnDataHoraCancEvento.Name = "btnDataHoraCancEvento";
            this.btnDataHoraCancEvento.Size = new System.Drawing.Size(24, 19);
            this.btnDataHoraCancEvento.TabIndex = 13;
            this.btnDataHoraCancEvento.Text = "Á";
            this.btnDataHoraCancEvento.UseVisualStyleBackColor = true;
            this.btnDataHoraCancEvento.Click += new System.EventHandler(this.btnDataHoraCancEvento_Click);
            // 
            // label30
            // 
            this.label30.AutoSize = true;
            this.label30.Location = new System.Drawing.Point(10, 113);
            this.label30.Name = "label30";
            this.label30.Size = new System.Drawing.Size(62, 13);
            this.label30.TabIndex = 12;
            this.label30.Text = "Justificativa";
            // 
            // txtJustificativaCancEvento
            // 
            this.txtJustificativaCancEvento.Location = new System.Drawing.Point(12, 132);
            this.txtJustificativaCancEvento.Name = "txtJustificativaCancEvento";
            this.txtJustificativaCancEvento.Size = new System.Drawing.Size(292, 20);
            this.txtJustificativaCancEvento.TabIndex = 11;
            // 
            // label32
            // 
            this.label32.AutoSize = true;
            this.label32.Location = new System.Drawing.Point(488, 61);
            this.label32.Name = "label32";
            this.label32.Size = new System.Drawing.Size(67, 13);
            this.label32.TabIndex = 8;
            this.label32.Text = "Fuso Horário";
            // 
            // cboFusoCancEvento
            // 
            this.cboFusoCancEvento.FormattingEnabled = true;
            this.cboFusoCancEvento.Items.AddRange(new object[] {
            "-02:00",
            "-03:00",
            "-04:00"});
            this.cboFusoCancEvento.Location = new System.Drawing.Point(489, 80);
            this.cboFusoCancEvento.Name = "cboFusoCancEvento";
            this.cboFusoCancEvento.Size = new System.Drawing.Size(82, 21);
            this.cboFusoCancEvento.TabIndex = 7;
            // 
            // label33
            // 
            this.label33.AutoSize = true;
            this.label33.Location = new System.Drawing.Point(316, 115);
            this.label33.Name = "label33";
            this.label33.Size = new System.Drawing.Size(117, 13);
            this.label33.TabIndex = 6;
            this.label33.Text = "Data e Hora do Evento";
            // 
            // txtDataHoraCancEvento
            // 
            this.txtDataHoraCancEvento.Location = new System.Drawing.Point(318, 134);
            this.txtDataHoraCancEvento.Name = "txtDataHoraCancEvento";
            this.txtDataHoraCancEvento.Size = new System.Drawing.Size(103, 20);
            this.txtDataHoraCancEvento.TabIndex = 5;
            // 
            // label34
            // 
            this.label34.AutoSize = true;
            this.label34.Location = new System.Drawing.Point(319, 61);
            this.label34.Name = "label34";
            this.label34.Size = new System.Drawing.Size(111, 13);
            this.label34.TabIndex = 4;
            this.label34.Text = "Protocolo Autorização";
            // 
            // txtProtocoloCancEvento
            // 
            this.txtProtocoloCancEvento.Location = new System.Drawing.Point(321, 80);
            this.txtProtocoloCancEvento.Name = "txtProtocoloCancEvento";
            this.txtProtocoloCancEvento.Size = new System.Drawing.Size(154, 20);
            this.txtProtocoloCancEvento.TabIndex = 3;
            // 
            // label35
            // 
            this.label35.AutoSize = true;
            this.label35.Location = new System.Drawing.Point(12, 62);
            this.label35.Name = "label35";
            this.label35.Size = new System.Drawing.Size(79, 13);
            this.label35.TabIndex = 2;
            this.label35.Text = "Chave da Nota";
            // 
            // txtChaveCancEvento
            // 
            this.txtChaveCancEvento.Location = new System.Drawing.Point(13, 81);
            this.txtChaveCancEvento.Name = "txtChaveCancEvento";
            this.txtChaveCancEvento.Size = new System.Drawing.Size(295, 20);
            this.txtChaveCancEvento.TabIndex = 1;
            // 
            // label36
            // 
            this.label36.AutoSize = true;
            this.label36.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label36.Location = new System.Drawing.Point(9, 16);
            this.label36.Name = "label36";
            this.label36.Size = new System.Drawing.Size(215, 24);
            this.label36.TabIndex = 0;
            this.label36.Text = "Cancelamento Evento";
            // 
            // pnlEnviaCancDest
            // 
            this.pnlEnviaCancDest.Controls.Add(this.lblXmlCancelado);
            this.pnlEnviaCancDest.Controls.Add(this.tcEnviarCancDest);
            this.pnlEnviaCancDest.Controls.Add(this.BtnCandDest);
            this.pnlEnviaCancDest.Controls.Add(this.btnEnviarCancDest);
            this.pnlEnviaCancDest.Controls.Add(this.txtEmailCancDest);
            this.pnlEnviaCancDest.Controls.Add(this.lblCancDestEmail);
            this.pnlEnviaCancDest.Controls.Add(this.lblCaminhoCancDet);
            this.pnlEnviaCancDest.Controls.Add(this.lblEnviaCancArquivo);
            this.pnlEnviaCancDest.Location = new System.Drawing.Point(217, 8);
            this.pnlEnviaCancDest.Name = "pnlEnviaCancDest";
            this.pnlEnviaCancDest.Size = new System.Drawing.Size(585, 411);
            this.pnlEnviaCancDest.TabIndex = 16;
            this.pnlEnviaCancDest.Visible = false;
            // 
            // lblXmlCancelado
            // 
            this.lblXmlCancelado.AutoSize = true;
            this.lblXmlCancelado.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblXmlCancelado.Location = new System.Drawing.Point(11, 12);
            this.lblXmlCancelado.Name = "lblXmlCancelado";
            this.lblXmlCancelado.Size = new System.Drawing.Size(224, 24);
            this.lblXmlCancelado.TabIndex = 17;
            this.lblXmlCancelado.Text = "Enviar XML Cancelado";
            // 
            // tcEnviarCancDest
            // 
            this.tcEnviarCancDest.Controls.Add(this.tpEnviarCancDest);
            this.tcEnviarCancDest.Controls.Add(this.tpWebEnviarCancDest);
            this.tcEnviarCancDest.Location = new System.Drawing.Point(14, 76);
            this.tcEnviarCancDest.Name = "tcEnviarCancDest";
            this.tcEnviarCancDest.SelectedIndex = 0;
            this.tcEnviarCancDest.Size = new System.Drawing.Size(547, 276);
            this.tcEnviarCancDest.TabIndex = 6;
            // 
            // tpEnviarCancDest
            // 
            this.tpEnviarCancDest.Controls.Add(this.rtbXMLEnviarCancDest);
            this.tpEnviarCancDest.Location = new System.Drawing.Point(4, 22);
            this.tpEnviarCancDest.Name = "tpEnviarCancDest";
            this.tpEnviarCancDest.Padding = new System.Windows.Forms.Padding(3);
            this.tpEnviarCancDest.Size = new System.Drawing.Size(539, 250);
            this.tpEnviarCancDest.TabIndex = 0;
            this.tpEnviarCancDest.Text = "Texto";
            this.tpEnviarCancDest.UseVisualStyleBackColor = true;
            // 
            // rtbXMLEnviarCancDest
            // 
            this.rtbXMLEnviarCancDest.BackColor = System.Drawing.SystemColors.Window;
            this.rtbXMLEnviarCancDest.Location = new System.Drawing.Point(1, 0);
            this.rtbXMLEnviarCancDest.Name = "rtbXMLEnviarCancDest";
            this.rtbXMLEnviarCancDest.ReadOnly = true;
            this.rtbXMLEnviarCancDest.Size = new System.Drawing.Size(538, 249);
            this.rtbXMLEnviarCancDest.TabIndex = 0;
            this.rtbXMLEnviarCancDest.Text = "";
            // 
            // tpWebEnviarCancDest
            // 
            this.tpWebEnviarCancDest.Controls.Add(this.wbXMLEnviarCancDest);
            this.tpWebEnviarCancDest.Location = new System.Drawing.Point(4, 22);
            this.tpWebEnviarCancDest.Name = "tpWebEnviarCancDest";
            this.tpWebEnviarCancDest.Padding = new System.Windows.Forms.Padding(3);
            this.tpWebEnviarCancDest.Size = new System.Drawing.Size(539, 250);
            this.tpWebEnviarCancDest.TabIndex = 1;
            this.tpWebEnviarCancDest.Text = "Browser";
            this.tpWebEnviarCancDest.UseVisualStyleBackColor = true;
            // 
            // wbXMLEnviarCancDest
            // 
            this.wbXMLEnviarCancDest.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXMLEnviarCancDest.Location = new System.Drawing.Point(3, 3);
            this.wbXMLEnviarCancDest.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXMLEnviarCancDest.Name = "wbXMLEnviarCancDest";
            this.wbXMLEnviarCancDest.Size = new System.Drawing.Size(533, 244);
            this.wbXMLEnviarCancDest.TabIndex = 0;
            // 
            // BtnCandDest
            // 
            this.BtnCandDest.Enabled = false;
            this.BtnCandDest.Location = new System.Drawing.Point(509, 52);
            this.BtnCandDest.Name = "BtnCandDest";
            this.BtnCandDest.Size = new System.Drawing.Size(34, 25);
            this.BtnCandDest.TabIndex = 5;
            this.BtnCandDest.Text = "...";
            this.BtnCandDest.UseVisualStyleBackColor = true;
            this.BtnCandDest.Click += new System.EventHandler(this.BtnCandDest_Click);
            // 
            // btnEnviarCancDest
            // 
            this.btnEnviarCancDest.Enabled = false;
            this.btnEnviarCancDest.Location = new System.Drawing.Point(399, 374);
            this.btnEnviarCancDest.Name = "btnEnviarCancDest";
            this.btnEnviarCancDest.Size = new System.Drawing.Size(75, 23);
            this.btnEnviarCancDest.TabIndex = 4;
            this.btnEnviarCancDest.Text = "Enviar";
            this.btnEnviarCancDest.UseVisualStyleBackColor = true;
            this.btnEnviarCancDest.Click += new System.EventHandler(this.btnEnviarCancDest_Click);
            // 
            // txtEmailCancDest
            // 
            this.txtEmailCancDest.Location = new System.Drawing.Point(18, 377);
            this.txtEmailCancDest.Name = "txtEmailCancDest";
            this.txtEmailCancDest.Size = new System.Drawing.Size(372, 20);
            this.txtEmailCancDest.TabIndex = 3;
            // 
            // lblCancDestEmail
            // 
            this.lblCancDestEmail.AutoSize = true;
            this.lblCancDestEmail.Location = new System.Drawing.Point(21, 358);
            this.lblCancDestEmail.Name = "lblCancDestEmail";
            this.lblCancDestEmail.Size = new System.Drawing.Size(106, 13);
            this.lblCancDestEmail.TabIndex = 2;
            this.lblCancDestEmail.Text = "Email do Destinatário";
            // 
            // lblCaminhoCancDet
            // 
            this.lblCaminhoCancDet.AutoSize = true;
            this.lblCaminhoCancDet.Location = new System.Drawing.Point(55, 60);
            this.lblCaminhoCancDet.Name = "lblCaminhoCancDet";
            this.lblCaminhoCancDet.Size = new System.Drawing.Size(0, 13);
            this.lblCaminhoCancDet.TabIndex = 1;
            // 
            // lblEnviaCancArquivo
            // 
            this.lblEnviaCancArquivo.AutoSize = true;
            this.lblEnviaCancArquivo.Location = new System.Drawing.Point(10, 58);
            this.lblEnviaCancArquivo.Name = "lblEnviaCancArquivo";
            this.lblEnviaCancArquivo.Size = new System.Drawing.Size(49, 13);
            this.lblEnviaCancArquivo.TabIndex = 0;
            this.lblEnviaCancArquivo.Text = "Arquivo: ";
            // 
            // pnlEnviarDestinatarioFS
            // 
            this.pnlEnviarDestinatarioFS.Controls.Add(this.chkNotaFS);
            this.pnlEnviarDestinatarioFS.Controls.Add(this.lblEnvXMLFSDet);
            this.pnlEnviarDestinatarioFS.Controls.Add(this.btnAnexarFS);
            this.pnlEnviarDestinatarioFS.Controls.Add(this.btnEnviarEmailFS);
            this.pnlEnviarDestinatarioFS.Controls.Add(this.clbAnexosFS);
            this.pnlEnviarDestinatarioFS.Controls.Add(this.txtAnexarFS);
            this.pnlEnviarDestinatarioFS.Controls.Add(this.txtEmailDestFS);
            this.pnlEnviarDestinatarioFS.Controls.Add(this.lblAnexarFS);
            this.pnlEnviarDestinatarioFS.Controls.Add(this.lblAnexosFS);
            this.pnlEnviarDestinatarioFS.Controls.Add(this.lblEmailDestFS);
            this.pnlEnviarDestinatarioFS.Location = new System.Drawing.Point(217, 7);
            this.pnlEnviarDestinatarioFS.Name = "pnlEnviarDestinatarioFS";
            this.pnlEnviarDestinatarioFS.Size = new System.Drawing.Size(585, 411);
            this.pnlEnviarDestinatarioFS.TabIndex = 32;
            this.pnlEnviarDestinatarioFS.Visible = false;
            // 
            // chkNotaFS
            // 
            this.chkNotaFS.AutoSize = true;
            this.chkNotaFS.Checked = true;
            this.chkNotaFS.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chkNotaFS.Enabled = false;
            this.chkNotaFS.Location = new System.Drawing.Point(22, 93);
            this.chkNotaFS.Name = "chkNotaFS";
            this.chkNotaFS.Size = new System.Drawing.Size(80, 17);
            this.chkNotaFS.TabIndex = 18;
            this.chkNotaFS.Text = "checkBox1";
            this.chkNotaFS.UseVisualStyleBackColor = true;
            // 
            // lblEnvXMLFSDet
            // 
            this.lblEnvXMLFSDet.AutoSize = true;
            this.lblEnvXMLFSDet.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEnvXMLFSDet.Location = new System.Drawing.Point(16, 10);
            this.lblEnvXMLFSDet.Name = "lblEnvXMLFSDet";
            this.lblEnvXMLFSDet.Size = new System.Drawing.Size(344, 24);
            this.lblEnvXMLFSDet.TabIndex = 17;
            this.lblEnvXMLFSDet.Text = "Enviar XML FS / FS-DA Destinatário";
            // 
            // btnAnexarFS
            // 
            this.btnAnexarFS.Location = new System.Drawing.Point(276, 126);
            this.btnAnexarFS.Name = "btnAnexarFS";
            this.btnAnexarFS.Size = new System.Drawing.Size(46, 23);
            this.btnAnexarFS.TabIndex = 7;
            this.btnAnexarFS.Text = "...";
            this.btnAnexarFS.UseVisualStyleBackColor = true;
            this.btnAnexarFS.Click += new System.EventHandler(this.btnAnexarFS_Click);
            // 
            // btnEnviarEmailFS
            // 
            this.btnEnviarEmailFS.Location = new System.Drawing.Point(237, 61);
            this.btnEnviarEmailFS.Name = "btnEnviarEmailFS";
            this.btnEnviarEmailFS.Size = new System.Drawing.Size(91, 23);
            this.btnEnviarEmailFS.TabIndex = 6;
            this.btnEnviarEmailFS.Text = "Enviar";
            this.btnEnviarEmailFS.UseVisualStyleBackColor = true;
            this.btnEnviarEmailFS.Click += new System.EventHandler(this.btnEnviarEmailFS_Click);
            // 
            // clbAnexosFS
            // 
            this.clbAnexosFS.FormattingEnabled = true;
            this.clbAnexosFS.Location = new System.Drawing.Point(22, 179);
            this.clbAnexosFS.Name = "clbAnexosFS";
            this.clbAnexosFS.Size = new System.Drawing.Size(544, 214);
            this.clbAnexosFS.TabIndex = 5;
            // 
            // txtAnexarFS
            // 
            this.txtAnexarFS.Location = new System.Drawing.Point(21, 129);
            this.txtAnexarFS.Name = "txtAnexarFS";
            this.txtAnexarFS.Size = new System.Drawing.Size(246, 20);
            this.txtAnexarFS.TabIndex = 4;
            // 
            // txtEmailDestFS
            // 
            this.txtEmailDestFS.Location = new System.Drawing.Point(22, 64);
            this.txtEmailDestFS.Name = "txtEmailDestFS";
            this.txtEmailDestFS.Size = new System.Drawing.Size(203, 20);
            this.txtEmailDestFS.TabIndex = 3;
            // 
            // lblAnexarFS
            // 
            this.lblAnexarFS.AutoSize = true;
            this.lblAnexarFS.Location = new System.Drawing.Point(19, 112);
            this.lblAnexarFS.Name = "lblAnexarFS";
            this.lblAnexarFS.Size = new System.Drawing.Size(40, 13);
            this.lblAnexarFS.TabIndex = 2;
            this.lblAnexarFS.Text = "Anexar";
            // 
            // lblAnexosFS
            // 
            this.lblAnexosFS.AutoSize = true;
            this.lblAnexosFS.Location = new System.Drawing.Point(22, 162);
            this.lblAnexosFS.Name = "lblAnexosFS";
            this.lblAnexosFS.Size = new System.Drawing.Size(42, 13);
            this.lblAnexosFS.TabIndex = 1;
            this.lblAnexosFS.Text = "Anexos";
            // 
            // lblEmailDestFS
            // 
            this.lblEmailDestFS.AutoSize = true;
            this.lblEmailDestFS.Location = new System.Drawing.Point(21, 45);
            this.lblEmailDestFS.Name = "lblEmailDestFS";
            this.lblEmailDestFS.Size = new System.Drawing.Size(106, 13);
            this.lblEmailDestFS.TabIndex = 0;
            this.lblEmailDestFS.Text = "Email do Destinatário";
            // 
            // pnlEmitente
            // 
            this.pnlEmitente.Controls.Add(this.edtAuthXML);
            this.pnlEmitente.Controls.Add(this.label13);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio23);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio22);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio21);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio20);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio19);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio18);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio17);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio16);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio15);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio14);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio13);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio12);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio11);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio10);
            this.pnlEmitente.Controls.Add(this.lblObrigatorio9);
            this.pnlEmitente.Controls.Add(this.llbCodCidIbgeEmit);
            this.pnlEmitente.Controls.Add(this.llbCodPaisIbgeEmit);
            this.pnlEmitente.Controls.Add(this.cboCodRegimeTrib);
            this.pnlEmitente.Controls.Add(this.cboUfEmit);
            this.pnlEmitente.Controls.Add(this.txtCidadeEmit);
            this.pnlEmitente.Controls.Add(this.txtPaisEmit);
            this.pnlEmitente.Controls.Add(this.txtInscricaoMunicipalEmit);
            this.pnlEmitente.Controls.Add(this.txtTelefoneEmit);
            this.pnlEmitente.Controls.Add(this.txtCpfCnpjEmit);
            this.pnlEmitente.Controls.Add(this.txtCnaeEmit);
            this.pnlEmitente.Controls.Add(this.txtComplementoEmit);
            this.pnlEmitente.Controls.Add(this.txtIeEmit);
            this.pnlEmitente.Controls.Add(this.txtCodCidIbgeEmit);
            this.pnlEmitente.Controls.Add(this.txtCepEmit);
            this.pnlEmitente.Controls.Add(this.txtBairroEmit);
            this.pnlEmitente.Controls.Add(this.txtIeSubTribEmit);
            this.pnlEmitente.Controls.Add(this.txtCodPaisIbgeEmit);
            this.pnlEmitente.Controls.Add(this.txtNomeFantasiaEmit);
            this.pnlEmitente.Controls.Add(this.txtEnderecoEmit);
            this.pnlEmitente.Controls.Add(this.txtNumeroEmit);
            this.pnlEmitente.Controls.Add(this.txtRazaoSocialEmit);
            this.pnlEmitente.Controls.Add(this.lblNomeCidadeEmit);
            this.pnlEmitente.Controls.Add(this.lblcodCidIbgeEmit);
            this.pnlEmitente.Controls.Add(this.lblCepEmit);
            this.pnlEmitente.Controls.Add(this.lblCnaeFiscalEmit);
            this.pnlEmitente.Controls.Add(this.lblCodPaisIbgeEmit);
            this.pnlEmitente.Controls.Add(this.lblIeSubstitutoEmit);
            this.pnlEmitente.Controls.Add(this.lblBairroEmit);
            this.pnlEmitente.Controls.Add(this.lblUfEmit);
            this.pnlEmitente.Controls.Add(this.lblNomeDoPais);
            this.pnlEmitente.Controls.Add(this.lblComplementoEmit);
            this.pnlEmitente.Controls.Add(this.lblEnderecoEmit);
            this.pnlEmitente.Controls.Add(this.lblCodigoRegimeTrib);
            this.pnlEmitente.Controls.Add(this.lblNumeroEmit);
            this.pnlEmitente.Controls.Add(this.lblIeEmit);
            this.pnlEmitente.Controls.Add(this.lblNomeFanstasiaEmit);
            this.pnlEmitente.Controls.Add(this.lblInscricaoMunicipalEmit);
            this.pnlEmitente.Controls.Add(this.lblDadosDoEmitente);
            this.pnlEmitente.Controls.Add(this.lblTelefoneEmit);
            this.pnlEmitente.Controls.Add(this.lblCpfCnpjEmit);
            this.pnlEmitente.Controls.Add(this.lblRazaoSocialEmit);
            this.pnlEmitente.Location = new System.Drawing.Point(217, 8);
            this.pnlEmitente.Name = "pnlEmitente";
            this.pnlEmitente.Size = new System.Drawing.Size(585, 411);
            this.pnlEmitente.TabIndex = 5;
            this.pnlEmitente.Visible = false;
            // 
            // edtAuthXML
            // 
            this.edtAuthXML.Location = new System.Drawing.Point(368, 375);
            this.edtAuthXML.Name = "edtAuthXML";
            this.edtAuthXML.Size = new System.Drawing.Size(176, 20);
            this.edtAuthXML.TabIndex = 23;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(365, 359);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(192, 13);
            this.label13.TabIndex = 22;
            this.label13.Text = "CPF/CNPJ Autorizados a Baixar o XML";
            // 
            // lblObrigatorio23
            // 
            this.lblObrigatorio23.AutoSize = true;
            this.lblObrigatorio23.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio23.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio23.Location = new System.Drawing.Point(377, 223);
            this.lblObrigatorio23.Name = "lblObrigatorio23";
            this.lblObrigatorio23.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio23.TabIndex = 4;
            this.lblObrigatorio23.Text = "*";
            // 
            // lblObrigatorio22
            // 
            this.lblObrigatorio22.AutoSize = true;
            this.lblObrigatorio22.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio22.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio22.Location = new System.Drawing.Point(305, 354);
            this.lblObrigatorio22.Name = "lblObrigatorio22";
            this.lblObrigatorio22.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio22.TabIndex = 4;
            this.lblObrigatorio22.Text = "*";
            // 
            // lblObrigatorio21
            // 
            this.lblObrigatorio21.AutoSize = true;
            this.lblObrigatorio21.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio21.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio21.Location = new System.Drawing.Point(101, 309);
            this.lblObrigatorio21.Name = "lblObrigatorio21";
            this.lblObrigatorio21.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio21.TabIndex = 4;
            this.lblObrigatorio21.Text = "*";
            // 
            // lblObrigatorio20
            // 
            this.lblObrigatorio20.AutoSize = true;
            this.lblObrigatorio20.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio20.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio20.Location = new System.Drawing.Point(512, 224);
            this.lblObrigatorio20.Name = "lblObrigatorio20";
            this.lblObrigatorio20.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio20.TabIndex = 4;
            this.lblObrigatorio20.Text = "*";
            // 
            // lblObrigatorio19
            // 
            this.lblObrigatorio19.AutoSize = true;
            this.lblObrigatorio19.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio19.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio19.Location = new System.Drawing.Point(506, 269);
            this.lblObrigatorio19.Name = "lblObrigatorio19";
            this.lblObrigatorio19.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio19.TabIndex = 4;
            this.lblObrigatorio19.Text = "*";
            // 
            // lblObrigatorio18
            // 
            this.lblObrigatorio18.AutoSize = true;
            this.lblObrigatorio18.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio18.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio18.Location = new System.Drawing.Point(378, 268);
            this.lblObrigatorio18.Name = "lblObrigatorio18";
            this.lblObrigatorio18.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio18.TabIndex = 4;
            this.lblObrigatorio18.Text = "*";
            // 
            // lblObrigatorio17
            // 
            this.lblObrigatorio17.AutoSize = true;
            this.lblObrigatorio17.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio17.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio17.Location = new System.Drawing.Point(85, 267);
            this.lblObrigatorio17.Name = "lblObrigatorio17";
            this.lblObrigatorio17.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio17.TabIndex = 4;
            this.lblObrigatorio17.Text = "*";
            // 
            // lblObrigatorio16
            // 
            this.lblObrigatorio16.AutoSize = true;
            this.lblObrigatorio16.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio16.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio16.Location = new System.Drawing.Point(99, 223);
            this.lblObrigatorio16.Name = "lblObrigatorio16";
            this.lblObrigatorio16.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio16.TabIndex = 4;
            this.lblObrigatorio16.Text = "*";
            // 
            // lblObrigatorio15
            // 
            this.lblObrigatorio15.AutoSize = true;
            this.lblObrigatorio15.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio15.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio15.Location = new System.Drawing.Point(351, 180);
            this.lblObrigatorio15.Name = "lblObrigatorio15";
            this.lblObrigatorio15.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio15.TabIndex = 4;
            this.lblObrigatorio15.Text = "*";
            // 
            // lblObrigatorio14
            // 
            this.lblObrigatorio14.AutoSize = true;
            this.lblObrigatorio14.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio14.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio14.Location = new System.Drawing.Point(41, 180);
            this.lblObrigatorio14.Name = "lblObrigatorio14";
            this.lblObrigatorio14.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio14.TabIndex = 4;
            this.lblObrigatorio14.Text = "*";
            // 
            // lblObrigatorio13
            // 
            this.lblObrigatorio13.AutoSize = true;
            this.lblObrigatorio13.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio13.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio13.Location = new System.Drawing.Point(375, 133);
            this.lblObrigatorio13.Name = "lblObrigatorio13";
            this.lblObrigatorio13.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio13.TabIndex = 4;
            this.lblObrigatorio13.Text = "*";
            // 
            // lblObrigatorio12
            // 
            this.lblObrigatorio12.AutoSize = true;
            this.lblObrigatorio12.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio12.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio12.Location = new System.Drawing.Point(63, 135);
            this.lblObrigatorio12.Name = "lblObrigatorio12";
            this.lblObrigatorio12.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio12.TabIndex = 4;
            this.lblObrigatorio12.Text = "*";
            // 
            // lblObrigatorio11
            // 
            this.lblObrigatorio11.AutoSize = true;
            this.lblObrigatorio11.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio11.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio11.Location = new System.Drawing.Point(85, 84);
            this.lblObrigatorio11.Name = "lblObrigatorio11";
            this.lblObrigatorio11.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio11.TabIndex = 4;
            this.lblObrigatorio11.Text = "*";
            // 
            // lblObrigatorio10
            // 
            this.lblObrigatorio10.AutoSize = true;
            this.lblObrigatorio10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio10.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio10.Location = new System.Drawing.Point(451, 35);
            this.lblObrigatorio10.Name = "lblObrigatorio10";
            this.lblObrigatorio10.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio10.TabIndex = 4;
            this.lblObrigatorio10.Text = "*";
            // 
            // lblObrigatorio9
            // 
            this.lblObrigatorio9.AutoSize = true;
            this.lblObrigatorio9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio9.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio9.Location = new System.Drawing.Point(108, 36);
            this.lblObrigatorio9.Name = "lblObrigatorio9";
            this.lblObrigatorio9.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio9.TabIndex = 4;
            this.lblObrigatorio9.Text = "*";
            // 
            // llbCodCidIbgeEmit
            // 
            this.llbCodCidIbgeEmit.AutoSize = true;
            this.llbCodCidIbgeEmit.Location = new System.Drawing.Point(430, 250);
            this.llbCodCidIbgeEmit.Name = "llbCodCidIbgeEmit";
            this.llbCodCidIbgeEmit.Size = new System.Drawing.Size(34, 13);
            this.llbCodCidIbgeEmit.TabIndex = 11;
            this.llbCodCidIbgeEmit.TabStop = true;
            this.llbCodCidIbgeEmit.Text = "(mais)";
            this.llbCodCidIbgeEmit.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LinkCodIBGECidade);
            // 
            // llbCodPaisIbgeEmit
            // 
            this.llbCodPaisIbgeEmit.AutoSize = true;
            this.llbCodPaisIbgeEmit.Location = new System.Drawing.Point(425, 292);
            this.llbCodPaisIbgeEmit.Name = "llbCodPaisIbgeEmit";
            this.llbCodPaisIbgeEmit.Size = new System.Drawing.Size(34, 13);
            this.llbCodPaisIbgeEmit.TabIndex = 15;
            this.llbCodPaisIbgeEmit.TabStop = true;
            this.llbCodPaisIbgeEmit.Text = "(mais)";
            this.llbCodPaisIbgeEmit.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LinkCodIBGEPais);
            // 
            // cboCodRegimeTrib
            // 
            this.cboCodRegimeTrib.FormattingEnabled = true;
            this.cboCodRegimeTrib.Items.AddRange(new object[] {
            "Simples Nacional",
            "Simples Nacional - excesso de sublimite de receita bruta",
            "Regime Normal"});
            this.cboCodRegimeTrib.Location = new System.Drawing.Point(167, 374);
            this.cboCodRegimeTrib.Name = "cboCodRegimeTrib";
            this.cboCodRegimeTrib.Size = new System.Drawing.Size(166, 21);
            this.cboCodRegimeTrib.TabIndex = 21;
            this.cboCodRegimeTrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // cboUfEmit
            // 
            this.cboUfEmit.FormattingEnabled = true;
            this.cboUfEmit.Items.AddRange(new object[] {
            "AC",
            "AL",
            "AM",
            "AP",
            "BA",
            "CE",
            "DF",
            "ES",
            "GO",
            "MA",
            "MG",
            "MS",
            "MT",
            "PA",
            "PB",
            "PE",
            "PI",
            "PR",
            "RJ",
            "RN",
            "RO",
            "RR",
            "RS",
            "SC",
            "SE",
            "SP",
            "TO"});
            this.cboUfEmit.Location = new System.Drawing.Point(497, 245);
            this.cboUfEmit.Name = "cboUfEmit";
            this.cboUfEmit.Size = new System.Drawing.Size(46, 21);
            this.cboUfEmit.TabIndex = 12;
            this.cboUfEmit.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // txtCidadeEmit
            // 
            this.txtCidadeEmit.Location = new System.Drawing.Point(13, 243);
            this.txtCidadeEmit.Name = "txtCidadeEmit";
            this.txtCidadeEmit.Size = new System.Drawing.Size(305, 20);
            this.txtCidadeEmit.TabIndex = 9;
            // 
            // txtPaisEmit
            // 
            this.txtPaisEmit.Location = new System.Drawing.Point(12, 288);
            this.txtPaisEmit.Name = "txtPaisEmit";
            this.txtPaisEmit.Size = new System.Drawing.Size(306, 20);
            this.txtPaisEmit.TabIndex = 13;
            // 
            // txtInscricaoMunicipalEmit
            // 
            this.txtInscricaoMunicipalEmit.Location = new System.Drawing.Point(327, 330);
            this.txtInscricaoMunicipalEmit.Name = "txtInscricaoMunicipalEmit";
            this.txtInscricaoMunicipalEmit.Size = new System.Drawing.Size(143, 20);
            this.txtInscricaoMunicipalEmit.TabIndex = 19;
            this.txtInscricaoMunicipalEmit.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtTelefoneEmit
            // 
            this.txtTelefoneEmit.Location = new System.Drawing.Point(465, 289);
            this.txtTelefoneEmit.Name = "txtTelefoneEmit";
            this.txtTelefoneEmit.Size = new System.Drawing.Size(108, 20);
            this.txtTelefoneEmit.TabIndex = 16;
            this.txtTelefoneEmit.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCpfCnpjEmit
            // 
            this.txtCpfCnpjEmit.Location = new System.Drawing.Point(399, 56);
            this.txtCpfCnpjEmit.Name = "txtCpfCnpjEmit";
            this.txtCpfCnpjEmit.Size = new System.Drawing.Size(168, 20);
            this.txtCpfCnpjEmit.TabIndex = 2;
            this.txtCpfCnpjEmit.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCnaeEmit
            // 
            this.txtCnaeEmit.Location = new System.Drawing.Point(13, 374);
            this.txtCnaeEmit.Name = "txtCnaeEmit";
            this.txtCnaeEmit.Size = new System.Drawing.Size(141, 20);
            this.txtCnaeEmit.TabIndex = 20;
            this.txtCnaeEmit.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtComplementoEmit
            // 
            this.txtComplementoEmit.Location = new System.Drawing.Point(397, 155);
            this.txtComplementoEmit.Name = "txtComplementoEmit";
            this.txtComplementoEmit.Size = new System.Drawing.Size(170, 20);
            this.txtComplementoEmit.TabIndex = 6;
            // 
            // txtIeEmit
            // 
            this.txtIeEmit.Location = new System.Drawing.Point(12, 330);
            this.txtIeEmit.Name = "txtIeEmit";
            this.txtIeEmit.Size = new System.Drawing.Size(142, 20);
            this.txtIeEmit.TabIndex = 17;
            this.txtIeEmit.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCodCidIbgeEmit
            // 
            this.txtCodCidIbgeEmit.Location = new System.Drawing.Point(327, 245);
            this.txtCodCidIbgeEmit.Name = "txtCodCidIbgeEmit";
            this.txtCodCidIbgeEmit.Size = new System.Drawing.Size(97, 20);
            this.txtCodCidIbgeEmit.TabIndex = 10;
            this.txtCodCidIbgeEmit.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCepEmit
            // 
            this.txtCepEmit.Location = new System.Drawing.Point(327, 200);
            this.txtCepEmit.Name = "txtCepEmit";
            this.txtCepEmit.Size = new System.Drawing.Size(97, 20);
            this.txtCepEmit.TabIndex = 8;
            this.txtCepEmit.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtBairroEmit
            // 
            this.txtBairroEmit.Location = new System.Drawing.Point(11, 201);
            this.txtBairroEmit.Name = "txtBairroEmit";
            this.txtBairroEmit.Size = new System.Drawing.Size(307, 20);
            this.txtBairroEmit.TabIndex = 7;
            // 
            // txtIeSubTribEmit
            // 
            this.txtIeSubTribEmit.Location = new System.Drawing.Point(167, 331);
            this.txtIeSubTribEmit.Name = "txtIeSubTribEmit";
            this.txtIeSubTribEmit.Size = new System.Drawing.Size(151, 20);
            this.txtIeSubTribEmit.TabIndex = 18;
            this.txtIeSubTribEmit.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCodPaisIbgeEmit
            // 
            this.txtCodPaisIbgeEmit.Location = new System.Drawing.Point(327, 288);
            this.txtCodPaisIbgeEmit.Name = "txtCodPaisIbgeEmit";
            this.txtCodPaisIbgeEmit.Size = new System.Drawing.Size(95, 20);
            this.txtCodPaisIbgeEmit.TabIndex = 14;
            this.txtCodPaisIbgeEmit.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtNomeFantasiaEmit
            // 
            this.txtNomeFantasiaEmit.Location = new System.Drawing.Point(12, 107);
            this.txtNomeFantasiaEmit.Name = "txtNomeFantasiaEmit";
            this.txtNomeFantasiaEmit.Size = new System.Drawing.Size(381, 20);
            this.txtNomeFantasiaEmit.TabIndex = 3;
            // 
            // txtEnderecoEmit
            // 
            this.txtEnderecoEmit.Location = new System.Drawing.Point(11, 155);
            this.txtEnderecoEmit.Name = "txtEnderecoEmit";
            this.txtEnderecoEmit.Size = new System.Drawing.Size(322, 20);
            this.txtEnderecoEmit.TabIndex = 4;
            // 
            // txtNumeroEmit
            // 
            this.txtNumeroEmit.Location = new System.Drawing.Point(339, 155);
            this.txtNumeroEmit.Name = "txtNumeroEmit";
            this.txtNumeroEmit.Size = new System.Drawing.Size(54, 20);
            this.txtNumeroEmit.TabIndex = 5;
            this.txtNumeroEmit.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtRazaoSocialEmit
            // 
            this.txtRazaoSocialEmit.Location = new System.Drawing.Point(11, 56);
            this.txtRazaoSocialEmit.Name = "txtRazaoSocialEmit";
            this.txtRazaoSocialEmit.Size = new System.Drawing.Size(382, 20);
            this.txtRazaoSocialEmit.TabIndex = 1;
            // 
            // lblNomeCidadeEmit
            // 
            this.lblNomeCidadeEmit.AutoSize = true;
            this.lblNomeCidadeEmit.Location = new System.Drawing.Point(12, 229);
            this.lblNomeCidadeEmit.Name = "lblNomeCidadeEmit";
            this.lblNomeCidadeEmit.Size = new System.Drawing.Size(88, 13);
            this.lblNomeCidadeEmit.TabIndex = 0;
            this.lblNomeCidadeEmit.Text = "Nome Da Cidade";
            // 
            // lblcodCidIbgeEmit
            // 
            this.lblcodCidIbgeEmit.AutoSize = true;
            this.lblcodCidIbgeEmit.Location = new System.Drawing.Point(324, 229);
            this.lblcodCidIbgeEmit.Name = "lblcodCidIbgeEmit";
            this.lblcodCidIbgeEmit.Size = new System.Drawing.Size(57, 13);
            this.lblcodCidIbgeEmit.TabIndex = 0;
            this.lblcodCidIbgeEmit.Text = "Cód. IBGE";
            // 
            // lblCepEmit
            // 
            this.lblCepEmit.AutoSize = true;
            this.lblCepEmit.Location = new System.Drawing.Point(324, 185);
            this.lblCepEmit.Name = "lblCepEmit";
            this.lblCepEmit.Size = new System.Drawing.Size(28, 13);
            this.lblCepEmit.TabIndex = 0;
            this.lblCepEmit.Text = "CEP";
            // 
            // lblCnaeFiscalEmit
            // 
            this.lblCnaeFiscalEmit.AutoSize = true;
            this.lblCnaeFiscalEmit.Location = new System.Drawing.Point(12, 358);
            this.lblCnaeFiscalEmit.Name = "lblCnaeFiscalEmit";
            this.lblCnaeFiscalEmit.Size = new System.Drawing.Size(66, 13);
            this.lblCnaeFiscalEmit.TabIndex = 0;
            this.lblCnaeFiscalEmit.Text = "CNAE Fiscal";
            // 
            // lblCodPaisIbgeEmit
            // 
            this.lblCodPaisIbgeEmit.AutoSize = true;
            this.lblCodPaisIbgeEmit.Location = new System.Drawing.Point(324, 271);
            this.lblCodPaisIbgeEmit.Name = "lblCodPaisIbgeEmit";
            this.lblCodPaisIbgeEmit.Size = new System.Drawing.Size(57, 13);
            this.lblCodPaisIbgeEmit.TabIndex = 0;
            this.lblCodPaisIbgeEmit.Text = "Cód. IBGE";
            // 
            // lblIeSubstitutoEmit
            // 
            this.lblIeSubstitutoEmit.AutoSize = true;
            this.lblIeSubstitutoEmit.Location = new System.Drawing.Point(168, 314);
            this.lblIeSubstitutoEmit.Name = "lblIeSubstitutoEmit";
            this.lblIeSubstitutoEmit.Size = new System.Drawing.Size(129, 13);
            this.lblIeSubstitutoEmit.TabIndex = 0;
            this.lblIeSubstitutoEmit.Text = "IE do Substituto Tributário";
            // 
            // lblBairroEmit
            // 
            this.lblBairroEmit.AutoSize = true;
            this.lblBairroEmit.Location = new System.Drawing.Point(12, 185);
            this.lblBairroEmit.Name = "lblBairroEmit";
            this.lblBairroEmit.Size = new System.Drawing.Size(34, 13);
            this.lblBairroEmit.TabIndex = 0;
            this.lblBairroEmit.Text = "Bairro";
            // 
            // lblUfEmit
            // 
            this.lblUfEmit.AutoSize = true;
            this.lblUfEmit.Location = new System.Drawing.Point(494, 229);
            this.lblUfEmit.Name = "lblUfEmit";
            this.lblUfEmit.Size = new System.Drawing.Size(21, 13);
            this.lblUfEmit.TabIndex = 0;
            this.lblUfEmit.Text = "UF";
            // 
            // lblNomeDoPais
            // 
            this.lblNomeDoPais.AutoSize = true;
            this.lblNomeDoPais.Location = new System.Drawing.Point(12, 272);
            this.lblNomeDoPais.Name = "lblNomeDoPais";
            this.lblNomeDoPais.Size = new System.Drawing.Size(75, 13);
            this.lblNomeDoPais.TabIndex = 0;
            this.lblNomeDoPais.Text = "Nome do País";
            // 
            // lblComplementoEmit
            // 
            this.lblComplementoEmit.AutoSize = true;
            this.lblComplementoEmit.Location = new System.Drawing.Point(399, 137);
            this.lblComplementoEmit.Name = "lblComplementoEmit";
            this.lblComplementoEmit.Size = new System.Drawing.Size(71, 13);
            this.lblComplementoEmit.TabIndex = 0;
            this.lblComplementoEmit.Text = "Complemento";
            // 
            // lblEnderecoEmit
            // 
            this.lblEnderecoEmit.AutoSize = true;
            this.lblEnderecoEmit.Location = new System.Drawing.Point(13, 140);
            this.lblEnderecoEmit.Name = "lblEnderecoEmit";
            this.lblEnderecoEmit.Size = new System.Drawing.Size(53, 13);
            this.lblEnderecoEmit.TabIndex = 0;
            this.lblEnderecoEmit.Text = "Endereço";
            // 
            // lblCodigoRegimeTrib
            // 
            this.lblCodigoRegimeTrib.AutoSize = true;
            this.lblCodigoRegimeTrib.Location = new System.Drawing.Point(168, 358);
            this.lblCodigoRegimeTrib.Name = "lblCodigoRegimeTrib";
            this.lblCodigoRegimeTrib.Size = new System.Drawing.Size(141, 13);
            this.lblCodigoRegimeTrib.TabIndex = 0;
            this.lblCodigoRegimeTrib.Text = "Código de Regime Tributário";
            // 
            // lblNumeroEmit
            // 
            this.lblNumeroEmit.AutoSize = true;
            this.lblNumeroEmit.Location = new System.Drawing.Point(336, 137);
            this.lblNumeroEmit.Name = "lblNumeroEmit";
            this.lblNumeroEmit.Size = new System.Drawing.Size(44, 13);
            this.lblNumeroEmit.TabIndex = 0;
            this.lblNumeroEmit.Text = "Numero";
            // 
            // lblIeEmit
            // 
            this.lblIeEmit.AutoSize = true;
            this.lblIeEmit.Location = new System.Drawing.Point(10, 314);
            this.lblIeEmit.Name = "lblIeEmit";
            this.lblIeEmit.Size = new System.Drawing.Size(94, 13);
            this.lblIeEmit.TabIndex = 0;
            this.lblIeEmit.Text = "Inscrição Estadual";
            // 
            // lblNomeFanstasiaEmit
            // 
            this.lblNomeFanstasiaEmit.AutoSize = true;
            this.lblNomeFanstasiaEmit.Location = new System.Drawing.Point(11, 88);
            this.lblNomeFanstasiaEmit.Name = "lblNomeFanstasiaEmit";
            this.lblNomeFanstasiaEmit.Size = new System.Drawing.Size(78, 13);
            this.lblNomeFanstasiaEmit.TabIndex = 0;
            this.lblNomeFanstasiaEmit.Text = "Nome Fantasia";
            // 
            // lblInscricaoMunicipalEmit
            // 
            this.lblInscricaoMunicipalEmit.AutoSize = true;
            this.lblInscricaoMunicipalEmit.Location = new System.Drawing.Point(324, 314);
            this.lblInscricaoMunicipalEmit.Name = "lblInscricaoMunicipalEmit";
            this.lblInscricaoMunicipalEmit.Size = new System.Drawing.Size(98, 13);
            this.lblInscricaoMunicipalEmit.TabIndex = 0;
            this.lblInscricaoMunicipalEmit.Text = "Inscrição Municipal";
            // 
            // lblDadosDoEmitente
            // 
            this.lblDadosDoEmitente.AutoSize = true;
            this.lblDadosDoEmitente.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDadosDoEmitente.Location = new System.Drawing.Point(3, 4);
            this.lblDadosDoEmitente.Name = "lblDadosDoEmitente";
            this.lblDadosDoEmitente.Size = new System.Drawing.Size(187, 24);
            this.lblDadosDoEmitente.TabIndex = 0;
            this.lblDadosDoEmitente.Text = "Dados do Emitente";
            // 
            // lblTelefoneEmit
            // 
            this.lblTelefoneEmit.AutoSize = true;
            this.lblTelefoneEmit.Location = new System.Drawing.Point(462, 273);
            this.lblTelefoneEmit.Name = "lblTelefoneEmit";
            this.lblTelefoneEmit.Size = new System.Drawing.Size(49, 13);
            this.lblTelefoneEmit.TabIndex = 0;
            this.lblTelefoneEmit.Text = "Telefone";
            // 
            // lblCpfCnpjEmit
            // 
            this.lblCpfCnpjEmit.AutoSize = true;
            this.lblCpfCnpjEmit.Location = new System.Drawing.Point(396, 40);
            this.lblCpfCnpjEmit.Name = "lblCpfCnpjEmit";
            this.lblCpfCnpjEmit.Size = new System.Drawing.Size(59, 13);
            this.lblCpfCnpjEmit.TabIndex = 0;
            this.lblCpfCnpjEmit.Text = "CPF/CNPJ";
            // 
            // lblRazaoSocialEmit
            // 
            this.lblRazaoSocialEmit.AutoSize = true;
            this.lblRazaoSocialEmit.Location = new System.Drawing.Point(9, 40);
            this.lblRazaoSocialEmit.Name = "lblRazaoSocialEmit";
            this.lblRazaoSocialEmit.Size = new System.Drawing.Size(103, 13);
            this.lblRazaoSocialEmit.TabIndex = 0;
            this.lblRazaoSocialEmit.Text = "Razão Social/Nome";
            // 
            // pnlDestinatario
            // 
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio38);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio37);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio36);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio35);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio34);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio33);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio32);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio31);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio30);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio29);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio28);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio27);
            this.pnlDestinatario.Controls.Add(this.lblObrigatorio26);
            this.pnlDestinatario.Controls.Add(this.cboUfDest);
            this.pnlDestinatario.Controls.Add(this.llbCodPaisIbgeDest);
            this.pnlDestinatario.Controls.Add(this.llbCodCidIbgeDest);
            this.pnlDestinatario.Controls.Add(this.txtCpfCnpjDest);
            this.pnlDestinatario.Controls.Add(this.txtIsufDest);
            this.pnlDestinatario.Controls.Add(this.txtNumeroDest);
            this.pnlDestinatario.Controls.Add(this.txtTelefoneDest);
            this.pnlDestinatario.Controls.Add(this.txtComplementoDest);
            this.pnlDestinatario.Controls.Add(this.txtPaisDest);
            this.pnlDestinatario.Controls.Add(this.txtRazaoSocialDest);
            this.pnlDestinatario.Controls.Add(this.txtcodPaisIbgeDest);
            this.pnlDestinatario.Controls.Add(this.txtEnderecoDest);
            this.pnlDestinatario.Controls.Add(this.txtCepDest);
            this.pnlDestinatario.Controls.Add(this.txtBairroDest);
            this.pnlDestinatario.Controls.Add(this.txtEmailDest);
            this.pnlDestinatario.Controls.Add(this.txtCidadeDest);
            this.pnlDestinatario.Controls.Add(this.txtCodCidIbgeDest);
            this.pnlDestinatario.Controls.Add(this.txtIeDest);
            this.pnlDestinatario.Controls.Add(this.lblIsufDest);
            this.pnlDestinatario.Controls.Add(this.lblTelefoneDest);
            this.pnlDestinatario.Controls.Add(this.lblCepDest);
            this.pnlDestinatario.Controls.Add(this.lblIeDest);
            this.pnlDestinatario.Controls.Add(this.lblNomeCidadeDest);
            this.pnlDestinatario.Controls.Add(this.lblUfDest);
            this.pnlDestinatario.Controls.Add(this.lblNumeroDest);
            this.pnlDestinatario.Controls.Add(this.lblComplementoDest);
            this.pnlDestinatario.Controls.Add(this.lblEmailDest);
            this.pnlDestinatario.Controls.Add(this.lblCpfCnpjDest);
            this.pnlDestinatario.Controls.Add(this.lblCodCidIbgeDest);
            this.pnlDestinatario.Controls.Add(this.lblCodPaisIbgeDest);
            this.pnlDestinatario.Controls.Add(this.lblBairroDest);
            this.pnlDestinatario.Controls.Add(this.lblNomePaisDest);
            this.pnlDestinatario.Controls.Add(this.lblEnderecoDest);
            this.pnlDestinatario.Controls.Add(this.lblRazaoSocalDest);
            this.pnlDestinatario.Controls.Add(this.lblDadosDestinatario);
            this.pnlDestinatario.Location = new System.Drawing.Point(217, 8);
            this.pnlDestinatario.Name = "pnlDestinatario";
            this.pnlDestinatario.Size = new System.Drawing.Size(585, 411);
            this.pnlDestinatario.TabIndex = 6;
            this.pnlDestinatario.Visible = false;
            // 
            // lblObrigatorio38
            // 
            this.lblObrigatorio38.AutoSize = true;
            this.lblObrigatorio38.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio38.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio38.Location = new System.Drawing.Point(104, 284);
            this.lblObrigatorio38.Name = "lblObrigatorio38";
            this.lblObrigatorio38.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio38.TabIndex = 5;
            this.lblObrigatorio38.Text = "*";
            // 
            // lblObrigatorio37
            // 
            this.lblObrigatorio37.AutoSize = true;
            this.lblObrigatorio37.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio37.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio37.Location = new System.Drawing.Point(519, 230);
            this.lblObrigatorio37.Name = "lblObrigatorio37";
            this.lblObrigatorio37.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio37.TabIndex = 5;
            this.lblObrigatorio37.Text = "*";
            // 
            // lblObrigatorio36
            // 
            this.lblObrigatorio36.AutoSize = true;
            this.lblObrigatorio36.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio36.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio36.Location = new System.Drawing.Point(378, 229);
            this.lblObrigatorio36.Name = "lblObrigatorio36";
            this.lblObrigatorio36.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio36.TabIndex = 5;
            this.lblObrigatorio36.Text = "*";
            // 
            // lblObrigatorio35
            // 
            this.lblObrigatorio35.AutoSize = true;
            this.lblObrigatorio35.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio35.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio35.Location = new System.Drawing.Point(84, 229);
            this.lblObrigatorio35.Name = "lblObrigatorio35";
            this.lblObrigatorio35.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio35.TabIndex = 5;
            this.lblObrigatorio35.Text = "*";
            // 
            // lblObrigatorio34
            // 
            this.lblObrigatorio34.AutoSize = true;
            this.lblObrigatorio34.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio34.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio34.Location = new System.Drawing.Point(511, 186);
            this.lblObrigatorio34.Name = "lblObrigatorio34";
            this.lblObrigatorio34.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio34.TabIndex = 5;
            this.lblObrigatorio34.Text = "*";
            // 
            // lblObrigatorio33
            // 
            this.lblObrigatorio33.AutoSize = true;
            this.lblObrigatorio33.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio33.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio33.Location = new System.Drawing.Point(377, 185);
            this.lblObrigatorio33.Name = "lblObrigatorio33";
            this.lblObrigatorio33.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio33.TabIndex = 5;
            this.lblObrigatorio33.Text = "*";
            // 
            // lblObrigatorio32
            // 
            this.lblObrigatorio32.AutoSize = true;
            this.lblObrigatorio32.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio32.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio32.Location = new System.Drawing.Point(94, 183);
            this.lblObrigatorio32.Name = "lblObrigatorio32";
            this.lblObrigatorio32.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio32.TabIndex = 5;
            this.lblObrigatorio32.Text = "*";
            // 
            // lblObrigatorio31
            // 
            this.lblObrigatorio31.AutoSize = true;
            this.lblObrigatorio31.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio31.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio31.Location = new System.Drawing.Point(355, 137);
            this.lblObrigatorio31.Name = "lblObrigatorio31";
            this.lblObrigatorio31.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio31.TabIndex = 5;
            this.lblObrigatorio31.Text = "*";
            // 
            // lblObrigatorio30
            // 
            this.lblObrigatorio30.AutoSize = true;
            this.lblObrigatorio30.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio30.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio30.Location = new System.Drawing.Point(44, 137);
            this.lblObrigatorio30.Name = "lblObrigatorio30";
            this.lblObrigatorio30.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio30.TabIndex = 5;
            this.lblObrigatorio30.Text = "*";
            // 
            // lblObrigatorio29
            // 
            this.lblObrigatorio29.AutoSize = true;
            this.lblObrigatorio29.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio29.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio29.Location = new System.Drawing.Point(60, 88);
            this.lblObrigatorio29.Name = "lblObrigatorio29";
            this.lblObrigatorio29.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio29.TabIndex = 5;
            this.lblObrigatorio29.Text = "*";
            // 
            // lblObrigatorio28
            // 
            this.lblObrigatorio28.AutoSize = true;
            this.lblObrigatorio28.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio28.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio28.Location = new System.Drawing.Point(367, 89);
            this.lblObrigatorio28.Name = "lblObrigatorio28";
            this.lblObrigatorio28.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio28.TabIndex = 5;
            this.lblObrigatorio28.Text = "*";
            // 
            // lblObrigatorio27
            // 
            this.lblObrigatorio27.AutoSize = true;
            this.lblObrigatorio27.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio27.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio27.Location = new System.Drawing.Point(449, 36);
            this.lblObrigatorio27.Name = "lblObrigatorio27";
            this.lblObrigatorio27.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio27.TabIndex = 5;
            this.lblObrigatorio27.Text = "*";
            // 
            // lblObrigatorio26
            // 
            this.lblObrigatorio26.AutoSize = true;
            this.lblObrigatorio26.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObrigatorio26.ForeColor = System.Drawing.Color.Red;
            this.lblObrigatorio26.Location = new System.Drawing.Point(116, 38);
            this.lblObrigatorio26.Name = "lblObrigatorio26";
            this.lblObrigatorio26.Size = new System.Drawing.Size(15, 20);
            this.lblObrigatorio26.TabIndex = 5;
            this.lblObrigatorio26.Text = "*";
            // 
            // cboUfDest
            // 
            this.cboUfDest.FormattingEnabled = true;
            this.cboUfDest.Items.AddRange(new object[] {
            "AC",
            "AL",
            "AM",
            "AP",
            "BA",
            "CE",
            "DF",
            "ES",
            "GO",
            "MA",
            "MG",
            "MS",
            "MT",
            "PA",
            "PB",
            "PE",
            "PI",
            "PR",
            "RJ",
            "RN",
            "RO",
            "RR",
            "RS",
            "SC",
            "SE",
            "SP",
            "TO",
            "EX"});
            this.cboUfDest.Location = new System.Drawing.Point(497, 206);
            this.cboUfDest.Name = "cboUfDest";
            this.cboUfDest.Size = new System.Drawing.Size(67, 21);
            this.cboUfDest.TabIndex = 11;
            this.cboUfDest.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // llbCodPaisIbgeDest
            // 
            this.llbCodPaisIbgeDest.AutoSize = true;
            this.llbCodPaisIbgeDest.Location = new System.Drawing.Point(423, 253);
            this.llbCodPaisIbgeDest.Name = "llbCodPaisIbgeDest";
            this.llbCodPaisIbgeDest.Size = new System.Drawing.Size(34, 13);
            this.llbCodPaisIbgeDest.TabIndex = 14;
            this.llbCodPaisIbgeDest.TabStop = true;
            this.llbCodPaisIbgeDest.Text = "(mais)";
            this.llbCodPaisIbgeDest.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LinkCodIBGEPais);
            // 
            // llbCodCidIbgeDest
            // 
            this.llbCodCidIbgeDest.AutoSize = true;
            this.llbCodCidIbgeDest.Location = new System.Drawing.Point(425, 208);
            this.llbCodCidIbgeDest.Name = "llbCodCidIbgeDest";
            this.llbCodCidIbgeDest.Size = new System.Drawing.Size(34, 13);
            this.llbCodCidIbgeDest.TabIndex = 10;
            this.llbCodCidIbgeDest.TabStop = true;
            this.llbCodCidIbgeDest.Text = "(mais)";
            this.llbCodCidIbgeDest.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LinkCodIBGECidade);
            // 
            // txtCpfCnpjDest
            // 
            this.txtCpfCnpjDest.Location = new System.Drawing.Point(395, 60);
            this.txtCpfCnpjDest.Name = "txtCpfCnpjDest";
            this.txtCpfCnpjDest.Size = new System.Drawing.Size(175, 20);
            this.txtCpfCnpjDest.TabIndex = 2;
            this.txtCpfCnpjDest.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtIsufDest
            // 
            this.txtIsufDest.Location = new System.Drawing.Point(197, 304);
            this.txtIsufDest.Name = "txtIsufDest";
            this.txtIsufDest.Size = new System.Drawing.Size(124, 20);
            this.txtIsufDest.TabIndex = 17;
            // 
            // txtNumeroDest
            // 
            this.txtNumeroDest.Location = new System.Drawing.Point(324, 111);
            this.txtNumeroDest.Name = "txtNumeroDest";
            this.txtNumeroDest.Size = new System.Drawing.Size(66, 20);
            this.txtNumeroDest.TabIndex = 4;
            this.txtNumeroDest.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtTelefoneDest
            // 
            this.txtTelefoneDest.Location = new System.Drawing.Point(467, 250);
            this.txtTelefoneDest.Name = "txtTelefoneDest";
            this.txtTelefoneDest.Size = new System.Drawing.Size(100, 20);
            this.txtTelefoneDest.TabIndex = 15;
            this.txtTelefoneDest.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtComplementoDest
            // 
            this.txtComplementoDest.Location = new System.Drawing.Point(399, 111);
            this.txtComplementoDest.Name = "txtComplementoDest";
            this.txtComplementoDest.Size = new System.Drawing.Size(169, 20);
            this.txtComplementoDest.TabIndex = 5;
            // 
            // txtPaisDest
            // 
            this.txtPaisDest.Location = new System.Drawing.Point(12, 250);
            this.txtPaisDest.Name = "txtPaisDest";
            this.txtPaisDest.Size = new System.Drawing.Size(306, 20);
            this.txtPaisDest.TabIndex = 12;
            // 
            // txtRazaoSocialDest
            // 
            this.txtRazaoSocialDest.Location = new System.Drawing.Point(12, 61);
            this.txtRazaoSocialDest.Name = "txtRazaoSocialDest";
            this.txtRazaoSocialDest.Size = new System.Drawing.Size(378, 20);
            this.txtRazaoSocialDest.TabIndex = 1;
            // 
            // txtcodPaisIbgeDest
            // 
            this.txtcodPaisIbgeDest.Location = new System.Drawing.Point(324, 250);
            this.txtcodPaisIbgeDest.Name = "txtcodPaisIbgeDest";
            this.txtcodPaisIbgeDest.Size = new System.Drawing.Size(97, 20);
            this.txtcodPaisIbgeDest.TabIndex = 13;
            this.txtcodPaisIbgeDest.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtEnderecoDest
            // 
            this.txtEnderecoDest.Location = new System.Drawing.Point(11, 111);
            this.txtEnderecoDest.Name = "txtEnderecoDest";
            this.txtEnderecoDest.Size = new System.Drawing.Size(309, 20);
            this.txtEnderecoDest.TabIndex = 3;
            // 
            // txtCepDest
            // 
            this.txtCepDest.Location = new System.Drawing.Point(327, 158);
            this.txtCepDest.Name = "txtCepDest";
            this.txtCepDest.Size = new System.Drawing.Size(94, 20);
            this.txtCepDest.TabIndex = 7;
            this.txtCepDest.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtBairroDest
            // 
            this.txtBairroDest.Location = new System.Drawing.Point(11, 158);
            this.txtBairroDest.Name = "txtBairroDest";
            this.txtBairroDest.Size = new System.Drawing.Size(309, 20);
            this.txtBairroDest.TabIndex = 6;
            // 
            // txtEmailDest
            // 
            this.txtEmailDest.Location = new System.Drawing.Point(10, 351);
            this.txtEmailDest.Name = "txtEmailDest";
            this.txtEmailDest.Size = new System.Drawing.Size(311, 20);
            this.txtEmailDest.TabIndex = 18;
            // 
            // txtCidadeDest
            // 
            this.txtCidadeDest.Location = new System.Drawing.Point(12, 206);
            this.txtCidadeDest.Name = "txtCidadeDest";
            this.txtCidadeDest.Size = new System.Drawing.Size(306, 20);
            this.txtCidadeDest.TabIndex = 8;
            // 
            // txtCodCidIbgeDest
            // 
            this.txtCodCidIbgeDest.Location = new System.Drawing.Point(324, 206);
            this.txtCodCidIbgeDest.Name = "txtCodCidIbgeDest";
            this.txtCodCidIbgeDest.Size = new System.Drawing.Size(97, 20);
            this.txtCodCidIbgeDest.TabIndex = 9;
            this.txtCodCidIbgeDest.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtIeDest
            // 
            this.txtIeDest.Location = new System.Drawing.Point(12, 304);
            this.txtIeDest.Name = "txtIeDest";
            this.txtIeDest.Size = new System.Drawing.Size(178, 20);
            this.txtIeDest.TabIndex = 16;
            this.txtIeDest.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblIsufDest
            // 
            this.lblIsufDest.AutoSize = true;
            this.lblIsufDest.Location = new System.Drawing.Point(199, 289);
            this.lblIsufDest.Name = "lblIsufDest";
            this.lblIsufDest.Size = new System.Drawing.Size(31, 13);
            this.lblIsufDest.TabIndex = 0;
            this.lblIsufDest.Text = "ISUF";
            // 
            // lblTelefoneDest
            // 
            this.lblTelefoneDest.AutoSize = true;
            this.lblTelefoneDest.Location = new System.Drawing.Point(474, 234);
            this.lblTelefoneDest.Name = "lblTelefoneDest";
            this.lblTelefoneDest.Size = new System.Drawing.Size(49, 13);
            this.lblTelefoneDest.TabIndex = 0;
            this.lblTelefoneDest.Text = "Telefone";
            // 
            // lblCepDest
            // 
            this.lblCepDest.AutoSize = true;
            this.lblCepDest.Location = new System.Drawing.Point(328, 142);
            this.lblCepDest.Name = "lblCepDest";
            this.lblCepDest.Size = new System.Drawing.Size(28, 13);
            this.lblCepDest.TabIndex = 0;
            this.lblCepDest.Text = "CEP";
            // 
            // lblIeDest
            // 
            this.lblIeDest.AutoSize = true;
            this.lblIeDest.Location = new System.Drawing.Point(11, 287);
            this.lblIeDest.Name = "lblIeDest";
            this.lblIeDest.Size = new System.Drawing.Size(94, 13);
            this.lblIeDest.TabIndex = 0;
            this.lblIeDest.Text = "Inscrição Estadual";
            // 
            // lblNomeCidadeDest
            // 
            this.lblNomeCidadeDest.AutoSize = true;
            this.lblNomeCidadeDest.Location = new System.Drawing.Point(12, 190);
            this.lblNomeCidadeDest.Name = "lblNomeCidadeDest";
            this.lblNomeCidadeDest.Size = new System.Drawing.Size(86, 13);
            this.lblNomeCidadeDest.TabIndex = 0;
            this.lblNomeCidadeDest.Text = "Nome da Cidade";
            // 
            // lblUfDest
            // 
            this.lblUfDest.AutoSize = true;
            this.lblUfDest.Location = new System.Drawing.Point(494, 190);
            this.lblUfDest.Name = "lblUfDest";
            this.lblUfDest.Size = new System.Drawing.Size(21, 13);
            this.lblUfDest.TabIndex = 0;
            this.lblUfDest.Text = "UF";
            // 
            // lblNumeroDest
            // 
            this.lblNumeroDest.AutoSize = true;
            this.lblNumeroDest.Location = new System.Drawing.Point(324, 94);
            this.lblNumeroDest.Name = "lblNumeroDest";
            this.lblNumeroDest.Size = new System.Drawing.Size(44, 13);
            this.lblNumeroDest.TabIndex = 0;
            this.lblNumeroDest.Text = "Numero";
            // 
            // lblComplementoDest
            // 
            this.lblComplementoDest.AutoSize = true;
            this.lblComplementoDest.Location = new System.Drawing.Point(399, 94);
            this.lblComplementoDest.Name = "lblComplementoDest";
            this.lblComplementoDest.Size = new System.Drawing.Size(71, 13);
            this.lblComplementoDest.TabIndex = 0;
            this.lblComplementoDest.Text = "Complemento";
            // 
            // lblEmailDest
            // 
            this.lblEmailDest.AutoSize = true;
            this.lblEmailDest.Location = new System.Drawing.Point(11, 334);
            this.lblEmailDest.Name = "lblEmailDest";
            this.lblEmailDest.Size = new System.Drawing.Size(32, 13);
            this.lblEmailDest.TabIndex = 0;
            this.lblEmailDest.Text = "Email";
            // 
            // lblCpfCnpjDest
            // 
            this.lblCpfCnpjDest.AutoSize = true;
            this.lblCpfCnpjDest.Location = new System.Drawing.Point(393, 44);
            this.lblCpfCnpjDest.Name = "lblCpfCnpjDest";
            this.lblCpfCnpjDest.Size = new System.Drawing.Size(59, 13);
            this.lblCpfCnpjDest.TabIndex = 0;
            this.lblCpfCnpjDest.Text = "CPF/CNPJ";
            // 
            // lblCodCidIbgeDest
            // 
            this.lblCodCidIbgeDest.AutoSize = true;
            this.lblCodCidIbgeDest.Location = new System.Drawing.Point(324, 190);
            this.lblCodCidIbgeDest.Name = "lblCodCidIbgeDest";
            this.lblCodCidIbgeDest.Size = new System.Drawing.Size(57, 13);
            this.lblCodCidIbgeDest.TabIndex = 0;
            this.lblCodCidIbgeDest.Text = "Cód. IBGE";
            // 
            // lblCodPaisIbgeDest
            // 
            this.lblCodPaisIbgeDest.AutoSize = true;
            this.lblCodPaisIbgeDest.Location = new System.Drawing.Point(324, 234);
            this.lblCodPaisIbgeDest.Name = "lblCodPaisIbgeDest";
            this.lblCodPaisIbgeDest.Size = new System.Drawing.Size(57, 13);
            this.lblCodPaisIbgeDest.TabIndex = 0;
            this.lblCodPaisIbgeDest.Text = "Cód. IBGE";
            // 
            // lblBairroDest
            // 
            this.lblBairroDest.AutoSize = true;
            this.lblBairroDest.Location = new System.Drawing.Point(11, 142);
            this.lblBairroDest.Name = "lblBairroDest";
            this.lblBairroDest.Size = new System.Drawing.Size(34, 13);
            this.lblBairroDest.TabIndex = 0;
            this.lblBairroDest.Text = "Bairro";
            // 
            // lblNomePaisDest
            // 
            this.lblNomePaisDest.AutoSize = true;
            this.lblNomePaisDest.Location = new System.Drawing.Point(13, 234);
            this.lblNomePaisDest.Name = "lblNomePaisDest";
            this.lblNomePaisDest.Size = new System.Drawing.Size(75, 13);
            this.lblNomePaisDest.TabIndex = 0;
            this.lblNomePaisDest.Text = "Nome do País";
            // 
            // lblEnderecoDest
            // 
            this.lblEnderecoDest.AutoSize = true;
            this.lblEnderecoDest.Location = new System.Drawing.Point(8, 94);
            this.lblEnderecoDest.Name = "lblEnderecoDest";
            this.lblEnderecoDest.Size = new System.Drawing.Size(53, 13);
            this.lblEnderecoDest.TabIndex = 0;
            this.lblEnderecoDest.Text = "Endereço";
            // 
            // lblRazaoSocalDest
            // 
            this.lblRazaoSocalDest.AutoSize = true;
            this.lblRazaoSocalDest.Location = new System.Drawing.Point(11, 45);
            this.lblRazaoSocalDest.Name = "lblRazaoSocalDest";
            this.lblRazaoSocalDest.Size = new System.Drawing.Size(103, 13);
            this.lblRazaoSocalDest.TabIndex = 0;
            this.lblRazaoSocalDest.Text = "Razão Social/Nome";
            // 
            // lblDadosDestinatario
            // 
            this.lblDadosDestinatario.AutoSize = true;
            this.lblDadosDestinatario.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDadosDestinatario.Location = new System.Drawing.Point(8, 4);
            this.lblDadosDestinatario.Name = "lblDadosDestinatario";
            this.lblDadosDestinatario.Size = new System.Drawing.Size(214, 24);
            this.lblDadosDestinatario.TabIndex = 0;
            this.lblDadosDestinatario.Text = "Dados do Destinatário";
            // 
            // pnlConsultarFS
            // 
            this.pnlConsultarFS.Controls.Add(this.llbConsFsMot);
            this.pnlConsultarFS.Controls.Add(this.llbConsFSChave);
            this.pnlConsultarFS.Controls.Add(this.llbConsFSRec);
            this.pnlConsultarFS.Controls.Add(this.lblConsultarFS);
            this.pnlConsultarFS.Controls.Add(this.tcConsultarFS);
            this.pnlConsultarFS.Controls.Add(this.btnConsultarChaveFS);
            this.pnlConsultarFS.Controls.Add(this.btnConsultaRecFS);
            this.pnlConsultarFS.Controls.Add(this.txtMotivoConsultarFS);
            this.pnlConsultarFS.Controls.Add(this.txtStatusConsultarFs);
            this.pnlConsultarFS.Controls.Add(this.txtProtAutoFS);
            this.pnlConsultarFS.Controls.Add(this.txtChaveNotaFS);
            this.pnlConsultarFS.Controls.Add(this.txtNumRecFS);
            this.pnlConsultarFS.Controls.Add(this.lblStatusConsultarFS);
            this.pnlConsultarFS.Controls.Add(this.lblMotivoConsultarFS);
            this.pnlConsultarFS.Controls.Add(this.lblProtocoloAutFS);
            this.pnlConsultarFS.Controls.Add(this.lblOuFS);
            this.pnlConsultarFS.Controls.Add(this.lblChaveNotaFSCons);
            this.pnlConsultarFS.Controls.Add(this.lblNumeroRecFSCons);
            this.pnlConsultarFS.Location = new System.Drawing.Point(217, 7);
            this.pnlConsultarFS.Name = "pnlConsultarFS";
            this.pnlConsultarFS.Size = new System.Drawing.Size(585, 411);
            this.pnlConsultarFS.TabIndex = 31;
            this.pnlConsultarFS.Visible = false;
            // 
            // llbConsFsMot
            // 
            this.llbConsFsMot.AutoSize = true;
            this.llbConsFsMot.Location = new System.Drawing.Point(349, 386);
            this.llbConsFsMot.Name = "llbConsFsMot";
            this.llbConsFsMot.Size = new System.Drawing.Size(34, 13);
            this.llbConsFsMot.TabIndex = 21;
            this.llbConsFsMot.TabStop = true;
            this.llbConsFsMot.Text = "(mais)";
            this.llbConsFsMot.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbConsFsMot_LinkClicked);
            // 
            // llbConsFSChave
            // 
            this.llbConsFSChave.AutoSize = true;
            this.llbConsFSChave.Location = new System.Drawing.Point(385, 118);
            this.llbConsFSChave.Name = "llbConsFSChave";
            this.llbConsFSChave.Size = new System.Drawing.Size(34, 13);
            this.llbConsFSChave.TabIndex = 20;
            this.llbConsFSChave.TabStop = true;
            this.llbConsFSChave.Text = "(mais)";
            this.llbConsFSChave.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbConsFSChave_LinkClicked);
            // 
            // llbConsFSRec
            // 
            this.llbConsFSRec.AutoSize = true;
            this.llbConsFSRec.Location = new System.Drawing.Point(330, 69);
            this.llbConsFSRec.Name = "llbConsFSRec";
            this.llbConsFSRec.Size = new System.Drawing.Size(34, 13);
            this.llbConsFSRec.TabIndex = 19;
            this.llbConsFSRec.TabStop = true;
            this.llbConsFSRec.Text = "(mais)";
            this.llbConsFSRec.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbConsFSRec_LinkClicked);
            // 
            // lblConsultarFS
            // 
            this.lblConsultarFS.AutoSize = true;
            this.lblConsultarFS.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblConsultarFS.Location = new System.Drawing.Point(10, 11);
            this.lblConsultarFS.Name = "lblConsultarFS";
            this.lblConsultarFS.Size = new System.Drawing.Size(209, 24);
            this.lblConsultarFS.TabIndex = 17;
            this.lblConsultarFS.Text = "Consultar FS / FS-DA";
            // 
            // tcConsultarFS
            // 
            this.tcConsultarFS.Controls.Add(this.tpXmlConsultaFS);
            this.tcConsultarFS.Controls.Add(this.tpwbConsultarFS);
            this.tcConsultarFS.Location = new System.Drawing.Point(15, 144);
            this.tcConsultarFS.Name = "tcConsultarFS";
            this.tcConsultarFS.SelectedIndex = 0;
            this.tcConsultarFS.Size = new System.Drawing.Size(555, 229);
            this.tcConsultarFS.TabIndex = 13;
            // 
            // tpXmlConsultaFS
            // 
            this.tpXmlConsultaFS.Controls.Add(this.rtbXmlConsultarFS);
            this.tpXmlConsultaFS.Location = new System.Drawing.Point(4, 22);
            this.tpXmlConsultaFS.Name = "tpXmlConsultaFS";
            this.tpXmlConsultaFS.Padding = new System.Windows.Forms.Padding(3);
            this.tpXmlConsultaFS.Size = new System.Drawing.Size(547, 203);
            this.tpXmlConsultaFS.TabIndex = 0;
            this.tpXmlConsultaFS.Text = "Texto";
            this.tpXmlConsultaFS.UseVisualStyleBackColor = true;
            // 
            // rtbXmlConsultarFS
            // 
            this.rtbXmlConsultarFS.BackColor = System.Drawing.SystemColors.Window;
            this.rtbXmlConsultarFS.Location = new System.Drawing.Point(0, -1);
            this.rtbXmlConsultarFS.Name = "rtbXmlConsultarFS";
            this.rtbXmlConsultarFS.ReadOnly = true;
            this.rtbXmlConsultarFS.Size = new System.Drawing.Size(547, 204);
            this.rtbXmlConsultarFS.TabIndex = 0;
            this.rtbXmlConsultarFS.Text = "";
            // 
            // tpwbConsultarFS
            // 
            this.tpwbConsultarFS.Controls.Add(this.wbXMLConsultaFS);
            this.tpwbConsultarFS.Location = new System.Drawing.Point(4, 22);
            this.tpwbConsultarFS.Name = "tpwbConsultarFS";
            this.tpwbConsultarFS.Padding = new System.Windows.Forms.Padding(3);
            this.tpwbConsultarFS.Size = new System.Drawing.Size(547, 203);
            this.tpwbConsultarFS.TabIndex = 1;
            this.tpwbConsultarFS.Text = "Browser";
            this.tpwbConsultarFS.UseVisualStyleBackColor = true;
            // 
            // wbXMLConsultaFS
            // 
            this.wbXMLConsultaFS.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXMLConsultaFS.Location = new System.Drawing.Point(3, 3);
            this.wbXMLConsultaFS.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXMLConsultaFS.Name = "wbXMLConsultaFS";
            this.wbXMLConsultaFS.Size = new System.Drawing.Size(541, 197);
            this.wbXMLConsultaFS.TabIndex = 0;
            // 
            // btnConsultarChaveFS
            // 
            this.btnConsultarChaveFS.Location = new System.Drawing.Point(277, 111);
            this.btnConsultarChaveFS.Name = "btnConsultarChaveFS";
            this.btnConsultarChaveFS.Size = new System.Drawing.Size(108, 23);
            this.btnConsultarChaveFS.TabIndex = 12;
            this.btnConsultarChaveFS.Text = "Consultar Chave";
            this.btnConsultarChaveFS.UseVisualStyleBackColor = true;
            this.btnConsultarChaveFS.Click += new System.EventHandler(this.btnConsultarChaveFS_Click);
            // 
            // btnConsultaRecFS
            // 
            this.btnConsultaRecFS.Location = new System.Drawing.Point(214, 62);
            this.btnConsultaRecFS.Name = "btnConsultaRecFS";
            this.btnConsultaRecFS.Size = new System.Drawing.Size(104, 23);
            this.btnConsultaRecFS.TabIndex = 11;
            this.btnConsultaRecFS.Text = "Consultar Recibo";
            this.btnConsultaRecFS.UseVisualStyleBackColor = true;
            this.btnConsultaRecFS.Click += new System.EventHandler(this.btnConsultaRecFS_Click);
            // 
            // txtMotivoConsultarFS
            // 
            this.txtMotivoConsultarFS.BackColor = System.Drawing.SystemColors.Window;
            this.txtMotivoConsultarFS.Location = new System.Drawing.Point(172, 381);
            this.txtMotivoConsultarFS.Name = "txtMotivoConsultarFS";
            this.txtMotivoConsultarFS.ReadOnly = true;
            this.txtMotivoConsultarFS.Size = new System.Drawing.Size(170, 20);
            this.txtMotivoConsultarFS.TabIndex = 10;
            // 
            // txtStatusConsultarFs
            // 
            this.txtStatusConsultarFs.BackColor = System.Drawing.SystemColors.Window;
            this.txtStatusConsultarFs.Location = new System.Drawing.Point(47, 381);
            this.txtStatusConsultarFs.Name = "txtStatusConsultarFs";
            this.txtStatusConsultarFs.ReadOnly = true;
            this.txtStatusConsultarFs.Size = new System.Drawing.Size(76, 20);
            this.txtStatusConsultarFs.TabIndex = 9;
            // 
            // txtProtAutoFS
            // 
            this.txtProtAutoFS.BackColor = System.Drawing.SystemColors.Window;
            this.txtProtAutoFS.Location = new System.Drawing.Point(445, 117);
            this.txtProtAutoFS.Name = "txtProtAutoFS";
            this.txtProtAutoFS.ReadOnly = true;
            this.txtProtAutoFS.Size = new System.Drawing.Size(124, 20);
            this.txtProtAutoFS.TabIndex = 8;
            // 
            // txtChaveNotaFS
            // 
            this.txtChaveNotaFS.BackColor = System.Drawing.SystemColors.Window;
            this.txtChaveNotaFS.Location = new System.Drawing.Point(16, 113);
            this.txtChaveNotaFS.Name = "txtChaveNotaFS";
            this.txtChaveNotaFS.ReadOnly = true;
            this.txtChaveNotaFS.Size = new System.Drawing.Size(249, 20);
            this.txtChaveNotaFS.TabIndex = 7;
            // 
            // txtNumRecFS
            // 
            this.txtNumRecFS.BackColor = System.Drawing.SystemColors.Window;
            this.txtNumRecFS.Location = new System.Drawing.Point(13, 65);
            this.txtNumRecFS.Name = "txtNumRecFS";
            this.txtNumRecFS.ReadOnly = true;
            this.txtNumRecFS.Size = new System.Drawing.Size(190, 20);
            this.txtNumRecFS.TabIndex = 6;
            // 
            // lblStatusConsultarFS
            // 
            this.lblStatusConsultarFS.AutoSize = true;
            this.lblStatusConsultarFS.Location = new System.Drawing.Point(11, 385);
            this.lblStatusConsultarFS.Name = "lblStatusConsultarFS";
            this.lblStatusConsultarFS.Size = new System.Drawing.Size(37, 13);
            this.lblStatusConsultarFS.TabIndex = 5;
            this.lblStatusConsultarFS.Text = "Status";
            // 
            // lblMotivoConsultarFS
            // 
            this.lblMotivoConsultarFS.AutoSize = true;
            this.lblMotivoConsultarFS.Location = new System.Drawing.Point(134, 385);
            this.lblMotivoConsultarFS.Name = "lblMotivoConsultarFS";
            this.lblMotivoConsultarFS.Size = new System.Drawing.Size(39, 13);
            this.lblMotivoConsultarFS.TabIndex = 4;
            this.lblMotivoConsultarFS.Text = "Motivo";
            // 
            // lblProtocoloAutFS
            // 
            this.lblProtocoloAutFS.AutoSize = true;
            this.lblProtocoloAutFS.Location = new System.Drawing.Point(443, 95);
            this.lblProtocoloAutFS.Name = "lblProtocoloAutFS";
            this.lblProtocoloAutFS.Size = new System.Drawing.Size(126, 13);
            this.lblProtocoloAutFS.TabIndex = 3;
            this.lblProtocoloAutFS.Text = "Protocolo de Autorização";
            // 
            // lblOuFS
            // 
            this.lblOuFS.AutoSize = true;
            this.lblOuFS.Location = new System.Drawing.Point(295, 88);
            this.lblOuFS.Name = "lblOuFS";
            this.lblOuFS.Size = new System.Drawing.Size(23, 13);
            this.lblOuFS.TabIndex = 2;
            this.lblOuFS.Text = "OU";
            // 
            // lblChaveNotaFSCons
            // 
            this.lblChaveNotaFSCons.AutoSize = true;
            this.lblChaveNotaFSCons.Location = new System.Drawing.Point(14, 95);
            this.lblChaveNotaFSCons.Name = "lblChaveNotaFSCons";
            this.lblChaveNotaFSCons.Size = new System.Drawing.Size(79, 13);
            this.lblChaveNotaFSCons.TabIndex = 1;
            this.lblChaveNotaFSCons.Text = "Chave da Nota";
            // 
            // lblNumeroRecFSCons
            // 
            this.lblNumeroRecFSCons.AutoSize = true;
            this.lblNumeroRecFSCons.Location = new System.Drawing.Point(9, 46);
            this.lblNumeroRecFSCons.Name = "lblNumeroRecFSCons";
            this.lblNumeroRecFSCons.Size = new System.Drawing.Size(96, 13);
            this.lblNumeroRecFSCons.TabIndex = 0;
            this.lblNumeroRecFSCons.Text = "Número de Recibo";
            // 
            // pnlEnviarServEstFS
            // 
            this.pnlEnviarServEstFS.Controls.Add(this.llbServEstFSMot);
            this.pnlEnviarServEstFS.Controls.Add(this.lblEnviarServEstadual);
            this.pnlEnviarServEstFS.Controls.Add(this.btnEnviarServEstFS);
            this.pnlEnviarServEstFS.Controls.Add(this.txtMotivoEnviServEstFS);
            this.pnlEnviarServEstFS.Controls.Add(this.txtStatusEnvServEstFS);
            this.pnlEnviarServEstFS.Controls.Add(this.txtNumReciboFS);
            this.pnlEnviarServEstFS.Controls.Add(this.txtChaveFS);
            this.pnlEnviarServEstFS.Controls.Add(this.lblMotivoEnviarServEstFS);
            this.pnlEnviarServEstFS.Controls.Add(this.lblStatusEnviarServEstFS);
            this.pnlEnviarServEstFS.Controls.Add(this.lblNumeroRecFS);
            this.pnlEnviarServEstFS.Controls.Add(this.lblChaveNotaFS);
            this.pnlEnviarServEstFS.Controls.Add(this.tcEnviarServEstFs);
            this.pnlEnviarServEstFS.Location = new System.Drawing.Point(217, 7);
            this.pnlEnviarServEstFS.Name = "pnlEnviarServEstFS";
            this.pnlEnviarServEstFS.Size = new System.Drawing.Size(585, 412);
            this.pnlEnviarServEstFS.TabIndex = 30;
            this.pnlEnviarServEstFS.Visible = false;
            // 
            // llbServEstFSMot
            // 
            this.llbServEstFSMot.AutoSize = true;
            this.llbServEstFSMot.Location = new System.Drawing.Point(379, 385);
            this.llbServEstFSMot.Name = "llbServEstFSMot";
            this.llbServEstFSMot.Size = new System.Drawing.Size(34, 13);
            this.llbServEstFSMot.TabIndex = 19;
            this.llbServEstFSMot.TabStop = true;
            this.llbServEstFSMot.Text = "(mais)";
            this.llbServEstFSMot.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llbServEstFSMot_LinkClicked);
            // 
            // lblEnviarServEstadual
            // 
            this.lblEnviarServEstadual.AutoSize = true;
            this.lblEnviarServEstadual.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEnviarServEstadual.Location = new System.Drawing.Point(9, 5);
            this.lblEnviarServEstadual.Name = "lblEnviarServEstadual";
            this.lblEnviarServEstadual.Size = new System.Drawing.Size(268, 24);
            this.lblEnviarServEstadual.TabIndex = 17;
            this.lblEnviarServEstadual.Text = "Enviar ao Servidor Estadual";
            // 
            // btnEnviarServEstFS
            // 
            this.btnEnviarServEstFS.Location = new System.Drawing.Point(10, 40);
            this.btnEnviarServEstFS.Name = "btnEnviarServEstFS";
            this.btnEnviarServEstFS.Size = new System.Drawing.Size(156, 23);
            this.btnEnviarServEstFS.TabIndex = 9;
            this.btnEnviarServEstFS.Text = "Enviar ao Servidor Estadual";
            this.btnEnviarServEstFS.UseVisualStyleBackColor = true;
            this.btnEnviarServEstFS.Click += new System.EventHandler(this.btnEnviarServEstFS_Click);
            // 
            // txtMotivoEnviServEstFS
            // 
            this.txtMotivoEnviServEstFS.BackColor = System.Drawing.SystemColors.Window;
            this.txtMotivoEnviServEstFS.Location = new System.Drawing.Point(177, 382);
            this.txtMotivoEnviServEstFS.Name = "txtMotivoEnviServEstFS";
            this.txtMotivoEnviServEstFS.ReadOnly = true;
            this.txtMotivoEnviServEstFS.Size = new System.Drawing.Size(196, 20);
            this.txtMotivoEnviServEstFS.TabIndex = 8;
            // 
            // txtStatusEnvServEstFS
            // 
            this.txtStatusEnvServEstFS.BackColor = System.Drawing.SystemColors.Window;
            this.txtStatusEnvServEstFS.Location = new System.Drawing.Point(48, 381);
            this.txtStatusEnvServEstFS.Name = "txtStatusEnvServEstFS";
            this.txtStatusEnvServEstFS.ReadOnly = true;
            this.txtStatusEnvServEstFS.Size = new System.Drawing.Size(83, 20);
            this.txtStatusEnvServEstFS.TabIndex = 7;
            // 
            // txtNumReciboFS
            // 
            this.txtNumReciboFS.BackColor = System.Drawing.SystemColors.Window;
            this.txtNumReciboFS.Location = new System.Drawing.Point(354, 82);
            this.txtNumReciboFS.Name = "txtNumReciboFS";
            this.txtNumReciboFS.ReadOnly = true;
            this.txtNumReciboFS.Size = new System.Drawing.Size(136, 20);
            this.txtNumReciboFS.TabIndex = 6;
            // 
            // txtChaveFS
            // 
            this.txtChaveFS.BackColor = System.Drawing.SystemColors.Window;
            this.txtChaveFS.Location = new System.Drawing.Point(11, 82);
            this.txtChaveFS.Name = "txtChaveFS";
            this.txtChaveFS.ReadOnly = true;
            this.txtChaveFS.Size = new System.Drawing.Size(319, 20);
            this.txtChaveFS.TabIndex = 5;
            // 
            // lblMotivoEnviarServEstFS
            // 
            this.lblMotivoEnviarServEstFS.AutoSize = true;
            this.lblMotivoEnviarServEstFS.Location = new System.Drawing.Point(136, 384);
            this.lblMotivoEnviarServEstFS.Name = "lblMotivoEnviarServEstFS";
            this.lblMotivoEnviarServEstFS.Size = new System.Drawing.Size(39, 13);
            this.lblMotivoEnviarServEstFS.TabIndex = 4;
            this.lblMotivoEnviarServEstFS.Text = "Motivo";
            // 
            // lblStatusEnviarServEstFS
            // 
            this.lblStatusEnviarServEstFS.AutoSize = true;
            this.lblStatusEnviarServEstFS.Location = new System.Drawing.Point(12, 384);
            this.lblStatusEnviarServEstFS.Name = "lblStatusEnviarServEstFS";
            this.lblStatusEnviarServEstFS.Size = new System.Drawing.Size(37, 13);
            this.lblStatusEnviarServEstFS.TabIndex = 3;
            this.lblStatusEnviarServEstFS.Text = "Status";
            // 
            // lblNumeroRecFS
            // 
            this.lblNumeroRecFS.AutoSize = true;
            this.lblNumeroRecFS.Location = new System.Drawing.Point(351, 65);
            this.lblNumeroRecFS.Name = "lblNumeroRecFS";
            this.lblNumeroRecFS.Size = new System.Drawing.Size(96, 13);
            this.lblNumeroRecFS.TabIndex = 2;
            this.lblNumeroRecFS.Text = "Número do Recibo";
            // 
            // lblChaveNotaFS
            // 
            this.lblChaveNotaFS.AutoSize = true;
            this.lblChaveNotaFS.Location = new System.Drawing.Point(15, 65);
            this.lblChaveNotaFS.Name = "lblChaveNotaFS";
            this.lblChaveNotaFS.Size = new System.Drawing.Size(79, 13);
            this.lblChaveNotaFS.TabIndex = 1;
            this.lblChaveNotaFS.Text = "Chave da Nota";
            // 
            // tcEnviarServEstFs
            // 
            this.tcEnviarServEstFs.Controls.Add(this.tpXmlEnviarServEstFs);
            this.tcEnviarServEstFs.Controls.Add(this.tpwbEnviarNotaServEstFS);
            this.tcEnviarServEstFs.Location = new System.Drawing.Point(11, 110);
            this.tcEnviarServEstFs.Name = "tcEnviarServEstFs";
            this.tcEnviarServEstFs.SelectedIndex = 0;
            this.tcEnviarServEstFs.Size = new System.Drawing.Size(565, 264);
            this.tcEnviarServEstFs.TabIndex = 0;
            // 
            // tpXmlEnviarServEstFs
            // 
            this.tpXmlEnviarServEstFs.Controls.Add(this.rtbEnviarXmlServEstFS);
            this.tpXmlEnviarServEstFs.Location = new System.Drawing.Point(4, 22);
            this.tpXmlEnviarServEstFs.Name = "tpXmlEnviarServEstFs";
            this.tpXmlEnviarServEstFs.Padding = new System.Windows.Forms.Padding(3);
            this.tpXmlEnviarServEstFs.Size = new System.Drawing.Size(557, 238);
            this.tpXmlEnviarServEstFs.TabIndex = 0;
            this.tpXmlEnviarServEstFs.Text = "Texto";
            this.tpXmlEnviarServEstFs.UseVisualStyleBackColor = true;
            // 
            // rtbEnviarXmlServEstFS
            // 
            this.rtbEnviarXmlServEstFS.BackColor = System.Drawing.SystemColors.Window;
            this.rtbEnviarXmlServEstFS.Location = new System.Drawing.Point(0, 0);
            this.rtbEnviarXmlServEstFS.Name = "rtbEnviarXmlServEstFS";
            this.rtbEnviarXmlServEstFS.ReadOnly = true;
            this.rtbEnviarXmlServEstFS.Size = new System.Drawing.Size(557, 239);
            this.rtbEnviarXmlServEstFS.TabIndex = 0;
            this.rtbEnviarXmlServEstFS.Text = "";
            // 
            // tpwbEnviarNotaServEstFS
            // 
            this.tpwbEnviarNotaServEstFS.Controls.Add(this.wbXmlEnviarServEstFS);
            this.tpwbEnviarNotaServEstFS.Location = new System.Drawing.Point(4, 22);
            this.tpwbEnviarNotaServEstFS.Name = "tpwbEnviarNotaServEstFS";
            this.tpwbEnviarNotaServEstFS.Padding = new System.Windows.Forms.Padding(3);
            this.tpwbEnviarNotaServEstFS.Size = new System.Drawing.Size(557, 238);
            this.tpwbEnviarNotaServEstFS.TabIndex = 1;
            this.tpwbEnviarNotaServEstFS.Text = "Browser";
            this.tpwbEnviarNotaServEstFS.UseVisualStyleBackColor = true;
            // 
            // wbXmlEnviarServEstFS
            // 
            this.wbXmlEnviarServEstFS.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXmlEnviarServEstFS.Location = new System.Drawing.Point(3, 3);
            this.wbXmlEnviarServEstFS.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXmlEnviarServEstFS.Name = "wbXmlEnviarServEstFS";
            this.wbXmlEnviarServEstFS.Size = new System.Drawing.Size(551, 232);
            this.wbXmlEnviarServEstFS.TabIndex = 0;
            // 
            // pnlEnviarServEstadual
            // 
            this.pnlEnviarServEstadual.Controls.Add(this.lblenviarservest);
            this.pnlEnviarServEstadual.Controls.Add(this.txtMotivoEnviarServEst);
            this.pnlEnviarServEstadual.Controls.Add(this.txtStatusEnviarServEst);
            this.pnlEnviarServEstadual.Controls.Add(this.lblMotivoEnviarServEst);
            this.pnlEnviarServEstadual.Controls.Add(this.lblStatusEnviarServEst);
            this.pnlEnviarServEstadual.Controls.Add(this.tcEnviarServEst);
            this.pnlEnviarServEstadual.Controls.Add(this.btnEnviarServEstad);
            this.pnlEnviarServEstadual.Location = new System.Drawing.Point(217, 8);
            this.pnlEnviarServEstadual.Name = "pnlEnviarServEstadual";
            this.pnlEnviarServEstadual.Size = new System.Drawing.Size(585, 411);
            this.pnlEnviarServEstadual.TabIndex = 25;
            this.pnlEnviarServEstadual.Visible = false;
            // 
            // lblenviarservest
            // 
            this.lblenviarservest.AutoSize = true;
            this.lblenviarservest.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblenviarservest.Location = new System.Drawing.Point(15, 13);
            this.lblenviarservest.Name = "lblenviarservest";
            this.lblenviarservest.Size = new System.Drawing.Size(268, 24);
            this.lblenviarservest.TabIndex = 17;
            this.lblenviarservest.Text = "Enviar ao Servidor Estadual";
            // 
            // txtMotivoEnviarServEst
            // 
            this.txtMotivoEnviarServEst.BackColor = System.Drawing.SystemColors.Window;
            this.txtMotivoEnviarServEst.Location = new System.Drawing.Point(171, 380);
            this.txtMotivoEnviarServEst.Name = "txtMotivoEnviarServEst";
            this.txtMotivoEnviarServEst.ReadOnly = true;
            this.txtMotivoEnviarServEst.Size = new System.Drawing.Size(172, 20);
            this.txtMotivoEnviarServEst.TabIndex = 9;
            // 
            // txtStatusEnviarServEst
            // 
            this.txtStatusEnviarServEst.BackColor = System.Drawing.SystemColors.Window;
            this.txtStatusEnviarServEst.Location = new System.Drawing.Point(52, 380);
            this.txtStatusEnviarServEst.Name = "txtStatusEnviarServEst";
            this.txtStatusEnviarServEst.ReadOnly = true;
            this.txtStatusEnviarServEst.Size = new System.Drawing.Size(69, 20);
            this.txtStatusEnviarServEst.TabIndex = 8;
            // 
            // lblMotivoEnviarServEst
            // 
            this.lblMotivoEnviarServEst.AutoSize = true;
            this.lblMotivoEnviarServEst.Location = new System.Drawing.Point(134, 384);
            this.lblMotivoEnviarServEst.Name = "lblMotivoEnviarServEst";
            this.lblMotivoEnviarServEst.Size = new System.Drawing.Size(39, 13);
            this.lblMotivoEnviarServEst.TabIndex = 7;
            this.lblMotivoEnviarServEst.Text = "Motivo";
            // 
            // lblStatusEnviarServEst
            // 
            this.lblStatusEnviarServEst.AutoSize = true;
            this.lblStatusEnviarServEst.Location = new System.Drawing.Point(16, 385);
            this.lblStatusEnviarServEst.Name = "lblStatusEnviarServEst";
            this.lblStatusEnviarServEst.Size = new System.Drawing.Size(37, 13);
            this.lblStatusEnviarServEst.TabIndex = 6;
            this.lblStatusEnviarServEst.Text = "Status";
            // 
            // tcEnviarServEst
            // 
            this.tcEnviarServEst.Controls.Add(this.tpXmlEnviarServEst);
            this.tcEnviarServEst.Controls.Add(this.tpwbXmlEnviarServEst);
            this.tcEnviarServEst.Location = new System.Drawing.Point(16, 137);
            this.tcEnviarServEst.Name = "tcEnviarServEst";
            this.tcEnviarServEst.SelectedIndex = 0;
            this.tcEnviarServEst.Size = new System.Drawing.Size(565, 234);
            this.tcEnviarServEst.TabIndex = 5;
            // 
            // tpXmlEnviarServEst
            // 
            this.tpXmlEnviarServEst.Controls.Add(this.rtbXmlEnviarServEst);
            this.tpXmlEnviarServEst.Location = new System.Drawing.Point(4, 22);
            this.tpXmlEnviarServEst.Name = "tpXmlEnviarServEst";
            this.tpXmlEnviarServEst.Padding = new System.Windows.Forms.Padding(3);
            this.tpXmlEnviarServEst.Size = new System.Drawing.Size(557, 208);
            this.tpXmlEnviarServEst.TabIndex = 0;
            this.tpXmlEnviarServEst.Text = "Texto";
            this.tpXmlEnviarServEst.UseVisualStyleBackColor = true;
            // 
            // rtbXmlEnviarServEst
            // 
            this.rtbXmlEnviarServEst.BackColor = System.Drawing.SystemColors.Window;
            this.rtbXmlEnviarServEst.Location = new System.Drawing.Point(0, 0);
            this.rtbXmlEnviarServEst.Name = "rtbXmlEnviarServEst";
            this.rtbXmlEnviarServEst.ReadOnly = true;
            this.rtbXmlEnviarServEst.Size = new System.Drawing.Size(561, 208);
            this.rtbXmlEnviarServEst.TabIndex = 0;
            this.rtbXmlEnviarServEst.Text = "";
            // 
            // tpwbXmlEnviarServEst
            // 
            this.tpwbXmlEnviarServEst.Controls.Add(this.wbXmlEnviarServEst);
            this.tpwbXmlEnviarServEst.Location = new System.Drawing.Point(4, 22);
            this.tpwbXmlEnviarServEst.Name = "tpwbXmlEnviarServEst";
            this.tpwbXmlEnviarServEst.Padding = new System.Windows.Forms.Padding(3);
            this.tpwbXmlEnviarServEst.Size = new System.Drawing.Size(557, 208);
            this.tpwbXmlEnviarServEst.TabIndex = 1;
            this.tpwbXmlEnviarServEst.Text = "Browser";
            this.tpwbXmlEnviarServEst.UseVisualStyleBackColor = true;
            // 
            // wbXmlEnviarServEst
            // 
            this.wbXmlEnviarServEst.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXmlEnviarServEst.Location = new System.Drawing.Point(3, 3);
            this.wbXmlEnviarServEst.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXmlEnviarServEst.Name = "wbXmlEnviarServEst";
            this.wbXmlEnviarServEst.Size = new System.Drawing.Size(551, 202);
            this.wbXmlEnviarServEst.TabIndex = 0;
            // 
            // btnEnviarServEstad
            // 
            this.btnEnviarServEstad.Location = new System.Drawing.Point(0, 0);
            this.btnEnviarServEstad.Name = "btnEnviarServEstad";
            this.btnEnviarServEstad.Size = new System.Drawing.Size(75, 23);
            this.btnEnviarServEstad.TabIndex = 24;
            // 
            // pnlAssinarNotaFs
            // 
            this.pnlAssinarNotaFs.Controls.Add(this.lblAssinarFS);
            this.pnlAssinarNotaFs.Controls.Add(this.btnAssinarFs);
            this.pnlAssinarNotaFs.Controls.Add(this.tcXmlNotaFsAss);
            this.pnlAssinarNotaFs.Controls.Add(this.tcNotaFs);
            this.pnlAssinarNotaFs.Controls.Add(this.cboTipoEmissFS);
            this.pnlAssinarNotaFs.Controls.Add(this.lblTipoEmissaoFS);
            this.pnlAssinarNotaFs.Controls.Add(this.lblXmlAssinadoFs);
            this.pnlAssinarNotaFs.Controls.Add(this.lblXmlNotaFs);
            this.pnlAssinarNotaFs.Location = new System.Drawing.Point(217, 7);
            this.pnlAssinarNotaFs.Name = "pnlAssinarNotaFs";
            this.pnlAssinarNotaFs.Size = new System.Drawing.Size(585, 412);
            this.pnlAssinarNotaFs.TabIndex = 28;
            this.pnlAssinarNotaFs.Visible = false;
            // 
            // lblAssinarFS
            // 
            this.lblAssinarFS.AutoSize = true;
            this.lblAssinarFS.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAssinarFS.Location = new System.Drawing.Point(17, 11);
            this.lblAssinarFS.Name = "lblAssinarFS";
            this.lblAssinarFS.Size = new System.Drawing.Size(202, 24);
            this.lblAssinarFS.TabIndex = 17;
            this.lblAssinarFS.Text = "Assinar Nota Gerada";
            // 
            // btnAssinarFs
            // 
            this.btnAssinarFs.Location = new System.Drawing.Point(441, 229);
            this.btnAssinarFs.Name = "btnAssinarFs";
            this.btnAssinarFs.Size = new System.Drawing.Size(117, 27);
            this.btnAssinarFs.TabIndex = 6;
            this.btnAssinarFs.Text = "Assinar";
            this.btnAssinarFs.UseVisualStyleBackColor = true;
            this.btnAssinarFs.Click += new System.EventHandler(this.btnAssinarFs_Click);
            // 
            // tcXmlNotaFsAss
            // 
            this.tcXmlNotaFsAss.Controls.Add(this.tpXmlNotaFSAss);
            this.tcXmlNotaFsAss.Controls.Add(this.tpWbXmlNotaFsAss);
            this.tcXmlNotaFsAss.Location = new System.Drawing.Point(19, 256);
            this.tcXmlNotaFsAss.Name = "tcXmlNotaFsAss";
            this.tcXmlNotaFsAss.SelectedIndex = 0;
            this.tcXmlNotaFsAss.Size = new System.Drawing.Size(550, 145);
            this.tcXmlNotaFsAss.TabIndex = 5;
            // 
            // tpXmlNotaFSAss
            // 
            this.tpXmlNotaFSAss.Controls.Add(this.rtbXmlNotaFsAss);
            this.tpXmlNotaFSAss.Location = new System.Drawing.Point(4, 22);
            this.tpXmlNotaFSAss.Name = "tpXmlNotaFSAss";
            this.tpXmlNotaFSAss.Padding = new System.Windows.Forms.Padding(3);
            this.tpXmlNotaFSAss.Size = new System.Drawing.Size(542, 119);
            this.tpXmlNotaFSAss.TabIndex = 0;
            this.tpXmlNotaFSAss.Text = "Texto";
            this.tpXmlNotaFSAss.UseVisualStyleBackColor = true;
            // 
            // rtbXmlNotaFsAss
            // 
            this.rtbXmlNotaFsAss.BackColor = System.Drawing.SystemColors.Window;
            this.rtbXmlNotaFsAss.Location = new System.Drawing.Point(0, -1);
            this.rtbXmlNotaFsAss.Name = "rtbXmlNotaFsAss";
            this.rtbXmlNotaFsAss.ReadOnly = true;
            this.rtbXmlNotaFsAss.Size = new System.Drawing.Size(541, 121);
            this.rtbXmlNotaFsAss.TabIndex = 0;
            this.rtbXmlNotaFsAss.Text = "";
            // 
            // tpWbXmlNotaFsAss
            // 
            this.tpWbXmlNotaFsAss.Controls.Add(this.wbXmlNotaFsAss);
            this.tpWbXmlNotaFsAss.Location = new System.Drawing.Point(4, 22);
            this.tpWbXmlNotaFsAss.Name = "tpWbXmlNotaFsAss";
            this.tpWbXmlNotaFsAss.Padding = new System.Windows.Forms.Padding(3);
            this.tpWbXmlNotaFsAss.Size = new System.Drawing.Size(542, 119);
            this.tpWbXmlNotaFsAss.TabIndex = 1;
            this.tpWbXmlNotaFsAss.Text = "Browser";
            this.tpWbXmlNotaFsAss.UseVisualStyleBackColor = true;
            // 
            // wbXmlNotaFsAss
            // 
            this.wbXmlNotaFsAss.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXmlNotaFsAss.Location = new System.Drawing.Point(3, 3);
            this.wbXmlNotaFsAss.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXmlNotaFsAss.Name = "wbXmlNotaFsAss";
            this.wbXmlNotaFsAss.Size = new System.Drawing.Size(536, 113);
            this.wbXmlNotaFsAss.TabIndex = 0;
            // 
            // tcNotaFs
            // 
            this.tcNotaFs.Controls.Add(this.tpXmlNotaFS);
            this.tcNotaFs.Controls.Add(this.tpwbXmlNotaFS);
            this.tcNotaFs.Location = new System.Drawing.Point(17, 70);
            this.tcNotaFs.Name = "tcNotaFs";
            this.tcNotaFs.SelectedIndex = 0;
            this.tcNotaFs.Size = new System.Drawing.Size(549, 152);
            this.tcNotaFs.TabIndex = 4;
            // 
            // tpXmlNotaFS
            // 
            this.tpXmlNotaFS.Controls.Add(this.rtbXMLNotaFs);
            this.tpXmlNotaFS.Location = new System.Drawing.Point(4, 22);
            this.tpXmlNotaFS.Name = "tpXmlNotaFS";
            this.tpXmlNotaFS.Padding = new System.Windows.Forms.Padding(3);
            this.tpXmlNotaFS.Size = new System.Drawing.Size(541, 126);
            this.tpXmlNotaFS.TabIndex = 0;
            this.tpXmlNotaFS.Text = "Texto";
            this.tpXmlNotaFS.UseVisualStyleBackColor = true;
            // 
            // rtbXMLNotaFs
            // 
            this.rtbXMLNotaFs.BackColor = System.Drawing.SystemColors.Window;
            this.rtbXMLNotaFs.Location = new System.Drawing.Point(-1, 0);
            this.rtbXMLNotaFs.Name = "rtbXMLNotaFs";
            this.rtbXMLNotaFs.ReadOnly = true;
            this.rtbXMLNotaFs.Size = new System.Drawing.Size(542, 125);
            this.rtbXMLNotaFs.TabIndex = 0;
            this.rtbXMLNotaFs.Text = "";
            // 
            // tpwbXmlNotaFS
            // 
            this.tpwbXmlNotaFS.Controls.Add(this.wbXmlNotaFS);
            this.tpwbXmlNotaFS.Location = new System.Drawing.Point(4, 22);
            this.tpwbXmlNotaFS.Name = "tpwbXmlNotaFS";
            this.tpwbXmlNotaFS.Padding = new System.Windows.Forms.Padding(3);
            this.tpwbXmlNotaFS.Size = new System.Drawing.Size(541, 126);
            this.tpwbXmlNotaFS.TabIndex = 1;
            this.tpwbXmlNotaFS.Text = "Broswer";
            this.tpwbXmlNotaFS.UseVisualStyleBackColor = true;
            // 
            // wbXmlNotaFS
            // 
            this.wbXmlNotaFS.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXmlNotaFS.Location = new System.Drawing.Point(3, 3);
            this.wbXmlNotaFS.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXmlNotaFS.Name = "wbXmlNotaFS";
            this.wbXmlNotaFS.Size = new System.Drawing.Size(535, 120);
            this.wbXmlNotaFS.TabIndex = 0;
            // 
            // cboTipoEmissFS
            // 
            this.cboTipoEmissFS.FormattingEnabled = true;
            this.cboTipoEmissFS.Items.AddRange(new object[] {
            "2 - FS",
            "5 - FS-DA"});
            this.cboTipoEmissFS.Location = new System.Drawing.Point(487, 49);
            this.cboTipoEmissFS.Name = "cboTipoEmissFS";
            this.cboTipoEmissFS.Size = new System.Drawing.Size(75, 21);
            this.cboTipoEmissFS.TabIndex = 3;
            this.cboTipoEmissFS.SelectedIndexChanged += new System.EventHandler(this.cboTipoEmissFS_SelectedIndexChanged);
            this.cboTipoEmissFS.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblTipoEmissaoFS
            // 
            this.lblTipoEmissaoFS.AutoSize = true;
            this.lblTipoEmissaoFS.Location = new System.Drawing.Point(398, 52);
            this.lblTipoEmissaoFS.Name = "lblTipoEmissaoFS";
            this.lblTipoEmissaoFS.Size = new System.Drawing.Size(88, 13);
            this.lblTipoEmissaoFS.TabIndex = 2;
            this.lblTipoEmissaoFS.Text = "Tipo de Emissão:";
            // 
            // lblXmlAssinadoFs
            // 
            this.lblXmlAssinadoFs.AutoSize = true;
            this.lblXmlAssinadoFs.Location = new System.Drawing.Point(20, 235);
            this.lblXmlAssinadoFs.Name = "lblXmlAssinadoFs";
            this.lblXmlAssinadoFs.Size = new System.Drawing.Size(75, 13);
            this.lblXmlAssinadoFs.TabIndex = 1;
            this.lblXmlAssinadoFs.Text = "XML Assinado";
            // 
            // lblXmlNotaFs
            // 
            this.lblXmlNotaFs.AutoSize = true;
            this.lblXmlNotaFs.Location = new System.Drawing.Point(17, 51);
            this.lblXmlNotaFs.Name = "lblXmlNotaFs";
            this.lblXmlNotaFs.Size = new System.Drawing.Size(70, 13);
            this.lblXmlNotaFs.TabIndex = 0;
            this.lblXmlNotaFs.Text = "XML da Nota";
            // 
            // pnlComunicacao
            // 
            this.pnlComunicacao.Controls.Add(this.lblComunicacao);
            this.pnlComunicacao.Controls.Add(this.llbMotivo);
            this.pnlComunicacao.Controls.Add(this.btnVerificarStatus);
            this.pnlComunicacao.Controls.Add(this.txtMotivoStatus);
            this.pnlComunicacao.Controls.Add(this.txtStatusServidor);
            this.pnlComunicacao.Controls.Add(this.lblMotivo);
            this.pnlComunicacao.Controls.Add(this.lblStatus);
            this.pnlComunicacao.Controls.Add(this.lblVerificacaoStatus);
            this.pnlComunicacao.Controls.Add(this.tcStatusServico);
            this.pnlComunicacao.Location = new System.Drawing.Point(217, 8);
            this.pnlComunicacao.Name = "pnlComunicacao";
            this.pnlComunicacao.Size = new System.Drawing.Size(585, 411);
            this.pnlComunicacao.TabIndex = 3;
            this.pnlComunicacao.Visible = false;
            // 
            // lblComunicacao
            // 
            this.lblComunicacao.AutoSize = true;
            this.lblComunicacao.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblComunicacao.Location = new System.Drawing.Point(5, 12);
            this.lblComunicacao.Name = "lblComunicacao";
            this.lblComunicacao.Size = new System.Drawing.Size(202, 24);
            this.lblComunicacao.TabIndex = 9;
            this.lblComunicacao.Text = "Testar Comunicação";
            // 
            // llbMotivo
            // 
            this.llbMotivo.AutoSize = true;
            this.llbMotivo.Location = new System.Drawing.Point(447, 319);
            this.llbMotivo.Name = "llbMotivo";
            this.llbMotivo.Size = new System.Drawing.Size(34, 13);
            this.llbMotivo.TabIndex = 4;
            this.llbMotivo.TabStop = true;
            this.llbMotivo.Text = "(mais)";
            this.llbMotivo.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LinkMotivo);
            // 
            // btnVerificarStatus
            // 
            this.btnVerificarStatus.Location = new System.Drawing.Point(5, 287);
            this.btnVerificarStatus.Name = "btnVerificarStatus";
            this.btnVerificarStatus.Size = new System.Drawing.Size(139, 23);
            this.btnVerificarStatus.TabIndex = 1;
            this.btnVerificarStatus.Text = "Verificar Status";
            this.btnVerificarStatus.UseVisualStyleBackColor = true;
            this.btnVerificarStatus.Click += new System.EventHandler(this.btnVerificarStatus_Click);
            // 
            // txtMotivoStatus
            // 
            this.txtMotivoStatus.BackColor = System.Drawing.SystemColors.Window;
            this.txtMotivoStatus.Location = new System.Drawing.Point(232, 316);
            this.txtMotivoStatus.Name = "txtMotivoStatus";
            this.txtMotivoStatus.ReadOnly = true;
            this.txtMotivoStatus.Size = new System.Drawing.Size(209, 20);
            this.txtMotivoStatus.TabIndex = 3;
            // 
            // txtStatusServidor
            // 
            this.txtStatusServidor.BackColor = System.Drawing.SystemColors.Window;
            this.txtStatusServidor.Location = new System.Drawing.Point(51, 316);
            this.txtStatusServidor.Name = "txtStatusServidor";
            this.txtStatusServidor.ReadOnly = true;
            this.txtStatusServidor.Size = new System.Drawing.Size(100, 20);
            this.txtStatusServidor.TabIndex = 2;
            // 
            // lblMotivo
            // 
            this.lblMotivo.AutoSize = true;
            this.lblMotivo.Location = new System.Drawing.Point(188, 319);
            this.lblMotivo.Name = "lblMotivo";
            this.lblMotivo.Size = new System.Drawing.Size(39, 13);
            this.lblMotivo.TabIndex = 5;
            this.lblMotivo.Text = "Motivo";
            // 
            // lblStatus
            // 
            this.lblStatus.AutoSize = true;
            this.lblStatus.Location = new System.Drawing.Point(8, 319);
            this.lblStatus.Name = "lblStatus";
            this.lblStatus.Size = new System.Drawing.Size(37, 13);
            this.lblStatus.TabIndex = 2;
            this.lblStatus.Text = "Status";
            // 
            // lblVerificacaoStatus
            // 
            this.lblVerificacaoStatus.AutoSize = true;
            this.lblVerificacaoStatus.Location = new System.Drawing.Point(6, 58);
            this.lblVerificacaoStatus.Name = "lblVerificacaoStatus";
            this.lblVerificacaoStatus.Size = new System.Drawing.Size(162, 13);
            this.lblVerificacaoStatus.TabIndex = 1;
            this.lblVerificacaoStatus.Text = "Verificação de Status do Serviço";
            // 
            // tcStatusServico
            // 
            this.tcStatusServico.Controls.Add(this.tpTexto);
            this.tcStatusServico.Controls.Add(this.tpBrowser);
            this.tcStatusServico.Location = new System.Drawing.Point(5, 74);
            this.tcStatusServico.Name = "tcStatusServico";
            this.tcStatusServico.SelectedIndex = 0;
            this.tcStatusServico.Size = new System.Drawing.Size(569, 211);
            this.tcStatusServico.TabIndex = 0;
            // 
            // tpTexto
            // 
            this.tpTexto.Controls.Add(this.rtbStatusServico);
            this.tpTexto.Location = new System.Drawing.Point(4, 22);
            this.tpTexto.Name = "tpTexto";
            this.tpTexto.Padding = new System.Windows.Forms.Padding(3);
            this.tpTexto.Size = new System.Drawing.Size(561, 185);
            this.tpTexto.TabIndex = 0;
            this.tpTexto.Text = "Texto";
            this.tpTexto.UseVisualStyleBackColor = true;
            // 
            // rtbStatusServico
            // 
            this.rtbStatusServico.BackColor = System.Drawing.SystemColors.Window;
            this.rtbStatusServico.Location = new System.Drawing.Point(0, -1);
            this.rtbStatusServico.Name = "rtbStatusServico";
            this.rtbStatusServico.ReadOnly = true;
            this.rtbStatusServico.Size = new System.Drawing.Size(563, 186);
            this.rtbStatusServico.TabIndex = 0;
            this.rtbStatusServico.Text = "";
            // 
            // tpBrowser
            // 
            this.tpBrowser.Controls.Add(this.wbStatusServico);
            this.tpBrowser.Location = new System.Drawing.Point(4, 22);
            this.tpBrowser.Name = "tpBrowser";
            this.tpBrowser.Padding = new System.Windows.Forms.Padding(3);
            this.tpBrowser.Size = new System.Drawing.Size(561, 185);
            this.tpBrowser.TabIndex = 1;
            this.tpBrowser.Text = "Browser";
            this.tpBrowser.UseVisualStyleBackColor = true;
            // 
            // wbStatusServico
            // 
            this.wbStatusServico.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbStatusServico.Location = new System.Drawing.Point(3, 3);
            this.wbStatusServico.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbStatusServico.Name = "wbStatusServico";
            this.wbStatusServico.Size = new System.Drawing.Size(555, 179);
            this.wbStatusServico.TabIndex = 0;
            this.wbStatusServico.Url = new System.Uri("", System.UriKind.Relative);
            // 
            // pnlImprimirFs
            // 
            this.pnlImprimirFs.Controls.Add(this.lblImprimirFS);
            this.pnlImprimirFs.Controls.Add(this.cboImpressoraFS);
            this.pnlImprimirFs.Controls.Add(this.txtCaminhoArqFS);
            this.pnlImprimirFs.Controls.Add(this.btnExportarArqFS);
            this.pnlImprimirFs.Controls.Add(this.btnVisualizarFS);
            this.pnlImprimirFs.Controls.Add(this.btnExportarFS);
            this.pnlImprimirFs.Controls.Add(this.btnImprimirFS);
            this.pnlImprimirFs.Controls.Add(this.btnEditarFS);
            this.pnlImprimirFs.Location = new System.Drawing.Point(217, 7);
            this.pnlImprimirFs.Name = "pnlImprimirFs";
            this.pnlImprimirFs.Size = new System.Drawing.Size(585, 412);
            this.pnlImprimirFs.TabIndex = 29;
            this.pnlImprimirFs.Visible = false;
            // 
            // lblImprimirFS
            // 
            this.lblImprimirFS.AutoSize = true;
            this.lblImprimirFS.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblImprimirFS.Location = new System.Drawing.Point(17, 11);
            this.lblImprimirFS.Name = "lblImprimirFS";
            this.lblImprimirFS.Size = new System.Drawing.Size(196, 24);
            this.lblImprimirFS.TabIndex = 8;
            this.lblImprimirFS.Text = "Imprimir FS / FS-DA";
            // 
            // cboImpressoraFS
            // 
            this.cboImpressoraFS.FormattingEnabled = true;
            this.cboImpressoraFS.Location = new System.Drawing.Point(143, 146);
            this.cboImpressoraFS.Name = "cboImpressoraFS";
            this.cboImpressoraFS.Size = new System.Drawing.Size(320, 21);
            this.cboImpressoraFS.TabIndex = 7;
            // 
            // txtCaminhoArqFS
            // 
            this.txtCaminhoArqFS.Location = new System.Drawing.Point(143, 112);
            this.txtCaminhoArqFS.Name = "txtCaminhoArqFS";
            this.txtCaminhoArqFS.Size = new System.Drawing.Size(320, 20);
            this.txtCaminhoArqFS.TabIndex = 6;
            // 
            // btnExportarArqFS
            // 
            this.btnExportarArqFS.Location = new System.Drawing.Point(472, 105);
            this.btnExportarArqFS.Name = "btnExportarArqFS";
            this.btnExportarArqFS.Size = new System.Drawing.Size(43, 23);
            this.btnExportarArqFS.TabIndex = 5;
            this.btnExportarArqFS.Text = "...";
            this.btnExportarArqFS.UseVisualStyleBackColor = true;
            this.btnExportarArqFS.Click += new System.EventHandler(this.btnExportarArqFS_Click);
            // 
            // btnVisualizarFS
            // 
            this.btnVisualizarFS.Location = new System.Drawing.Point(18, 187);
            this.btnVisualizarFS.Name = "btnVisualizarFS";
            this.btnVisualizarFS.Size = new System.Drawing.Size(108, 23);
            this.btnVisualizarFS.TabIndex = 3;
            this.btnVisualizarFS.Text = "Visualizar";
            this.btnVisualizarFS.UseVisualStyleBackColor = true;
            this.btnVisualizarFS.Click += new System.EventHandler(this.btnVisualizarFS_Click);
            // 
            // btnExportarFS
            // 
            this.btnExportarFS.Location = new System.Drawing.Point(17, 110);
            this.btnExportarFS.Name = "btnExportarFS";
            this.btnExportarFS.Size = new System.Drawing.Size(109, 23);
            this.btnExportarFS.TabIndex = 2;
            this.btnExportarFS.Text = "Exportar";
            this.btnExportarFS.UseVisualStyleBackColor = true;
            this.btnExportarFS.Click += new System.EventHandler(this.btnExportarFS_Click);
            // 
            // btnImprimirFS
            // 
            this.btnImprimirFS.Location = new System.Drawing.Point(17, 147);
            this.btnImprimirFS.Name = "btnImprimirFS";
            this.btnImprimirFS.Size = new System.Drawing.Size(109, 23);
            this.btnImprimirFS.TabIndex = 1;
            this.btnImprimirFS.Text = "Imprimir";
            this.btnImprimirFS.UseVisualStyleBackColor = true;
            this.btnImprimirFS.Click += new System.EventHandler(this.btnImprimirFS_Click);
            // 
            // btnEditarFS
            // 
            this.btnEditarFS.Location = new System.Drawing.Point(16, 71);
            this.btnEditarFS.Name = "btnEditarFS";
            this.btnEditarFS.Size = new System.Drawing.Size(110, 23);
            this.btnEditarFS.TabIndex = 0;
            this.btnEditarFS.Text = "Editar";
            this.btnEditarFS.UseVisualStyleBackColor = true;
            this.btnEditarFS.Click += new System.EventHandler(this.btnEditarFS_Click);
            // 
            // pnlFluxoNormal
            // 
            this.pnlFluxoNormal.Controls.Add(this.PBFluxoNormal);
            this.pnlFluxoNormal.Location = new System.Drawing.Point(217, 8);
            this.pnlFluxoNormal.Name = "pnlFluxoNormal";
            this.pnlFluxoNormal.Size = new System.Drawing.Size(585, 411);
            this.pnlFluxoNormal.TabIndex = 17;
            this.pnlFluxoNormal.Visible = false;
            // 
            // PBFluxoNormal
            // 
            this.PBFluxoNormal.Image = global::WindowsFormsApplication1.Properties.Resources.img3;
            this.PBFluxoNormal.Location = new System.Drawing.Point(7, 20);
            this.PBFluxoNormal.Name = "PBFluxoNormal";
            this.PBFluxoNormal.Size = new System.Drawing.Size(571, 367);
            this.PBFluxoNormal.TabIndex = 0;
            this.PBFluxoNormal.TabStop = false;
            // 
            // pnlFluxoFS
            // 
            this.pnlFluxoFS.Controls.Add(this.PBFluxoFS);
            this.pnlFluxoFS.Location = new System.Drawing.Point(217, 8);
            this.pnlFluxoFS.Name = "pnlFluxoFS";
            this.pnlFluxoFS.Size = new System.Drawing.Size(582, 411);
            this.pnlFluxoFS.TabIndex = 18;
            this.pnlFluxoFS.Visible = false;
            // 
            // PBFluxoFS
            // 
            this.PBFluxoFS.Image = global::WindowsFormsApplication1.Properties.Resources.img2;
            this.PBFluxoFS.Location = new System.Drawing.Point(10, 23);
            this.PBFluxoFS.Name = "PBFluxoFS";
            this.PBFluxoFS.Size = new System.Drawing.Size(572, 365);
            this.PBFluxoFS.TabIndex = 0;
            this.PBFluxoFS.TabStop = false;
            // 
            // pnlManifestacao
            // 
            this.pnlManifestacao.Controls.Add(this.label2);
            this.pnlManifestacao.Controls.Add(this.txtMotivoManEvento);
            this.pnlManifestacao.Controls.Add(this.label3);
            this.pnlManifestacao.Controls.Add(this.txtStatusManEvento);
            this.pnlManifestacao.Controls.Add(this.tabControl3);
            this.pnlManifestacao.Controls.Add(this.btnEnviarManifestacao);
            this.pnlManifestacao.Controls.Add(this.btnDataHoraManEvento);
            this.pnlManifestacao.Controls.Add(this.label4);
            this.pnlManifestacao.Controls.Add(this.txtJustificativaManEvento);
            this.pnlManifestacao.Controls.Add(this.label5);
            this.pnlManifestacao.Controls.Add(this.cboTipoEventoMan);
            this.pnlManifestacao.Controls.Add(this.label6);
            this.pnlManifestacao.Controls.Add(this.cboFusoManEvento);
            this.pnlManifestacao.Controls.Add(this.label7);
            this.pnlManifestacao.Controls.Add(this.txtDataHoraManEvento);
            this.pnlManifestacao.Controls.Add(this.label8);
            this.pnlManifestacao.Controls.Add(this.txtCNPJDestEvento);
            this.pnlManifestacao.Controls.Add(this.label9);
            this.pnlManifestacao.Controls.Add(this.txtChaveManEvento);
            this.pnlManifestacao.Controls.Add(this.label10);
            this.pnlManifestacao.Location = new System.Drawing.Point(218, 9);
            this.pnlManifestacao.Name = "pnlManifestacao";
            this.pnlManifestacao.Size = new System.Drawing.Size(584, 410);
            this.pnlManifestacao.TabIndex = 33;
            this.pnlManifestacao.Visible = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(264, 383);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(39, 13);
            this.label2.TabIndex = 19;
            this.label2.Text = "Motivo";
            // 
            // txtMotivoManEvento
            // 
            this.txtMotivoManEvento.Location = new System.Drawing.Point(308, 379);
            this.txtMotivoManEvento.Name = "txtMotivoManEvento";
            this.txtMotivoManEvento.Size = new System.Drawing.Size(211, 20);
            this.txtMotivoManEvento.TabIndex = 18;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(62, 384);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(37, 13);
            this.label3.TabIndex = 17;
            this.label3.Text = "Status";
            // 
            // txtStatusManEvento
            // 
            this.txtStatusManEvento.Location = new System.Drawing.Point(105, 380);
            this.txtStatusManEvento.Name = "txtStatusManEvento";
            this.txtStatusManEvento.Size = new System.Drawing.Size(75, 20);
            this.txtStatusManEvento.TabIndex = 16;
            // 
            // tabControl3
            // 
            this.tabControl3.Controls.Add(this.tabPage1);
            this.tabControl3.Controls.Add(this.tabPage2);
            this.tabControl3.Location = new System.Drawing.Point(12, 183);
            this.tabControl3.Name = "tabControl3";
            this.tabControl3.SelectedIndex = 0;
            this.tabControl3.Size = new System.Drawing.Size(560, 185);
            this.tabControl3.TabIndex = 15;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.txtTextoManEvento);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(552, 159);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Texto";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // txtTextoManEvento
            // 
            this.txtTextoManEvento.Location = new System.Drawing.Point(0, 0);
            this.txtTextoManEvento.Multiline = true;
            this.txtTextoManEvento.Name = "txtTextoManEvento";
            this.txtTextoManEvento.Size = new System.Drawing.Size(552, 159);
            this.txtTextoManEvento.TabIndex = 2;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.wbManEvento);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(552, 159);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Browser";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // wbManEvento
            // 
            this.wbManEvento.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbManEvento.Location = new System.Drawing.Point(3, 3);
            this.wbManEvento.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbManEvento.Name = "wbManEvento";
            this.wbManEvento.Size = new System.Drawing.Size(546, 153);
            this.wbManEvento.TabIndex = 0;
            // 
            // btnEnviarManifestacao
            // 
            this.btnEnviarManifestacao.Font = new System.Drawing.Font("Tahoma", 8.25F);
            this.btnEnviarManifestacao.Location = new System.Drawing.Point(453, 159);
            this.btnEnviarManifestacao.Name = "btnEnviarManifestacao";
            this.btnEnviarManifestacao.Size = new System.Drawing.Size(119, 25);
            this.btnEnviarManifestacao.TabIndex = 14;
            this.btnEnviarManifestacao.Text = "Enviar Manifestação";
            this.btnEnviarManifestacao.UseVisualStyleBackColor = true;
            this.btnEnviarManifestacao.Click += new System.EventHandler(this.btnEnviarManifestacao_Click);
            // 
            // btnDataHoraManEvento
            // 
            this.btnDataHoraManEvento.Font = new System.Drawing.Font("Wingdings", 9F);
            this.btnDataHoraManEvento.Location = new System.Drawing.Point(546, 122);
            this.btnDataHoraManEvento.Name = "btnDataHoraManEvento";
            this.btnDataHoraManEvento.Size = new System.Drawing.Size(24, 19);
            this.btnDataHoraManEvento.TabIndex = 13;
            this.btnDataHoraManEvento.Text = "Á";
            this.btnDataHoraManEvento.UseVisualStyleBackColor = true;
            this.btnDataHoraManEvento.Click += new System.EventHandler(this.btnDataHoraManEvento_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(266, 103);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(69, 13);
            this.label4.TabIndex = 12;
            this.label4.Text = "Justificativa *";
            // 
            // txtJustificativaManEvento
            // 
            this.txtJustificativaManEvento.Location = new System.Drawing.Point(268, 122);
            this.txtJustificativaManEvento.Name = "txtJustificativaManEvento";
            this.txtJustificativaManEvento.Size = new System.Drawing.Size(159, 20);
            this.txtJustificativaManEvento.TabIndex = 11;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 103);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(72, 13);
            this.label5.TabIndex = 10;
            this.label5.Text = "Tipo Evento *";
            // 
            // cboTipoEventoMan
            // 
            this.cboTipoEventoMan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboTipoEventoMan.FormattingEnabled = true;
            this.cboTipoEventoMan.Items.AddRange(new object[] {
            "1 - Confirmação da Operação",
            "2 - Ciência da Operação",
            "3 - Desconhecimento da Operação",
            "4 - Operação não Realizada"});
            this.cboTipoEventoMan.Location = new System.Drawing.Point(13, 122);
            this.cboTipoEventoMan.Name = "cboTipoEventoMan";
            this.cboTipoEventoMan.Size = new System.Drawing.Size(244, 21);
            this.cboTipoEventoMan.TabIndex = 9;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(488, 50);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(74, 13);
            this.label6.TabIndex = 8;
            this.label6.Text = "Fuso Horário *";
            // 
            // cboFusoManEvento
            // 
            this.cboFusoManEvento.FormattingEnabled = true;
            this.cboFusoManEvento.Items.AddRange(new object[] {
            "-02:00",
            "-03:00",
            "-04:00"});
            this.cboFusoManEvento.Location = new System.Drawing.Point(489, 69);
            this.cboFusoManEvento.Name = "cboFusoManEvento";
            this.cboFusoManEvento.Size = new System.Drawing.Size(82, 21);
            this.cboFusoManEvento.TabIndex = 7;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(435, 103);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(124, 13);
            this.label7.TabIndex = 6;
            this.label7.Text = "Data e Hora do Evento *";
            // 
            // txtDataHoraManEvento
            // 
            this.txtDataHoraManEvento.Location = new System.Drawing.Point(437, 122);
            this.txtDataHoraManEvento.Name = "txtDataHoraManEvento";
            this.txtDataHoraManEvento.Size = new System.Drawing.Size(103, 20);
            this.txtDataHoraManEvento.TabIndex = 5;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(319, 51);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(100, 13);
            this.label8.TabIndex = 4;
            this.label8.Text = "CNPJ Destinatário *\r\n";
            // 
            // txtCNPJDestEvento
            // 
            this.txtCNPJDestEvento.Location = new System.Drawing.Point(321, 70);
            this.txtCNPJDestEvento.Name = "txtCNPJDestEvento";
            this.txtCNPJDestEvento.Size = new System.Drawing.Size(154, 20);
            this.txtCNPJDestEvento.TabIndex = 3;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(12, 52);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(86, 13);
            this.label9.TabIndex = 2;
            this.label9.Text = "Chave da Nota *";
            // 
            // txtChaveManEvento
            // 
            this.txtChaveManEvento.Location = new System.Drawing.Point(13, 71);
            this.txtChaveManEvento.Name = "txtChaveManEvento";
            this.txtChaveManEvento.Size = new System.Drawing.Size(295, 20);
            this.txtChaveManEvento.TabIndex = 1;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(10, 15);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(203, 24);
            this.label10.TabIndex = 0;
            this.label10.Text = "Manifestação Evento";
            // 
            // pnlInutilizar
            // 
            this.pnlInutilizar.Controls.Add(this.lblInutilizarNumeracao);
            this.pnlInutilizar.Controls.Add(this.tcInutilizar);
            this.pnlInutilizar.Controls.Add(this.llbMotivoInutilizar);
            this.pnlInutilizar.Controls.Add(this.btnInutilizar);
            this.pnlInutilizar.Controls.Add(this.txtInuModelo);
            this.pnlInutilizar.Controls.Add(this.txtInuNfeIni);
            this.pnlInutilizar.Controls.Add(this.txtInuStatus);
            this.pnlInutilizar.Controls.Add(this.txtInuAno);
            this.pnlInutilizar.Controls.Add(this.txtInuMotivo);
            this.pnlInutilizar.Controls.Add(this.txtInuSerie);
            this.pnlInutilizar.Controls.Add(this.txtInuNfeFinal);
            this.pnlInutilizar.Controls.Add(this.txtInuJustificativa);
            this.pnlInutilizar.Controls.Add(this.LblInuAno);
            this.pnlInutilizar.Controls.Add(this.lblInuSerie);
            this.pnlInutilizar.Controls.Add(this.lblInuModelo);
            this.pnlInutilizar.Controls.Add(this.lblInuA);
            this.pnlInutilizar.Controls.Add(this.lblInuNFeInicial);
            this.pnlInutilizar.Controls.Add(this.lblInuNFeFinal);
            this.pnlInutilizar.Controls.Add(this.lblInuJustificativa);
            this.pnlInutilizar.Controls.Add(this.lbl);
            this.pnlInutilizar.Controls.Add(this.lblStatusInutilizar);
            this.pnlInutilizar.Location = new System.Drawing.Point(217, 8);
            this.pnlInutilizar.Name = "pnlInutilizar";
            this.pnlInutilizar.Size = new System.Drawing.Size(585, 411);
            this.pnlInutilizar.TabIndex = 14;
            this.pnlInutilizar.Visible = false;
            // 
            // lblInutilizarNumeracao
            // 
            this.lblInutilizarNumeracao.AutoSize = true;
            this.lblInutilizarNumeracao.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblInutilizarNumeracao.Location = new System.Drawing.Point(7, 19);
            this.lblInutilizarNumeracao.Name = "lblInutilizarNumeracao";
            this.lblInutilizarNumeracao.Size = new System.Drawing.Size(198, 24);
            this.lblInutilizarNumeracao.TabIndex = 9;
            this.lblInutilizarNumeracao.Text = "Inutilizar numeração";
            // 
            // tcInutilizar
            // 
            this.tcInutilizar.Controls.Add(this.tpTextoInutilizar);
            this.tcInutilizar.Controls.Add(this.tpWebInutilizar);
            this.tcInutilizar.Location = new System.Drawing.Point(12, 154);
            this.tcInutilizar.Name = "tcInutilizar";
            this.tcInutilizar.SelectedIndex = 0;
            this.tcInutilizar.Size = new System.Drawing.Size(539, 217);
            this.tcInutilizar.TabIndex = 4;
            // 
            // tpTextoInutilizar
            // 
            this.tpTextoInutilizar.Controls.Add(this.rtbXMLInutilizar);
            this.tpTextoInutilizar.Location = new System.Drawing.Point(4, 22);
            this.tpTextoInutilizar.Name = "tpTextoInutilizar";
            this.tpTextoInutilizar.Padding = new System.Windows.Forms.Padding(3);
            this.tpTextoInutilizar.Size = new System.Drawing.Size(531, 191);
            this.tpTextoInutilizar.TabIndex = 0;
            this.tpTextoInutilizar.Text = "Texto";
            this.tpTextoInutilizar.UseVisualStyleBackColor = true;
            // 
            // rtbXMLInutilizar
            // 
            this.rtbXMLInutilizar.BackColor = System.Drawing.SystemColors.Window;
            this.rtbXMLInutilizar.Location = new System.Drawing.Point(0, 0);
            this.rtbXMLInutilizar.Name = "rtbXMLInutilizar";
            this.rtbXMLInutilizar.ReadOnly = true;
            this.rtbXMLInutilizar.Size = new System.Drawing.Size(535, 191);
            this.rtbXMLInutilizar.TabIndex = 0;
            this.rtbXMLInutilizar.Text = "";
            // 
            // tpWebInutilizar
            // 
            this.tpWebInutilizar.Controls.Add(this.wbXMLInutilizar);
            this.tpWebInutilizar.Location = new System.Drawing.Point(4, 22);
            this.tpWebInutilizar.Name = "tpWebInutilizar";
            this.tpWebInutilizar.Padding = new System.Windows.Forms.Padding(3);
            this.tpWebInutilizar.Size = new System.Drawing.Size(531, 191);
            this.tpWebInutilizar.TabIndex = 1;
            this.tpWebInutilizar.Text = "Browser";
            this.tpWebInutilizar.UseVisualStyleBackColor = true;
            // 
            // wbXMLInutilizar
            // 
            this.wbXMLInutilizar.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbXMLInutilizar.Location = new System.Drawing.Point(3, 3);
            this.wbXMLInutilizar.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbXMLInutilizar.Name = "wbXMLInutilizar";
            this.wbXMLInutilizar.Size = new System.Drawing.Size(525, 185);
            this.wbXMLInutilizar.TabIndex = 0;
            // 
            // llbMotivoInutilizar
            // 
            this.llbMotivoInutilizar.AutoSize = true;
            this.llbMotivoInutilizar.Location = new System.Drawing.Point(339, 385);
            this.llbMotivoInutilizar.Name = "llbMotivoInutilizar";
            this.llbMotivoInutilizar.Size = new System.Drawing.Size(34, 13);
            this.llbMotivoInutilizar.TabIndex = 3;
            this.llbMotivoInutilizar.TabStop = true;
            this.llbMotivoInutilizar.Text = "(mais)";
            this.llbMotivoInutilizar.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LinkMotivo);
            // 
            // btnInutilizar
            // 
            this.btnInutilizar.Location = new System.Drawing.Point(457, 124);
            this.btnInutilizar.Name = "btnInutilizar";
            this.btnInutilizar.Size = new System.Drawing.Size(111, 25);
            this.btnInutilizar.TabIndex = 2;
            this.btnInutilizar.Text = "Inutilizar";
            this.btnInutilizar.UseVisualStyleBackColor = true;
            this.btnInutilizar.Click += new System.EventHandler(this.btnInutilizar_Click);
            // 
            // txtInuModelo
            // 
            this.txtInuModelo.Location = new System.Drawing.Point(59, 77);
            this.txtInuModelo.Name = "txtInuModelo";
            this.txtInuModelo.Size = new System.Drawing.Size(58, 20);
            this.txtInuModelo.TabIndex = 1;
            this.txtInuModelo.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtInuNfeIni
            // 
            this.txtInuNfeIni.Location = new System.Drawing.Point(259, 77);
            this.txtInuNfeIni.Name = "txtInuNfeIni";
            this.txtInuNfeIni.Size = new System.Drawing.Size(100, 20);
            this.txtInuNfeIni.TabIndex = 1;
            this.txtInuNfeIni.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtInuStatus
            // 
            this.txtInuStatus.BackColor = System.Drawing.SystemColors.Window;
            this.txtInuStatus.Location = new System.Drawing.Point(47, 382);
            this.txtInuStatus.Name = "txtInuStatus";
            this.txtInuStatus.ReadOnly = true;
            this.txtInuStatus.Size = new System.Drawing.Size(54, 20);
            this.txtInuStatus.TabIndex = 1;
            // 
            // txtInuAno
            // 
            this.txtInuAno.Location = new System.Drawing.Point(11, 77);
            this.txtInuAno.MaxLength = 2;
            this.txtInuAno.Name = "txtInuAno";
            this.txtInuAno.Size = new System.Drawing.Size(33, 20);
            this.txtInuAno.TabIndex = 1;
            this.txtInuAno.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtInuMotivo
            // 
            this.txtInuMotivo.BackColor = System.Drawing.SystemColors.Window;
            this.txtInuMotivo.Location = new System.Drawing.Point(153, 382);
            this.txtInuMotivo.Name = "txtInuMotivo";
            this.txtInuMotivo.ReadOnly = true;
            this.txtInuMotivo.Size = new System.Drawing.Size(168, 20);
            this.txtInuMotivo.TabIndex = 1;
            // 
            // txtInuSerie
            // 
            this.txtInuSerie.Location = new System.Drawing.Point(133, 77);
            this.txtInuSerie.Name = "txtInuSerie";
            this.txtInuSerie.Size = new System.Drawing.Size(36, 20);
            this.txtInuSerie.TabIndex = 1;
            this.txtInuSerie.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtInuNfeFinal
            // 
            this.txtInuNfeFinal.Location = new System.Drawing.Point(376, 77);
            this.txtInuNfeFinal.Name = "txtInuNfeFinal";
            this.txtInuNfeFinal.Size = new System.Drawing.Size(100, 20);
            this.txtInuNfeFinal.TabIndex = 1;
            this.txtInuNfeFinal.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtInuJustificativa
            // 
            this.txtInuJustificativa.Location = new System.Drawing.Point(8, 126);
            this.txtInuJustificativa.Name = "txtInuJustificativa";
            this.txtInuJustificativa.Size = new System.Drawing.Size(440, 20);
            this.txtInuJustificativa.TabIndex = 1;
            // 
            // LblInuAno
            // 
            this.LblInuAno.AutoSize = true;
            this.LblInuAno.Location = new System.Drawing.Point(13, 60);
            this.LblInuAno.Name = "LblInuAno";
            this.LblInuAno.Size = new System.Drawing.Size(26, 13);
            this.LblInuAno.TabIndex = 0;
            this.LblInuAno.Text = "Ano";
            // 
            // lblInuSerie
            // 
            this.lblInuSerie.AutoSize = true;
            this.lblInuSerie.Location = new System.Drawing.Point(134, 61);
            this.lblInuSerie.Name = "lblInuSerie";
            this.lblInuSerie.Size = new System.Drawing.Size(31, 13);
            this.lblInuSerie.TabIndex = 0;
            this.lblInuSerie.Text = "Série";
            // 
            // lblInuModelo
            // 
            this.lblInuModelo.AutoSize = true;
            this.lblInuModelo.Location = new System.Drawing.Point(60, 60);
            this.lblInuModelo.Name = "lblInuModelo";
            this.lblInuModelo.Size = new System.Drawing.Size(42, 13);
            this.lblInuModelo.TabIndex = 0;
            this.lblInuModelo.Text = "Modelo";
            // 
            // lblInuA
            // 
            this.lblInuA.AutoSize = true;
            this.lblInuA.Location = new System.Drawing.Point(362, 81);
            this.lblInuA.Name = "lblInuA";
            this.lblInuA.Size = new System.Drawing.Size(13, 13);
            this.lblInuA.TabIndex = 0;
            this.lblInuA.Text = "a";
            // 
            // lblInuNFeInicial
            // 
            this.lblInuNFeInicial.AutoSize = true;
            this.lblInuNFeInicial.Location = new System.Drawing.Point(263, 61);
            this.lblInuNFeInicial.Name = "lblInuNFeInicial";
            this.lblInuNFeInicial.Size = new System.Drawing.Size(57, 13);
            this.lblInuNFeInicial.TabIndex = 0;
            this.lblInuNFeInicial.Text = "NFe Inicial";
            // 
            // lblInuNFeFinal
            // 
            this.lblInuNFeFinal.AutoSize = true;
            this.lblInuNFeFinal.Location = new System.Drawing.Point(377, 60);
            this.lblInuNFeFinal.Name = "lblInuNFeFinal";
            this.lblInuNFeFinal.Size = new System.Drawing.Size(49, 13);
            this.lblInuNFeFinal.TabIndex = 0;
            this.lblInuNFeFinal.Text = "Nfe Final";
            // 
            // lblInuJustificativa
            // 
            this.lblInuJustificativa.AutoSize = true;
            this.lblInuJustificativa.Location = new System.Drawing.Point(7, 109);
            this.lblInuJustificativa.Name = "lblInuJustificativa";
            this.lblInuJustificativa.Size = new System.Drawing.Size(62, 13);
            this.lblInuJustificativa.TabIndex = 0;
            this.lblInuJustificativa.Text = "Justificativa";
            // 
            // lbl
            // 
            this.lbl.AutoSize = true;
            this.lbl.Location = new System.Drawing.Point(110, 385);
            this.lbl.Name = "lbl";
            this.lbl.Size = new System.Drawing.Size(39, 13);
            this.lbl.TabIndex = 0;
            this.lbl.Text = "Motivo";
            // 
            // lblStatusInutilizar
            // 
            this.lblStatusInutilizar.AutoSize = true;
            this.lblStatusInutilizar.Location = new System.Drawing.Point(11, 385);
            this.lblStatusInutilizar.Name = "lblStatusInutilizar";
            this.lblStatusInutilizar.Size = new System.Drawing.Size(37, 13);
            this.lblStatusInutilizar.TabIndex = 0;
            this.lblStatusInutilizar.Text = "Status";
            // 
            // btnMontarXml
            // 
            this.btnMontarXml.Location = new System.Drawing.Point(0, 0);
            this.btnMontarXml.Name = "btnMontarXml";
            this.btnMontarXml.Size = new System.Drawing.Size(75, 23);
            this.btnMontarXml.TabIndex = 0;
            // 
            // txtCaminhoArquivo
            // 
            this.txtCaminhoArquivo.Location = new System.Drawing.Point(0, 0);
            this.txtCaminhoArquivo.Name = "txtCaminhoArquivo";
            this.txtCaminhoArquivo.Size = new System.Drawing.Size(100, 20);
            this.txtCaminhoArquivo.TabIndex = 0;
            // 
            // btnExportarArq
            // 
            this.btnExportarArq.Location = new System.Drawing.Point(0, 0);
            this.btnExportarArq.Name = "btnExportarArq";
            this.btnExportarArq.Size = new System.Drawing.Size(75, 23);
            this.btnExportarArq.TabIndex = 0;
            // 
            // txtDataHora
            // 
            this.txtDataHora.BackColor = System.Drawing.SystemColors.Window;
            this.txtDataHora.Location = new System.Drawing.Point(156, 82);
            this.txtDataHora.Name = "txtDataHora";
            this.txtDataHora.ReadOnly = true;
            this.txtDataHora.Size = new System.Drawing.Size(123, 20);
            this.txtDataHora.TabIndex = 3;
            // 
            // lblDataHora
            // 
            this.lblDataHora.AutoSize = true;
            this.lblDataHora.Location = new System.Drawing.Point(151, 64);
            this.lblDataHora.Name = "lblDataHora";
            this.lblDataHora.Size = new System.Drawing.Size(58, 13);
            this.lblDataHora.TabIndex = 1;
            this.lblDataHora.Text = "Data/Hora";
            // 
            // OFDServHomolog
            // 
            this.OFDServHomolog.FileName = "nfeServidoresHom";
            this.OFDServHomolog.Filter = "|*.ini";
            // 
            // OFDServProd
            // 
            this.OFDServProd.FileName = "nfeServidoresProd";
            this.OFDServProd.Filter = "|*.ini";
            // 
            // OFDModeloRetrato
            // 
            this.OFDModeloRetrato.FileName = "retrato.rtm";
            this.OFDModeloRetrato.Filter = "|*.rtm";
            // 
            // OFDModeloPaisagem
            // 
            this.OFDModeloPaisagem.FileName = "paisagem.rtm";
            this.OFDModeloPaisagem.Filter = "|*.rtm";
            // 
            // OFDLogotipo
            // 
            this.OFDLogotipo.Filter = "|*.jpg|*.bmp|*.gif";
            // 
            // OFDCaminhoArquivo
            // 
            this.OFDCaminhoArquivo.Filter = "|*.pdf";
            // 
            // frmPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(817, 570);
            this.Controls.Add(this.pnlPrincipal);
            this.Controls.Add(this.pnlPublicitario);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmPrincipal";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Demo C#";
            this.pnlPublicitario.ResumeLayout(false);
            this.pnlPrincipal.ResumeLayout(false);
            this.pnlRodape.ResumeLayout(false);
            this.cmsOutrosRecursos.ResumeLayout(false);
            this.pnlModelosNotas.ResumeLayout(false);
            this.pnlModelosNotas.PerformLayout();
            this.gbModelosCOFINSST.ResumeLayout(false);
            this.gbModeloCOFINS.ResumeLayout(false);
            this.gbModeloPISST.ResumeLayout(false);
            this.gbModelosPIS.ResumeLayout(false);
            this.gbModelosISSQN.ResumeLayout(false);
            this.gbModelosII.ResumeLayout(false);
            this.gbModelosIPI.ResumeLayout(false);
            this.gbModeloICMS.ResumeLayout(false);
            this.bgOutrosDados.ResumeLayout(false);
            this.bgOutrosDados.PerformLayout();
            this.gbRamosEspecificos.ResumeLayout(false);
            this.gbRamosEspecificos.PerformLayout();
            this.pnlDanfe.ResumeLayout(false);
            this.pnlDanfe.PerformLayout();
            this.pnlConfiguracao.ResumeLayout(false);
            this.pnlConfiguracao.PerformLayout();
            this.tbConfiguracoes.ResumeLayout(false);
            this.tbPrincipal.ResumeLayout(false);
            this.tbPrincipal.PerformLayout();
            this.tbProxy.ResumeLayout(false);
            this.tbProxy.PerformLayout();
            this.tbDanfe.ResumeLayout(false);
            this.tbDanfe.PerformLayout();
            this.pnlInfoArquivo.ResumeLayout(false);
            this.pnlInfoArquivo.PerformLayout();
            this.tcInfo.ResumeLayout(false);
            this.tptextoInfo.ResumeLayout(false);
            this.tpBrowserInfo.ResumeLayout(false);
            this.pnlEmailConfig.ResumeLayout(false);
            this.pnlEmailConfig.PerformLayout();
            this.pnlEnviarNota.ResumeLayout(false);
            this.pnlEnviarNota.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.tbEnvio.ResumeLayout(false);
            this.tpTextoEnviar.ResumeLayout(false);
            this.tpBrowserEnviar.ResumeLayout(false);
            this.pnlConsultarRecibo.ResumeLayout(false);
            this.pnlConsultarRecibo.PerformLayout();
            this.tcConsultar.ResumeLayout(false);
            this.tptextoConsulta.ResumeLayout(false);
            this.tpBrowserConsulta.ResumeLayout(false);
            this.pnlAssinatura.ResumeLayout(false);
            this.pnlAssinatura.PerformLayout();
            this.tcXmlAssinado.ResumeLayout(false);
            this.tpTextoXmlAssinado.ResumeLayout(false);
            this.tpBrowserXmlAssinado.ResumeLayout(false);
            this.tcXmlNota.ResumeLayout(false);
            this.tpTextoXml.ResumeLayout(false);
            this.tpBrowserXml.ResumeLayout(false);
            this.pnlEnviarNFeDest.ResumeLayout(false);
            this.pnlEnviarNFeDest.PerformLayout();
            this.pnlCancelar.ResumeLayout(false);
            this.pnlCancelar.PerformLayout();
            this.tcCancelarNota.ResumeLayout(false);
            this.tpXMLCancelarNota.ResumeLayout(false);
            this.tpWebXMLCancelarNota.ResumeLayout(false);
            this.pnlCancelamentoEvento.ResumeLayout(false);
            this.pnlCancelamentoEvento.PerformLayout();
            this.tabControl5.ResumeLayout(false);
            this.tabPage7.ResumeLayout(false);
            this.tabPage7.PerformLayout();
            this.tabPage8.ResumeLayout(false);
            this.pnlEnviaCancDest.ResumeLayout(false);
            this.pnlEnviaCancDest.PerformLayout();
            this.tcEnviarCancDest.ResumeLayout(false);
            this.tpEnviarCancDest.ResumeLayout(false);
            this.tpWebEnviarCancDest.ResumeLayout(false);
            this.pnlEnviarDestinatarioFS.ResumeLayout(false);
            this.pnlEnviarDestinatarioFS.PerformLayout();
            this.pnlEmitente.ResumeLayout(false);
            this.pnlEmitente.PerformLayout();
            this.pnlDestinatario.ResumeLayout(false);
            this.pnlDestinatario.PerformLayout();
            this.pnlConsultarFS.ResumeLayout(false);
            this.pnlConsultarFS.PerformLayout();
            this.tcConsultarFS.ResumeLayout(false);
            this.tpXmlConsultaFS.ResumeLayout(false);
            this.tpwbConsultarFS.ResumeLayout(false);
            this.pnlEnviarServEstFS.ResumeLayout(false);
            this.pnlEnviarServEstFS.PerformLayout();
            this.tcEnviarServEstFs.ResumeLayout(false);
            this.tpXmlEnviarServEstFs.ResumeLayout(false);
            this.tpwbEnviarNotaServEstFS.ResumeLayout(false);
            this.pnlEnviarServEstadual.ResumeLayout(false);
            this.pnlEnviarServEstadual.PerformLayout();
            this.tcEnviarServEst.ResumeLayout(false);
            this.tpXmlEnviarServEst.ResumeLayout(false);
            this.tpwbXmlEnviarServEst.ResumeLayout(false);
            this.pnlAssinarNotaFs.ResumeLayout(false);
            this.pnlAssinarNotaFs.PerformLayout();
            this.tcXmlNotaFsAss.ResumeLayout(false);
            this.tpXmlNotaFSAss.ResumeLayout(false);
            this.tpWbXmlNotaFsAss.ResumeLayout(false);
            this.tcNotaFs.ResumeLayout(false);
            this.tpXmlNotaFS.ResumeLayout(false);
            this.tpwbXmlNotaFS.ResumeLayout(false);
            this.pnlComunicacao.ResumeLayout(false);
            this.pnlComunicacao.PerformLayout();
            this.tcStatusServico.ResumeLayout(false);
            this.tpTexto.ResumeLayout(false);
            this.tpBrowser.ResumeLayout(false);
            this.pnlImprimirFs.ResumeLayout(false);
            this.pnlImprimirFs.PerformLayout();
            this.pnlFluxoNormal.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.PBFluxoNormal)).EndInit();
            this.pnlFluxoFS.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.PBFluxoFS)).EndInit();
            this.pnlManifestacao.ResumeLayout(false);
            this.pnlManifestacao.PerformLayout();
            this.tabControl3.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.pnlInutilizar.ResumeLayout(false);
            this.pnlInutilizar.PerformLayout();
            this.tcInutilizar.ResumeLayout(false);
            this.tpTextoInutilizar.ResumeLayout(false);
            this.tpWebInutilizar.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlPublicitario;
        private System.Windows.Forms.Panel pnlPrincipal;
        private System.Windows.Forms.TreeView tvNFe;
        private System.Windows.Forms.Panel pnlConfiguracao;
        private System.Windows.Forms.Panel pnlRodape;
        private System.Windows.Forms.TabControl tbConfiguracoes;
        private System.Windows.Forms.TabPage tbPrincipal;
        private System.Windows.Forms.TabPage tbProxy;
        private System.Windows.Forms.TabPage tbDanfe;
        private System.Windows.Forms.Label lblVersao;
        private System.Windows.Forms.Label lblCnpj;
        private System.Windows.Forms.Label lblUF;
        private System.Windows.Forms.Label lblAmbiente;
        private System.Windows.Forms.Label lblTipoCertificado;
        private System.Windows.Forms.TextBox txtCnpj;
        private System.Windows.Forms.ComboBox cboVersao;
        private System.Windows.Forms.ComboBox cboUF;
        private System.Windows.Forms.ComboBox cboAmbiente;
        private System.Windows.Forms.ComboBox cboTipoCertificado;
        private System.Windows.Forms.Label lblNomeDoCertificado;
        private System.Windows.Forms.Button btnObterValidade;
        private System.Windows.Forms.ComboBox cboNomeCertificado;
        private System.Windows.Forms.Button btnDirTemplates;
        private System.Windows.Forms.Button btnDirLog;
        private System.Windows.Forms.Button btnServProd;
        private System.Windows.Forms.Button btnDirEsquema;
        private System.Windows.Forms.Button btnXmlDestinatario;
        private System.Windows.Forms.Button btnServHomolog;
        private System.Windows.Forms.Label lblDiretorioTemplates;
        private System.Windows.Forms.Label lblDiretorioEsquemas;
        private System.Windows.Forms.Label lblDiretorioLog;
        private System.Windows.Forms.Label lblXmlDestinatario;
        private System.Windows.Forms.Label lblServidoresProducao;
        private System.Windows.Forms.Label lblServidoresHomologacao;
        private System.Windows.Forms.TextBox txtDirEsquema;
        private System.Windows.Forms.TextBox txtDirTemplate;
        private System.Windows.Forms.TextBox txtDirLog;
        private System.Windows.Forms.TextBox txtServProd;
        private System.Windows.Forms.TextBox txtXmlDestinatario;
        private System.Windows.Forms.TextBox txtServHomolog;
        private System.Windows.Forms.Label lblMaxSizeLoteEnvio;
        private System.Windows.Forms.TextBox txtMaxSizeLoteEnvio;
        private System.Windows.Forms.CheckBox chkIgnCertInvalido;
        private System.Windows.Forms.CheckBox chkValidEsquema;
        private System.Windows.Forms.CheckBox chkAnexarDanfePdf;
        private System.Windows.Forms.Button btnLoadConfig;
        private System.Windows.Forms.Button btnAvancar;
        private System.Windows.Forms.Button btnVoltar;
        private System.Windows.Forms.Button btnSaveConfig;
        private System.Windows.Forms.TextBox txtSenha;
        private System.Windows.Forms.TextBox txtUsuario;
        private System.Windows.Forms.TextBox txtTimeOut;
        private System.Windows.Forms.TextBox txtProxy;
        private System.Windows.Forms.Label lblUsuario;
        private System.Windows.Forms.Label lblSenha;
        private System.Windows.Forms.Label lblTimeOut;
        private System.Windows.Forms.Label lblProxy;
        private System.Windows.Forms.Button btnLogoTipoEmitente;
        private System.Windows.Forms.Button btnModeloRetrato;
        private System.Windows.Forms.Button btnModeloPaisagem;
        private System.Windows.Forms.TextBox txtLogoTipoEmitente;
        private System.Windows.Forms.TextBox txtModeloRetrato;
        private System.Windows.Forms.TextBox txtModeloPaisagem;
        private System.Windows.Forms.TextBox txtLineDelimiter;
        private System.Windows.Forms.TextBox txtCopias;
        private System.Windows.Forms.TextBox txtFraseHomolog;
        private System.Windows.Forms.TextBox txtFraseContigencia;
        private System.Windows.Forms.Label lblModeloRetrato;
        private System.Windows.Forms.Label lblModeloPaisagem;
        private System.Windows.Forms.Label lblCopias;
        private System.Windows.Forms.Label lblLineDelimiter;
        private System.Windows.Forms.Label lblLogoTipoEmitente;
        private System.Windows.Forms.Label lblFraseHomologacao;
        private System.Windows.Forms.Label lblFraseContigencia;
        private System.Windows.Forms.Panel pnlComunicacao;
        private System.Windows.Forms.TabControl tcStatusServico;
        private System.Windows.Forms.TabPage tpTexto;
        private System.Windows.Forms.TabPage tpBrowser;
        private System.Windows.Forms.Button btnVerificarStatus;
        private System.Windows.Forms.TextBox txtMotivoStatus;
        private System.Windows.Forms.TextBox txtStatusServidor;
        private System.Windows.Forms.Label lblMotivo;
        private System.Windows.Forms.Label lblStatus;
        private System.Windows.Forms.Label lblVerificacaoStatus;
        private System.Windows.Forms.Label lblObrigatorio4;
        private System.Windows.Forms.Label lblObrigatorio3;
        private System.Windows.Forms.Label lblObrigatorio2;
        private System.Windows.Forms.Label lblObrigatorio7;
        private System.Windows.Forms.Label lblObrigatorio6;
        private System.Windows.Forms.Label lblObrigatorio8;
        private System.Windows.Forms.Label lblObrigatorio5;
        private System.Windows.Forms.Label lblObrigatorio1;
        private System.Windows.Forms.Label lblObrigatorio24;
        private System.Windows.Forms.LinkLabel llbServProd;
        private System.Windows.Forms.LinkLabel llbServHomolog;
        private System.Windows.Forms.LinkLabel llbTipoCertificado;
        private System.Windows.Forms.LinkLabel llbModeloPaisagem;
        private System.Windows.Forms.LinkLabel llbModeloRetrato;
        private System.Windows.Forms.Label lblObrigatorio25;
        private System.Windows.Forms.LinkLabel llbMotivo;
        private System.Windows.Forms.WebBrowser wbStatusServico;
        private System.Windows.Forms.Panel pnlEmailConfig;
        private System.Windows.Forms.CheckBox chkAutenticacao;
        private System.Windows.Forms.RichTextBox rtbEmailMensagem;
        private System.Windows.Forms.TextBox txtCC;
        private System.Windows.Forms.TextBox txtEmailUsuario;
        private System.Windows.Forms.TextBox txtAssunto;
        private System.Windows.Forms.TextBox txtCCo;
        private System.Windows.Forms.TextBox txtEmailSenha;
        private System.Windows.Forms.TextBox txtEmailDestinatario;
        private System.Windows.Forms.TextBox txtPorta;
        private System.Windows.Forms.TextBox txtEmailRemetente;
        private System.Windows.Forms.TextBox txtServidor;
        private System.Windows.Forms.Label lblMensagem;
        private System.Windows.Forms.Label lblEmailSenha;
        private System.Windows.Forms.Label lblEmailUsuario;
        private System.Windows.Forms.Label lblCCo;
        private System.Windows.Forms.Label lblAssunto;
        private System.Windows.Forms.Label lblEmailDestinatario;
        private System.Windows.Forms.Label lblCC;
        private System.Windows.Forms.Label lblPorta;
        private System.Windows.Forms.Label lblEmailRemetente;
        private System.Windows.Forms.Label lblServidor;
        private System.Windows.Forms.Panel pnlEmitente;
        private System.Windows.Forms.TextBox txtInscricaoMunicipalEmit;
        private System.Windows.Forms.TextBox txtTelefoneEmit;
        private System.Windows.Forms.TextBox txtCpfCnpjEmit;
        private System.Windows.Forms.TextBox txtCnaeEmit;
        private System.Windows.Forms.TextBox txtComplementoEmit;
        private System.Windows.Forms.TextBox txtIeEmit;
        private System.Windows.Forms.TextBox txtIeSubTribEmit;
        private System.Windows.Forms.TextBox txtCodPaisIbgeEmit;
        private System.Windows.Forms.TextBox txtNomeFantasiaEmit;
        private System.Windows.Forms.TextBox txtEnderecoEmit;
        private System.Windows.Forms.TextBox txtNumeroEmit;
        private System.Windows.Forms.TextBox txtRazaoSocialEmit;
        private System.Windows.Forms.Label lblNomeCidadeEmit;
        private System.Windows.Forms.Label lblcodCidIbgeEmit;
        private System.Windows.Forms.Label lblCepEmit;
        private System.Windows.Forms.Label lblCnaeFiscalEmit;
        private System.Windows.Forms.Label lblCodPaisIbgeEmit;
        private System.Windows.Forms.Label lblIeSubstitutoEmit;
        private System.Windows.Forms.Label lblBairroEmit;
        private System.Windows.Forms.Label lblUfEmit;
        private System.Windows.Forms.Label lblNomeDoPais;
        private System.Windows.Forms.Label lblComplementoEmit;
        private System.Windows.Forms.Label lblEnderecoEmit;
        private System.Windows.Forms.Label lblCodigoRegimeTrib;
        private System.Windows.Forms.Label lblNumeroEmit;
        private System.Windows.Forms.Label lblIeEmit;
        private System.Windows.Forms.Label lblNomeFanstasiaEmit;
        private System.Windows.Forms.Label lblInscricaoMunicipalEmit;
        private System.Windows.Forms.Label lblDadosDoEmitente;
        private System.Windows.Forms.Label lblTelefoneEmit;
        private System.Windows.Forms.Label lblCpfCnpjEmit;
        private System.Windows.Forms.Label lblRazaoSocialEmit;
        private System.Windows.Forms.ComboBox cboCodRegimeTrib;
        private System.Windows.Forms.ComboBox cboUfEmit;
        private System.Windows.Forms.TextBox txtCidadeEmit;
        private System.Windows.Forms.TextBox txtPaisEmit;
        private System.Windows.Forms.TextBox txtCodCidIbgeEmit;
        private System.Windows.Forms.TextBox txtCepEmit;
        private System.Windows.Forms.TextBox txtBairroEmit;
        private System.Windows.Forms.LinkLabel llbCodCidIbgeEmit;
        private System.Windows.Forms.LinkLabel llbCodPaisIbgeEmit;
        private System.Windows.Forms.Label lblObrigatorio23;
        private System.Windows.Forms.Label lblObrigatorio18;
        private System.Windows.Forms.Label lblObrigatorio17;
        private System.Windows.Forms.Label lblObrigatorio16;
        private System.Windows.Forms.Label lblObrigatorio15;
        private System.Windows.Forms.Label lblObrigatorio14;
        private System.Windows.Forms.Label lblObrigatorio13;
        private System.Windows.Forms.Label lblObrigatorio12;
        private System.Windows.Forms.Label lblObrigatorio11;
        private System.Windows.Forms.Label lblObrigatorio10;
        private System.Windows.Forms.Label lblObrigatorio9;
        private System.Windows.Forms.Panel pnlDestinatario;
        private System.Windows.Forms.Label lblObrigatorio22;
        private System.Windows.Forms.Label lblObrigatorio21;
        private System.Windows.Forms.Label lblObrigatorio20;
        private System.Windows.Forms.Label lblObrigatorio19;
        private System.Windows.Forms.ComboBox cboUfDest;
        private System.Windows.Forms.LinkLabel llbCodPaisIbgeDest;
        private System.Windows.Forms.LinkLabel llbCodCidIbgeDest;
        private System.Windows.Forms.TextBox txtCpfCnpjDest;
        private System.Windows.Forms.TextBox txtIsufDest;
        private System.Windows.Forms.TextBox txtNumeroDest;
        private System.Windows.Forms.TextBox txtTelefoneDest;
        private System.Windows.Forms.TextBox txtComplementoDest;
        private System.Windows.Forms.TextBox txtPaisDest;
        private System.Windows.Forms.TextBox txtRazaoSocialDest;
        private System.Windows.Forms.TextBox txtcodPaisIbgeDest;
        private System.Windows.Forms.TextBox txtEnderecoDest;
        private System.Windows.Forms.TextBox txtCepDest;
        private System.Windows.Forms.TextBox txtBairroDest;
        private System.Windows.Forms.TextBox txtEmailDest;
        private System.Windows.Forms.TextBox txtCidadeDest;
        private System.Windows.Forms.TextBox txtCodCidIbgeDest;
        private System.Windows.Forms.TextBox txtIeDest;
        private System.Windows.Forms.Label lblIsufDest;
        private System.Windows.Forms.Label lblTelefoneDest;
        private System.Windows.Forms.Label lblCepDest;
        private System.Windows.Forms.Label lblIeDest;
        private System.Windows.Forms.Label lblNomeCidadeDest;
        private System.Windows.Forms.Label lblUfDest;
        private System.Windows.Forms.Label lblNumeroDest;
        private System.Windows.Forms.Label lblComplementoDest;
        private System.Windows.Forms.Label lblEmailDest;
        private System.Windows.Forms.Label lblCpfCnpjDest;
        private System.Windows.Forms.Label lblCodCidIbgeDest;
        private System.Windows.Forms.Label lblCodPaisIbgeDest;
        private System.Windows.Forms.Label lblBairroDest;
        private System.Windows.Forms.Label lblNomePaisDest;
        private System.Windows.Forms.Label lblEnderecoDest;
        private System.Windows.Forms.Label lblRazaoSocalDest;
        private System.Windows.Forms.Label lblDadosDestinatario;
        private System.Windows.Forms.Label lblObrigatorio38;
        private System.Windows.Forms.Label lblObrigatorio37;
        private System.Windows.Forms.Label lblObrigatorio36;
        private System.Windows.Forms.Label lblObrigatorio35;
        private System.Windows.Forms.Label lblObrigatorio34;
        private System.Windows.Forms.Label lblObrigatorio33;
        private System.Windows.Forms.Label lblObrigatorio32;
        private System.Windows.Forms.Label lblObrigatorio31;
        private System.Windows.Forms.Label lblObrigatorio30;
        private System.Windows.Forms.Label lblObrigatorio29;
        private System.Windows.Forms.Label lblObrigatorio28;
        private System.Windows.Forms.Label lblObrigatorio27;
        private System.Windows.Forms.Label lblObrigatorio26;
        private System.Windows.Forms.Panel pnlModelosNotas;
        private System.Windows.Forms.GroupBox gbRamosEspecificos;
        private System.Windows.Forms.RadioButton rbMedicamento;
        private System.Windows.Forms.RadioButton rbCombustiveis;
        private System.Windows.Forms.RadioButton rbCanaAcucar;
        private System.Windows.Forms.RadioButton rbArmamento;
        private System.Windows.Forms.RadioButton rdVeiculosNovos;
        private System.Windows.Forms.RadioButton rbNota;
        private System.Windows.Forms.GroupBox bgOutrosDados;
        private System.Windows.Forms.CheckBox chkFatura;
        private System.Windows.Forms.CheckBox chkTransportadora;
        private System.Windows.Forms.CheckBox chkNotaConjugada;
        private System.Windows.Forms.CheckBox chkNotaReferenciada;
        private System.Windows.Forms.CheckBox chkExportacao;
        private System.Windows.Forms.LinkLabel llbFatura;
        private System.Windows.Forms.LinkLabel llbTransportadora;
        private System.Windows.Forms.LinkLabel llbNotaConjulgada;
        private System.Windows.Forms.LinkLabel llbNotaReferencia;
        private System.Windows.Forms.LinkLabel llbExportacao;
        private System.Windows.Forms.LinkLabel llbMedicamento;
        private System.Windows.Forms.LinkLabel llbCombustivel;
        private System.Windows.Forms.LinkLabel llbCanaAcucar;
        private System.Windows.Forms.LinkLabel llbArmamento;
        private System.Windows.Forms.LinkLabel llbVeiculosNovos;
        private System.Windows.Forms.LinkLabel llbNotaBasica;
        private System.Windows.Forms.Panel pnlAssinatura;
        private System.Windows.Forms.Label lblXmlAssinado;
        private System.Windows.Forms.Label lblXmlNota;
        private System.Windows.Forms.Button btnAssinarNota;
        private System.Windows.Forms.TabControl tcXmlAssinado;
        private System.Windows.Forms.TabPage tpTextoXmlAssinado;
        private System.Windows.Forms.TabPage tpBrowserXmlAssinado;
        private System.Windows.Forms.TabControl tcXmlNota;
        private System.Windows.Forms.TabPage tpTextoXml;
        private System.Windows.Forms.TabPage tpBrowserXml;
        private System.Windows.Forms.RichTextBox rtbXmlNotaAssinado;
        private System.Windows.Forms.WebBrowser wbXmlNotaAssinado;
        private System.Windows.Forms.RichTextBox rtbXmlNota;
        private System.Windows.Forms.WebBrowser wbXmlNota;
        private System.Windows.Forms.Panel pnlEnviarNota;
        private System.Windows.Forms.TextBox txtNumeroRecibo;
        private System.Windows.Forms.TextBox txtChaveNota;
        private System.Windows.Forms.Label lblNumeroRecibo;
        private System.Windows.Forms.Label lblChaveNota;
        private System.Windows.Forms.Button btnEnviarNota;
        private System.Windows.Forms.LinkLabel llbMotivoEnvio;
        private System.Windows.Forms.TextBox txtMotivoEnvio;
        private System.Windows.Forms.TextBox txtStatusEnvio;
        private System.Windows.Forms.Label lblMotivoEnviar;
        private System.Windows.Forms.Label lblStatusEnviar;
        private System.Windows.Forms.TabControl tbEnvio;
        private System.Windows.Forms.TabPage tpTextoEnviar;
        private System.Windows.Forms.TabPage tpBrowserEnviar;
        private System.Windows.Forms.RichTextBox rtbXMLenvio;
        private System.Windows.Forms.WebBrowser wbXMLenvio;
        private System.Windows.Forms.Panel pnlConsultarRecibo;
        private System.Windows.Forms.Label lblNumeroReciboCom;
        private System.Windows.Forms.Button btnConsultarChave;
        private System.Windows.Forms.TextBox txtChaveNotaCom;
        private System.Windows.Forms.Label lblChaveNotaCom;
        private System.Windows.Forms.Label lblOU;
        private System.Windows.Forms.LinkLabel llbConsultaRecibo;
        private System.Windows.Forms.Button btnConsultaRecibo;
        private System.Windows.Forms.TextBox txtNumeroReciboCom;
        private System.Windows.Forms.TextBox txtProtocoloAutorizacao;
        private System.Windows.Forms.Label lblProtocoloAutorizacao;
        private System.Windows.Forms.LinkLabel llbConsultarChave;
        private System.Windows.Forms.TabControl tcConsultar;
        private System.Windows.Forms.TabPage tptextoConsulta;
        private System.Windows.Forms.TabPage tpBrowserConsulta;
        private System.Windows.Forms.TextBox txtMotivoConsulta;
        private System.Windows.Forms.TextBox txtStatusConsulta;
        private System.Windows.Forms.Label lblMotivoConsulta;
        private System.Windows.Forms.Label lblStatusConsulta;
        private System.Windows.Forms.RichTextBox rtbXmlConsulta;
        private System.Windows.Forms.WebBrowser wbXMLconsulta;
        private System.Windows.Forms.LinkLabel llbMotivoConsulta;
        private System.Windows.Forms.WebBrowser wbPublicidade;
        private System.Windows.Forms.Panel pnlInfoArquivo;
        private System.Windows.Forms.Label lblCaminhoArquivo;
        private System.Windows.Forms.Label lblArquivo;
        private System.Windows.Forms.Button btnAbrirXmlDest;
        private System.Windows.Forms.TabControl tcInfo;
        private System.Windows.Forms.TabPage tptextoInfo;
        private System.Windows.Forms.RichTextBox rtbXMLinfo;
        private System.Windows.Forms.TabPage tpBrowserInfo;
        private System.Windows.Forms.WebBrowser wbXMLinfo;
        private System.Windows.Forms.Panel pnlEnviarNFeDest;
        private System.Windows.Forms.Button btnEnviar;
        private System.Windows.Forms.TextBox txtEnviarEmailDestinatario;
        private System.Windows.Forms.Label lblEnviarEmailDestinatario;
        private System.Windows.Forms.Panel pnlDanfe;
        private System.Windows.Forms.Button btnVisualizar;
        private System.Windows.Forms.Button btnImprimir;
        private System.Windows.Forms.Button btnExportar;
        private System.Windows.Forms.Button btnEditar;
        private System.Windows.Forms.RichTextBox rtbStatusServico;
        private System.Windows.Forms.LinkLabel llbNomeCertificado;
        private System.Windows.Forms.OpenFileDialog OFDServHomolog;
        private System.Windows.Forms.OpenFileDialog OFDServProd;
        private System.Windows.Forms.FolderBrowserDialog FBDXmlDestinatario;
        private System.Windows.Forms.FolderBrowserDialog FBDDiretorioLog;
        private System.Windows.Forms.FolderBrowserDialog FBDDiretorioEsquema;
        private System.Windows.Forms.FolderBrowserDialog FBDDiretorioTemplate;
        private System.Windows.Forms.OpenFileDialog OFDModeloRetrato;
        private System.Windows.Forms.OpenFileDialog OFDModeloPaisagem;
        private System.Windows.Forms.Panel pnlInutilizar;
        private System.Windows.Forms.LinkLabel llbMotivoInutilizar;
        private System.Windows.Forms.Button btnInutilizar;
        private System.Windows.Forms.TextBox txtInuModelo;
        private System.Windows.Forms.TextBox txtInuNfeIni;
        private System.Windows.Forms.TextBox txtInuStatus;
        private System.Windows.Forms.TextBox txtInuAno;
        private System.Windows.Forms.TextBox txtInuMotivo;
        private System.Windows.Forms.TextBox txtInuSerie;
        private System.Windows.Forms.TextBox txtInuNfeFinal;
        private System.Windows.Forms.TextBox txtInuJustificativa;
        private System.Windows.Forms.Label LblInuAno;
        private System.Windows.Forms.Label lblInuSerie;
        private System.Windows.Forms.Label lblInuModelo;
        private System.Windows.Forms.Label lblInuA;
        private System.Windows.Forms.Label lblInuNFeInicial;
        private System.Windows.Forms.Label lblInuNFeFinal;
        private System.Windows.Forms.Label lblInuJustificativa;
        private System.Windows.Forms.Label lbl;
        private System.Windows.Forms.Label lblStatusInutilizar;
        private System.Windows.Forms.TabControl tcInutilizar;
        private System.Windows.Forms.TabPage tpTextoInutilizar;
        private System.Windows.Forms.TabPage tpWebInutilizar;
        private System.Windows.Forms.RichTextBox rtbXMLInutilizar;
        private System.Windows.Forms.WebBrowser wbXMLInutilizar;
        private System.Windows.Forms.Panel pnlCancelar;
        private System.Windows.Forms.Label lblCancMotivo;
        private System.Windows.Forms.Label lblCancStatus;
        private System.Windows.Forms.Label lblCancJustificativa;
        private System.Windows.Forms.Label lblCancProtocoloAut;
        private System.Windows.Forms.Label lblCancChaveNota;
        private System.Windows.Forms.TextBox txtCancProtocoloAut;
        private System.Windows.Forms.TextBox txtCancChaveNota;
        private System.Windows.Forms.TextBox txtCancJustificativa;
        private System.Windows.Forms.TextBox txtCancStatus;
        private System.Windows.Forms.TextBox txtCancMotivo;
        private System.Windows.Forms.Button btnCancelarNota;
        private System.Windows.Forms.TabControl tcCancelarNota;
        private System.Windows.Forms.TabPage tpXMLCancelarNota;
        private System.Windows.Forms.TabPage tpWebXMLCancelarNota;
        private System.Windows.Forms.RichTextBox rtbCancelarNota;
        private System.Windows.Forms.WebBrowser wbXMLCancelamentoNota;
        private System.Windows.Forms.LinkLabel llbMotivoCancelamentoNota;
        private System.Windows.Forms.Panel pnlEnviaCancDest;
        private System.Windows.Forms.Button BtnCandDest;
        private System.Windows.Forms.Button btnEnviarCancDest;
        private System.Windows.Forms.TextBox txtEmailCancDest;
        private System.Windows.Forms.Label lblCancDestEmail;
        private System.Windows.Forms.Label lblCaminhoCancDet;
        private System.Windows.Forms.Label lblEnviaCancArquivo;
        private System.Windows.Forms.TabControl tcEnviarCancDest;
        private System.Windows.Forms.TabPage tpEnviarCancDest;
        private System.Windows.Forms.RichTextBox rtbXMLEnviarCancDest;
        private System.Windows.Forms.TabPage tpWebEnviarCancDest;
        private System.Windows.Forms.WebBrowser wbXMLEnviarCancDest;
        private System.Windows.Forms.CheckedListBox clbAnexos;
        private System.Windows.Forms.Label lblAnexos;
        private System.Windows.Forms.TextBox txtAnexar;
        private System.Windows.Forms.Label lblAnexar;
        private System.Windows.Forms.Button btnAnexar;
        private System.Windows.Forms.OpenFileDialog OFDAnexos;
        private System.Windows.Forms.OpenFileDialog OFDLogotipo;
        private System.Windows.Forms.GroupBox gbModeloICMS;
        private System.Windows.Forms.ComboBox cboICMS;
        private System.Windows.Forms.GroupBox gbModelosCOFINSST;
        private System.Windows.Forms.ComboBox cboCOFINSST;
        private System.Windows.Forms.GroupBox gbModeloCOFINS;
        private System.Windows.Forms.ComboBox cboCOFINS;
        private System.Windows.Forms.GroupBox gbModeloPISST;
        private System.Windows.Forms.ComboBox cboPISST;
        private System.Windows.Forms.GroupBox gbModelosPIS;
        private System.Windows.Forms.ComboBox cboPIS;
        private System.Windows.Forms.GroupBox gbModelosISSQN;
        private System.Windows.Forms.ComboBox cboISSQN;
        private System.Windows.Forms.GroupBox gbModelosII;
        private System.Windows.Forms.ComboBox cboII;
        private System.Windows.Forms.GroupBox gbModelosIPI;
        private System.Windows.Forms.ComboBox cboIPI;
        private System.Windows.Forms.Button btnExportarDanfeCaminho;
        private System.Windows.Forms.TextBox txtExportarDanfe;
        private System.Windows.Forms.Panel pnlFluxoNormal;
        private System.Windows.Forms.PictureBox PBFluxoNormal;
        private System.Windows.Forms.Panel pnlFluxoFS;
        private System.Windows.Forms.PictureBox PBFluxoFS;
        //private System.Windows.Forms.TabPage tpDpecNotaAss;
        //private System.Windows.Forms.TabPage tpWebDpecNotaAss;
        //private System.Windows.Forms.TabPage tpDpecNota;
        //private System.Windows.Forms.TabPage tpWebDpecNota;
        //private System.Windows.Forms.RichTextBox rtbDpecXmlNotaAss;
        //private System.Windows.Forms.WebBrowser wbDpecXmlAss;
        //private System.Windows.Forms.RichTextBox rtbDpecXmlNota;
        //private System.Windows.Forms.WebBrowser wbDpecXmlNota;
        //private System.Windows.Forms.Panel pnlMontarXmlDpec;
        //private System.Windows.Forms.TabControl tcMontarXmlDpec;
        //private System.Windows.Forms.TabPage tbMontarXmlDpec;
        //private System.Windows.Forms.TabPage tbWbMontarXmlDpec;
        private System.Windows.Forms.Button btnMontarXml;
        //private System.Windows.Forms.RichTextBox rtbMontarXmlDpec;
        //private System.Windows.Forms.WebBrowser wbMontarXmlDpec;
        //private System.Windows.Forms.TabControl tcXMLDpec;
        //private System.Windows.Forms.TabPage tpXmlDpec;
        //private System.Windows.Forms.TabPage tbWbXmlDpec;
        //private System.Windows.Forms.Label lblXmlDpec;
        //private System.Windows.Forms.TabControl tcXmlDpecAss;
        //private System.Windows.Forms.TabPage tpXmlDpecAss;
        //private System.Windows.Forms.TabPage tbwbXmlDpecAss;
        //private System.Windows.Forms.Button btnAssinarDpec;
        //private System.Windows.Forms.Label lblXmlDpecAss;
        //private System.Windows.Forms.RichTextBox rtbXmlDpecAss;
        //private System.Windows.Forms.WebBrowser wbXmlDpecAss;
        //private System.Windows.Forms.RichTextBox rtbXmlDpec;
        //private System.Windows.Forms.WebBrowser wbXmlDpec;
        //private System.Windows.Forms.TabControl tcEnviarDpec;
        //private System.Windows.Forms.TabPage tpEnviarDpec;
        //private System.Windows.Forms.TabPage tpWbEnviarDpec;
        //private System.Windows.Forms.Button btnEnviarDpec;
        //private System.Windows.Forms.Label lblMotivoEnviarDpec;
        //private System.Windows.Forms.Label lblStatusEnviarDpec;
        //private System.Windows.Forms.TextBox txtMotivoEnviarDpec;
        //private System.Windows.Forms.TextBox txtStatusEnviarDpec;
        //private System.Windows.Forms.RichTextBox rtbXmlEnviarDpec;
        //private System.Windows.Forms.WebBrowser wbXmlEnviarDpec;
        //private System.Windows.Forms.Panel pnlImprimirDpec;
        private System.Windows.Forms.Label lblDataHora;
        //private System.Windows.Forms.Label lblProtocoloDpec;
        //private System.Windows.Forms.TextBox txtProtocoloDpec;
        private System.Windows.Forms.TextBox txtDataHora;
        //private System.Windows.Forms.Button btnExportarDpec;
        //private System.Windows.Forms.Button btnImprimirDpec;
        //private System.Windows.Forms.Button btnVisualizarDpec;
        //private System.Windows.Forms.Button btnEditarDpec;
        private System.Windows.Forms.Button btnExportarArq;
        private System.Windows.Forms.TextBox txtCaminhoArquivo;
        private System.Windows.Forms.Panel pnlEnviarServEstadual;
        //private System.Windows.Forms.Label lblNumeroReciboDpec;
        //private System.Windows.Forms.Label lblChavedaNotaDpec;
        private System.Windows.Forms.Button btnEnviarServEstad;
        private System.Windows.Forms.TabControl tcEnviarServEst;
        private System.Windows.Forms.TabPage tpXmlEnviarServEst;
        private System.Windows.Forms.TabPage tpwbXmlEnviarServEst;
        //private System.Windows.Forms.TextBox txtNumeroNotaDpec;
        //private System.Windows.Forms.TextBox txtChaveNotaDpec;
        private System.Windows.Forms.TextBox txtMotivoEnviarServEst;
        private System.Windows.Forms.TextBox txtStatusEnviarServEst;
        private System.Windows.Forms.Label lblMotivoEnviarServEst;
        private System.Windows.Forms.Label lblStatusEnviarServEst;
        private System.Windows.Forms.RichTextBox rtbXmlEnviarServEst;
        private System.Windows.Forms.WebBrowser wbXmlEnviarServEst;
        //private System.Windows.Forms.Panel pnlConsultarDpec;
        //private System.Windows.Forms.Label lblMotivoConsultaDpec;
        //private System.Windows.Forms.Label lblStatusConsultaDpec;
        //private System.Windows.Forms.Label lblProtocoloAutDpec;
        //private System.Windows.Forms.Label lblOuDpec;
        //private System.Windows.Forms.Label lblChaveNotaDpec;
        //private System.Windows.Forms.Label lblnumeroRecDpec;
        //private System.Windows.Forms.TextBox txtStatusConsultaDpec;
        //private System.Windows.Forms.TextBox txtMotivoConsultaDpec;
        //private System.Windows.Forms.TextBox txtChaveNotaDpecCon;
        //private System.Windows.Forms.TextBox txtProtAutoDpec;
        //private System.Windows.Forms.TextBox txtNumRecDpec;
        //private System.Windows.Forms.Button btnConsultarRecDpec;
        //private System.Windows.Forms.Button btnConsChaveDpec;
        //private System.Windows.Forms.TabControl tcConsultarDpec;
        //private System.Windows.Forms.TabPage tpXmlConsultaDpec;
        //private System.Windows.Forms.TabPage tpWbXmlConsultaDpec;
        //private System.Windows.Forms.RichTextBox rtbXmlConsultarDpec;
        //private System.Windows.Forms.WebBrowser wbConsultarDpec;
        //private System.Windows.Forms.Label lblAnexosDpec;
        //private System.Windows.Forms.Label lblAnexarDpec;
        //private System.Windows.Forms.Label lblEmailDestDpec;
        //private System.Windows.Forms.CheckedListBox clbAnexosDpec;
        //private System.Windows.Forms.TextBox txtAnexosDpec;
        //private System.Windows.Forms.TextBox txtEmailDestDpec;
        //private System.Windows.Forms.Button btnAnexarDpec;
        //private System.Windows.Forms.Button btnEnviarEmailDpec;
        private System.Windows.Forms.Panel pnlAssinarNotaFs;
        private System.Windows.Forms.ComboBox cboTipoEmissFS;
        private System.Windows.Forms.Label lblTipoEmissaoFS;
        private System.Windows.Forms.Label lblXmlAssinadoFs;
        private System.Windows.Forms.Label lblXmlNotaFs;
        private System.Windows.Forms.Button btnAssinarFs;
        private System.Windows.Forms.TabControl tcXmlNotaFsAss;
        private System.Windows.Forms.TabPage tpXmlNotaFSAss;
        private System.Windows.Forms.TabPage tpWbXmlNotaFsAss;
        private System.Windows.Forms.TabControl tcNotaFs;
        private System.Windows.Forms.TabPage tpXmlNotaFS;
        private System.Windows.Forms.TabPage tpwbXmlNotaFS;
        private System.Windows.Forms.RichTextBox rtbXmlNotaFsAss;
        private System.Windows.Forms.WebBrowser wbXmlNotaFsAss;
        private System.Windows.Forms.RichTextBox rtbXMLNotaFs;
        private System.Windows.Forms.WebBrowser wbXmlNotaFS;
        private System.Windows.Forms.Panel pnlImprimirFs;
        private System.Windows.Forms.Button btnExportarArqFS;
        private System.Windows.Forms.Button btnVisualizarFS;
        private System.Windows.Forms.Button btnExportarFS;
        private System.Windows.Forms.Button btnImprimirFS;
        private System.Windows.Forms.Button btnEditarFS;
        private System.Windows.Forms.TextBox txtCaminhoArqFS;
        private System.Windows.Forms.Panel pnlEnviarServEstFS;
        private System.Windows.Forms.TabControl tcEnviarServEstFs;
        private System.Windows.Forms.TabPage tpXmlEnviarServEstFs;
        private System.Windows.Forms.TabPage tpwbEnviarNotaServEstFS;
        private System.Windows.Forms.Label lblMotivoEnviarServEstFS;
        private System.Windows.Forms.Label lblStatusEnviarServEstFS;
        private System.Windows.Forms.Label lblNumeroRecFS;
        private System.Windows.Forms.Label lblChaveNotaFS;
        private System.Windows.Forms.TextBox txtMotivoEnviServEstFS;
        private System.Windows.Forms.TextBox txtStatusEnvServEstFS;
        private System.Windows.Forms.TextBox txtNumReciboFS;
        private System.Windows.Forms.TextBox txtChaveFS;
        private System.Windows.Forms.Button btnEnviarServEstFS;
        private System.Windows.Forms.RichTextBox rtbEnviarXmlServEstFS;
        private System.Windows.Forms.WebBrowser wbXmlEnviarServEstFS;
        private System.Windows.Forms.Panel pnlConsultarFS;
        private System.Windows.Forms.Label lblStatusConsultarFS;
        private System.Windows.Forms.Label lblMotivoConsultarFS;
        private System.Windows.Forms.Label lblProtocoloAutFS;
        private System.Windows.Forms.Label lblOuFS;
        private System.Windows.Forms.Label lblChaveNotaFSCons;
        private System.Windows.Forms.Label lblNumeroRecFSCons;
        private System.Windows.Forms.TextBox txtProtAutoFS;
        private System.Windows.Forms.TextBox txtChaveNotaFS;
        private System.Windows.Forms.TextBox txtNumRecFS;
        private System.Windows.Forms.Button btnConsultaRecFS;
        private System.Windows.Forms.TextBox txtMotivoConsultarFS;
        private System.Windows.Forms.TextBox txtStatusConsultarFs;
        private System.Windows.Forms.TabControl tcConsultarFS;
        private System.Windows.Forms.TabPage tpXmlConsultaFS;
        private System.Windows.Forms.RichTextBox rtbXmlConsultarFS;
        private System.Windows.Forms.TabPage tpwbConsultarFS;
        private System.Windows.Forms.WebBrowser wbXMLConsultaFS;
        private System.Windows.Forms.Button btnConsultarChaveFS;
        private System.Windows.Forms.Panel pnlEnviarDestinatarioFS;
        private System.Windows.Forms.Label lblAnexarFS;
        private System.Windows.Forms.Label lblAnexosFS;
        private System.Windows.Forms.Label lblEmailDestFS;
        private System.Windows.Forms.Button btnAnexarFS;
        private System.Windows.Forms.Button btnEnviarEmailFS;
        private System.Windows.Forms.CheckedListBox clbAnexosFS;
        private System.Windows.Forms.TextBox txtAnexarFS;
        private System.Windows.Forms.TextBox txtEmailDestFS;
        //private System.Windows.Forms.OpenFileDialog OFDAnexosDPEC;
        private System.Windows.Forms.OpenFileDialog OFDAnexosFS;
        private System.Windows.Forms.Button btnPreverDanfe;
        private System.Windows.Forms.ComboBox cboImpressora;
        //private System.Windows.Forms.ComboBox cboImpressoraDpec;
        private System.Windows.Forms.ComboBox cboImpressoraFS;
        private System.Windows.Forms.OpenFileDialog OFDCaminhoArquivo;
        private System.Windows.Forms.Label lblConfGerais;
        //private System.Windows.Forms.Label lblImprimirDPEC;
        private System.Windows.Forms.Label lblImprimirFS;
        private System.Windows.Forms.Label lblemail;
        private System.Windows.Forms.Label lblDanfe;
        private System.Windows.Forms.Label lblComunicacao;
        private System.Windows.Forms.Label lblInutilizarNumeracao;
        private System.Windows.Forms.Label lblModeloNota;
        private System.Windows.Forms.Label lblEnviarNota;
        private System.Windows.Forms.Label lblAssinarNFe;
        private System.Windows.Forms.Label lblConsultar;
        private System.Windows.Forms.Label lblInfo;
        private System.Windows.Forms.Label lblENviarXml;
        private System.Windows.Forms.Label lblCancelarNfe;
        private System.Windows.Forms.Label lblXmlCancelado;
        //private System.Windows.Forms.Label lblMontarXmlDpec;
        //private System.Windows.Forms.Label lblassinarDpec;
        //private System.Windows.Forms.Label lbldpecsefaz;
        private System.Windows.Forms.Label lblenviarservest;
        //private System.Windows.Forms.Label lblConsultaXmlDpec;
        //private System.Windows.Forms.Label lblenviarDpecDest;
        private System.Windows.Forms.Label lblAssinarFS;
        private System.Windows.Forms.Label lblEnviarServEstadual;
        private System.Windows.Forms.Label lblConsultarFS;
        private System.Windows.Forms.Label lblEnvXMLFSDet;
        //private System.Windows.Forms.LinkLabel llbMontarXmlDpec;
        //private System.Windows.Forms.LinkLabel llbAssinarDpec;
        //private System.Windows.Forms.LinkLabel llbServDpecMot;
        //private System.Windows.Forms.LinkLabel llbServDpec;
        //private System.Windows.Forms.LinkLabel llbServEstadualDpec;
        //private System.Windows.Forms.LinkLabel llbconsDpecRec;
        //private System.Windows.Forms.LinkLabel llbConsDpecChave;
        //private System.Windows.Forms.LinkLabel llbConsDpecMot;
        private System.Windows.Forms.LinkLabel llbServEstFSMot;
        private System.Windows.Forms.LinkLabel llbConsFsMot;
        private System.Windows.Forms.LinkLabel llbConsFSChave;
        private System.Windows.Forms.LinkLabel llbConsFSRec;
        private System.Windows.Forms.CheckBox chkNotaFS;
        //private System.Windows.Forms.CheckBox chkNotaDpec;
        private System.Windows.Forms.CheckBox chkNota;
        private System.Windows.Forms.TextBox txtPinCode;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtEmailTimeOut;
        private System.Windows.Forms.Label lblEmailTimeOut;
        private System.Windows.Forms.Button btnModeloRTM;
        private System.Windows.Forms.TextBox txtModeloRTM;
        private System.Windows.Forms.Panel pnlManifestacao;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtMotivoManEvento;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtStatusManEvento;
        private System.Windows.Forms.TabControl tabControl3;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TextBox txtTextoManEvento;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Button btnEnviarManifestacao;
        private System.Windows.Forms.Button btnDataHoraManEvento;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtJustificativaManEvento;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cboTipoEventoMan;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cboFusoManEvento;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.MaskedTextBox txtDataHoraManEvento;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtCNPJDestEvento;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtChaveManEvento;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Panel pnlCancelamentoEvento;
        private System.Windows.Forms.Label label28;
        private System.Windows.Forms.TextBox txtMotivoCancEvento;
        private System.Windows.Forms.Label label29;
        private System.Windows.Forms.TextBox txtStatusCancEvento;
        private System.Windows.Forms.TabControl tabControl5;
        private System.Windows.Forms.TabPage tabPage7;
        private System.Windows.Forms.TextBox txtTextoCancEvento;
        private System.Windows.Forms.TabPage tabPage8;
        private System.Windows.Forms.Button btnCancEvento;
        private System.Windows.Forms.Button btnDataHoraCancEvento;
        private System.Windows.Forms.Label label30;
        private System.Windows.Forms.TextBox txtJustificativaCancEvento;
        private System.Windows.Forms.Label label32;
        private System.Windows.Forms.ComboBox cboFusoCancEvento;
        private System.Windows.Forms.Label label33;
        private System.Windows.Forms.MaskedTextBox txtDataHoraCancEvento;
        private System.Windows.Forms.Label label34;
        private System.Windows.Forms.TextBox txtProtocoloCancEvento;
        private System.Windows.Forms.Label label35;
        private System.Windows.Forms.TextBox txtChaveCancEvento;
        private System.Windows.Forms.Label label36;
        private System.Windows.Forms.WebBrowser wbCancEvento;
        private System.Windows.Forms.WebBrowser wbManEvento;
        private System.Windows.Forms.TextBox edtAuthXML;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton rbEnvSinc;
        private System.Windows.Forms.RadioButton rbEnvAssinc;
        private System.Windows.Forms.CheckBox chkPartilha;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.RadioButton rbEnvCompac;
        private System.Windows.Forms.RadioButton rbEnvDescompac;
        private System.Windows.Forms.Button btnOutrosRecursos;
        private System.Windows.Forms.ContextMenuStrip cmsOutrosRecursos;
        private System.Windows.Forms.ToolStripMenuItem mniImportacaoXmlDataset;
        private System.Windows.Forms.ToolStripMenuItem mniConsultaDistribuçãoDFe;
        private System.Windows.Forms.ToolStripSeparator toolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem mniFluxoNormal;
        private System.Windows.Forms.ToolStripMenuItem mniFluxoFS;
        private System.Windows.Forms.ToolStripSeparator toolStripMenuItem2;
        private System.Windows.Forms.ToolStripMenuItem mniCancelamentoNFe;
        private System.Windows.Forms.ToolStripMenuItem mniManifestacaoNFe;
    }
}