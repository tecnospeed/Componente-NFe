/*
 * Demo C#
 * Utilitário de exemplo para uso do componente TecnoSpeed NFe 
 * para integração com o sistema de Notas Fiscais Eletrônicas da Receita Federal,
 * em conjunto com as Secretarias de Fazenda estaduais.
 * 
 * @bold(Site oficial)
 * @br
 * http://www.tecnospeed.com.br
 * 
 * @author(TecnoSpeed - Consultoria em TI (http://www.tecnospeed.com.br))
 * @created(Julho/2010)
 * Last Update: Agosto/2018
 */

using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using NFeX;
using NFeDataSetX;
using Ini;
using System.Xml;
using System.IO;

namespace WindowsFormsApplication1
{
    public partial class frmPrincipal : Form
    {
        string appPath = Path.GetDirectoryName(Application.ExecutablePath) + "\\";
        public int cont = -1;//Contador que controla a navegação das telas
        private spdNFeX _spdNFeX = new spdNFeX(); //instancia do componente
        private spdNFeDataSetX _spdNFeDatasetX = new spdNFeDataSetX();//instancia do dataSet do componente
        
        XmlDocument xDoc = new XmlDocument();
        private RichTextBox fNFe = new RichTextBox();
        
        private RichTextBox FNFeFS = new RichTextBox();
        Random random = new Random();
        private int liberaForms = 0;
        private string tipoEmissao;
        private string fCnpjSoftwareHouse = "";

        //variaveis para acessos aos forms de impostos
        //icms
        frmICMS00 icms00 = null;
        frmICMS10 icms10 = null;
        frmICMS20 icms20 = null;
        frmICMS30 icms30 = null;
        frmICMS40 icms40 = null;
        frmICMS51 icms51 = null;
        frmICMS60 icms60 = null;
        frmICMS70 icms70 = null;
        frmICMS90 icms90 = null;
        frmICMSPartilha icmsPart = null;
        frmICMSST icmsST = null;
        frmICMSSN101 icmsSN101 = null;
        frmICMSSN102 icmsSN102 = null;
        frmICMSSN201 icmsSN201 = null;
        frmICMSSN202 icmsSN202 = null;
        frmICMSSN500 icmsSN500 = null;
        frmICMSSN900 icmsSN900 = null;

        //ipi
        frmIPITributado ipiTrib = null;
        frmIPINTributado ipiNTrib = null;

        //ii
        frmII ii = null;

        //ISSQN
        frmISSQN issqn = null;

        //PIS
        frmPISAliquota pisAliq = null;
        frmPISQuantidade pisQuant = null;
        frmPISNTrib pisNTrib = null;
        frmPISOtros pisOutros = null;

        //PISSIT
        frmPISST pissit = null;

        //COFINS
        frmCOFINSAliq cofinsAliq = null;
        frmCOFINSQuant cofinsQuant = null;
        frmCOFINSNTrib cofisNTrib = null;
        frmCOFINSOutros cofinsOutros = null;

        //COFINSST
        frmCOFINSST cofinsST = null;

        const int versao50a = 0;
        const int versao60 = 1;

        public frmPrincipal()
        {           
            init();            
        }

        private void init()
        {
            InitializeComponent();
            
            // Método ConfigurarSoftwareHouse
            // Método responsável por realizar a validação de licença com a Tecnospeed. 
            // Chamada  : _spdNFeX.ConfigurarSoftwareHouse(aCnpjSH : String, aTokenSH : String)
            // aCnpjSH  : deve ser informado o CNPJ da Software House cliente Tecnospeed
            // aTokenSH : deve ser informado o Token que a Software House possui junto a Tecnospeed
            fCnpjSoftwareHouse = "12345678901234";
            _spdNFeX.ConfigurarSoftwareHouse(fCnpjSoftwareHouse, ""); 

            PreencherComboCertificado();//Método que utiliza o componente para preencher o comboBox com os certificados instalados
            LoadToolTips(); //Método que coloca toolTips (hints) nas labels mais importantes
            _spdNFeX.LoadConfig(""); //Método do componente que lê o arquivo NFeConfig.ini

            PreencheCampos(); //preenche os campos das telas "configuração" e "emailconfig" utilizando o componente
            LoadIniEmitDest(); // preenche os campos das telas Emitente e destinatario utilizando o arquivo nfeEmitDest.ini
            // preencherCamposDeExemplo(); //Método que preenche os dados só para demonstração
            Navegacao(cont); //inicia a navegação na primeira tela
        }
        private void LoadToolTips()
        {
            System.Windows.Forms.ToolTip Tool = new System.Windows.Forms.ToolTip();
            Tool.SetToolTip(lblNomeDoCertificado, "Selecionar o certificado sigital referênte a empresa");
            Tool.SetToolTip(lblServidoresHomologacao, "Selecionar o arquivo .ini que contém o endereço dos servidores de homologação");
            Tool.SetToolTip(lblServidoresProducao, "Selecionar o arquivo .ini que contém o endereço dos servidores de produção");
            Tool.SetToolTip(lblXmlDestinatario, "Selecionar o diretório que armazenará os XMLs dos destinatarios");
            Tool.SetToolTip(lblDiretorioLog, "Selecionar o diretório que armazenará os arquivos de log");
            Tool.SetToolTip(lblDiretorioEsquemas, "Selecionar o diretório que armazenará os arquivos de esquema");
            Tool.SetToolTip(lblDiretorioTemplates, "Selecionar o diretório que armazenará os templates");
            Tool.SetToolTip(lblMaxSizeLoteEnvio, "Numero maximo de notas enviadas por lote");
            Tool.SetToolTip(chkValidEsquema, "Verifica se os dadps são validos e estão no formato esperado");
            Tool.SetToolTip(lblFraseContigencia, "Frase que aparecerá nas notas de contigência");
            Tool.SetToolTip(lblFraseHomologacao, "Frase que aparecerá nas notas de homologação");
            Tool.SetToolTip(lblCopias, "Numero de copias");
            Tool.SetToolTip(lblModeloRetrato, "Selecionar o arquivo RTM do modelo Retrato");
            Tool.SetToolTip(lblModeloPaisagem, "Selecionar o arquivo RTM do modelo Paisagem");
            Tool.SetToolTip(lblLogoTipoEmitente, "Seleciona uma imagem para ser o logotipo da nota/danfe");
            Tool.SetToolTip(lblProxy, "Numero do proxy");
            Tool.SetToolTip(lblUsuario, "Usuario do Proxy");
            Tool.SetToolTip(lblSenha, "Senha do proxy");
            Tool.SetToolTip(lblTimeOut, "Tempo que a seção ira durar");
            Tool.SetToolTip(lblcodCidIbgeEmit, "Código da cidade fornecido pelo IBGE");
            Tool.SetToolTip(lblCodCidIbgeDest, "Código da cidade fornecido pelo IBGE");
            Tool.SetToolTip(lblCodPaisIbgeDest, "Código do país fornecido pelo IBGE");
            Tool.SetToolTip(lblCodPaisIbgeEmit, "Código do país fornecido pelo IBGE");
            Tool.SetToolTip(lblCnaeFiscalEmit, "Classificação Nacional de Atividades Econômicas");
            Tool.SetToolTip(lblIsufDest, "Inscrição na SUFRAMA");
            Tool.SetToolTip(lblEmailDest, "email do destinatário");
            Tool.SetToolTip(lblInuJustificativa, "Motivo pela inutilização da nota");
            Tool.SetToolTip(lblInuNFeInicial, "Número da primeira nota da faixa a ser inutilizada");
            Tool.SetToolTip(lblInuNFeFinal, "Número da umtila nota da faixa ser inutilizada");
        }

        //prenche os campos das telas "inutilizar" e "cancelar" para poupar tempo testando
        public void preencherCamposDeExemplo() 
        {
            txtInuAno.Text = "09";
            txtInuModelo.Text = "55";
            txtInuSerie.Text = "0";
            txtInuNfeIni.Text = "1";
            txtInuNfeFinal.Text = "10";
            txtInuJustificativa.Text = "Exemplo de Inutilizacao";
            txtCancJustificativa.Text = "Exempo de Cancelamento";
        }

        private string DataHoraEvento()
        {
            string dataHora;
            dataHora = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss");
            return dataHora;
        }

        //Faz a movimentação dos panels das telas
        public void Navegacao(int indice)
        {
            switch (indice)
            {
                case -1: //Imagem de fluxo normal
                    if (tvNFe.SelectedNode != null)
                    {
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                    }
                    tvNFe.SelectedNode = tvNFe.Nodes.Find("Nfe", true)[0];
                    tvNFe.SelectedNode.BackColor = Color.Orange;
                    //-------------------------------------------

                    //------Muda o painel visivel----------------
                    pnlFluxoNormal.Visible = true;
                    pnlConfiguracao.Visible = false;
                    btnVoltar.Enabled = false;
                    //-------------------------------------------
                    break;

                case 0://Configuração
                    //------Movimenta a treeView ----------------
                    tvNFe.SelectedNode.BackColor = Color.Transparent;
                    tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo1", true)[0];
                    tvNFe.SelectedNode.BackColor = Color.Orange;
                    //-------------------------------------------

                    //------Muda o painel visivel----------------
                    pnlEmailConfig.Visible = false;
                    pnlConfiguracao.Visible = true;
                    pnlFluxoNormal.Visible = false;
                    //-------------------------------------------
                    btnVoltar.Enabled = true;
                    break;


                case 1://Email config
                    LimpaCampos(); //Limpa alguns campos da tela seguinte;
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else if (!ValidaCnpj(txtCnpj.Text))
                    {
                        MessageBox.Show("CNPJ invalido");
                        txtCnpj.Focus();
                        cont--;
                    }
                    else
                    {
                        SalvarIniConfig(); //Salva as alterações feitas na tela anterior
                        _spdNFeX.LoadConfig(""); //Método do componente que lê o arquivo NFeConfig.ini
                        
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo1", true)[0].Nodes.Find("Email", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlConfiguracao.Visible = false;
                        pnlComunicacao.Visible = false;
                        pnlEmailConfig.Visible = true;
                        //-------------------------------------------

                        //------Limpa os XMLs da tela seguinte caso ele retorne para essa tela
                        if (!rtbStatusServico.Text.Equals(""))
                        {
                            rtbStatusServico.Text = "";
                            wbStatusServico.Navigate("about:blank");
                        }
                    }
                    break;


                case 2://comunicação                   
                    LimpaCampos(); //limpa alguns campos da tela seguinte
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        SalvarIniConfig(); //Salva as alterações feitas na tela anterior
                        _spdNFeX.LoadConfig(""); //Método do componente que lê o arquivo NFeConfig.ini

                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo2", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlInutilizar.Visible = false;
                        pnlEmailConfig.Visible = false;
                        pnlComunicacao.Visible = true;
                        //-------------------------------------------

                        //------Limpa os XMLs da tela seguinte caso ele retorne para essa tela
                        if (!rtbXMLInutilizar.Text.Equals(""))
                        {
                            rtbXMLInutilizar.Text = "";
                            wbXMLInutilizar.Navigate("about:blank");
                        }
                    }
                    break;

                case 3: //inutilizar NFe
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo3", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlEmitente.Visible = false;
                        pnlComunicacao.Visible = false;
                        pnlInutilizar.Visible = true;
                        //-------------------------------------------
                    }

                    break;

                case 4://emitente
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo4", true)[0].Nodes.Find("Empresa", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlDestinatario.Visible = false;
                        pnlInutilizar.Visible = false;
                        pnlEmitente.Visible = true;
                        //-------------------------------------------
                    }
                    break;


                case 5://destinatario
                    if (cboAmbiente.SelectedIndex == 0)
                        lblObrigatorio38.Visible = false;
                    else
                        lblObrigatorio38.Visible = true;   
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else if (!ValidaCnpj(txtCpfCnpjEmit.Text))
                    {
                        MessageBox.Show("CNPJ invalido");
                        txtCnpj.Focus();
                        cont--;
                    } 
                    else
                    {
                        SalvarIniEmit(); //salva as alterações feitas no emitente no nfeEmitDest.ini
                        LoadIniEmitDest(); //carrega os dados do nfeEmitDest.ini
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo4", true)[0].Nodes.Find("Destinatario", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlModelosNotas.Visible = false;
                        pnlEmitente.Visible = false;
                        pnlDestinatario.Visible = true;
                        //-------------------------------------------
                    }
                    break;

                case 6://modelo notas                    
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else if (!ValidaCnpj(txtCpfCnpjDest.Text))
                    {
                        MessageBox.Show("CNPJ invalido");
                        txtCnpj.Focus();
                    }
                    else
                    {
                        SalvarIniDest(); //salva as alterações feitas no destinatario no nfeEmitDest.ini
                        LoadIniEmitDest(); //carrega os dados do nfeEmitDest.ini
                        if (!chkNotaConjugada.Checked)
                        {
                            SetNotaBasica();
                        }                        
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo4", true)[0].Nodes.Find("Modelo", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlAssinatura.Visible = false;
                        pnlDestinatario.Visible = false;
                        pnlModelosNotas.Visible = true;
                        //-------------------------------------------

                        //------Limpa os XMLs da tela seguinte caso ele retorne para essa tela
                        if (!rtbXmlNotaAssinado.Text.Equals(""))
                        {
                            rtbXmlNotaAssinado.Text = "";
                            wbXmlNotaAssinado.Navigate("about:blank");
                        }
                        //-------------------------------------------
                    }
                    break;


                case 7://assinatura
                    LimpaCampos(); //limpa alguns campos da tela seguinte
                    rtbXmlNotaAssinado.Text = "";
                    if (rtbXmlNotaAssinado.Text == "")
                    {
                        btnAvancar.Enabled = false;
                    }
                    try
                    {
                        if (ValidaDados())
                        {
                            MessageBox.Show("Preencha todos os campos obrigatórios");
                            cont--;
                        }
                        else
                        {
                            tipoEmissao = "1";
                            GerarXmlDataSet();
                            rtbXmlNota.Text = fNFe.Text;
                            wbXmlNota.Navigate(PreencherWebBrowser(rtbXmlNota.Text, "Nota"));

                            //------Movimenta a treeView ----------------
                            tvNFe.SelectedNode.BackColor = Color.Transparent;
                            tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo5", true)[0];
                            tvNFe.SelectedNode.BackColor = Color.Orange;
                            //-------------------------------------------

                            //------Muda o painel visivel----------------
                            pnlEnviarNota.Visible = false;
                            pnlModelosNotas.Visible = false;
                            pnlAssinatura.Visible = true;
                            //-------------------------------------------

                            //------Limpa os XMLs da tela seguinte caso ele retorne para essa tela
                            if (!rtbXMLenvio.Text.Equals(""))
                            {
                                rtbXMLenvio.Text = "";
                                wbXMLenvio.Navigate("about:blank");
                            }
                            //-------------------------------------------
                        }
                    }catch(Exception ex){
                        btnAvancar.Enabled = true;
                        MessageBox.Show(ex.ToString());
                    }
                    break;


                case 8:// envia nota
                    LimpaCampos(); //limpa alguns campos da tela seguinte
                    rtbXMLenvio.Text = "";
                    txtNumeroRecibo.Text = "";
                    btnAvancar.Enabled = false;
                    
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo6", true)[0].Nodes.Find("Enviar", true)[0]; ;
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlConsultarRecibo.Visible = false;
                        pnlAssinatura.Visible = false;
                        pnlEnviarNota.Visible = true;
                        //-------------------------------------------

                        //------Limpa os XMLs da tela seguinte caso ele retorne para essa tela
                        if (!rtbXmlConsulta.Text.Equals(""))
                        {
                            rtbXmlConsulta.Text = "";
                            wbXMLconsulta.Navigate("about:blank");
                        }
                        //-------------------------------------------
                    }
                    break;


                case 9://consulta recibo
                    if (rtbXmlConsulta.Text == "" || txtProtocoloAutorizacao.Text == "")
                    {
                        btnAvancar.Enabled = false;
                    }
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo6", true)[0].Nodes.Find("Consultar", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlInfoArquivo.Visible = false;
                        pnlEnviarNota.Visible = false;
                        pnlConsultarRecibo.Visible = true;
                        //-------------------------------------------

                        //------Limpa os XMLs da tela seguinte caso ele retorne
                        if (!rtbXMLinfo.Text.Equals(""))
                        {
                            rtbXMLinfo.Text = "";
                            wbXMLinfo.Navigate("about:blank");
                        }
                        //-------------------------------------------
                    }
                    break;


                case 10://info arquivo
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        lblCaminhoArquivo.Text = txtChaveNota.Text + "-nfe.xml";
                        rtbXMLinfo.Text = ReadFile(txtChaveNota.Text, "-nfe");
                        wbXMLinfo.Navigate(PreencherWebBrowser(rtbXMLinfo.Text, "NotaInfo"));

                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo7", true)[0].Nodes.Find("Informacoes", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlEnviarNFeDest.Visible = false;
                        pnlConsultarRecibo.Visible = false;
                        pnlInfoArquivo.Visible = true;
                        pnlCancelamentoEvento.Visible = false;
                        //-------------------------------------------
                    }
                    break;


                case 11://enviar arquivo destinatario
                    LimpaCampos(); //limpa alguns campos da tela seguinte
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        chkNota.Text = txtChaveNota.Text + "-nfe.xml";
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo7", true)[0].Nodes.Find("EnviarDestinatario", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlCancelar.Visible = false;
                        pnlInfoArquivo.Visible = false;
                        pnlEnviarNFeDest.Visible = true;
                        //-------------------------------------------

                        //------Limpa os XMLs da tela seguinte caso ele retorne
                        if (!rtbCancelarNota.Text.Equals(""))
                        {
                            rtbCancelarNota.Text = "";
                            wbXMLCancelamentoNota.Navigate("about:blank");
                        }
                        //-------------------------------------------
                    }
                    break;

                case 12: //Cancelamento NFe Evento
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        txtChaveCancEvento.Text = txtChaveNota.Text;
                        txtProtocoloCancEvento.Text = txtProtocoloAutorizacao.Text;
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo8", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlEnviarNFeDest.Visible = false;
                        pnlCancelamentoEvento.Visible = true;
                        pnlDanfe.Visible = false;
                        //-------------------------------------------                        
                    }
                    break;

                case 13://Danfe
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        PreencherCboImpressora(cboImpressora);
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo9", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlEnviaCancDest.Visible = false;
                        pnlDanfe.Visible = true;
                        pnlCancelamentoEvento.Visible = false;
                        pnlManifestacao.Visible = false;
                        //-------------------------------------------                        
                    }
                    break;

                case 14://Manifestação
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("Passo10", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlDanfe.Visible = false;
                        pnlManifestacao.Visible = true;
                        pnlFluxoFS.Visible = false;
                        //-------------------------------------------                        
                    }
                    break;

                case 15: //Imagem FS
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("FSFSA", true)[0];
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlManifestacao.Visible = false;
                        pnlAssinarNotaFs.Visible = false;
                        pnlFluxoFS.Visible = true;
                        //-------------------------------------------

                        //------Limpa os XMLs da tela seguinte caso ele retorne para essa tela
                        if (!rtbXmlNotaFsAss.Text.Equals(""))
                        {
                            rtbXmlNotaFsAss.Text = "";
                            wbXmlNotaFsAss.Navigate("about:blank");
                        }
                        //-------------------------------------------
                    }
                    break;

                case 16: //Assinar Nota Gerada - FS
                    if (rtbXmlNotaFsAss.Text == "")
                    {
                        btnAvancar.Enabled = false;
                    }
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        cboTipoEmissFS.SelectedIndex = 0;
                        GerarXmlDataSet();
                        wbXmlNotaFS.Navigate(PreencherWebBrowser(rtbXMLNotaFs.Text, "NotaFS"));
                        
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("FSFSA", true)[0].Nodes.Find("fsPasso1", true)[0]; ;
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlFluxoFS.Visible = false;
                        pnlImprimirFs.Visible = false;
                        pnlAssinarNotaFs.Visible = true;
                        //-------------------------------------------
                    }
                    break;

                case 17: //imprimir FS
                    LimpaCampos(); //limpa alguns campos da tela seguinte
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        PreencherCboImpressora(cboImpressoraFS);
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("FSFSA", true)[0].Nodes.Find("fsPasso2", true)[0]; ;
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlAssinarNotaFs.Visible = false;
                        pnlEnviarServEstFS.Visible = false;
                        pnlImprimirFs.Visible = true;
                        //-------------------------------------------

                        //------Limpa os XMLs da tela seguinte caso ele retorne para essa tela
                        if (!rtbEnviarXmlServEstFS.Text.Equals(""))
                        {
                            rtbEnviarXmlServEstFS.Text = "";
                            wbXmlEnviarServEstFS.Navigate("about:blank");
                        }
                        //-------------------------------------------
                    }
                    break;

                case 18: //Enviar FS ao Servidor Estadual
                    LimpaCampos(); //limpa alguns campos da tela seguinte
                    if (rtbEnviarXmlServEstFS.Text == "")
                    {
                        btnAvancar.Enabled = false;
                    }
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("FSFSA", true)[0].Nodes.Find("fsPasso3", true)[0]; ;
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlImprimirFs.Visible = false;
                        pnlConsultarFS.Visible = false;
                        pnlEnviarServEstFS.Visible = true;
                        //-------------------------------------------

                        //------Limpa os XMLs da tela seguinte caso ele retorne para essa tela
                        if (!rtbXmlConsultarFS.Text.Equals(""))
                        {
                            rtbXmlConsultarFS.Text = "";
                            wbXMLConsultaFS.Navigate("about:blank");
                        }
                        //-------------------------------------------
                    }
                    break;

                case 19: //Consultar FS
                    if (rtbXmlConsultarFS.Text == "")
                    {
                        btnAvancar.Enabled = false;
                    }
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("FSFSA", true)[0].Nodes.Find("fsPasso4", true)[0]; ;
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlEnviarServEstFS.Visible = false;
                        pnlEnviarDestinatarioFS.Visible = false;
                        pnlConsultarFS.Visible = true;
                        //-------------------------------------------
                        btnAvancar.Text = "Avançar";
                    }
                    break;

                case 20: //Enviar XML FS ao Destinatário
                    if (ValidaDados())
                    {
                        MessageBox.Show("Preencha todos os campos obrigatórios");
                        cont--;
                    }
                    else
                    {
                        chkNotaFS.Text = txtChaveNotaFS.Text + "-nfe.xml";
                        //------Movimenta a treeView ----------------
                        tvNFe.SelectedNode.BackColor = Color.Transparent;
                        tvNFe.SelectedNode = tvNFe.Nodes.Find("FSFSA", true)[0].Nodes.Find("fsPasso5", true)[0]; ;
                        tvNFe.SelectedNode.BackColor = Color.Orange;
                        //-------------------------------------------

                        //------Muda o painel visivel----------------
                        pnlConsultarFS.Visible = false;
                        pnlEnviarDestinatarioFS.Visible = true;
                        //-------------------------------------------
                    }
                    btnAvancar.Text = "Finalizar";
                    break;

                default: //finalizador
                    Application.Exit();
                    break;
            }
        }

        //verifica se os campos que devem ser preenchidos não estão vazios
        private Boolean ValidaDados()
        {
            switch (cont)
            {
                case 1://valida campos da configuração
                    if ((cboTipoCertificado.Text == "") || (txtCnpj.Text == "") || (cboUF.Text == "") ||
                        (cboAmbiente.Text == "") || (cboNomeCertificado.Text == "") || (txtServHomolog.Text == "") ||
                        (txtServProd.Text == "") || (txtXmlDestinatario.Text == "") || (txtModeloPaisagem.Text == "") ||
                        (txtModeloRetrato.Text == ""))
                        return true;
                    else
                        return false;

                //------------------------------------------------------------------

                case 5: //valida campos do emitente
                    if ((txtRazaoSocialEmit.Text == "") || (txtCpfCnpjEmit.Text == "") || (txtNomeFantasiaEmit.Text == "") ||
                        (txtEnderecoEmit.Text == "") || (txtNumeroEmit.Text == "") || (txtBairroEmit.Text == "") ||
                        (txtCepEmit.Text == "") || (txtCidadeEmit.Text == "") || (txtCodCidIbgeEmit.Text == "") ||
                        (txtPaisEmit.Text == "") || (txtCodPaisIbgeEmit.Text == "") || (cboUfEmit.Text == "") ||
                        (txtTelefoneEmit.Text == "") || (txtIeEmit.Text == "") || (cboCodRegimeTrib.Text == ""))
                        return true;
                    else
                        return false;

                //-------------------------------------------------------------------

                case 6:
                    if (cboAmbiente.SelectedIndex == 0)
                        if ((txtRazaoSocialDest.Text == "") || (txtCpfCnpjDest.Text == "") || (txtEnderecoDest.Text == "") ||
                            (txtNumeroDest.Text == "") || (txtBairroDest.Text == "") || (txtCepDest.Text == "") ||
                            (txtCidadeDest.Text == "") || (txtCodCidIbgeDest.Text == "") || (txtPaisDest.Text == "") ||
                            (txtcodPaisIbgeDest.Text == "") || (cboUfDest.Text == "") || (txtTelefoneDest.Text == ""))
                            return true;
                        else
                            return false;
                    else
                        if ((txtRazaoSocialDest.Text == "") || (txtCpfCnpjDest.Text == "") || (txtEnderecoDest.Text == "") ||
                            (txtNumeroDest.Text == "") || (txtBairroDest.Text == "") || (txtCepDest.Text == "") ||
                            (txtCidadeDest.Text == "") || (txtCodCidIbgeDest.Text == "") || (txtPaisDest.Text == "") ||
                            (txtcodPaisIbgeDest.Text == "") || (cboUfDest.Text == "") || (txtTelefoneDest.Text == "") ||
                            (txtIeDest.Text == ""))
                            return true;
                        else
                            return false;

                //-------------------------------------------------------------------

                default://faz passar os painels que nao necessitam de validações
                    return false;
            }
        }

        //botão avançar
        private void btnAvancar_Click(object sender, EventArgs e)
        {
            cont++;
            Navegacao(cont);
        }

        //botão voltar
        private void btnVoltar_Click(object sender, EventArgs e)
        {
            btnAvancar.Enabled = true;
            cont--;
            Navegacao(cont);
        }

        //Método com o link base das paginas web
        private void AbreLink(string url)
        {
            System.Diagnostics.Process.Start("http://64.251.25.116:8080/manual/wiki/" + url);
        }

        //-----------------------linkLabes -----------------------------------
        private void llbTipoCertificado_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("TipoCertificado");
        }

        private void llbNomeCertificado_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("NomeCertificado");
        }

        private void llbServHomolog_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("ServidoresHomo");
        }

        private void llbServProd_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("ServidoresProd");
        }

        private void llbModeloRetrato_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("ModeloRetrato");
        }

        private void llbModeloPaisagem_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("ModeloPaisagem");
        }

        private void llbVeiculosNovos_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("VeiculosNovos");
        }

        private void llbArmamento_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("Armamento");
        }

        private void llbCanaAcucar_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("CanaAcucar");
        }

        private void llbCombustivel_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("Combustiveis");
        }

        private void llbMedicamento_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("Medicamento");
        }

        private void llbExportacao_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("NFExportacao");
        }

        private void llbNotaReferencia_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("NFReferenciada");
        }

        private void llbNotaConjulgada_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("NFConjugada");
        }

        private void llbTransportadora_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("NFTransportadora");
        }

        private void llbFatura_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("NFFaturaDuplicatas");
        }

        private void LinkCodIBGECidade(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("CodIBGENomeCidade");
        }

        private void LinkCodIBGEPais(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("CodIBGENomePais");
        }

        private void llbConsultaRecibo_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("ConsultarRecibo");
        }

        private void llbConsultarChave_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("ConsultarChave");
        }

        private void LinkMotivo(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("TagcStatRet");
        }

        private void llbNotaBasica_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("ModelNFBasica");
        }

        private void llbConsFSRec_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("ConsultarRecibo");
        }

        private void llbConsFsMot_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("TagcStatRet");
        }

        private void llbConsFSChave_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("ConsultarChave");
        }
        
        private void llbServEstFSMot_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            AbreLink("TagcStatRet");
        }
        //--------fim dos linkLabels-----------------------------------


        //---------botoes de seleção de arquivos e diretórios------ 
        private void btnServHomolog_Click(object sender, EventArgs e)
        {            
            if (OFDServHomolog.ShowDialog() == DialogResult.OK)
            {
                txtServHomolog.Text = OFDServHomolog.FileName;
            }
        }

        private void btnXmlDestinatario_Click(object sender, EventArgs e)
        {
            if (FBDXmlDestinatario.ShowDialog() == DialogResult.OK)
            {
                txtXmlDestinatario.Text = FBDXmlDestinatario.SelectedPath + "\\";
            }
        }

        private void btnServProd_Click(object sender, EventArgs e)
        {
            if (OFDServProd.ShowDialog() == DialogResult.OK)
            {
                txtServProd.Text = OFDServProd.FileName;
            }
        }

        private void btnDirLog_Click(object sender, EventArgs e)
        {
            if (FBDDiretorioLog.ShowDialog() == DialogResult.OK)
            {
                txtDirLog.Text = FBDDiretorioLog.SelectedPath;
            }
        }

        private void btnDirEsquema_Click(object sender, EventArgs e)
        {
            if (FBDDiretorioEsquema.ShowDialog() == DialogResult.OK)
            {
                txtDirEsquema.Text = FBDDiretorioEsquema.SelectedPath;
            }
        }

        private void btnDirTemplates_Click(object sender, EventArgs e)
        {
            if (FBDDiretorioTemplate.ShowDialog() == DialogResult.OK)
            {
                txtDirTemplate.Text = FBDDiretorioTemplate.SelectedPath;
            }
        }


        private void btnModeloRetrato_Click(object sender, EventArgs e)
        {
            if (OFDModeloRetrato.ShowDialog() == DialogResult.OK)
            {
                txtModeloRetrato.Text = OFDModeloRetrato.FileName;
            }
        }

        private void btnModeloPaisagem_Click(object sender, EventArgs e)
        {
            if (OFDModeloPaisagem.ShowDialog() == DialogResult.OK)
            {
                txtModeloPaisagem.Text = OFDModeloPaisagem.FileName;
            }
        }

        private void btnLogoTipoEmitente_Click(object sender, EventArgs e)
        {
            if (OFDLogotipo.ShowDialog() == DialogResult.OK)
            {
                txtLogoTipoEmitente.Text = OFDLogotipo.FileName;
            }
        }
        //---fim do botoes de seleção------------------------------------------------------


        //--------preeche o combo de certificados com os certificados registrado no computador    
        private void PreencherComboCertificado()
        {
            string[] vetor;
			string _certificado = "";
			
			_certificado = _spdNFeX.ListarCertificados("|");            
			if (_certificado != "" & _certificado != null){
                vetor  = _certificado.Split('|');
				cboNomeCertificado.Items.Clear();
				for (int i = 0; i < vetor.Length; i++)
				{
					cboNomeCertificado.Items.Add(vetor[i]);
				}				
            }   
        }
        //------------fim do preenchimento de certificados-------------------------------


        //---------preemchendo campos pelo componente ---------------------
        public void PreencheCampos()
        {
            txtDirEsquema.Text = _spdNFeX.DiretorioEsquemas;
            txtCnpj.Text = _spdNFeX.CNPJ;
            cboUF.SelectedItem = _spdNFeX.UF;
            cboVersao.SelectedItem = _spdNFeX.VersaoManual;
            cboNomeCertificado.Text = _spdNFeX.NomeCertificado;
            txtServHomolog.Text = _spdNFeX.ArquivoServidoresHom;
            txtServProd.Text = _spdNFeX.ArquivoServidoresProd;
            txtXmlDestinatario.Text = _spdNFeX.DiretorioXmlDestinatario;
            txtDirLog.Text = _spdNFeX.DiretorioLog;
            txtDirTemplate.Text = _spdNFeX.DiretorioTemplates;
            txtMaxSizeLoteEnvio.Text = _spdNFeX.MaxSizeLoteEnvio.ToString();
            chkValidEsquema.Checked = _spdNFeX.ValidarEsquemaAntesEnvio;
            chkAnexarDanfePdf.Checked = _spdNFeX.AnexarDanfePDF;

            txtProxy.Text = _spdNFeX.Proxy;
            txtUsuario.Text = _spdNFeX.Usuario;
            txtSenha.Text = _spdNFeX.Senha;
            txtTimeOut.Text = _spdNFeX.TimeOut.ToString();

            txtFraseContigencia.Text = _spdNFeX.FraseContingencia;
            txtFraseHomolog.Text = _spdNFeX.FraseHomologacao;
            txtModeloPaisagem.Text = _spdNFeX.ModeloPaisagem;
            txtModeloRetrato.Text = _spdNFeX.ModeloRetrato;
            txtLineDelimiter.Text = _spdNFeX.LineDelimiter;

            //campo ambiente
            switch (_spdNFeX.Ambiente.ToString())
            {
                case "akHomologacao":
                    cboAmbiente.SelectedItem = "Homologação";
                    break;
                case "akProducao":
                    cboAmbiente.SelectedItem = "Produção";
                    break;
            }

            //campo tipoCertificado
            switch (_spdNFeX.TipoCertificado.ToString())
            {
                case "ckActiveDiretory":
                    cboTipoCertificado.SelectedItem = "ActiveDirectory";
                    break;
                case "ckFile":
                    cboTipoCertificado.SelectedItem = "File";
                    break;
                case "ckLocalMachine":
                    cboTipoCertificado.SelectedItem = "LocalMachine";
                    break;
                case "ckMemory":
                    cboTipoCertificado.SelectedItem = "Memory";
                    break;
                case "ckSmartCard":
                    cboTipoCertificado.SelectedItem = "SmartCard";
                    break;
            }

            txtServidor.Text = _spdNFeX.EmailServidor;
            txtPorta.Text = _spdNFeX.EmailPorta.ToString();
            chkAutenticacao.Checked = _spdNFeX.EmailAutenticacao;
            txtEmailRemetente.Text = _spdNFeX.EmailRemetente;
            txtEmailDestinatario.Text = _spdNFeX.EmailDestinatario;
            txtAssunto.Text = _spdNFeX.EmailAssunto;
            rtbEmailMensagem.Text = _spdNFeX.EmailMensagem;
            txtEmailUsuario.Text = _spdNFeX.EmailUsuario;
            txtEmailSenha.Text = _spdNFeX.EmailSenha;
            txtCC.Text = _spdNFeX.EmailCC;
            txtCCo.Text = _spdNFeX.EmailCCo;
            txtEmailTimeOut.Text = _spdNFeX.EmailTimeOut.ToString();
            txtMaxSizeLoteEnvio.Text = _spdNFeX.MaxSizeLoteEnvio.ToString();
            chkIgnCertInvalido.Checked = _spdNFeX.IgnoreInvalidCertificates;
            txtCopias.Text = _spdNFeX.QtdeCopias.ToString();
            txtLogoTipoEmitente.Text = _spdNFeX.LogotipoEmitente;
        }

        //Preenche os campos com o arquivo .ini
        private void btnLoadConfig_Click(object sender, EventArgs e)
        {
            _spdNFeX.LoadConfig("");
            PreencheCampos();
        }
        //-----------fim do preenchimento -------------------------------------

        //----------verificanto status do servidor-----------------------------
        private void btnVerificarStatus_Click(object sender, EventArgs e)
        {
            try
            {
                btnVerificarStatus.Enabled = false;
                rtbStatusServico.Text = _spdNFeX.StatusDoServico(); // Método do componente que verifica a conexão com o sefaz

                xDoc.LoadXml(rtbStatusServico.Text);
                wbStatusServico.Navigate(PreencherWebBrowser(rtbStatusServico.Text, "status"));

                txtStatusServidor.Text = xDoc.GetElementsByTagName("cStat").Item(0).InnerText;
                txtMotivoStatus.Text = removeCaractereEspecial(xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText);
                btnVerificarStatus.Enabled = true;
            }
            catch (Exception ex) {
                btnVerificarStatus.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }
        //----------fim da verificação-----------------------------------------

        //---preenchedo os campos do Emitente e do Destinatario por arquivo .ini----
        private void LoadIniEmitDest()
        {
            try
            {
                //vai buscar o diretorio onde está o arquivo .ini
                //remove as primeiras 7 letras
                //exemplo: file://c:/appconfig.ini --> c:/appconfig.ini
                string filelocation = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase).Replace("\\", "//").Remove(0, 7);
                IniFile ini = new IniFile(filelocation + "//nfeEmitDest.ini");

                //preenchendo emitente
                txtRazaoSocialEmit.Text = ini.IniReadValue("Emitente", "RazaoSocial");
                txtCpfCnpjEmit.Text = ini.IniReadValue("Emitente", "CPFCNPJ");
                txtEnderecoEmit.Text = ini.IniReadValue("Emitente", "Endereço");
                txtNumeroEmit.Text = ini.IniReadValue("Emitente", "Numero");
                txtComplementoEmit.Text = ini.IniReadValue("Emitente", "Complemento");
                txtBairroEmit.Text = ini.IniReadValue("Emitente", "Bairro");
                txtCepEmit.Text = ini.IniReadValue("Emitente", "CEP");
                txtCidadeEmit.Text = ini.IniReadValue("Emitente", "Cidade");
                txtCodCidIbgeEmit.Text = ini.IniReadValue("Emitente", "CodigoIBGECidade");
                cboUfEmit.SelectedItem = ini.IniReadValue("Emitente", "UF");
                txtPaisEmit.Text = ini.IniReadValue("Emitente", "Pais");
                txtCodPaisIbgeEmit.Text = ini.IniReadValue("Emitente", "CodigoIBGEPais");
                txtTelefoneEmit.Text = ini.IniReadValue("Emitente", "Telefone");
                txtIeEmit.Text = ini.IniReadValue("Emitente", "IE");
                txtIeSubTribEmit.Text = ini.IniReadValue("Emitente", "IESubstitutoTributario");
                txtInscricaoMunicipalEmit.Text = ini.IniReadValue("Emitente", "InscricaoMunicipal");
                txtCnaeEmit.Text = ini.IniReadValue("Emitente", "CNAEFiscal");
                txtNomeFantasiaEmit.Text = ini.IniReadValue("Emitente", "NomeFantasia");
                switch (ini.IniReadValue("Emitente", "CodigoRegimeTributario"))
                {
                    case "1":
                        cboCodRegimeTrib.SelectedItem = "Simples Nacional";
                        break;
                    case "2":
                        cboCodRegimeTrib.SelectedItem = "Simples Nacional - excesso de sublimite de receita bruta";
                        break;
                    case "3":
                        cboCodRegimeTrib.SelectedItem = "Regime Normal";
                        break;
                }

                //preenchendo Destinatario
                txtRazaoSocialDest.Text = ini.IniReadValue("Destinatario", "RazaoSocial");
                txtCpfCnpjDest.Text = ini.IniReadValue("Destinatario", "CPFCNPJ");
                txtEnderecoDest.Text = ini.IniReadValue("Destinatario", "Endereço");
                txtNumeroDest.Text = ini.IniReadValue("Destinatario", "Numero");
                txtComplementoDest.Text = ini.IniReadValue("Destinatario", "Complento");
                txtBairroDest.Text = ini.IniReadValue("Destinatario", "Bairro");
                txtCepDest.Text = ini.IniReadValue("Destinatario", "CEP");
                txtCidadeDest.Text = ini.IniReadValue("Destinatario", "Cidade");
                txtCodCidIbgeDest.Text = ini.IniReadValue("Destinatario", "CodigoIBGECidade");
                cboUfDest.SelectedItem = ini.IniReadValue("Destinatario", "UF");
                txtPaisDest.Text = ini.IniReadValue("Destinatario", "Pais");
                txtcodPaisIbgeDest.Text = ini.IniReadValue("Destinatario", "CodigoIBGEPais");
                txtTelefoneDest.Text = ini.IniReadValue("Destinatario", "Telefone");
                txtIeDest.Text = ini.IniReadValue("Destinatario", "IE");
                txtIsufDest.Text = ini.IniReadValue("Destinatario", "ISUF");
                txtEmailDest.Text = ini.IniReadValue("Destinatario", "Email");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
        //---------------------fim da utilização do arquivo .ini ------------------


        //Verifica a data de validade do certificado
        private void btnObterValidade_Click(object sender, EventArgs e)
        {
            _spdNFeX.NomeCertificado = cboNomeCertificado.Text;
            //Método do componente que faz a verificação da data de validade do certificado
            MessageBox.Show("Certificado válido até " + _spdNFeX.GetVencimentoCertificado());
        }

        //gerando XML Com dataSet
        private void GerarXmlDataSet()
        {
            switch (cboVersao.SelectedIndex)
            {
                case versao50a:
                    _spdNFeDatasetX.VersaoEsquema = "pl_008h";
                    _spdNFeDatasetX.DicionarioXML = "C:\\Program Files\\TecnoSpeed\\NFe\\arquivos\\Templates\\vm50a\\Conversor\\NFeDataSets.xml";
                    break;
                case versao60:
                    _spdNFeDatasetX.VersaoEsquema = "pl_009";
                    _spdNFeDatasetX.DicionarioXML = "C:\\Program Files\\TecnoSpeed\\NFe\\arquivos\\Templates\\vm60\\Conversor\\NFeDataSets.xml";
                    break;
            }

            _spdNFeDatasetX.Incluir();

            DadosDoNFe();
            DadosDoEmitente();
            DadosDoDestinatario();
            DadosPagamento();
            DadosAutorizadosBaixarXML();

            _spdNFeDatasetX.IncluirItem();
            DadosDoItem(1);

            if (!rbNota.Checked)
            {
                if (rdVeiculosNovos.Checked)
                {
                    VeiculosNovos();
                }
                else if (rbArmamento.Checked)
                {
                    Armamento();
                }
                else if (rbCanaAcucar.Checked)
                {
                    CanaAcucar();
                }
                else if (rbCombustiveis.Checked)
                {
                    Combustiveis();
                }
                else if (rbMedicamento.Checked)
                {
                    Medicamentos();
                }
            }
            _spdNFeDatasetX.SalvarItem();

            if (chkExportacao.Checked)
            {
                Exportacao();
            }
            
            DadosTotalizadores();

            if (chkTransportadora.Checked)
            {
                DadosTransporte();
            }

            DadosAdicionais();

            if (chkFatura.Checked)
            {
                DadosCobranca();
            }
            _spdNFeDatasetX.Salvar();

            if (tipoEmissao == "1")
            {
                fNFe.Text = _spdNFeDatasetX.LoteNFe;
                txtChaveNota.Text = _spdNFeDatasetX.GetCampo("Id_A03").ToString().Remove(0, 3);
                txtChaveNotaCom.Text = txtChaveNota.Text;
            }
            else if ((tipoEmissao == "2") || (tipoEmissao == "5"))
            {
                FNFeFS.Text = _spdNFeDatasetX.LoteNFe;
                rtbXMLNotaFs.Text = FNFeFS.Text;
                txtChaveFS.Text = _spdNFeDatasetX.GetCampo("Id_A03").ToString().Remove(0, 3);
            }
        }

        //INformações sobre a NFe
        private void DadosDoNFe()
        {
            _spdNFeDatasetX.SetCampo("Id_A03=");                          //Calcula Automático. Essa linha é desnecessária
            _spdNFeDatasetX.SetCampo("cUF_B02=41");                       //Codigo da UF para o estado de SP
            _spdNFeDatasetX.SetCampo("cNF_B03=00000000");                //Código Interno do Sistema que está integrando com a NFe
            _spdNFeDatasetX.SetCampo("natOp_B04=VENDA MERC.ADQ.REC.TERC"); //Descrição da(s) CFOP(s) envolvidas nessa NFe

            if (cboVersao.SelectedIndex < versao60) 
            {
                _spdNFeDatasetX.SetCampo("indPag_B05=1");                     //Indicador da Forma de Pagamento (1- a Vista, 2 a Prazo);
            }
            _spdNFeDatasetX.SetCampo("mod_B06=55");                       //Código do Modelo de Documento Fiscal
            _spdNFeDatasetX.SetCampo("serie_B07=121");
            DateTime dat = DateTime.Now;
            int nume = random.Next(10000);
            _spdNFeDatasetX.SetCampo("nNF_B08=" + nume);                 //Número da Nota Fiscal

            // Alterar fuso horário se necessário
            _spdNFeDatasetX.SetCampo("dhEmi_B09=" + dat.ToString("yyyy-MM-ddThh:mm:ss") + "-03:00");             //Data e hora de Emissão da Nota Fiscal
            _spdNFeDatasetX.SetCampo("dhSaiEnt_B10=" + dat.ToString("yyyy-MM-ddThh:mm:ss") + "-03:00");          //Data e hora de Saída ou Entrada da Nota Fiscal
            _spdNFeDatasetX.SetCampo("tpNF_B11=1");                      //Tipo de Documento Fiscal (0-Entrada, 1-Saída);
            _spdNFeDatasetX.SetCampo("idDest_B11a="+ (cboUfEmit.Text == cboUfDest.Text ? "1" : "2"));  // Identificador de local de destino da operação (1-Operação Interna, 2-Operação Interestadual e 3-Operação com exterior)
            _spdNFeDatasetX.SetCampo("cMunFG_B12=4115200");              //Código do Município, conforme Tabela do IBGE
            _spdNFeDatasetX.SetCampo("tpImp_B21=1");                     //Tipo de Impressão da Danfe (1- Retrato , 2-Paisagem);
            _spdNFeDatasetX.SetCampo("tpEmis_B22=" + tipoEmissao);       //Forma de Emissão da NFe (1 - Normal, 2 - FS, 3 - SCAN, 4 - EPEC, 5 - FS-DA);
            _spdNFeDatasetX.SetCampo("cDV_B23=0");                       //Calcula Automatico - Linha desnecessária já que o componente calcula o Dígito Verificador automaticamente e coloca no devido campo
            _spdNFeDatasetX.SetCampo("tpAmb_B24=2");                     //Identificação do Ambiente (1- Producao, 2-Homologação);
            _spdNFeDatasetX.SetCampo("finNFe_B25=1");                    //Finalidade da NFe (1-Normal, 2-Complementar, 3-de Ajuste);
            _spdNFeDatasetX.SetCampo("indFinal_B25a=0");                 // Indica operação com Consumidor final (0-Não, 1-Consumidor Final)
            _spdNFeDatasetX.SetCampo("indPres_B25b=0");                  // Indicador de presença do comprador no estabelecimento comercial ( 0-Não, 1-Operação presencial, 2-Operação não presencial, Internet, 3-Operação Não presencial, teleatendimento, 9-Operação não presencial, outros.)
            _spdNFeDatasetX.SetCampo("procEmi_B26=0");                   //Identificador do Processo de emissão (0-Emissão da Nfe com Aplicativo do Contribuinte). Ver outras opções no manual da Receita.
            _spdNFeDatasetX.SetCampo("verProc_B27=000");                 //Versão do Aplicativo Emissor

            DateTime d = DateTime.Now;
            if (tipoEmissao == "4")
            {
                _spdNFeDatasetX.SetCampo("dhCont_B28=" + d.ToString("yyyy-MM-ddTHH:mm:ss")); // Data e hora de entrada em contingência no formato AAAA-MM-DDTHH:MM:SS
                _spdNFeDatasetX.SetCampo("xJust_B29=Exemplo de justificativa de EPEC"); // Justificativa da contingência
            } 
            else if ((tipoEmissao == "2") || (tipoEmissao == "5"))
            {
                _spdNFeDatasetX.SetCampo("dhCont_B28=" + d.ToString("yyyy-MM-ddTHH:mm:ss")); // Data e hora de entrada em contingência no formato AAAA-MM-DDTHH:MM:SS
                _spdNFeDatasetX.SetCampo("xJust_B29=Exemplo de justificativa de FS"); // Justificativa da contingência
            }

            if (chkNotaReferenciada.Checked)
            {
                _spdNFeDatasetX.IncluirParte("NRef");
                _spdNFeDatasetX.SetCampo("refNFe_B13=35100761367025000112550010000054241046403270");
                _spdNFeDatasetX.SalvarParte("NRef");
            }

            _spdNFeDatasetX.SetCampo("versao_A02=" + ((cboVersao.SelectedIndex < versao60) ? "3.10" : "4.00"));  
            _spdNFeDatasetX.SetCampo("CRT_C21=" + (cboCodRegimeTrib.SelectedIndex + 1).ToString()); //Campo novo da Versão 4.0 que classifica a empresa emitente - Ver Manual de integração
        }

        // Informações do Emitente da NFe
        private void DadosDoEmitente()
        {
            _spdNFeDatasetX.SetCampo("CNPJ_C02=" + txtCnpj.Text);            // CNPJ do Emitente
            _spdNFeDatasetX.SetCampo("xNome_C03=" + txtRazaoSocialEmit.Text);// Razao Social ou Nome do Emitente
            _spdNFeDatasetX.SetCampo("xFant_C04="+ txtNomeFantasiaEmit.Text);// Nome Fantasia do Emitente
            _spdNFeDatasetX.SetCampo("xLgr_C06="+ txtEnderecoEmit.Text); // Logradouro do Emitente
            _spdNFeDatasetX.SetCampo("nro_C07="+ txtNumeroEmit.Text);    // Numero do Logradouro do Emitente
            _spdNFeDatasetX.SetCampo("xBairro_C09="+ txtBairroEmit.Text);// Bairro do Emitente
            _spdNFeDatasetX.SetCampo("cMun_C10="+ txtCodCidIbgeEmit.Text);  // Código da Cidade do Emitente (Tabela do IBGE);
            _spdNFeDatasetX.SetCampo("xMun_C11="+ txtCidadeEmit.Text); // Nome da Cidade do Emitente
            _spdNFeDatasetX.SetCampo("UF_C12="+ cboUfEmit.Text); // SIGLA do Estado do Emitente (Tabela do IBGE);
            _spdNFeDatasetX.SetCampo("CEP_C13="+ txtCepEmit.Text);    // Cep do Emitente
            _spdNFeDatasetX.SetCampo("cPais_C14="+ txtCodPaisIbgeEmit.Text);    // Código do País do Emitente (Tabela BACEN);
            _spdNFeDatasetX.SetCampo("xPais_C15="+ txtPaisEmit.Text);  // Nome do País do Emitente
            _spdNFeDatasetX.SetCampo("fone_C16="+ txtTelefoneEmit.Text);  // Fone do Emitente
            _spdNFeDatasetX.SetCampo("IE_C17="+ txtIeEmit.Text);   // Inscrição Estadual do Emitente
            _spdNFeDatasetX.SetCampo("IEST_C18="+ txtIeSubTribEmit.Text);   // Inscrição Estadual do Substituto Tributário Emitente
            _spdNFeDatasetX.SetCampo("IM_C19=" + (chkNotaConjugada.Checked ? "100000000000015" : txtInscricaoMunicipalEmit.Text)); // Inscrição Municipal
            _spdNFeDatasetX.SetCampo("CNAE_C20=" + txtCnaeEmit.Text);
            _spdNFeDatasetX.SetCampo("CRT_C21=" + (cboCodRegimeTrib.SelectedIndex +1).ToString());
        }

        // Informações do Destinatário da NFe
        private void DadosDoDestinatario()
        {
            _spdNFeDatasetX.SetCampo("CNPJ_E02="+ txtCpfCnpjDest.Text);          // CNPJ do Destinatário
            _spdNFeDatasetX.SetCampo("xNome_E04="+ txtRazaoSocialDest.Text);       // Razao social ou Nome do Destinatário
            _spdNFeDatasetX.SetCampo("xLgr_E06="+ txtEnderecoDest.Text);           // Logradouro do Destinatario
            _spdNFeDatasetX.SetCampo("nro_E07="+ txtNumeroDest.Text);   // Numero do Logradouro do Destinatario
            _spdNFeDatasetX.SetCampo("xCpl_E08="+txtComplementoDest.Text); // Complemento
            _spdNFeDatasetX.SetCampo("xBairro_E09="+ txtBairroDest.Text);               // Bairro do Destinatario
            _spdNFeDatasetX.SetCampo("cMun_E10="+ txtCodCidIbgeDest.Text);                 // Código do Município do Destinatário (Tabela IBGE);
            _spdNFeDatasetX.SetCampo("xMun_E11="+ txtCidadeDest.Text);                // Nome da Cidade do Destinatário
            _spdNFeDatasetX.SetCampo("UF_E12="+ cboUfDest.Text);                        // Sigla do Estado do Destinatário
            _spdNFeDatasetX.SetCampo("CEP_E13="+ txtCepDest.Text);                 // Cep do Destinatário
            _spdNFeDatasetX.SetCampo("cPais_E14="+ txtcodPaisIbgeDest.Text);                   // Código do Pais do Destinatário (Tabela do BACEN);
            _spdNFeDatasetX.SetCampo("xPais_E15="+ txtPaisDest.Text);                 // Nome do País do Destinatário
            _spdNFeDatasetX.SetCampo("fone_E16="+ txtTelefoneDest.Text);               // Fone do Destinatário
            _spdNFeDatasetX.SetCampo("indIEDest_E16a=1");               // Indicador da IE do Destinatário 1-Contribuinte ICMS/2-Contribuinte Isento de inscrição/9- Não contribuinte
            _spdNFeDatasetX.SetCampo("IE_E17="+ txtIeDest.Text);              // Inscrição Estadual do Destinatário
            _spdNFeDatasetX.SetCampo("ISUF_E18="+ txtIsufDest.Text); // Inscrição na SUFRAMA
            //_spdNFeDatasetX.SetCampo("IM_E18a=" + );              // Inscricao municipal do tomador de serviço
            _spdNFeDatasetX.SetCampo("email_E19="+ txtEmailDest.Text); // Email
        }

        // Autorizados a Baixar o XML
        private void DadosAutorizadosBaixarXML()
        {
          if (edtAuthXML.Text.Length == 14)
          {
            _spdNFeDatasetX.SetCampo("CNPJ_G51=" + edtAuthXML.Text);// CNPJ autorizado   
          }
          else if (edtAuthXML.Text.Length == 11)
          {
            _spdNFeDatasetX.SetCampo("CPF_G52=" + edtAuthXML.Text);// CPF autorizado       
          }
        }
        
        // Informações Referentes aos ITens da NFe
        private void DadosDoItem(int nitem)
        {
            //int num = random.Next(990);
            _spdNFeDatasetX.SetCampo("nItem_H02=" + nitem.ToString());            // Número do Item da NFe (1 até 990);
            //Dados do Produto Vend Subido
            _spdNFeDatasetX.SetCampo("cProd_I02=0999");                   //Código do PRoduto ou Serviço
            _spdNFeDatasetX.SetCampo("cEAN_I03=8712581497668");           // EAN do Produto
            _spdNFeDatasetX.SetCampo("xProd_I04=MELAO");                  // Descrição do Produto
            _spdNFeDatasetX.SetCampo("NCM_I05=11081200");                 // Código do NCM - informar de acordo com o Tabela oficial do NCM
            _spdNFeDatasetX.SetCampo("CEST_I05c=0125457");               // Código especificador da substituição tribuitária - CEST;
            if (cboVersao.SelectedIndex > versao50a)
            {
                _spdNFeDatasetX.SetCampo("indEscala_I05d=S");                  // Indicador de Escala Relevante
                //_spdNFeDatasetX.SetCampo("CNPJFab_I05e=00000000000000");  // CNPJ do Fabricante da Mercadoria
                //_spdNFeDatasetX.SetCampo("cBenef_I05f=0123456789");       // Código de Benefício Fiscal na UF aplicado ao item
            }
            _spdNFeDatasetX.SetCampo("CFOP_I08=5102");                    // CFOP incidente neste Item da NF
            _spdNFeDatasetX.SetCampo("uCom_I09=CX");                      // Unidade de Medida do Item
            _spdNFeDatasetX.SetCampo("qCom_I10=1");                       // Quantidade Comercializada do Item
            _spdNFeDatasetX.SetCampo("vUnCom_I10a=0.0100");               // Valor Comercializado do Item
            _spdNFeDatasetX.SetCampo("vProd_I11=0.01");                   // Valor Total Bruto do Item
            _spdNFeDatasetX.SetCampo("cEANTrib_I12=8712581497668");       // EAN Tributável do Item
            _spdNFeDatasetX.SetCampo("uTrib_I13=CX");                     // Unidade de Medida Tributável do Item
            _spdNFeDatasetX.SetCampo("qTrib_I14=1");                      // Quantidade Tributável do Item
            _spdNFeDatasetX.SetCampo("vUnTrib_I14a=0.0100");              // Valor Tributável do Item

            if (cboVersao.SelectedIndex > versao50a)
            {
                _spdNFeDatasetX.SetCampo("xPed_I60=10123");
                _spdNFeDatasetX.SetCampo("nItemPed_I61=321");
            }

            //////////////////// Aqui começam os Impostos Incidentes sobre o Item////////////////////////
            //Verificar Manual pois existe uma variação nos campos de acordo com Tipo de Tribucação ////

            if (chkNotaConjugada.Checked == false)
            {
                switch (cboICMS.SelectedIndex)
                {
                    //ICMS00
                    case 0:
                        switch (icms00.cboOrigemICMS00.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CST_N12=" + icms00.txtCSTICMS00.Text);
                        switch (icms00.cboModalidadeICMS00.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBC_N13=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBC_N13=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBC_N13=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBC_N13=3"); break;
                        }
                        _spdNFeDatasetX.SetCampo("vBC_N15=" + icms00.txtValorBCICMS00.Text);
                        _spdNFeDatasetX.SetCampo("pICMS_N16=" + icms00.txtAliquotaICMS00.Text);
                        _spdNFeDatasetX.SetCampo("vICMS_N17=" + icms00.txtValorICMS00.Text);
                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("pFCP_N17b=" + icms00.txtpFCP00.Text);  //Percentual do Fundo de Combate à Pobreza (FCP)
                           // _spdNFeDatasetX.SetCampo("vFCP_N17c=" + icms00.txtvFCP00.Text);  //Valor do Fundo de Combate à Pobreza (FCP)
                        }
                        break;

                    //ICMS10
                    case 1:
                        switch (icms10.cboOrigemICMS10.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CST_N12=" + icms10.txtCSTICMS10.Text);
                        switch (icms10.cboModalidadeICMS10.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBC_N13=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBC_N13=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBC_N13=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBC_N13=3"); break;
                        }
                        _spdNFeDatasetX.SetCampo("vBC_N15=" + icms10.txtValorBCICMS10.Text);
                        _spdNFeDatasetX.SetCampo("pICMS_N16=" + icms10.txtAliquotaICMS10.Text);
                        _spdNFeDatasetX.SetCampo("vICMS_N17=" + icms10.txtValorICMS10.Text);
                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCP_N17a=" + icms10.txtvBCFCP10.Text);  //Valor da Base de Cálculo do FCP
                            _spdNFeDatasetX.SetCampo("pFCP_N17b=" + icms10.txtpFCP10.Text);  //Percentual do Fundo de Combate à Pobreza (FCP)
                           // _spdNFeDatasetX.SetCampo("vFCP_N17c=" + icms10.txtvFCP10.Text); //Valor do Fundo de Combate à Pobreza (FCP)

                        }
                        switch (icms10.cboModSTICMS10.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBCST_N18=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBCST_N18=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBCST_N18=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBCST_N18=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("modBCST_N18=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("modBCST_N18=5"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pMVAST_N19=" + icms10.txtpMVASTICMS10.Text);
                        _spdNFeDatasetX.SetCampo("pRedBCST_N20=" + icms10.txtpRedBCSTICMS10.Text);
                        //_spdNFeDatasetX.SetCampo("vBCST_N21=" + icms10.txtvBCSTICMS10.Text);
                        //_spdNFeDatasetX.SetCampo("pICMSST_N22=" + icms10.txtpICMSSTICMS10.Text);
                        _spdNFeDatasetX.SetCampo("vICMSST_N23=" + icms10.txtvICMSSTICMS10.Text);
                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCPST_N23a=" + icms10.txtvBCFCPST10.Text);  //Valor da Base de Cálculo do FCP retido por Substituição Tributária
                            //_spdNFeDatasetX.SetCampo("pFCPST_N23b=" + icms10.txtpFCPST10.Text); //Percentual do FCP retido por Substituição Tributária 
                            //_spdNFeDatasetX.SetCampo("vFCPST_N23d=" + icms10.txtvFCPST10.Text);  //Valor do FCP retido por Substituição Tributária
                        }
                        break;

                    //ICMS 20
                    case 2:
                        switch (icms20.cboOrigemICMS20.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CST_N12=" + icms20.txtCSTICMS20.Text);
                        switch (icms20.cboModalidadeICMS20.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBC_N13=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBC_N13=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBC_N13=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBC_N13=3"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pRedBC_N14=" + icms20.txtpRedBCSTICMS20.Text);
                        _spdNFeDatasetX.SetCampo("vBC_N15=" + icms20.txtValorICMS20.Text);
                        _spdNFeDatasetX.SetCampo("pICMS_N16=" + icms20.txtAliquotaICMS20.Text);
                        _spdNFeDatasetX.SetCampo("vICMS_N17=" + icms20.txtValorICMS20.Text);
                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCP_N17a=" + icms20.txtvBCFCP20.Text); //Valor da Base de Cálculo do FCP
                            _spdNFeDatasetX.SetCampo("pFCP_N17b=" + icms20.txtpFCP20.Text);  //Percentual do Fundo de Combate à Pobreza (FCP)
                            //_spdNFeDatasetX.SetCampo("vFCP_N17c=" + icms20.txtvFCP20.Text); //Valor do Fundo de Combate à Pobreza (FCP)
                            _spdNFeDatasetX.SetCampo("vICMSDeson_N28a=" + icms20.edtvICMS20Deson.Text);
                        }
                        else
                        {
                            _spdNFeDatasetX.SetCampo("vICMSDeson_N27a=" + icms20.edtvICMS20Deson.Text);
                        }
                        switch (icms20.cbMotivoDesonICMS20.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("motDesICMS_N28=3"); break;
                            case 1: _spdNFeDatasetX.SetCampo("motDesICMS_N28=9"); break;
                            case 2: _spdNFeDatasetX.SetCampo("motDesICMS_N28=12"); break;
                        }
                        break;


                    //ICMS 30
                    case 3:
                        switch (icms30.cboOrigemICMS30.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CST_N12=" + icms30.txtCSTICMS30.Text);
                        switch (icms30.cboModSTICMS30.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBCST_N18=0");
                                break;
                            case 1: _spdNFeDatasetX.SetCampo("modBCST_N18=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBCST_N18=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBCST_N18=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("modBCST_N18=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("modBCST_N18=5"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pMVAST_N19=" + icms30.txtpMVASTICMS30.Text);
                        _spdNFeDatasetX.SetCampo("pRedBCST_N20=" + icms30.txtpRedBCSTICMS30.Text);
                        //_spdNFeDatasetX.SetCampo("vBCST_N21=" + icms30.txtvBCSTICMS30.Text);
                        _spdNFeDatasetX.SetCampo("pICMSST_N22=" + icms30.txtpICMSSTICMS30.Text);
                        _spdNFeDatasetX.SetCampo("vICMSST_N23=" + icms30.txtvICMSSTICMS30.Text);
                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCPST_N23a=" + icms30.txtvBCFCPST30.Text);  //Valor da Base de Cálculo do FCP retido por Substituição Tributária
                            _spdNFeDatasetX.SetCampo("pFCPST_N23b=" + icms30.txtpFCPST30.Text);  //Percentual do FCP retido por Substituição Tributária
                            _spdNFeDatasetX.SetCampo("vFCPST_N23d=" + icms30.txtvFCPST30.Text);  //Valor do FCP retido por Substituição Tributária
                            _spdNFeDatasetX.SetCampo("vICMSDeson_N28a=" + icms30.edtvICMS30Deson.Text);
                        }
                        else
                        {
                            _spdNFeDatasetX.SetCampo("vICMSDeson_N27a=" + icms30.edtvICMS30Deson.Text);
                        }
                        switch (icms30.cbMotivoDesonICMS30.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("motDesICMS_N28=6"); break;
                            case 1: _spdNFeDatasetX.SetCampo("motDesICMS_N28=7"); break;
                            case 2: _spdNFeDatasetX.SetCampo("motDesICMS_N28=9"); break;
                        }

                        break;

                    //ICMS 40
                    case 4:
                        switch (icms40.cboOrigemICMS40.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CST_N12=" + icms40.txtCSTICMS40.Text);
                        _spdNFeDatasetX.SetCampo("vICMS_N17=" + icms40.txtValorICMS40.Text);
                        switch (icms40.cbmotivoICMS40Deson.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("motDesICMS_N28=1"); break;
                            case 1: _spdNFeDatasetX.SetCampo("motDesICMS_N28=2"); break;
                            case 2: _spdNFeDatasetX.SetCampo("motDesICMS_N28=3"); break;
                            case 3: _spdNFeDatasetX.SetCampo("motDesICMS_N28=4"); break;
                            case 4: _spdNFeDatasetX.SetCampo("motDesICMS_N28=5"); break;
                            case 5: _spdNFeDatasetX.SetCampo("motDesICMS_N28=6"); break;
                            case 6: _spdNFeDatasetX.SetCampo("motDesICMS_N28=7"); break;
                            case 7: _spdNFeDatasetX.SetCampo("motDesICMS_N28=9"); break;
                        }
                        if (cboVersao.SelectedIndex > versao50a)
                        {
                            _spdNFeDatasetX.SetCampo("vICMSDeson_N28a=" + icms40.edtvIcms40Deson.Text);
                        }
                        else
                        {
                            _spdNFeDatasetX.SetCampo("vICMSDeson_N27a=" + icms40.edtvIcms40Deson.Text);
                        }

                        switch (icms40.cbmotivoICMS40Deson.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("motDesICMS_N28=1"); break;
                            case 1: _spdNFeDatasetX.SetCampo("motDesICMS_N28=3"); break;
                            case 2: _spdNFeDatasetX.SetCampo("motDesICMS_N28=4"); break;
                            case 3: _spdNFeDatasetX.SetCampo("motDesICMS_N28=5"); break;
                            case 4: _spdNFeDatasetX.SetCampo("motDesICMS_N28=6"); break;
                            case 5: _spdNFeDatasetX.SetCampo("motDesICMS_N28=7"); break;
                            case 6: _spdNFeDatasetX.SetCampo("motDesICMS_N28=8"); break;
                            case 7: _spdNFeDatasetX.SetCampo("motDesICMS_N28=9"); break;
                            case 8: _spdNFeDatasetX.SetCampo("motDesICMS_N28=10"); break;
                            case 9: _spdNFeDatasetX.SetCampo("motDesICMS_N28=11"); break;
                            case 10: _spdNFeDatasetX.SetCampo("motDesICMS_N28=16"); break;
                            case 11: _spdNFeDatasetX.SetCampo("motDesICMS_N28=90"); break;
                        }
                        break;

                    //ICMS 51
                    case 5:
                        switch (icms51.cboOrigemICMS51.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CST_N12=" + icms51.txtCSTICMS51.Text);
                        switch (icms51.cboModalidadeICMS51.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBC_N13=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBC_N13=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBC_N13=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBC_N13=3"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pRedBC_N14=" + icms51.txtpRedBCICMS51.Text);
                        _spdNFeDatasetX.SetCampo("vBC_N15=" + icms51.txtValorBCICMS51.Text);
                        _spdNFeDatasetX.SetCampo("pICMS_N16=" + icms51.txtAliquotaICMS51.Text);
                        _spdNFeDatasetX.SetCampo("vICMS_N17=" + icms51.txtValorICMS51.Text);
                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCP_N17a=" + icms51.txtvBCFCP51.Text); //Valor da Base de Cálculo do FCP
                            _spdNFeDatasetX.SetCampo("pFCP_N17b=" + icms51.txtpFCP51.Text);  //Percentual do Fundo de Combate à Pobreza (FCP)
                            _spdNFeDatasetX.SetCampo("vFCP_N17c=" + icms51.txtvFCP51.Text); //Valor do Fundo de Combate à Pobreza (FCP)
                        }
                        break;

                    //ICMS 60
                    case 6:
                        switch (icms60.cboOrigemICMS60.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CST_N12=" + icms60.txtCSTICMS60.Text);
                        _spdNFeDatasetX.SetCampo("vBCSTRet_N26=" + icms60.txtvBCSTRetICMS60.Text);
                        _spdNFeDatasetX.SetCampo("vICMSSTRet_N27=" + icms60.txtvICMSSTRetICMS60.Text);
                        if (cboVersao.SelectedIndex > versao50a)
                        {
                            _spdNFeDatasetX.SetCampo("pST_N26a=" + icms60.txtpST60.Text);
                            if (chkPartilha.Checked)
                            {
                                _spdNFeDatasetX.SetCampo("vBCFCPSTRet_N27a=" + icms60.txtvBCFCPSTRet60.Text); //Valor da Base de Cálculo do FCP retido anteriormente por ST
                                _spdNFeDatasetX.SetCampo("pFCPSTRet_N27b=" + icms60.txtpFCPSTRetICMS60.Text); //Percentual do FCP retido anteriormente por Substituição Tributária
                                _spdNFeDatasetX.SetCampo("vFCPSTRet_N27d=" + icms60.txtvFCPSTRet60.Text); //Valor do FCP retido por Substituição Tributária
                            }

                        }

                        break;

                    //ICMS 70
                    case 7:
                        switch (icms70.cboOrigemICMS70.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CST_N12=" + icms70.txtCSTICMS70.Text);
                        switch (icms70.cboModalidadeICMS70.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBC_N13=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBC_N13=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBC_N13=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBC_N13=3"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pRedBC_N14=" + icms70.txtpRedBCICMS70.Text);
                        _spdNFeDatasetX.SetCampo("vBC_N15=" + icms70.txtValorBCICMS70.Text);
                        _spdNFeDatasetX.SetCampo("pICMS_N16=" + icms70.txtAliquotaICMS70.Text);
                        _spdNFeDatasetX.SetCampo("vICMS_N17=" + icms70.txtValorICMS70.Text);
                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCP_N17a=" + icms70.txtvBCFCP70.Text); //Valor da Base de Cálculo do FCP
                            _spdNFeDatasetX.SetCampo("pFCP_N17b=" + icms70.txtpFCPST70.Text); //Percentual do Fundo de Combate à Pobreza (FCP)
                            _spdNFeDatasetX.SetCampo("vFCP_N17c=" + icms70.txtvFCP70.Text); //Valor do Fundo de Combate à Pobreza (FCP)
                        }
                        switch (icms70.cboModSTICMS70.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBCST_N18=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBCST_N18=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBCST_N18=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBCST_N18=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("modBCST_N18=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("modBCST_N18=5"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pMVAST_N19=" + icms70.txtpMVASTICMS70.Text);
                        _spdNFeDatasetX.SetCampo("pRedBCST_N20=" + icms70.txtpRedBCSTICMS70.Text);
                        _spdNFeDatasetX.SetCampo("vBCST_N21=" + icms70.txtvBCSTICMS70.Text);
                        _spdNFeDatasetX.SetCampo("pICMSST_N22=" + icms70.txtpICMSSTICMS70.Text);
                        _spdNFeDatasetX.SetCampo("vICMSST_N23=" + icms70.txtvICMSSTICMS70.Text);
                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCPST_N23a=" + icms70.txtvBCFCPST70.Text); //Valor da Base de Cálculo do FCP retido por Substituição Tributária
                            _spdNFeDatasetX.SetCampo("pFCPST_N23b=" + icms70.txtpFCPST70.Text); //Percentual do FCP retido por Substituição Tributária
                            _spdNFeDatasetX.SetCampo("vFCPST_N23d=" + icms70.txtvFCPST70.Text); //Valor do FCP retido por Substituição Tributária
                        }
                        if (cboVersao.SelectedIndex > versao50a)
                        {
                            _spdNFeDatasetX.SetCampo("vICMSDeson_N28a=" + icms70.edtvICMS70Deson.Text);
                        }
                        else
                        {
                            _spdNFeDatasetX.SetCampo("vICMSDeson_N27a=" + icms70.edtvICMS70Deson.Text);
                        }
                        switch (icms70.cbmotiboICMS70Deson.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("motDesICMS_N28=3"); break;
                            case 1: _spdNFeDatasetX.SetCampo("motDesICMS_N28=9"); break;
                            case 2: _spdNFeDatasetX.SetCampo("motDesICMS_N28=12"); break;
                        }
                        break;

                    //ICMS 90
                    case 8:
                        switch (icms90.cboOrigemICMS90.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CST_N12=" + icms90.txtCSTICMS90.Text);
                        switch (icms90.cboModalidadeICMS90.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBC_N13=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBC_N13=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBC_N13=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBC_N13=3"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pRedBC_N14=" + icms90.txtpRedBCICMS90.Text);
                        _spdNFeDatasetX.SetCampo("vBC_N15=" + icms90.txtValorBCICMS90.Text);
                        _spdNFeDatasetX.SetCampo("pICMS_N16=" + icms90.txtAliquotaICMS90.Text);
                        _spdNFeDatasetX.SetCampo("vICMS_N17=" + icms90.txtValorICMS90.Text);

                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCP_N17a=" + icms90.txtvBCFCP90.Text);  //Valor da Base de Cálculo do FCP
                            _spdNFeDatasetX.SetCampo("pFCP_N17b=" + icms90.txtpFCP90.Text);  //Percentual do Fundo de Combate à Pobreza (FCP)
                            _spdNFeDatasetX.SetCampo("vFCP_N17c=" + icms90.txtvFCP90.Text);  //Valor do Fundo de Combate à Pobreza (FCP)
                        }

                        switch (icms90.cboModSTICMS90.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBCST_N18=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBCST_N18=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBCST_N18=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBCST_N18=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("modBCST_N18=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("modBCST_N18=5"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pMVAST_N19=" + icms90.txtpMVASTICMS90.Text);
                        _spdNFeDatasetX.SetCampo("pRedBCST_N20=" + icms90.txtpRedBCSTICMS90.Text);
                        _spdNFeDatasetX.SetCampo("vBCST_N21=" + icms90.txtvBCSTICMS90.Text);
                        _spdNFeDatasetX.SetCampo("pICMSST_N22=" + icms90.txtpICMSSTICMS90.Text);
                        _spdNFeDatasetX.SetCampo("vICMSST_N23=" + icms90.txtvICMSSTICMS90.Text);
                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCPST_N23a=" + icms90.txtvBCFCPST90.Text);  //Valor da Base de Cálculo do FCP retido por Substituição Tributária
                            _spdNFeDatasetX.SetCampo("pFCPST_N23b=" + icms90.txtpFCPST90.Text);  //Percentual do FCP retido por Substituição Tributária
                            _spdNFeDatasetX.SetCampo("vFCPST_N23d=" + icms90.txtvFCP90.Text);  //Valor do FCP retido por Substituição Tributária
                        }
                        if (cboVersao.SelectedIndex > versao50a)
                        {
                            _spdNFeDatasetX.SetCampo("vICMSDeson_N28a=" + icms90.edtvICMS90Deson.Text);
                        }
                        else
                        {
                            _spdNFeDatasetX.SetCampo("vICMSDeson_N27a=" + icms90.edtvICMS90Deson.Text);
                        }
                        switch (icms90.cbmotivoICMS90Deson.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("motDesICMS_N28=3"); break;
                            case 1: _spdNFeDatasetX.SetCampo("motDesICMS_N28=9"); break;
                            case 2: _spdNFeDatasetX.SetCampo("motDesICMS_N28=12"); break;
                        }
                        break;


                    //ICMS Part
                    case 9:
                        switch (icmsPart.cboOrigemICMSPart.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CST_N12=" + icmsPart.txtCSTICMSPart.Text);
                        switch (icmsPart.cboModalidadeICMSPart.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBC_N13=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBC_N13=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBC_N13=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBC_N13=3"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pRedBC_N14=" + icmsPart.txtpRedBCICMSPart.Text);
                        _spdNFeDatasetX.SetCampo("vBC_N15=" + icmsPart.txtValorBCICMSPart.Text);
                        _spdNFeDatasetX.SetCampo("pICMS_N16=" + icmsPart.txtAliquotaICMSPart.Text);
                        _spdNFeDatasetX.SetCampo("vICMS_N17=" + icmsPart.txtValorICMSPart.Text);
                        switch (icmsPart.cboModSTICMSPart.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBCST_N18=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBCST_N18=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBCST_N18=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBCST_N18=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("modBCST_N18=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("modBCST_N18=5"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pMVAST_N19=" + icmsPart.txtpMVASTICMSPart.Text);
                        _spdNFeDatasetX.SetCampo("pRedBCST_N20=" + icmsPart.txtpRedBCSTICMSPart.Text);
                        _spdNFeDatasetX.SetCampo("vBCST_N21=" + icmsPart.txtvBCSTICMSPart.Text);
                        _spdNFeDatasetX.SetCampo("pICMSST_N22=" + icmsPart.txtpICMSSTICMSPart.Text);
                        _spdNFeDatasetX.SetCampo("vICMSST_N23=" + icmsPart.txtvICMSSTICMSPart.Text);
                        _spdNFeDatasetX.SetCampo("pBCOp_N25=" + icmsPart.txtpBCOpICMSPart.Text);
                        _spdNFeDatasetX.SetCampo("UFST_N24=" + icmsPart.txtUFSTICMSPart.Text);
                        break;

                    //ICMS ST
                    case 10:
                        switch (icmsST.cboOrigemICMSST.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CST_N12=" + icmsST.txtCSTICMSST.Text);
                        _spdNFeDatasetX.SetCampo("vBCSTRet_N26=" + icmsST.txtvBCSTRetICMSST.Text);
                        _spdNFeDatasetX.SetCampo("vICMSSTRet_N27=" + icmsST.txtvICMSSTRetICMSST.Text);
                        _spdNFeDatasetX.SetCampo("vBCSTDest_N31=" + icmsST.txtvBCSTDestICMSST.Text);
                        _spdNFeDatasetX.SetCampo("vICMSSTDest_N32=" + icmsST.txtvICMSSTDestICMSST.Text);
                        break;

                    //ICMS SN 101
                    case 11:
                        switch (icmsSN101.cboOrigemICMSSN101.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CSOSN_N12a=" + icmsSN101.txtCSOSNICMSN101.Text);
                        _spdNFeDatasetX.SetCampo("pCredSN_N29=" + icmsSN101.txtpCredSNICMSN101.Text);
                        _spdNFeDatasetX.SetCampo("vCredICMSSN_N30=" + icmsSN101.txtvCredICMSSNICMSN101.Text);
                        break;

                    //ICMS SN 102
                    case 12:
                        switch (icmsSN102.cboOrigemICMSSN102.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CSOSN_N12a=" + icmsSN102.txtCSOSNICMSN102.Text);
                        break;

                    //ICMS SN 201
                    case 13:
                        switch (icmsSN201.cboOrigemICMSSN201.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CSOSN_N12a=" + icmsSN201.txtCSOSNICMSSN201.Text);
                        switch (icmsSN201.cboModSTICMSSN201.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBCST_N18=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBCST_N18=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBCST_N18=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBCST_N18=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("modBCST_N18=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("modBCST_N18=5"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pMVAST_N19=" + icmsSN201.txtpMVASTICMSSN201.Text);
                        _spdNFeDatasetX.SetCampo("pRedBCST_N20=" + icmsSN201.txtpRedBCSTICMSSN201.Text);
                        _spdNFeDatasetX.SetCampo("vBCST_N21=" + icmsSN201.txtvBCSTICMSSN201.Text);
                        _spdNFeDatasetX.SetCampo("pICMSST_N22=" + icmsSN201.txtpICMSSTICMSSN201.Text);
                        _spdNFeDatasetX.SetCampo("vICMSST_N23=" + icmsSN201.txtvICMSSTICMSSN201.Text);

                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCPST_N23a=" + icmsSN201.txtvBCFCPST201.Text);
                            _spdNFeDatasetX.SetCampo("pFCPST_N23b=" + icmsSN201.txtpFCPST201.Text);
                            _spdNFeDatasetX.SetCampo("vFCPST_N23d=" + icmsSN201.txtvFCPST201.Text);
                        }

                        _spdNFeDatasetX.SetCampo("pCredSN_N29=" + icmsSN201.txtpCredSNICMSSN201.Text);
                        _spdNFeDatasetX.SetCampo("vCredICMSSN_N30=" + icmsSN201.txtvCredICMSSNICMSSN201.Text);
                        break;

                    //ICMS SN 202
                    case 14:
                        switch (icmsSN202.cboOrigemICMSSN202.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CSOSN_N12a=" + icmsSN202.txtCSOSNICMSSN202.Text);
                        switch (icmsSN202.cboModSTICMSSN202.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBCST_N18=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBCST_N18=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBCST_N18=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBCST_N18=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("modBCST_N18=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("modBCST_N18=5"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pMVAST_N19=" + icmsSN202.txtpMVASTICMSSN202.Text);
                        _spdNFeDatasetX.SetCampo("pRedBCST_N20=" + icmsSN202.txtpRedBCSTICMSSN202.Text);
                        _spdNFeDatasetX.SetCampo("vBCST_N21=" + icmsSN202.txtvBCSTICMSSN202.Text);
                        _spdNFeDatasetX.SetCampo("pICMSST_N22=" + icmsSN202.txtpICMSSTICMSSN202.Text);
                        _spdNFeDatasetX.SetCampo("vICMSST_N23=" + icmsSN202.txtvICMSSTICMSSN202.Text);
                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCPST_N23a=" + icmsSN202.txtvBCFCPST202.Text);  //Valor da Base de Cálculo do FCP retido por Substituição Tributária
                            _spdNFeDatasetX.SetCampo("pFCPST_N23b=" + icmsSN202.txtpFCPST202.Text);  //Percentual do FCP retido por Substituição Tributária
                            _spdNFeDatasetX.SetCampo("vFCPST_N23d=" + icmsSN202.txtvFCPST202.Text); //Valor do FCP retido por Substituição Tributária
                        }
                        break;

                    //ICMS SN 500
                    case 15:
                        switch (icmsSN500.cboOrigemICMSSN500.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CSOSN_N12a=" + icmsSN500.txtCSOSNICMSSN500.Text);
                        _spdNFeDatasetX.SetCampo("vBCSTRet_N26=" + icmsSN500.txtvBCSTRetICMSSN500.Text);
                        if ((cboVersao.SelectedIndex > versao50a))
                        {
                            _spdNFeDatasetX.SetCampo("pST_N26a=" + icmsSN500.txtpST500.Text);
                            _spdNFeDatasetX.SetCampo("vICMSSTRet_N27=" + icmsSN500.txtvICMSSTRetICMSSN500.Text);
                            if (chkPartilha.Checked)
                            {
                                _spdNFeDatasetX.SetCampo("vBCFCPSTRet_N27a" + icmsSN500.txtvBCFCPSTRet500.Text);
                                _spdNFeDatasetX.SetCampo("pFCPSTRet_N27b" + icmsSN500.txtpFCPSTRet500.Text);
                                _spdNFeDatasetX.SetCampo("vFCPSTRet_N27d" + icmsSN500.txtvFCPSTRet500.Text);
                            }
                        }
                        _spdNFeDatasetX.SetCampo("vICMSSTRet_N27=" + icmsSN500.txtvICMSSTRetICMSSN500.Text);
                        break;

                    //ICMS SN 900
                    case 16:
                        switch (icmsSN900.cboOrigemICMSSN900.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("orig_N11=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("orig_N11=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("orig_N11=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("orig_N11=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("orig_N11=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("orig_N11=5"); break;
                            case 6: _spdNFeDatasetX.SetCampo("orig_N11=6"); break;
                            case 7: _spdNFeDatasetX.SetCampo("orig_N11=7"); break;
                            case 8: _spdNFeDatasetX.SetCampo("orig_N11=8"); break;
                        }
                        _spdNFeDatasetX.SetCampo("CSOSN_N12a=" + icmsSN900.txtCSOSNICMSSN900.Text);
                        switch (icmsSN900.cbomodBCICMSSN900.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBC_N13=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBC_N13=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBC_N13=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBC_N13=3"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pRedBC_N14=" + icmsSN900.txtpRedBCICMSSN900.Text);
                        _spdNFeDatasetX.SetCampo("vBC_N15=" + icmsSN900.txtvBCICMSSN900.Text);
                        _spdNFeDatasetX.SetCampo("pICMS_N16=" + icmsSN900.txtpICMSICMSSN900.Text);
                        _spdNFeDatasetX.SetCampo("vICMS_N17=" + icmsSN900.txtvICMSICMSSN900.Text);
                        switch (icmsSN900.cbomodBCICMSSN900.SelectedIndex)
                        {
                            case 0: _spdNFeDatasetX.SetCampo("modBCST_N18=0"); break;
                            case 1: _spdNFeDatasetX.SetCampo("modBCST_N18=1"); break;
                            case 2: _spdNFeDatasetX.SetCampo("modBCST_N18=2"); break;
                            case 3: _spdNFeDatasetX.SetCampo("modBCST_N18=3"); break;
                            case 4: _spdNFeDatasetX.SetCampo("modBCST_N18=4"); break;
                            case 5: _spdNFeDatasetX.SetCampo("modBCST_N18=5"); break;
                        }
                        _spdNFeDatasetX.SetCampo("pMVAST_N19=" + icmsSN900.txtpMVASTICMSSN900.Text);
                        _spdNFeDatasetX.SetCampo("pRedBCST_N20=" + icmsSN900.txtpRedBCSTICMSSN900.Text);
                        _spdNFeDatasetX.SetCampo("vBCST_N21=" + icmsSN900.txtvBCSTICMSSN900.Text);
                        _spdNFeDatasetX.SetCampo("pICMSST_N22=" + icmsSN900.txtpICMSSTICMSSN900.Text);
                        _spdNFeDatasetX.SetCampo("vICMSST_N23=" + icmsSN900.txtvICMSSTICMSSN900.Text);
                        if ((cboVersao.SelectedIndex > versao50a) && (chkPartilha.Checked))
                        {
                            _spdNFeDatasetX.SetCampo("vBCFCPST_N23a=" + icmsSN900.txtvBCFCPST900.Text); //Valor da Base de Cálculo do FCP retido por Substituição Tributária
                            _spdNFeDatasetX.SetCampo("pFCPST_N23b=" + icmsSN900.txtpFCPST900.Text); //Percentual do FCP retido por Substituição Tributária
                            _spdNFeDatasetX.SetCampo("vFCPST_N23d=" + icmsSN900.txtvFCPST900.Text); //Valor do FCP retido por Substituição Tributária
                        }

                        _spdNFeDatasetX.SetCampo("pCredSN_N29=" + icmsSN900.txtpCredSNICMSSN900.Text);
                        _spdNFeDatasetX.SetCampo("vCredICMSSN_N30=" + icmsSN900.txtvCredICMSSNICMSSN900.Text);
                        break;
                }

            }
            else
            {
                //ISSQN
                if (cboISSQN.SelectedIndex == 0)
                {
                    _spdNFeDatasetX.SetCampo("vBC_U02=" + issqn.txtvBCISSQN.Text);
                    _spdNFeDatasetX.SetCampo("vAliq_U03=" + issqn.txtvAliqISSQN.Text);
                    _spdNFeDatasetX.SetCampo("vISSQN_U04=" + issqn.txtvISSQN.Text);
                    _spdNFeDatasetX.SetCampo("cMunFG_U05=" + issqn.txtcMunFGISSQN.Text);
                    _spdNFeDatasetX.SetCampo("cListServ_U06=" + issqn.txtcListServISSQN.Text);
                    _spdNFeDatasetX.SetCampo("vDeducao_U07=" + issqn.edtvDeducaoISSQN.Text);
                    _spdNFeDatasetX.SetCampo("vOutro_U08=" + issqn.edtvOutroISSQN.Text);
                    _spdNFeDatasetX.SetCampo("vDescIncond_U09=" + issqn.edtvDescIncondISSQN.Text);
                    _spdNFeDatasetX.SetCampo("vDescCond_U010=" + issqn.edtvDescCondISSQN.Text);
                    switch (issqn.cbbindISSISSQN.SelectedIndex)
                    {
                        case 0: _spdNFeDatasetX.SetCampo("indISSRet_U011=1"); break;
                        case 1: _spdNFeDatasetX.SetCampo("indISSRet_U011=2"); break;
                        case 2: _spdNFeDatasetX.SetCampo("indISSRet_U011=3"); break;
                        case 3: _spdNFeDatasetX.SetCampo("indISSRet_U011=4"); break;
                        case 4: _spdNFeDatasetX.SetCampo("indISSRet_U011=5"); break;
                        case 5: _spdNFeDatasetX.SetCampo("indISSRet_U011=6"); break;
                        case 6: _spdNFeDatasetX.SetCampo("indISSRet_U011=7"); break;
                    }
                    _spdNFeDatasetX.SetCampo("vISSRet_U012=" + issqn.edtvISSRetISSQN.Text);
                    switch (issqn.cbbindISSRet.SelectedIndex)
                    {
                        case 0: _spdNFeDatasetX.SetCampo("indISS_U013=1"); break; //Sim
                        case 1: _spdNFeDatasetX.SetCampo("indISS_U013=2"); break; //Não
                    }
                    _spdNFeDatasetX.SetCampo("cServico_U14=" + issqn.edtcServicoISSQN.Text);
                    _spdNFeDatasetX.SetCampo("cMun_U15=" + issqn.edtcMunISSQN.Text);

                    if (issqn.edtcServicoISSQN.Text == "9999999")
                    {
                        _spdNFeDatasetX.SetCampo("cPais_U16=1"); //Informar somente se o Mun for 9999999  
                    }
                    if (issqn.cbbindISSISSQN.SelectedIndex == 5 || issqn.cbbindISSISSQN.SelectedIndex == 6)
                    {
                        _spdNFeDatasetX.SetCampo("nProcesso_U17=123456");  //Informar só se indISS_U013 for 6 ou 7    
                    }
                    switch (issqn.cbbindIncentivoISSQN.SelectedIndex)
                    {
                        case 0: _spdNFeDatasetX.SetCampo("indIncentivo_U18=1"); break; //Sim
                        case 1: _spdNFeDatasetX.SetCampo("indIncentivo_U18=2"); break; //Não
                    }
                }
            }

            //PIS
            switch (cboPIS.SelectedIndex)
            {
                //PIS aliquota
                case 0:
                    switch (pisAliq.cboCSTPISAliq.SelectedIndex)
                    {
                        case 0: _spdNFeDatasetX.SetCampo("CST_Q06=01"); break;
                        case 1: _spdNFeDatasetX.SetCampo("CST_Q06=02"); break;
                    }
                    _spdNFeDatasetX.SetCampo("vBC_Q07=" + pisAliq.txtvBCPISAliq.Text);
                    _spdNFeDatasetX.SetCampo("pPIS_Q08=" + pisAliq.txtpPISPISAliq.Text);
                    _spdNFeDatasetX.SetCampo("vPIS_Q09=" + pisAliq.txtvPISPISAliq.Text);
                    break;

                //PIS Quantidade
                case 1:
                    _spdNFeDatasetX.SetCampo("CST_Q06=03");
                    _spdNFeDatasetX.SetCampo("qBCProd_Q10=" + pisQuant.txtqBCProdPISQtde.Text);
                    _spdNFeDatasetX.SetCampo("vAliqProd_Q11=" + pisQuant.txtvAliqProdPISQtde.Text);
                    _spdNFeDatasetX.SetCampo("vPIS_Q09=" + pisQuant.txtvPISPISQtde.Text);
                    break;

                //PIS NT
                case 2:
                    switch (pisNTrib.cboCSTPISNT.SelectedIndex)
                    {
                        case 0: _spdNFeDatasetX.SetCampo("CST_Q06=04"); break;
                        case 1: _spdNFeDatasetX.SetCampo("CST_Q06=06"); break;
                        case 2: _spdNFeDatasetX.SetCampo("CST_Q06=07"); break;
                        case 3: _spdNFeDatasetX.SetCampo("CST_Q06=08"); break;
                        case 4: _spdNFeDatasetX.SetCampo("CST_Q06=09"); break;
                    }
                    break;

                //PIS Outros
                case 3:
                    _spdNFeDatasetX.SetCampo("CST_Q06=99");
                    if (pisOutros.rbPercentual.Checked)
                    {
                        _spdNFeDatasetX.SetCampo("vBC_Q07=" + pisOutros.txtvBCPISOutr.Text);
                        _spdNFeDatasetX.SetCampo("pPIS_Q08=" + pisOutros.txtpPISPISOutr.Text);
                    }
                    else
                    {
                        _spdNFeDatasetX.SetCampo("qBCProd_Q10=" + pisOutros.txtqBCProdPISOutr.Text);
                        _spdNFeDatasetX.SetCampo("vAliqProd_Q11=" + pisOutros.txtvAliqProdPISOutr.Text);
                    }
                    _spdNFeDatasetX.SetCampo("vPIS_Q09=" + pisOutros.txtvPISOutr.Text);
                    break;
            }

            //PIS ST
            switch (cboPISST.SelectedIndex)
            {
                case 0:
                    if (pissit.rbPercentual.Checked)
                    {
                        _spdNFeDatasetX.SetCampo("vBC_R02=" + pissit.txtvBCPISST.Text);
                        _spdNFeDatasetX.SetCampo("pPIS_R03=" + pissit.txtpPISST.Text);
                    }
                    else
                    {
                        _spdNFeDatasetX.SetCampo("qBCProd_R04=" + pissit.txtqBCProdPISST.Text);
                        _spdNFeDatasetX.SetCampo("vAliqProd_R05=" + pissit.txtvAliqProdPISST.Text);
                    }
                    _spdNFeDatasetX.SetCampo("vPIS_R06=" + pissit.txtvPISST.Text);
                    break;
            }

            // COFINS
            switch (cboCOFINS.SelectedIndex)
            {
                case 0://COFINS Aliquota
                    switch (cofinsAliq.cboCSTCOFINSAliq.SelectedIndex)
                    {
                        case 0: _spdNFeDatasetX.SetCampo("CST_S06=01"); break;
                        case 1: _spdNFeDatasetX.SetCampo("CST_S06=02"); break;
                    }
                    _spdNFeDatasetX.SetCampo("vBC_S07=" + cofinsAliq.txtvBCCOFINSAliq.Text);
                    _spdNFeDatasetX.SetCampo("pCOFINS_S08=" + cofinsAliq.txtpCOFINSAliq.Text);
                    _spdNFeDatasetX.SetCampo("vCOFINS_S11=" + cofinsAliq.txtCOFINSAliq.Text);
                    break;


                case 1://COFINS Quantidade
                    _spdNFeDatasetX.SetCampo("CST_S06=03");
                    _spdNFeDatasetX.SetCampo("qBCProd_S09=" + cofinsQuant.txtqBCProdCOFINSQtde.Text);
                    _spdNFeDatasetX.SetCampo("vAliqProd_S10=" + cofinsQuant.txtvAliqProdCOFINSQtde.Text);
                    _spdNFeDatasetX.SetCampo("vCOFINS_S11=" + cofinsQuant.txtvCOFINSQtde.Text);
                    break;


                case 2://COFINS NT
                    switch (cofisNTrib.cboCSTCOFINSNT.SelectedIndex)
                    {
                        case 0: _spdNFeDatasetX.SetCampo("CST_S06=04"); break;
                        case 1: _spdNFeDatasetX.SetCampo("CST_S06=05"); break;
                        case 2: _spdNFeDatasetX.SetCampo("CST_S06=06"); break;
                        case 3: _spdNFeDatasetX.SetCampo("CST_S06=07"); break;
                        case 4: _spdNFeDatasetX.SetCampo("CST_S06=08"); break;
                        case 5: _spdNFeDatasetX.SetCampo("CST_S06=09"); break;
                    }
                    break;


                case 3://COFINS Outros
                    _spdNFeDatasetX.SetCampo("CST_S06=99");
                    if (cofinsOutros.rbPercentual.Checked)
                    {
                        _spdNFeDatasetX.SetCampo("vBC_S07=" + cofinsOutros.txtvBCCOFINSOutr.Text);
                        _spdNFeDatasetX.SetCampo("pCOFINS_S08=" + cofinsOutros.txtpCOFINSOutr.Text);
                    }
                    else
                    {
                        _spdNFeDatasetX.SetCampo("qBCProd_S09=" + cofinsOutros.txtqBCProdCOFINSOutr.Text);
                        _spdNFeDatasetX.SetCampo("vAliqProd_S10=" + cofinsOutros.txtvAliqProdCOFINSOutr.Text);
                    }
                    _spdNFeDatasetX.SetCampo("vCOFINS_S11=" + cofinsOutros.txtvCOFINSOutr.Text);
                    break;
            }

            //COFINS ST
            switch (cboCOFINSST.SelectedIndex)
            {
                case 0:
                    if (cofinsST.rbPercentual.Checked)
                    {
                        _spdNFeDatasetX.SetCampo("vBC_T02=" + cofinsST.txtvBCCOFINSST.Text);
                        _spdNFeDatasetX.SetCampo("pCOFINS_T03=" + cofinsST.txtpCOFINSST.Text);
                    }
                    else
                    {
                        _spdNFeDatasetX.SetCampo("qBCProd_T04=" + cofinsST.txtqBCProdCOFINSST.Text);
                        _spdNFeDatasetX.SetCampo("vAliqProd_T05=" + cofinsST.txtvAliqProdCOFINSST.Text);
                    }
                    _spdNFeDatasetX.SetCampo("vCOFINS_T06=" + cofinsST.txtvCOFINSST.Text);
                    break;
            }

            //IPI
            switch (cboIPI.SelectedIndex)
            {
                case 0://IPI Tributado
                    _spdNFeDatasetX.SetCampo("CNPJProd_O03=" + ipiTrib.txtCNPJProdIPITrib.Text);
                    _spdNFeDatasetX.SetCampo("cSelo_O04=" + ipiTrib.txtcSeloIPITrib.Text);
                    _spdNFeDatasetX.SetCampo("qSelo_O05=" + ipiTrib.txtqSeloIPITrib.Text);
                    if (cboVersao.SelectedIndex > versao50a)
                    {
                        _spdNFeDatasetX.SetCampo("cEnq_O06=" + ipiTrib.txtcEnqIPITrib.Text);
                    }
                    else
                    {
                        _spdNFeDatasetX.SetCampo("clEnq_O02=" + ipiTrib.txtclEnqIPITrib.Text);
                    }
                    _spdNFeDatasetX.SetCampo("cEnq_O06=" + ipiTrib.txtcEnqIPITrib.Text);
                    switch (ipiTrib.cboCSTIPITrib.SelectedIndex)
                    {
                        case 0: _spdNFeDatasetX.SetCampo("CST_O09=00"); break;
                        case 1: _spdNFeDatasetX.SetCampo("CST_O09=49"); break;
                        case 2: _spdNFeDatasetX.SetCampo("CST_O09=50"); break;
                        case 3: _spdNFeDatasetX.SetCampo("CST_O09=99"); break;
                    }
                    if (ipiTrib.rbAliquota.Checked)
                    {
                        _spdNFeDatasetX.SetCampo("vBC_O10=" + ipiTrib.txtvBCIPITrib.Text);
                        _spdNFeDatasetX.SetCampo("pIPI_O13=" + ipiTrib.txtIPITrib.Text);
                    }
                    else
                    {
                        _spdNFeDatasetX.SetCampo("qUnid_O11=" + ipiTrib.txtqUnidIPITrib.Text);
                        _spdNFeDatasetX.SetCampo("vUnid_O12=" + ipiTrib.txtvUnidIPITrib.Text);
                    }
                    _spdNFeDatasetX.SetCampo("vIPI_O14=" + ipiTrib.txtvIPITrib.Text);
                    break;


                case 1://IPI NT
                    if (cboVersao.SelectedIndex > versao50a)
                    {
                        _spdNFeDatasetX.SetCampo("cEnq_O06=" + ipiNTrib.txtcEnqIPINTrib.Text);
                    }
                    else
                    {
                        _spdNFeDatasetX.SetCampo("clEnq_O02=" + ipiNTrib.txtclEnqIPINTrib.Text);
                    }
                    _spdNFeDatasetX.SetCampo("CNPJProd_O03=" + ipiNTrib.txtCNPJProdIPINTrib.Text);
                    _spdNFeDatasetX.SetCampo("cSelo_O04=" + ipiNTrib.txtcSeloIPINTrib.Text);
                    _spdNFeDatasetX.SetCampo("qSelo_O05=" + ipiNTrib.txtqSeloIPINTrib.Text);

                    switch (ipiNTrib.cboCSTIPINTrib.SelectedIndex)
                    {
                        case 0: _spdNFeDatasetX.SetCampo("CST_O09=01"); break;
                        case 1: _spdNFeDatasetX.SetCampo("CST_O09=02"); break;
                        case 2: _spdNFeDatasetX.SetCampo("CST_O09=03"); break;
                        case 3: _spdNFeDatasetX.SetCampo("CST_O09=04"); break;
                        case 4: _spdNFeDatasetX.SetCampo("CST_O09=05"); break;
                        case 5: _spdNFeDatasetX.SetCampo("CST_O09=51"); break;
                        case 6: _spdNFeDatasetX.SetCampo("CST_O09=52"); break;
                        case 7: _spdNFeDatasetX.SetCampo("CST_O09=53"); break;
                        case 8: _spdNFeDatasetX.SetCampo("CST_O09=54"); break;
                        case 9: _spdNFeDatasetX.SetCampo("CST_O09=55"); break;
                    }
                    break;
            }

            //II
            if (cboII.SelectedIndex == 0)
            {
                _spdNFeDatasetX.SetCampo("vBC_P02=" + ii.txtvBCII.Text);
                _spdNFeDatasetX.SetCampo("vDespAdu_P03=" + ii.txtvDespAdu.Text);
                _spdNFeDatasetX.SetCampo("vII_P04=" + ii.txtvII.Text);
                _spdNFeDatasetX.SetCampo("vIOF_P05=" + ii.txtvIOFII.Text);
            }

            // Novo campo da 4.0 - para saber se o item totaliza na nota
            // Maio de 2018: demo suporta apenas versão manual 5.0a e 6.0
            _spdNFeDatasetX.SetCampo("indTot_I17b=1"); // Indica se valor do Item vProd entra no valor total da NF-e vProd

        }

        // Totalizadores da NFe
        private void DadosTotalizadores()
        {
            _spdNFeDatasetX.SetCampo("vBC_W03=0.01");                    // Base de Cálculo do ICMS
            _spdNFeDatasetX.SetCampo("vICMS_W04=0.01");                  // Valor Total do ICMS
            
            _spdNFeDatasetX.SetCampo("vICMSDeson_W04a=0.00");
            
            _spdNFeDatasetX.SetCampo("vBCST_W05=0.00");                  // Base de Cálculo do ICMS Subst. Tributária
            _spdNFeDatasetX.SetCampo("vST_W06=0.00");                    // Valor Total do ICMS Subst. Tributária

            _spdNFeDatasetX.SetCampo("vFCPUFDest_W04c=0.00");
            _spdNFeDatasetX.SetCampo("vICMSUFDest_W04e=0.00");
            _spdNFeDatasetX.SetCampo("vICMSUFRemet_W04g=0.00");
            if (cboVersao.SelectedIndex > versao50a)
            {
                _spdNFeDatasetX.SetCampo("vFCP_W04h=0.00"); // Valor Total do FCP (Fundo de Combate à Pobreza)
                _spdNFeDatasetX.SetCampo("vFCPST_W06a=0.00"); // Valor Total do FCP (Fundo de Combate à Pobreza) retido por substituição tributária
                _spdNFeDatasetX.SetCampo("vFCPSTRet_W06b=0.00"); // Valor Total do FCP retido anteriormente por Substituição Tributária
            }
            
            _spdNFeDatasetX.SetCampo("vProd_W07=0.01");                  // Valor Total de Produtos
            _spdNFeDatasetX.SetCampo("vFrete_W08=0.00");                 // Valor Total do Frete
            _spdNFeDatasetX.SetCampo("vSeg_W09=0.00");                   // Valor Total do Seguro
            _spdNFeDatasetX.SetCampo("vDesc_W10=0.00");                  // Valor Total de Desconto
            _spdNFeDatasetX.SetCampo("vII_W11=0.00");                    // Valor Total do II
            _spdNFeDatasetX.SetCampo("vIPI_W12=0.00");                   // Valor Total do IPI
            if (cboVersao.SelectedIndex > versao50a)
            {
                _spdNFeDatasetX.SetCampo("vIPIDevol_W12a=0.00");             // Valor Total do IPI devolvido
            }
            _spdNFeDatasetX.SetCampo("vPIS_W13=0.01");                   // Valor Toal do PIS
            _spdNFeDatasetX.SetCampo("vCOFINS_W14=0.01");                // Valor Total do COFINS
            _spdNFeDatasetX.SetCampo("vOutro_W15=0.00");                 // OUtras Despesas Acessórias
            _spdNFeDatasetX.SetCampo("vNF_W16=0.01");                    // Valor Total da NFe - Versão Trial só aceita NF até R$ 1.00

            if (chkNotaConjugada.Checked)
            {
                _spdNFeDatasetX.SetCampo("vServ_W18=0.01");     // Valor Total dos serviços não tributados pelo ICMS
                _spdNFeDatasetX.SetCampo("vBC_W19=0.01");       // Valor de Base de Cálculo do ISS
                _spdNFeDatasetX.SetCampo("vISS_W20=0.01");      // Valor Total ISS 
                _spdNFeDatasetX.SetCampo("vPIS_W21=0.01");      // Valor do PIS sobre serviços
                _spdNFeDatasetX.SetCampo("vCOFINS_W22=0.01");   // Valor do COFINS sobre serviços
                DateTime dat = DateTime.Now;
                _spdNFeDatasetX.SetCampo("dCompet_W22a=" + dat.ToString("yyyyMMdd"));   // Data da prestação do serviço
                _spdNFeDatasetX.SetCampo("vDeducao_W22b=0.01");   // Valor dedução para redução da Base de Cálculo
                _spdNFeDatasetX.SetCampo("vOutro_W22c=0.01");   // Valor outras retenções 
                _spdNFeDatasetX.SetCampo("vDescIncond_W22d=0.01");   // Valor desconto incondicionado 
                _spdNFeDatasetX.SetCampo("vDescCond_W22e=0.01");   // Valor desconto condicionado
                _spdNFeDatasetX.SetCampo("vISSRet_W22f=0.01");   // Valor total retenção ISS 
                _spdNFeDatasetX.SetCampo("cRegTrib_W22g=1");   // Código do Regie especial de tributação
            }
            _spdNFeDatasetX.SetCampo("modFrete_X02=9"); // Modalidade do Frete
        }

        // Dados do Transporte da NFe
        private void DadosTransporte()
        {
            _spdNFeDatasetX.SetCampo("modFrete_X02=0");                 // Modalidade de Frete - Novas modalidades no Manual 4.0 - ver manual
            _spdNFeDatasetX.SetCampo("CNPJ_X04=03150059000154");        // CNPJ
            _spdNFeDatasetX.SetCampo("xNome_X06=ANDRE MARCIANO");       // Razão Social
            _spdNFeDatasetX.SetCampo("IE_X07=280589948");               // Inscrição Estadual
            _spdNFeDatasetX.SetCampo("xEnder_X08=AVE PANAMA");          // Endereço completo
            _spdNFeDatasetX.SetCampo("xMun_X09=IVINHEMA");              // Nome do município
            _spdNFeDatasetX.SetCampo("UF_X10=MS");                      // Sigla da UF
            _spdNFeDatasetX.SetCampo("placa_X19=ACB0908");              // Placa do veículo
            _spdNFeDatasetX.SetCampo("uf_X20=PR");                      // Sigla da UF
            _spdNFeDatasetX.SetCampo("rntc_X21=123456");                // Registro Nacional do Transportador
            _spdNFeDatasetX.SetCampo("qVol_X27=1");                     // Quantidade de Volumes Transportados
            _spdNFeDatasetX.SetCampo("esp_X28=ESPECIE");                // Espécie dos Volumes Transportados
            _spdNFeDatasetX.SetCampo("marca_X29=MARCA");                // Marca dos Volumes Transportados
            _spdNFeDatasetX.SetCampo("nVol_X30=1");                     // Numeração dos Volumes Transportados
            _spdNFeDatasetX.SetCampo("pesoL_X31=1000");                 // Peso Líquido em Kg
            _spdNFeDatasetX.SetCampo("pesoB_X32=1000");                 // Peso Bruto em Kg

            for (int i = 0; i < 3; i++)
            {
                _spdNFeDatasetX.IncluirParte("LACRE");
                _spdNFeDatasetX.SetCampo("nLacre_X34=12345" + i);
                _spdNFeDatasetX.SalvarParte("LACRE");
            }
        }

        //dados para nota de veiculos novo
        private void VeiculosNovos()
        {
              _spdNFeDatasetX.SetCampo("tpOp_J02=1");                   // Tipo da operacao
              _spdNFeDatasetX.SetCampo("chassi_J03=9D2KC08104R026030"); // Chassi do veiculo
              _spdNFeDatasetX.SetCampo("cCor_J04=1234");                // Cor
              _spdNFeDatasetX.SetCampo("xCor_J05=Preto prata");         // Descrição da Cor
              _spdNFeDatasetX.SetCampo("pot_J06=2000");                 // Potencia Motor
              _spdNFeDatasetX.SetCampo("cilin_J07=20");                 // Cilindradas
              _spdNFeDatasetX.SetCampo("pesoL_J08=1000");               // Peso Liquido
              _spdNFeDatasetX.SetCampo("pesoB_J09=1000");               // Peso Bruto
              _spdNFeDatasetX.SetCampo("nSerie_J10=123456789");         // Serial serie
              _spdNFeDatasetX.SetCampo("tpComb_J11=123456789");         // Tipo de combustivel
              _spdNFeDatasetX.SetCampo("nMotor_J12=1234567890");        // Numero de Motor
              _spdNFeDatasetX.SetCampo("CMT_J13=123456789");            // Capacidade Maxima de Tração
              _spdNFeDatasetX.SetCampo("dist_J14=1234");                // Distancia entre eixos
              //_spdNFeDatasetX.SetCampo("RENAVAM_J15=123456789");      // RENAVAM
              _spdNFeDatasetX.SetCampo("anoMod_J16=1234");              // Ano Modelo de Fabricação
              _spdNFeDatasetX.SetCampo("anoFab_J17=1234");              // Ano de Fabricação
              _spdNFeDatasetX.SetCampo("tpPint_J18=1");                 // Tipo de Pintura
              _spdNFeDatasetX.SetCampo("tpVeic_J19=99");                // Tipo de Veiculo
              _spdNFeDatasetX.SetCampo("espVeic_J20=1");                // Especie de Veiculo
              _spdNFeDatasetX.SetCampo("VIN_J21=N");                    // Condição do VIN
              _spdNFeDatasetX.SetCampo("condVeic_J22=1");               // Condição do Veiculo
              _spdNFeDatasetX.SetCampo("cMod_J23=999999");              // Código Marca Modelo
              _spdNFeDatasetX.SetCampo("cCorDENATRAN_J24=02");          // Código da Cor (Regra DENATRAN)
              _spdNFeDatasetX.SetCampo("lota_J25=5");                   // Capacidade Maxima de Lotação
              _spdNFeDatasetX.SetCampo("tpRest_J26=0");                 // Restrição
              _spdNFeDatasetX.SetCampo("nRECOPI_L109=123");             // Numero do RECOPI
        }

        //armamentos
        private void Armamento()
        {
            _spdNFeDatasetX.IncluirParte("L");
	        _spdNFeDatasetX.SetCampo("tpArma_L02=0");                  // 0 - Uso permitido; 1 - Uso restrito
	        _spdNFeDatasetX.SetCampo("nSerie_L03=123456789");          // Número de série da arma
            _spdNFeDatasetX.SetCampo("nCano_L04=123456789");           // Número de série da cano
	        _spdNFeDatasetX.SetCampo("descr_L05=Descricao completa");  // Descrição completa da arma
           // _spdNFeDatasetX.SetCampo("nRECOPI_L109=123");             // Numero do RECOPI
            _spdNFeDatasetX.SalvarParte("L");
        }

        //cana de açucar
        private void CanaAcucar()
        {
              _spdNFeDatasetX.SetCampo("safra_ZC02=2010");      // Identificação da safra
              _spdNFeDatasetX.SetCampo("ref_ZC03=12/2010");     // Mês e ano de referência
              _spdNFeDatasetX.SetCampo("qTotMes_ZC07=1000.00"); // Quantidade Total do Mês
              _spdNFeDatasetX.SetCampo("qTotAnt_ZC08=1000.00"); // Quantidade Total Anterior
              _spdNFeDatasetX.SetCampo("qTotGer_ZC09=2000.00"); // Quantidade Total Geral

              _spdNFeDatasetX.IncluirParte("FORDIA");
              _spdNFeDatasetX.SetCampo("dia_ZC05=10");          // Dia
              _spdNFeDatasetX.SetCampo("qtde_ZC06=1000");       // Quantidade
              _spdNFeDatasetX.SalvarParte("FORDIA");

              _spdNFeDatasetX.IncluirParte("FORDIA");
              _spdNFeDatasetX.SetCampo("dia_ZC05=11");          // Dia
              _spdNFeDatasetX.SetCampo("qtde_ZC06=1000");       // Quantidade
              _spdNFeDatasetX.SalvarParte("FORDIA");

              _spdNFeDatasetX.IncluirParte("DEDUC");
              _spdNFeDatasetX.SetCampo("xDed_ZC11=descricao da deducao");   // Descrição da Dedução
              _spdNFeDatasetX.SetCampo("vDed_ZC12=0.01");                   // Valor da Dedução
              _spdNFeDatasetX.SetCampo("vFor_ZC13=0.01");                   // Valor dos Fornecimentos
              _spdNFeDatasetX.SetCampo("vTotDed_ZC14=0.01");                // Valor Total da Dedução
              _spdNFeDatasetX.SetCampo("vLiqFor_ZC15=0.01");                // Valor Líquido dos Fornecimentos
//              _spdNFeDatasetX.SetCampo("nRECOPI_L109=123");             // Numero do RECOPI
              _spdNFeDatasetX.SalvarParte("DEDUC");
        }

        // Combustiveis
        private void Combustiveis()
        {
            _spdNFeDatasetX.SetCampo("cProdANP_L102=123456789");          // tam-(9)  Código de produto da ANP
            _spdNFeDatasetX.SetCampo("CODIF_L103=111111111111111111111"); // tam-(21) Código  de  autorizacao registro do CODIF
            _spdNFeDatasetX.SetCampo("qTemp_L104=30000.0000");            // tam-(16) Quantidade de combustível faturada a temperatura ambiente
            _spdNFeDatasetX.SetCampo("UFCons_L120=SP");                   // tam-(2)  Sigla da UF de consumo
            _spdNFeDatasetX.SetCampo("qBCProd_L106=20055.0000");          // tam-(16) BC da CIDE
            _spdNFeDatasetX.SetCampo("vAliqProd_L107=6.0000");            // tam-(15) Valor da alíquota da CIDE
            _spdNFeDatasetX.SetCampo("vCIDE_L108=1203.30");               // tam-(15) Valor da CIDE
            _spdNFeDatasetX.SetCampo("nRECOPI_L109=123");             // Numero do RECOPI
            if (cboVersao.SelectedIndex > versao50a)
            {
                _spdNFeDatasetX.SetCampo("descANP_LA03=Descricao ANP");   // Descrição do produto conforme ANP
                _spdNFeDatasetX.SetCampo("pGLP_LA03a=50.0000");   // Percentual do GLP derivado do petróleo no produto GLP (cProdANP=210203001)
                _spdNFeDatasetX.SetCampo("pGNn_LA03b=30.0000");   // Percentual de Gás Natural Nacional – GLGNn para o produto GLP (cProdANP=210203001)
                _spdNFeDatasetX.SetCampo("pGNi_LA03c=20.0000");   // Percentual de Gás Natural Importado – GLGNi para o produto GLP (cProdANP=210203001)
                _spdNFeDatasetX.SetCampo("vPart_LA03d=100.00");    // Valor de partida (cProdANP=210203001)
            }
            else
            {
                _spdNFeDatasetX.SetCampo("pMixGN_LA03=12");   // Percentual de Gás Natural para o produto GLP (cProdANP=210203001)
            }
        }

        //Medicamentos
        private void Medicamentos()
        {
              _spdNFeDatasetX.IncluirParte("K");
              if (cboVersao.SelectedIndex > versao50a)
              {
                  _spdNFeDatasetX.SetCampo("cProdANVISA=01234567890123");  // Código de Produto da ANVISA
              }
              else
              {
                  _spdNFeDatasetX.SetCampo("nLote_K02=12345678901234567890");   //Número do Lote do Medicamento e de matérias-primas farmacêuticas
                  _spdNFeDatasetX.SetCampo("qLote_K03=100");                    // Quantidade de Produto no Lote das matérias-primas farmacêuticas
                  _spdNFeDatasetX.SetCampo("dFab_K04=2009-01-01");              // Data de Fabricação
                  _spdNFeDatasetX.SetCampo("dVal_K05=2009-03-01");              // Data de Validade
              }
              _spdNFeDatasetX.SetCampo("vPMC_K06=10.00");                   // Preço Máximo Consumidor
             // _spdNFeDatasetX.SetCampo("nRECOPI_L109=123");             // Numero do RECOPI
              _spdNFeDatasetX.SalvarParte("K");
        }

        //Rastreabilidade
        private void Rastro()
        {
            _spdNFeDatasetX.SetCampo("nLote_I81=12345678901234567890"); //Número do Lote do produto
            _spdNFeDatasetX.SetCampo("qLote_I82=100.000"); // Quantidade de produto no Lote
            _spdNFeDatasetX.SetCampo("dFab_I83=2018-01-01"); // Data de fabricação/ Produção
            _spdNFeDatasetX.SetCampo("dVal_I84=2018-03-01"); // Data de validade
            _spdNFeDatasetX.SetCampo("cAgreg_I85=12345678901234567890"); // Código de Agregação
        }

        //Dados de exportação
        private void Exportacao()
        {
            _spdNFeDatasetX.IncluirParte("DETEXPORT");
            {
                _spdNFeDatasetX.SetCampo("nDraw_I51=01234567890");
            }
            _spdNFeDatasetX.IncluirParte("EXPORTIND");
            _spdNFeDatasetX.SetCampo("nRE_I53=123456789012");
            _spdNFeDatasetX.SetCampo("chNFe_I54=43131294814886000150550010000006431004640320");
            _spdNFeDatasetX.SetCampo("qExport_I55=1");
            _spdNFeDatasetX.SalvarParte("EXPORTIND");
            _spdNFeDatasetX.SalvarParte("DETEXTPORT");

            _spdNFeDatasetX.SetCampo("UFSaidaPais_ZA02=SP");          // Sigla da UF onde ocorrerá o Embarque dos produtos
            _spdNFeDatasetX.SetCampo("xLocExporta_ZA03=São Paulo");   // Descrição do Local de Embarqueou ou de transposição de fronteira
            _spdNFeDatasetX.SetCampo("xLocDespacho_ZA04=Vila funda"); //  Descrição do local de despacho
        }

        //Informações de Pagamento
        //Obrigatório o preenchimento do Grupo Informações de Pagamento para NF-e e NFC-e.
        //Para as notas com finalidade de Ajuste ou Devolução o campo Forma de Pagamento deve ser preenchido com 90=Sem Pagamento.
        private void DadosPagamento()
        {
            if (cboVersao.SelectedIndex > versao50a)
            {
                //Grupo de Informações de Pagamento
                _spdNFeDatasetX.IncluirParte("YA");
                _spdNFeDatasetX.SetCampo("tPag_YA02=15");
                //0= Pagamento à Vista 1= Pagamento à Prazo
                //Forma de pagamento
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

                _spdNFeDatasetX.SetCampo("vPag_YA03=0.01");  //Valor do Pagamento
                _spdNFeDatasetX.SetCampo("tpIntegra_YA04a=2"); // Tipo de Integração para pagamento

                // Grupo de Cartões
                _spdNFeDatasetX.SetCampo("CNPJ_YA05=01234567890123");  // CNPJ da Credenciadora de cartão de crédito e/ou débito
                _spdNFeDatasetX.SetCampo("tBand_YA06=01");  // Bandeira da operadora de cartão de crédito e/ou débito
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
                _spdNFeDatasetX.SetCampo("cAut_YA07=12345678901234567890");  // Número de autorização da operação cartão de crédito e/ou débito
                _spdNFeDatasetX.SetCampo("vTroco_YA09=0.00");  // Número de autorização da operação cartão de crédito e/ou débito
                _spdNFeDatasetX.SalvarParte("YA");
            }
        }

        // Dados De Cobrança
        private void DadosCobranca()
        {
            int i = 1;
            int mes = 1;
            string sMes;
            // Dados da Fatura //
            _spdNFeDatasetX.SetCampo("nFat_Y03=2000");            // Número da Farura
            _spdNFeDatasetX.SetCampo("vOrig_Y04=1000.00");        // Valor Original da Fatura
            _spdNFeDatasetX.SetCampo("vDesc_Y05=100.00");         // Valor do Desconto
            _spdNFeDatasetX.SetCampo("vLiq_Y06=900.00");          // Valor Líquido da Fatura

            //1 Fatura  - 3 Duplicatas
            for (i = 1; i < 3; i++)
            {
                _spdNFeDatasetX.IncluirCobranca();
                mes = mes + 1;
                if (mes < 10)
                    sMes = "0" + mes;
                else
                    sMes = mes.ToString();
                // Duplicatas
                _spdNFeDatasetX.SetCampo("nDup_Y08=" + i);           // Número da Duplicata

                _spdNFeDatasetX.SetCampo("dVenc_Y09=2010-" + sMes + "-25"); // Data de Vencimento da Duplicata
                _spdNFeDatasetX.SetCampo("vDup_Y10=900.00"); // Valor da Duplicata

                _spdNFeDatasetX.SalvarCobranca(); // Grava a Duplicata em questão.
                // Incrementa Parcela p/ cada Mês
            }

        }

        // Dados Adicionais da NFe - Observações
        private void DadosAdicionais()
        {
            _spdNFeDatasetX.SetCampo("infAdFisco_Z02=OBSERVACAO TESTE DA DANFE - FISCO");     // INteresse do Fisco
            _spdNFeDatasetX.SetCampo("infCpl_Z03=OBSERVACAO TESTE DA DANFE - CONTRIBUINTE");  // Interesse da Empresa			
        }

        //cria arquivo temporario e retorna o caminho para ser usado
        // no Método navigator do webBrowser
        public String PreencherWebBrowser(String xml, String NomeArquivo)
        {
            String caminho="";
            xDoc.LoadXml(xml);
            xDoc.Save(appPath + NomeArquivo + ".xml");
            caminho = appPath + NomeArquivo + ".xml";
            return caminho;
        }

        private void btnAssinarNota_Click(object sender, EventArgs e)
        {
            try
            {
                //---------Método do componente que faz a assinatura digital------
                rtbXmlNotaAssinado.Text = _spdNFeX.AssinarNota(fNFe.Text);
                //----------------------------------------------------------------

                wbXmlNotaAssinado.Navigate(PreencherWebBrowser(rtbXmlNotaAssinado.Text, "NotaAssinada"));
                fNFe.Text = rtbXmlNotaAssinado.Text;

                btnAvancar.Enabled = true;
            }
            catch (Exception ex) {
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnEnviarNota_Click(object sender, EventArgs e)
        {
            try
            {
                _spdNFeX.ValidarEsquemaAntesEnvio = true;
                btnEnviarNota.Enabled = false;

                //-------Método do componente que envia a nota para o Sefaz-----------
                if (!rbEnvSinc.Checked)
                {
                    rtbXMLenvio.Text = _spdNFeX.EnviarNF("00001",fNFe.Text, false);    
                }else
                    rtbXMLenvio.Text = _spdNFeX.EnviarNFSincrono("00001", fNFe.Text, false);
                //--------------------------------------------------------------------
                wbXMLenvio.Navigate(PreencherWebBrowser(rtbXMLenvio.Text, "NotaEnviada"));
                xDoc.LoadXml(rtbXMLenvio.Text);

                txtStatusEnvio.Text = xDoc.GetElementsByTagName("cStat").Item(0).InnerText;
                txtMotivoEnvio.Text = removeCaractereEspecial(xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText);

                if (rbEnvSinc.Checked)
                {
                    if (txtStatusEnvio.Text == "104")//104 é o código que é retornado quando a nota é recebida pelo Sefaz
                    {
                        btnAvancar.Enabled = true;
                    }
                }
                else
                {
                    txtNumeroRecibo.Text = xDoc.GetElementsByTagName("nRec").Item(0).InnerText;
                    txtNumeroReciboCom.Text = txtNumeroRecibo.Text;

                    if (txtStatusEnvio.Text == "103")//103 é o código que é retornado quando a nota é recebida pelo Sefaz
                    {
                        btnAvancar.Enabled = true;
                    }
                }

                btnEnviarNota.Enabled = true;
            }
            catch(Exception ex){
                btnEnviarNota.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnConsultaRecibo_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNumeroReciboCom.Text))
            {
                MessageBox.Show("O Número de Recibo deve estar preenchido.");
                if (txtNumeroReciboCom.CanFocus)
                    txtNumeroReciboCom.Focus();
                return;
            }

            string status;
            btnConsultaRecibo.Enabled = false;
            try
            {
                //-------------Utilização do componente para consultar o recibo da nota------------
                rtbXmlConsulta.Text = _spdNFeX.ConsultarRecibo(txtNumeroReciboCom.Text);
                //---------------------------------------------------------------------------------
                wbXMLconsulta.Navigate(PreencherWebBrowser(rtbXmlConsulta.Text, "ConsultaReciboNFe"));

                xDoc.LoadXml(rtbXmlConsulta.Text);
                //pega o conteudo de dentro da tag infProt
                
                txtStatusConsulta.Text = xDoc.GetElementsByTagName("cStat").Item(0).InnerText;
                if (txtStatusConsulta.Text == "104")
                {
                    status = xDoc.GetElementsByTagName("infProt").Item(0).InnerXml;
                    //adiciona um cabeçario
                    status = "<Protocolo>" + status + "</Protocolo>";
                    xDoc.LoadXml(status);
                    //pega o conteudo cStat e xMotivo que estava dentro da tag infProt
                    txtStatusConsulta.Text = xDoc.GetElementsByTagName("cStat").Item(0).InnerText;
                    txtMotivoConsulta.Text = removeCaractereEspecial(xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText);
                    btnConsultaRecibo.Enabled = true;

                    if (txtStatusConsulta.Text == "100") //100 é quando o uso da NFe foi autorizado
                    {
                        txtProtocoloAutorizacao.Text = xDoc.GetElementsByTagName("nProt").Item(0).InnerText;
                        btnAvancar.Enabled = true;
                        txtCancChaveNota.Text = txtChaveNota.Text;
                        txtCancProtocoloAut.Text = txtProtocoloAutorizacao.Text;
                    }
                }
                else
                {
                    txtMotivoConsulta.Text = removeCaractereEspecial(xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText);
                }
            }
            catch (Exception ex) {
                btnConsultaRecibo.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnConsultarChave_Click(object sender, EventArgs e)
        {
            btnConsultarChave.Enabled = false;
            try
            {
                //----Utilização do componente para consultar a chave da nota------
                rtbXmlConsulta.Text = _spdNFeX.ConsultarNF(txtChaveNotaCom.Text);
                //-----------------------------------------------------------------
                wbXMLconsulta.Navigate(PreencherWebBrowser(rtbXmlConsulta.Text, "ConsultaReciboNFe"));

                xDoc.LoadXml(rtbXmlConsulta.Text);
                txtStatusConsulta.Text = xDoc.GetElementsByTagName("cStat").Item(0).InnerText;
                txtMotivoConsulta.Text = removeCaractereEspecial(xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText);

                if (txtStatusConsulta.Text == "100") //100 é quando o uso da NFe foi autorizado
                {
                    txtProtocoloAutorizacao.Text = xDoc.GetElementsByTagName("nProt").Item(0).InnerText;
                    btnAvancar.Enabled = true;
                    txtCancChaveNota.Text = txtChaveNota.Text;
                    txtCancProtocoloAut.Text = txtProtocoloAutorizacao.Text;
                }
                btnConsultarChave.Enabled = true;
            }
            catch (Exception ex)
            {
                btnConsultarChave.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnEnviar_Click(object sender, EventArgs e)
        {
            string lista = "";
            btnEnviar.Enabled = false;
            try
            {
                this.Cursor = Cursors.WaitCursor;

                if (txtEnviarEmailDestinatario.Text != "")
                {
                    _spdNFeX.EmailDestinatario = txtEnviarEmailDestinatario.Text;
                }
                if (clbAnexos.Items.Count == 0)
                {
                    //---------Utiliza o componente para enviar o email------------
                    _spdNFeX.EnviarNotaDestinatario(txtChaveNota.Text, "", "");
                    //-------------------------------------------------------------                    
                }
                else
                {
                    for (int i = 0; i < clbAnexos.Items.Count; i++)
                    {
                        if (lista == "")
                        {
                            if (clbAnexos.GetItemChecked(i))
                            {
                                lista = lista + clbAnexos.Items[i];
                            }
                        }
                        else
                        {
                            if (clbAnexos.GetItemChecked(i))
                            {
                                lista = lista + ","+ clbAnexos.Items[i];
                            }
                        }
                    }
                    //---------usando o componente para enviar email com anexo------
                    _spdNFeX.EnviarNotaDestinatarioAnexos("", CaminhoXMLNfe(txtChaveNota.Text), lista);
                    //--------------------------------------------------------------
                }
                
                btnEnviar.Enabled = true;
                this.Cursor = Cursors.Default;
            }
            catch (Exception ex) {
                this.Cursor = Cursors.Default;
                btnEnviar.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        public string CaminhoXMLNfe(string chaveNota)
        {
            string fCaminho;
            fCaminho = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase).Replace("\\", "//").Remove(0, 7);
            fCaminho = fCaminho + "\\XmlDestinatario\\" + chaveNota + "-nfe.xml";

            return fCaminho;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            try{
                //Método do componente que edita abre o editor da danfe
                _spdNFeX.EditarModeloDanfe("0000", ReadFile(txtChaveNota.Text, "-nfe"), txtModeloRTM.Text);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnAbrirXmlDest_Click(object sender, EventArgs e)
        {
            //abre um arquivo pelo note pad
            System.Diagnostics.Process.Start(CriaTxt(rtbXMLinfo.Text,"NFeInfo"));
        }

        private void btnVisualizar_Click(object sender, EventArgs e)
        {
            try
            {
                //Método do componente para visualizar a danfe
                _spdNFeX.VisualizarDanfe("0000", ReadFile(txtChaveNota.Text, "-nfe"), txtModeloRTM.Text);
            }
            catch (Exception ex) {
                MessageBox.Show(ex.ToString());
            }
        }
        
        //lê o conteudo 
        public string ReadFile(string Arquivo, string extencao) {
            string xml = txtXmlDestinatario.Text + Arquivo + extencao + ".xml";
            xDoc.Load(xml);
            return xDoc.InnerXml;
        }

        private void btnImprimir_Click(object sender, EventArgs e)
        {
            try
            {
                //-------Método do componente para Imprimir a danfe ---------------
                _spdNFeX.ImprimirDanfe("0000", ReadFile(txtChaveNota.Text, "-nfe"), txtModeloRTM.Text, cboImpressora.Text);
                //-----------------------------------------------------------------
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            try
            {
                //Método do componente para visualizar a danfe
                _spdNFeX.ExportarDanfe("0000", ReadFile(txtChaveNota.Text, "-nfe"), txtModeloRTM.Text, 1, txtExportarDanfe.Text);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        public String CriaTxt(String xml, String NomeArquivo)
        {
            String caminho = "";
            xDoc.LoadXml(xml);
            xDoc.Save(appPath + NomeArquivo + ".txt");
            caminho = appPath + NomeArquivo + ".txt";
            return caminho;
        }

        //Método de validação de CNPJ
        public bool ValidaCnpj(string cnpj)
        {
            int[] multiplicador1 = new int[12] { 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
            int[] multiplicador2 = new int[13] { 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
            int soma;
            int resto;
            string digito;
            string tempCnpj;

            cnpj = cnpj.Trim();
            cnpj = cnpj.Replace(".", "").Replace("-", "").Replace("/", "");
            
            if (cnpj.Length != 14)
                return false;

            tempCnpj = cnpj.Substring(0, 12);
            soma = 0;
            for (int i = 0; i < 12; i++)
                soma += int.Parse(tempCnpj[i].ToString()) * multiplicador1[i];
            resto = (soma % 11);

            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;

            digito = resto.ToString();
            tempCnpj = tempCnpj + digito;
            soma = 0;

            for (int i = 0; i < 13; i++)
                soma += int.Parse(tempCnpj[i].ToString()) * multiplicador2[i];
            resto = (soma % 11);

            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;

            digito = digito + resto.ToString();
            return cnpj.EndsWith(digito);
        }

        private void btnSaveConfig_Click(object sender, EventArgs e)
        {
            if (cont == 0 || cont == 1) //caso esteja na tela de configurações ou configurações de email
            {
                SalvarIniConfig();
            }
            else if (cont == 4)//caso esteja na tela do Emitente
            {
                SalvarIniEmit();
            }
            else if (cont == 5)//caso esteja na tela do Destinatario
            {
                SalvarIniDest();
            }
        }
        
        private void SalvarIniDest()
        {
            //localizando o arquivo .ini com os dados do Destinatario
            string filelocation = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase).Replace("\\", "//").Remove(0, 7);
            IniFile ini = new IniFile(filelocation + "//nfeEmitDest.ini");
            
            ini.IniWriteValue("Destinatario", "RazaoSocial",txtRazaoSocialDest.Text);
            ini.IniWriteValue("Destinatario", "CPFCNPJ", txtCpfCnpjDest.Text);
            ini.IniWriteValue("Destinatario", "Endereço", txtEnderecoDest.Text);
            ini.IniWriteValue("Destinatario", "Numero", txtNumeroDest.Text);
            ini.IniWriteValue("Destinatario", "Complento", txtComplementoDest.Text);
            ini.IniWriteValue("Destinatario", "Bairro", txtBairroDest.Text);
            ini.IniWriteValue("Destinatario", "CEP", txtCepDest.Text);
            ini.IniWriteValue("Destinatario", "Cidade", txtCidadeDest.Text);
            ini.IniWriteValue("Destinatario", "CodigoIBGECidade",txtCodCidIbgeDest.Text);
            ini.IniWriteValue("Destinatario", "UF", cboUfDest.SelectedItem.ToString());
            ini.IniWriteValue("Destinatario", "Pais", txtPaisDest.Text);
            ini.IniWriteValue("Destinatario", "CodigoIBGEPais", txtcodPaisIbgeDest.Text);
            ini.IniWriteValue("Destinatario", "Telefone", txtTelefoneDest.Text);
            ini.IniWriteValue("Destinatario", "IE", txtIeDest.Text);
            ini.IniWriteValue("Destinatario", "ISUF", txtIsufDest.Text);
            ini.IniWriteValue("Destinatario", "Email", txtEmailDest.Text);
        }

        private void SalvarIniEmit()
        {
            //localizando o arquivo .ini com os dados do Emitente
            string filelocation = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase).Replace("\\", "//").Remove(0, 7);
            IniFile ini = new IniFile(filelocation + "//nfeEmitDest.ini");
            
            //preenchendo emitente
            ini.IniWriteValue("Emitente", "RazaoSocial", txtRazaoSocialEmit.Text);
            ini.IniWriteValue("Emitente", "CPFCNPJ", txtCpfCnpjEmit.Text);
            ini.IniWriteValue("Emitente", "Endereço", txtEnderecoEmit.Text);
            ini.IniWriteValue("Emitente", "Numero", txtNumeroEmit.Text);
            ini.IniWriteValue("Emitente", "Complemento", txtComplementoEmit.Text);
            ini.IniWriteValue("Emitente", "Bairro", txtBairroEmit.Text);
            ini.IniWriteValue("Emitente", "CEP", txtCepEmit.Text);
            ini.IniWriteValue("Emitente", "Cidade", txtCidadeEmit.Text);
            ini.IniWriteValue("Emitente", "CodigoIBGECidade", txtCodCidIbgeEmit.Text);
            ini.IniWriteValue("Emitente", "UF", cboUfEmit.SelectedItem.ToString());
            ini.IniWriteValue("Emitente", "Pais", txtPaisEmit.Text);
            ini.IniWriteValue("Emitente", "CodigoIBGEPais", txtCodPaisIbgeEmit.Text);
            ini.IniWriteValue("Emitente", "Telefone", txtTelefoneEmit.Text);
            ini.IniWriteValue("Emitente", "IE", txtIeEmit.Text);
            ini.IniWriteValue("Emitente", "IESubstitutoTributario", txtIeSubTribEmit.Text);
            ini.IniWriteValue("Emitente", "InscricaoMunicipal", txtInscricaoMunicipalEmit.Text);
            ini.IniWriteValue("Emitente", "CNAEFiscal", txtCnaeEmit.Text);
            ini.IniWriteValue("Emitente", "NomeFantasia", txtNomeFantasiaEmit.Text);

            switch (cboCodRegimeTrib.SelectedItem.ToString())
            {
                case "Simples Nacional":
                    ini.IniWriteValue("Emitente", "CodigoRegimeTributario", "1");
                    break;
                case "Simples Nacional - excesso de sublimite de receita bruta":
                    ini.IniWriteValue("Emitente", "CodigoRegimeTributario", "2");
                    break;
                case "Regime Normal":
                    ini.IniWriteValue("Emitente", "CodigoRegimeTributario", "3");
                    break;
            }
        }

        //Método que salva as alterções feitas nos campos de configuração no arquivo NFeConfig.ini
        private void SalvarIniConfig()
        {        
            //localizando o arquivo .ini com os dados de configuração
            string filelocation = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase).Replace("\\", "//").Remove(0, 7);
            IniFile ini = new IniFile(filelocation + "//nfeConfig.ini");

            //configurações da NFe
            ini.IniWriteValue("NFE", "UF", cboUF.SelectedItem.ToString());
            ini.IniWriteValue("NFE", "CNPJ", txtCnpj.Text);
            ini.IniWriteValue("NFE", "ArquivoServidoresHom", txtServHomolog.Text);
            ini.IniWriteValue("NFE", "DiretorioEsquemas", txtDirEsquema.Text);
            ini.IniWriteValue("NFE", "DiretorioTemplates", txtDirTemplate.Text);
            ini.IniWriteValue("NFE", "DiretorioLog", txtDirLog.Text);
            ini.IniWriteValue("NFE", "PinCode", txtPinCode.Text);
            ini.IniWriteValue("NFE", "ValidarEsquema", chkValidEsquema.Checked ? "1" : "0");
            ini.IniWriteValue("NFE", "NomeCertificado", cboNomeCertificado.Text.Trim());
            ini.IniWriteValue("NFE", "VersaoManual", cboVersao.SelectedItem.ToString());
            ini.IniWriteValue("NFE", "ArquivoServidoresProd", txtServProd.Text);
            ini.IniWriteValue("NFE", "DiretorioXmlDestinatario", txtXmlDestinatario.Text);
            ini.IniWriteValue("NFE", "AnexarDanfePDF", chkAnexarDanfePdf.Checked ? "1" : "0");   
            ini.IniWriteValue("NFE", "MaxSizeLoteEnvio", txtMaxSizeLoteEnvio.Text); 
            
            //campo ambiente
            ini.IniWriteValue("NFE", "Ambiente", (cboAmbiente.SelectedItem.ToString() == "Produção") ? "1" : "2");

            //campo tipoCertificado
            switch (cboTipoCertificado.SelectedIndex)
            {
                case 0:
                    ini.IniWriteValue("NFE", "TipoCertificado", "ActiveDiretory");
                    break;
                case 1:
                    ini.IniWriteValue("NFE", "TipoCertificado","File");
                    break;
                case 2:
                    ini.IniWriteValue("NFE", "TipoCertificado", "LocalMachine");
                    break;
                case 3:
                    ini.IniWriteValue("NFE", "TipoCertificado", "Memory");
                    break;
                case 4:
                    ini.IniWriteValue("NFE", "TipoCertificado", "SmartCard");
                    break;
            }

            //--------------- Adicionado configurações para proxy NFe---------------------------
            ini.IniWriteValue("NFE", "Proxy", txtProxy.Text);
            ini.IniWriteValue("NFE", "Usuario", txtUsuario.Text);
            ini.IniWriteValue("NFE", "Senha", txtSenha.Text);
            ini.IniWriteValue("NFE", "TimeOut", txtTimeOut.Text);


            //---------------fim das configurações da NFe---------------------------

            //--------------configurações do Email----------------------------------
            ini.IniWriteValue("MAIL", "Servidor", txtServidor.Text);
            ini.IniWriteValue("MAIL", "EmailRemetente", txtEmailRemetente.Text);
            ini.IniWriteValue("MAIL", "EmailDestinatario", txtEmailDestinatario.Text);
            ini.IniWriteValue("MAIL", "Assunto", txtAssunto.Text);
            ini.IniWriteValue("MAIL", "Mensagem", rtbEmailMensagem.Text);
            ini.IniWriteValue("MAIL", "Usuario", txtEmailUsuario.Text);
            ini.IniWriteValue("MAIL", "Senha", txtEmailSenha.Text);

            //--------------adicionado configurações CC, CCo e Porta do Email----------------------------------
            ini.IniWriteValue("MAIL", "CC", txtCC.Text.Trim());
            ini.IniWriteValue("MAIL", "CCo", txtCCo.Text.Trim());
            ini.IniWriteValue("MAIL", "Porta", txtPorta.Text.Trim());
            ini.IniWriteValue("MAIL", "TimeOut", txtEmailTimeOut.Text.Trim());
            ini.IniWriteValue("MAIL", "Autenticacao", chkAutenticacao.Checked ? "1" : "0");

            //-------------fim das configurações do email--------------------------

            //--------------configurações da Danfe---------------------------------
            ini.IniWriteValue("DANFE", "FraseContingencia", txtFraseContigencia.Text);
            ini.IniWriteValue("DANFE", "FraseHomologacao", txtFraseHomolog.Text);
            ini.IniWriteValue("DANFE", "ModeloRetrato", txtModeloRetrato.Text);
            ini.IniWriteValue("DANFE", "ModeloPaisagem", txtModeloPaisagem.Text);
            ini.IniWriteValue("DANFE", "LineDelimiter", txtLineDelimiter.Text);
            ini.IniWriteValue("DANFE", "LogotipoEmitente", txtLogoTipoEmitente.Text);
            ini.IniWriteValue("DANFE", "QtdeCopias", txtCopias.Text.Trim());
            //--------------fim das configurações da Danfe-------------------------
        }

        //Método que só permite que numeros sejam digitados -keypress event
        private void CampoNumerico(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && e.KeyChar != (char)8)
            {
                e.Handled = true;
                MessageBox.Show("Este campo só aceita números");
            }
        }
        //---------------------------------------------------------------------


        //Método que impede que qualquer coisa seja digitada no campo -keypress event
        //sendo utilizado nos comboBox
        private void BloqueiaDigitacao(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }
        //--------------------------------------------------------------------

        //limpa os campos "gerados" da tela da frente quando o usuario retorna
        public void LimpaCampos() {
            switch (cont)
            {
                case 1: //limpa campos da tela de comunicação
                    txtStatusServidor.Text = "";
                    txtMotivoStatus.Text = "";
                    break;
                case 2: //limpa campos da tela de inutilização
                    txtInuStatus.Text = "";
                    txtInuMotivo.Text = "";
                    break;
                case 7: //limpa campos da tela enviar Nota
                    txtNumeroRecibo.Text = "";
                    txtStatusEnvio.Text = "";
                    txtMotivoEnvio.Text = "";
                    break;
                case 8: //limpa campos da tela Consultar
                    txtProtocoloAutorizacao.Text = "";
                    txtStatusConsulta.Text = "";
                    txtMotivoConsulta.Text = "";
                    break;
                case 11://limpa campos da tela cancelar
                    txtCancStatus.Text = "";
                    txtCancMotivo.Text = "";
                    break;
                case 26:
                    txtStatusEnvServEstFS.Text = "";
                    txtMotivoEnviServEstFS.Text = "";
                    txtNumReciboFS.Text = "";
                    break;
                case 27:
                    txtStatusConsultarFs.Text = "";
                    txtMotivoConsultarFS.Text = "";
                    txtProtAutoFS.Text = "";
                    break;
            }
        }

        private void btnInutilizar_Click(object sender, EventArgs e)
        {
            try
            {
                //---Método do componente que faz a inutilização das notas---
                rtbXMLInutilizar.Text = _spdNFeX.InutilizarNF("",txtInuAno.Text,txtCnpj.Text,txtInuModelo.Text,txtInuSerie.Text,txtInuNfeIni.Text,txtInuNfeFinal.Text,txtInuJustificativa.Text);
                //-----------------------------------------------------------
                wbXMLInutilizar.Navigate(PreencherWebBrowser(rtbXMLInutilizar.Text, "InutilizarNFe"));

                xDoc.LoadXml(rtbXMLInutilizar.Text);
                txtInuStatus.Text = xDoc.GetElementsByTagName("cStat").Item(0).InnerText;
                txtInuMotivo.Text = removeCaractereEspecial(xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText);
            }
            catch (Exception ex) {
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnCancelarNota_Click(object sender, EventArgs e)
        {
            try
            {
                //---Método do componente que faz o cancelamento das notas---
                rtbCancelarNota.Text = _spdNFeX.CancelarNF(txtCancChaveNota.Text,txtCancProtocoloAut.Text, txtCancJustificativa.Text);
                //-----------------------------------------------------------
                wbXMLCancelamentoNota.Navigate(PreencherWebBrowser(rtbCancelarNota.Text, "CancelarNFe"));

                xDoc.LoadXml(rtbCancelarNota.Text);
                txtCancStatus.Text = xDoc.GetElementsByTagName("cStat").Item(0).InnerText;
                txtCancMotivo.Text = removeCaractereEspecial(xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void BtnCandDest_Click(object sender, EventArgs e)
        {
            //abre um arquivo pelo note pad
            System.Diagnostics.Process.Start(CriaTxt(rtbXMLEnviarCancDest.Text, "NFeCancelada"));
        }

        //enviar xml de cancelamento para o destinatario
        private void btnEnviarCancDest_Click(object sender, EventArgs e)
        {
            btnEnviarCancDest.Enabled = false;
            try
            {
                this.Cursor = Cursors.WaitCursor;

                if (txtEmailCancDest.Text != "")
                {
                    _spdNFeX.EmailDestinatario = txtEmailCancDest.Text;
                }

                //---------Utiliza o componente para enviar o email------------
                _spdNFeX.EnviarNotaCanceladaDestinatario(txtChaveNota.Text, "", "", txtEmailCancDest.Text);
                //-------------------------------------------------------------

                btnEnviarCancDest.Enabled = true;
                this.Cursor = Cursors.Default;
            }
            catch (Exception ex)
            {
                this.Cursor = Cursors.Default;
                btnEnviarCancDest.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnAnexar_Click(object sender, EventArgs e)
        {
            //txtAnexar.Text = "Opção desabilitada por enquanto";
            if (OFDAnexos.ShowDialog() == DialogResult.OK)
            {
                txtAnexar.Text = OFDAnexos.FileName;
                clbAnexos.Items.Add(OFDAnexos.FileName, CheckState.Checked);
            }
        }

        //combos de impostos
        private void cboICMS_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (liberaForms != 0)
            {
                ICSMController(cboICMS.SelectedIndex);
            }
        }

        private void cboIPI_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (liberaForms != 0)
            {
                IPIController(cboIPI.SelectedIndex);
            }
        }

        private void cboII_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (liberaForms != 0)
            {
                IIController(cboII.SelectedIndex);
            }
        }

        private void cboISSQN_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (liberaForms != 0)
            {
                ISSQNController(cboISSQN.SelectedIndex);
            }
        }

        private void cboPIS_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (liberaForms != 0)
            {
                PISController(cboPIS.SelectedIndex);
            }
        }

        private void cboPISST_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (liberaForms != 0)
            {
                PISSTControler(cboPISST.SelectedIndex);
            }
        }

        private void cboCOFINS_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (liberaForms != 0)
            {
                COFINSController(cboCOFINS.SelectedIndex);
            }
        }

        private void cboCOFINSST_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (liberaForms != 0)
            {
                COFINSSTController(cboCOFINSST.SelectedIndex);
            }
        }

        //telas do ICMS
        private void ICSMController(int index) 
        {
            switch (index) { 
                case 0:
                    if (icms00 == null)
                    {
                        icms00 = new frmICMS00();
                    }                    
                    icms00.ShowDialog();
                    break;
                case 1:
                    if (icms10 == null)
                    {
                        icms10 = new frmICMS10();   
                    }                    
                    icms10.ShowDialog();
                    break;
                case 2:
                    if (icms20 == null)
                    {
                        icms20 = new frmICMS20();                        
                    }
                    icms20.ShowDialog();
                    break;
                case 3:
                    if (icms30 == null)
                    {
                        icms30 = new frmICMS30();   
                    }                    
                    icms30.ShowDialog();
                    break;
                case 4:
                    if (icms40 == null)
                    {
                        icms40 = new frmICMS40();   
                    }                    
                    icms40.ShowDialog();
                    break;
                case 5:
                    if (icms51 == null)
                    {
                        icms51 = new frmICMS51(); 
                    }                  
                    icms51.ShowDialog();
                    break;
                case 6:
                    if (icms60 == null)
                    {
                        icms60 = new frmICMS60();    
                    }                    
                    icms60.ShowDialog();
                    break;
                case 7:
                    if (icms70 == null)
                    {
                        icms70 = new frmICMS70();    
                    }                    
                    icms70.ShowDialog();
                    break;
                case 8:
                    if (icms90 == null)
                    {
                        icms90 = new frmICMS90();
                    }
                    icms90.ShowDialog();
                    break;
                case 9:
                    if (icmsPart == null)
                    {
                        icmsPart = new frmICMSPartilha();
                    }
                    icmsPart.ShowDialog();
                    break;
                case 10:
                    if (icmsST == null)
                    {
                        icmsST = new frmICMSST();
                    }
                    icmsST.ShowDialog();
                    break;
                case 11:
                    if (icmsSN101 == null)
                    {
                        icmsSN101 = new frmICMSSN101();
                    }
                    icmsSN101.ShowDialog();
                    break;
                case 12:
                    if (icmsSN102 == null)
                    {
                        icmsSN102 = new frmICMSSN102();
                    }
                    icmsSN102.ShowDialog();
                    break;
                case 13:
                    if (icmsSN201 == null)
                    {
                        icmsSN201 = new frmICMSSN201();
                    }
                    icmsSN201.ShowDialog();
                    break;
                case 14:
                    if (icmsSN202 == null)
                    {
                        icmsSN202 = new frmICMSSN202();
                    }
                    icmsSN202.ShowDialog();
                    break;
                case 15:
                    if (icmsSN500 == null)
                    {
                        icmsSN500 = new frmICMSSN500();
                    }
                    icmsSN500.ShowDialog();
                    break;
                case 16:
                    if (icmsSN900 == null)
                    {
                        icmsSN900 = new frmICMSSN900();
                    }
                    icmsSN900.ShowDialog();
                    break;
            }
        }

        //Telas do IPI
        private void IPIController(int index)
        {
            switch (index) 
            {
                case 0:
                    if (ipiTrib == null)
                    {
                        ipiTrib = new frmIPITributado();
                    }
                    ipiTrib.ShowDialog();
                    break;
                case 1:
                    if (ipiNTrib == null)
                    {
                        ipiNTrib = new frmIPINTributado();
                    }
                    ipiNTrib.ShowDialog();
                    break;
            }
        }

        //Telas do II
        private void IIController(int index)
        {
            switch (index)
            {
                case 0:
                    if (ii == null)
                    {
                        ii = new frmII();
                    }
                    ii.ShowDialog();
                    break;
            }
        }

        //telas do ISSQN
        private void ISSQNController(int index)
        {
            switch (index)
            {
                case 0:
                    if (issqn == null)
                    {
                        issqn = new frmISSQN();
                    }
                    issqn.ShowDialog();
                    break;
            }
        }

        //telas do PIS
        private void PISController(int index)
        {
            switch (index)
            {
                case 0:
                    if (pisAliq == null)
                    {
                        pisAliq = new frmPISAliquota();
                    }
                    pisAliq.ShowDialog();
                    break;
                case 1:
                    if (pisQuant == null)
                    {
                        pisQuant = new frmPISQuantidade();
                    }
                    pisQuant.ShowDialog();
                    break;
                case 2:
                    if (pisNTrib == null)
                    {
                        pisNTrib = new frmPISNTrib();
                    }
                    pisNTrib.ShowDialog();
                    break;
                case 3:
                    if (pisOutros == null)
                    {
                        pisOutros = new frmPISOtros();
                    }
                    pisOutros.ShowDialog();
                    break;
            }
        }

        //telas do PISST
        private void PISSTControler(int index)
        {
            switch (index)
            {
                case 0:
                    if (pissit == null)
                    {
                        pissit = new frmPISST();
                    }
                    pissit.ShowDialog();
                    break;
            }
        }

        //telas do COFINS
        private void COFINSController(int index)
        {
            switch (index)
            {
                case 0:
                    if (cofinsAliq == null)
                    {
                        cofinsAliq = new frmCOFINSAliq();
                    }
                    cofinsAliq.ShowDialog();
                    break;
                case 1:
                    if (cofinsQuant == null)
                    {
                        cofinsQuant = new frmCOFINSQuant();
                    }
                    cofinsQuant.ShowDialog();
                    break;
                case 2:
                    if (cofisNTrib == null)
                    {
                        cofisNTrib = new frmCOFINSNTrib();
                    }
                    cofisNTrib.ShowDialog();
                    break;
                case 3:
                    if (cofinsOutros == null)
                    {
                        cofinsOutros = new frmCOFINSOutros();
                    }
                    cofinsOutros.ShowDialog();
                    break;
            }
        }

        //telas do COFINSST
        private void COFINSSTController(int index)
        {
            switch (index)
            {
                case 0:
                    if (cofinsST == null)
                    {
                        cofinsST = new frmCOFINSST();
                    }
                    cofinsST.ShowDialog();
                    break;
            }
        }

        private void chkNotaConjugada_CheckedChanged(object sender, EventArgs e)
        {
            if ((txtIeEmit.Text == "") ||(txtCnaeEmit.Text == "")) 
                MessageBox.Show("É necessário preencher os campos Inscrição Municipal e CNAE Fiscal do Emitente");
            liberaForms = 0;
            if (chkNotaConjugada.Checked)
        	{
	            cboICMS.SelectedIndex = -1;
                cboICMS.Enabled = false;
                cboIPI.SelectedIndex = -1;
                cboIPI.Enabled = false;
                cboII.SelectedIndex = -1;
                cboII.Enabled = false;
                cboISSQN.SelectedIndex = 0;
                cboISSQN.Enabled = true;
                issqn = new frmISSQN();
        	}
            else
            {
                cboICMS.SelectedIndex = 0;
                cboICMS.Enabled = true;
                cboIPI.Enabled = true;
                cboII.Enabled = true;
                cboISSQN.SelectedIndex = -1;
                cboISSQN.Enabled = false;
            }
            liberaForms = 1;
        }

        private void SetNotaBasica() 
        {
            if (rbNota.Checked)
            {
                liberaForms = 0;
                rbNota.Checked = true;

                icms00 = new frmICMS00();
                pisAliq = new frmPISAliquota();
                cofinsAliq = new frmCOFINSAliq();

                cboICMS.SelectedIndex = 0;
                cboICMS.Enabled = true;
                cboPIS.SelectedIndex = 0;
                cboPIS.Enabled = true;
                cboCOFINS.SelectedIndex = 0;
                cboCOFINS.Enabled = true;
                cboISSQN.SelectedIndex = -1;
                cboISSQN.Enabled = false;
                cboIPI.SelectedIndex = -1;
                cboIPI.Enabled = true;
                cboII.SelectedIndex = -1;
                cboII.Enabled = true;
                cboPISST.SelectedIndex = -1;
                cboPISST.Enabled = true;
                cboCOFINSST.SelectedIndex = -1;
                cboCOFINSST.Enabled = true;
                liberaForms = 1;
            }
        }

        private void btnExportarDanfeCaminho_Click(object sender, EventArgs e)
        {
            ExportarCaminhoArquivo(txtExportarDanfe);
        }

        private void ExportarCaminhoArquivo(object txtBox)
        {
            if (OFDCaminhoArquivo.ShowDialog() == DialogResult.OK)
            {
                (txtBox as TextBox).Text = OFDCaminhoArquivo.FileName;
            } 
        }

        private void cboTipoEmissFS_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboTipoEmissFS.SelectedIndex == 0)
            {
                tipoEmissao = "2";
                GerarXmlDataSet();

                if (rtbXmlNotaFsAss.Text != "")
                {
                    rtbXmlNotaFsAss.Clear();
                    wbXmlNotaFsAss.Navigate("about:blank");
                    btnAvancar.Enabled = false;
                }
            }

            if (cboTipoEmissFS.SelectedIndex == 1)
            {
                tipoEmissao = "5";
                GerarXmlDataSet();

                if (rtbXmlNotaFsAss.Text != "")
                {
                    rtbXmlNotaFsAss.Clear();
                    wbXmlNotaFsAss.Navigate("about:blank");
                    btnAvancar.Enabled = false;
                }
            }
        }

        private void btnAssinarFs_Click(object sender, EventArgs e)
        {
            btnAssinarFs.Enabled = false;
            try
            {
                //-------Utilização do componente para assinar a nota gerada-------
                FNFeFS.Text = _spdNFeX.AssinarNota(rtbXMLNotaFs.Text);
                //-----------------------------------------------------------------

                rtbXmlNotaFsAss.Text = FNFeFS.Text;
                wbXmlNotaFsAss.Navigate(PreencherWebBrowser(rtbXmlNotaFsAss.Text,"NotaFsAssinada"));

                btnAssinarFs.Enabled = true;
                btnAvancar.Enabled = true;
            }
            catch (Exception ex)
            {
                btnAssinarFs.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnEditarFS_Click(object sender, EventArgs e)
        {
            //------Utilização do componente para edição do FS------
            _spdNFeX.EditarModeloDanfe("0000",FNFeFS.Text,"");
            //------------------------------------------------------
        }

        private void btnExportarFS_Click(object sender, EventArgs e)
        {
            btnExportarFS.Enabled = false;
            try
            {
                //-------Utilização do componente para exportar FS------
                _spdNFeX.ExportarDanfe("00001", FNFeFS.Text, "", 1, txtCaminhoArqFS.Text);
                //------------------------------------------------------

                btnExportarFS.Enabled = true;
            }
            catch (Exception ex)
            {
                btnExportarFS.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnExportarArqFS_Click(object sender, EventArgs e)
        {
            ExportarCaminhoArquivo(txtCaminhoArqFS);
        }

        private void btnImprimirFS_Click(object sender, EventArgs e)
        {
            btnImprimirFS.Enabled = false;
            try
            {
                //-------Utilização do componente para impressão do FS--------
                _spdNFeX.ImprimirDanfe("00001", FNFeFS.Text, "", cboImpressoraFS.Text);
                //------------------------------------------------------------

                btnImprimirFS.Enabled = true;
            }
            catch (Exception ex)
            {
                btnImprimirFS.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnVisualizarFS_Click(object sender, EventArgs e)
        {
            btnVisualizarFS.Enabled = false;
            try
            {
                //-------Utilização do componente para visualização do FS------
                _spdNFeX.VisualizarDanfe("00001",FNFeFS.Text,"");
                //-------------------------------------------------------------
                btnVisualizarFS.Enabled = true;
            }
            catch (Exception ex)
            {
                btnVisualizarFS.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnEnviarServEstFS_Click(object sender, EventArgs e)
        {
            btnEnviarServEstFS.Enabled = false;
            try
            {
                //-----Utilização do componente para enviar a nota ao Sefaz------
                rtbEnviarXmlServEstFS.Text = _spdNFeX.EnviarNF("00001",FNFeFS.Text,false);
                //---------------------------------------------------------------
                wbXmlEnviarServEstFS.Navigate(PreencherWebBrowser(rtbEnviarXmlServEstFS.Text, "EnviarServEstFS"));

                xDoc.LoadXml(rtbEnviarXmlServEstFS.Text);

                txtNumReciboFS.Text = xDoc.GetElementsByTagName("nRec").Item(0).InnerText;
                txtStatusEnvServEstFS.Text = xDoc.GetElementsByTagName("cStat").Item(0).InnerText;
                txtMotivoEnviServEstFS.Text = removeCaractereEspecial(xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText);

                txtChaveNotaFS.Text = txtChaveFS.Text;
                txtNumRecFS.Text = txtNumReciboFS.Text;

                if (txtStatusEnvServEstFS.Text == "103") //Lote recebido com sucesso
                {
                    btnAvancar.Enabled = true;
                }
                btnEnviarServEstFS.Enabled = true;
            }
            catch (Exception ex)
            {
                btnEnviarServEstFS.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnConsultaRecFS_Click(object sender, EventArgs e)
        {
            string status;
            btnConsultaRecFS.Enabled = false;
            try
            {
                //-------Utilização do componente para consultar o recibo------
                rtbXmlConsultarFS.Text = _spdNFeX.ConsultarRecibo(txtNumRecFS.Text);
                //-------------------------------------------------------------
                wbXMLConsultaFS.Navigate(PreencherWebBrowser(rtbXmlConsultarFS.Text, "ConsultaFS"));

                xDoc.LoadXml(rtbXmlConsultarFS.Text);
                txtProtAutoFS.Text = xDoc.GetElementsByTagName("nProt").Item(0).InnerText;

                //pega o conteudo de dentro da tag infProt
                status = xDoc.GetElementsByTagName("infProt").Item(0).InnerXml;

                //adiciona um cabeçario
                status = "<Protocolo>" + status + "</Protocolo>";
                xDoc.LoadXml(status);

                txtStatusConsultarFs.Text = xDoc.GetElementsByTagName("cStat").Item(0).InnerText;
                txtMotivoConsultarFS.Text = removeCaractereEspecial(xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText);

                if (txtStatusConsultarFs.Text == "100")
                {
                    btnAvancar.Enabled = true;
                }
                btnConsultaRecFS.Enabled = true;
            }
            catch (Exception ex)
            {
                btnConsultaRecFS.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnConsultarChaveFS_Click(object sender, EventArgs e)
        {
            string aXML, status, canc = "";
            btnConsultarChaveFS.Enabled = false;
            try
            {
                //------Utilização do componente para cosultar a chave da nota------
                aXML = _spdNFeX.ConsultarNF(txtChaveNotaFS.Text);
                //------------------------------------------------------------------

                xDoc.LoadXml(aXML);

                //pega o conteudo de dentro da tag infCanc
                XmlNode node = xDoc.SelectSingleNode("infCanc");
                if (node != null)
                {
                    canc = xDoc.GetElementsByTagName("infCanc").Item(0).InnerXml;
                }

                if (canc != "")
                {
                    canc = "<Protocolo>" + canc + "</Protocolo>";
                    xDoc.LoadXml(canc);
                    txtStatusConsultarFs.Text = xDoc.GetElementsByTagName("cStat").Item(0).InnerText;
                    txtMotivoConsultarFS.Text = removeCaractereEspecial(xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText);
                }
                else
                {
                    rtbXmlConsultarFS.Text = aXML;
                    wbXMLConsultaFS.Navigate(PreencherWebBrowser(rtbXmlConsultarFS.Text, "ConsultaFSChave"));

                    xDoc.LoadXml(rtbXmlConsultarFS.Text);
                    //pega o conteudo de dentro da tag infProt
                    status = xDoc.GetElementsByTagName("infProt").Item(0).InnerXml;

                    status = "<Protocolo>" + status + "</Protocolo>";
                    xDoc.LoadXml(status);

                    txtProtAutoFS.Text = xDoc.GetElementsByTagName("nProt").Item(0).InnerText;

                    //pega o conteudo cStat e xMotivo que estava dentro da tag infProt
                    txtStatusConsultarFs.Text = xDoc.GetElementsByTagName("cStat").Item(0).InnerText;
                    txtMotivoConsultarFS.Text = removeCaractereEspecial(xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText);
                }
                btnConsultarChaveFS.Enabled = true;
            }
            catch (Exception ex)
            {
                btnConsultarChaveFS.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnAnexarFS_Click(object sender, EventArgs e)
        {
            if (OFDAnexosFS.ShowDialog() == DialogResult.OK)
            {
                txtAnexarFS.Text = OFDAnexosFS.FileName;
                clbAnexosFS.Items.Add(OFDAnexosFS.FileName, CheckState.Checked);
            }
        }

        private void btnEnviarEmailFS_Click(object sender, EventArgs e)
        {
            string lista = "";
            btnEnviarEmailFS.Enabled = false;
            try
            {
                this.Cursor = Cursors.WaitCursor;

                if (txtEmailDestFS.Text != "")
                {
                    _spdNFeX.EmailDestinatario = txtEmailDestFS.Text;
                }
                if (clbAnexosFS.Items.Count == 0)
                {
                    //---------Utiliza o componente para enviar o email------------
                    _spdNFeX.EnviarNotaDestinatario(txtChaveNotaFS.Text, "", "");
                    //-------------------------------------------------------------                    
                }
                else
                {
                    for (int i = 0; i < clbAnexosFS.Items.Count; i++)
                    {
                        if (lista == "")
                        {
                            if (clbAnexosFS.GetItemChecked(i))
                            {
                                lista = lista + clbAnexosFS.Items[i];
                            }
                        }
                        else
                        {
                            if (clbAnexosFS.GetItemChecked(i))
                            {
                                lista = lista + "," + clbAnexosFS.Items[i];
                            }
                        }
                    }
                   //---------usando o componente para enviar email com anexo------
                    _spdNFeX.EnviarNotaDestinatarioAnexos("", CaminhoXMLNfe(txtChaveNotaFS.Text), lista);
                    //--------------------------------------------------------------
                }

                btnEnviarEmailFS.Enabled = true;
                this.Cursor = Cursors.Default;
            }
            catch (Exception ex)
            {
                this.Cursor = Cursors.Default;
                btnEnviarEmailFS.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnPreverDanfe_Click(object sender, EventArgs e)
        {
            btnPreverDanfe.Enabled = false;
            try
            {
                //-----------Utilizando o componente para prever a DANFE-----------
                _spdNFeX.PreverDanfe(rtbXmlNota.Text,"");
                //-----------------------------------------------------------------
                btnPreverDanfe.Enabled = true;
            }
            catch (Exception ex)
            {
                btnPreverDanfe.Enabled = true;
                MessageBox.Show(ex.ToString());
            }
        }

        private void PreencherCboImpressora(object sender)
        {
            (sender as ComboBox).Items.Clear();
            for (int i = 0; i < System.Drawing.Printing.PrinterSettings.InstalledPrinters.Count; i++)
            {
                (sender as ComboBox).Items.Add(System.Drawing.Printing.PrinterSettings.InstalledPrinters[i]);
            }
        }

        public string removeCaractereEspecial(string frase)
        {
            frase = frase.Replace("Ã§","ç");
            frase = frase.Replace("Ã£", "ã");
            frase = frase.Replace("Ãº", "ú");
            frase = frase.Replace("Ã¡", "á");
            return frase;
        }

        private void cboTipoCertificado_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboTipoCertificado.SelectedIndex == 4)
            {
                txtPinCode.Enabled = true;
            }
            else
            {
                txtPinCode.Clear();
                txtPinCode.Enabled = false;
            }
        }

        private void tvNFe_AfterSelect(object sender, TreeViewEventArgs e)
        {
            NavegacaoPainel(e);
        }

        private void NavegacaoPainel(TreeViewEventArgs e)
        {
            switch (e.Node.Name)
            {
                case "Nfe":
                    Navegacao(-1);
                    break;
                case "Passo1":
                    Navegacao(0);
                    break;
                case "Email":
                    Navegacao(1);
                    break;
                case "Passo2":
                    Navegacao(2);
                    break;
                case "Passo3":
                    Navegacao(3);
                    break;
                case "Passo4":
                    Navegacao(4);
                    break;
                case "Destinatario":
                    Navegacao(5);
                    break;
                case "Modelo":
                    Navegacao(6);
                    break;
                case "Passo5":
                    Navegacao(7);
                    break;
                case "Enviar":
                    Navegacao(8);
                    break;
                case "Consultar":
                    Navegacao(9);
                    break;
                case "Informacoes":
                    Navegacao(10);
                    break;
                case "EnviarDestinatario":
                    Navegacao(11);
                    break;
                case "Cancelar":
                    Navegacao(12);
                    break;
                case "EnviarCancelamento":
                    Navegacao(13);
                    break;
                case "Passo9":
                    Navegacao(14);
                    break;
                case "Passo10":
                    Navegacao(15);
                    break;
                case "Passo11":
                    Navegacao(16);
                    break;
                case "Passo12":
                    Navegacao(17);
                    break;
                case "Passo13":
                    Navegacao(18);
                    break;
                case "FSFSA":
                    Navegacao(28);
                    break;
                case "NotaFs":
                    Navegacao(29);
                    break;
                case "fsPasso2":
                    Navegacao(30);
                    break;
                case "fsPasso3":
                    Navegacao(31);
                    break;
                case "fsPasso4":
                    Navegacao(32);
                    break;
                case "fsPasso5":
                    Navegacao(33);
                    break;
            }
        }

        private void cboAmbiente_MouseCaptureChanged(object sender, EventArgs e)
        {
            if (cboAmbiente.SelectedIndex == 1)
                lblObrigatorio38.Visible = false;
            else
                lblObrigatorio38.Visible = true;
        }

        private void btnModeloRTM_Click(object sender, EventArgs e)
        {
            ExportarCaminhoArquivo(txtModeloRTM);
        }

        private void btnEnviarManifestacao_Click(object sender, EventArgs e)
        {
            if ((txtChaveManEvento.Text == "") || (txtCNPJDestEvento.Text == "") || (cboFusoManEvento.Text == "") || (cboTipoEventoMan.Text == "") || (txtJustificativaManEvento.Text == "") || (txtDataHoraManEvento.Text == ""))
            {
                MessageBox.Show("Preencha todos os campos obrigatórios");
            }
            else
            {
                try
                {
                    xDoc = new XmlDocument();
                    xDoc.RemoveAll();
                    txtTextoManEvento.Text = _spdNFeX.EnviarManifestacaoDestinatario(cboTipoEventoMan.SelectedIndex + 1, txtChaveManEvento.Text, txtCNPJDestEvento.Text, txtJustificativaManEvento.Text, txtDataHoraManEvento.Text, 1, cboFusoManEvento.SelectedText,"");

                    wbManEvento.Navigate(PreencherWebBrowser(txtTextoManEvento.Text, "ManifestacaoDestinatario"));

                    string XML = txtTextoManEvento.Text;
                    xDoc.LoadXml(XML);
                    int idxCStat = XML.LastIndexOf("<cStat>");
                    string cStat = XML.Substring(idxCStat + 7, 3);

                    txtStatusManEvento.Text = cStat;
                    int idxXMotivo = XML.LastIndexOf("<xMotivo>");
                    int idxEndMotivo = XML.LastIndexOf("</xMotivo>");

                    string xMotivo = XML.Substring(idxXMotivo + 9, idxEndMotivo - idxXMotivo - 9);

                    txtMotivoManEvento.Text = removeCaractereEspecial(xMotivo);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void btnDataHoraManEvento_Click(object sender, EventArgs e)
        {
            txtDataHoraManEvento.Text = DataHoraEvento();
        }

        private void btnCancEvento_Click(object sender, EventArgs e)
        {
            if ((txtChaveCancEvento.Text == "") || (txtProtocoloCancEvento.Text == "") || (txtJustificativaCancEvento.Text == "") || (txtDataHoraCancEvento.Text == "") || (cboFusoCancEvento.Text == ""))
            {
                MessageBox.Show("Preencher os campos obrogatórios");
            }
            else
            {
                try
                {
                    xDoc = new XmlDocument();
                    xDoc.RemoveAll();
                    txtTextoCancEvento.Text = _spdNFeX.CancelarNFeEvento(txtChaveCancEvento.Text, txtProtocoloCancEvento.Text, txtJustificativaCancEvento.Text, txtDataHoraCancEvento.Text, 1, cboFusoCancEvento.SelectedText);

                    wbCancEvento.Navigate(PreencherWebBrowser(txtTextoCancEvento.Text, "CancelamentoEvento"));

                    string XML = txtTextoCancEvento.Text;
                    xDoc.LoadXml(XML);
                    int idxCStat = XML.LastIndexOf("<cStat>");
                    string cStat = XML.Substring(idxCStat + 7, 3);

                    txtStatusCancEvento.Text = cStat;
                    int idxXMotivo = XML.LastIndexOf("<xMotivo>");
                    int idxEndMotivo = XML.LastIndexOf("</xMotivo>");

                    string xMotivo = XML.Substring(idxXMotivo + 9, idxEndMotivo - idxXMotivo - 9);

                    txtMotivoCancEvento.Text = removeCaractereEspecial(xMotivo);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void btnDataHoraCancEvento_Click(object sender, EventArgs e)
        {
            txtDataHoraCancEvento.Text = DataHoraEvento();
        }

        private void btnOutrosRecursos_Click(object sender, EventArgs e)
        {
            cmsOutrosRecursos.Show(Cursor.Position.X, Cursor.Position.Y);
        }

        private void mniImportacaoXmlDataset_Click(object sender, EventArgs e)
        {
            var formImportacaoXmlNFe = new FormImportacaoXmlNFe();
            formImportacaoXmlNFe.fCnpjSoftwareHouse = fCnpjSoftwareHouse;
            formImportacaoXmlNFe.ShowDialog();
        }

        private void mniConsultaDistribuçãoDFe_Click(object sender, EventArgs e)
        {
            var formDistribuicaoDFe = new FormDistribuicaoDFe();
            formDistribuicaoDFe.fCnpjSoftwareHouse = fCnpjSoftwareHouse;
            formDistribuicaoDFe.ShowDialog();
        }

        private void AvancarParaFluxo(int aIndice)
        {
            //tvNFe.CollapseAll();

            pnlAssinarNotaFs.Visible = false;
            pnlAssinatura.Visible = false;
            pnlCancelamentoEvento.Visible = false;
            pnlCancelar.Visible = false;
            pnlComunicacao.Visible = false;
            pnlConfiguracao.Visible = false;
            pnlConsultarFS.Visible = false;
            pnlConsultarRecibo.Visible = false;
            pnlDanfe.Visible = false;
            pnlDestinatario.Visible = false;
            pnlEmailConfig.Visible = false;
            pnlEmitente.Visible = false;
            pnlEnviaCancDest.Visible = false;
            pnlEnviarNFeDest.Visible = false;
            pnlEnviarNota.Visible = false;
            pnlEnviarServEstadual.Visible = false;
            pnlEnviarServEstFS.Visible = false;
            pnlFluxoFS.Visible = false;
            pnlImprimirFs.Visible = false;
            pnlInfoArquivo.Visible = false;
            pnlInutilizar.Visible = false;
            pnlManifestacao.Visible = false;
            pnlModelosNotas.Visible = false;
    
            btnVoltar.Enabled = aIndice > -1;
          
            cont = aIndice;
            Navegacao(cont);
        }

        private void mniFluxoNormal_Click(object sender, EventArgs e)
        {
            AvancarParaFluxo(-1);
        }

        private void mniFluxoFS_Click(object sender, EventArgs e)
        {
            AvancarParaFluxo(16);
        }

        private void mniCancelamentoNFe_Click(object sender, EventArgs e)
        {
            AvancarParaFluxo(12);
        }

        private void mniManifestacaoNFe_Click(object sender, EventArgs e)
        {
            AvancarParaFluxo(14);
        }

    }
}