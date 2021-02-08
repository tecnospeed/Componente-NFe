using System;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Globalization;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using System.IO;
using System.Diagnostics;
using NFeX;
using NFeDataSetX;
using System.Xml;
using System.Net.NetworkInformation;
using System.Runtime.Remoting.Messaging;

namespace DemoNFeCSharp
{
    public partial class Form1 : Form
    {
        [DllImport("kernel32.dll", EntryPoint = "GetPrivateProfileString")]
        private static extern int GetPrivateProfileString(string lpAppName, string lpKeyName, string lpDefault, StringBuilder lpReturnedString, int nSize, string lpFileName);
        [DllImport("kernel32.dll", EntryPoint = "WritePrivateProfileString")]
        private static extern bool WritePrivateProfileString(string lpAppName, string lpKeyName, string lpString, string lpFileName);

        spdNFeX spdNFe = new spdNFeX();
        spdNFeDataSetX spdNFeDataSets = new spdNFeDataSetX();
        
        string ArqIni = "";

        public Form1()
        {
            ArqIni = Application.StartupPath + "\\nfeConfig.ini";
            InitializeComponent();

            spdNFe.ConfigurarSoftwareHouse(edtCnpjSh.Text, edtTokenSh.Text);
            //Listar Certificados
            string Certificados;
            string[] vetor = null;

            Certificados = spdNFe.ListarCertificados("|");

            if (Certificados != null)
            {
                vetor = Certificados.Split('|');

                cbCertificados.Items.Clear();

                foreach (string _cert in vetor)
                {
                    if (_cert != "")
                    {
                        cbCertificados.Items.Add(_cert);
                    }
                    
                }
            }
        }

        public static bool WriteIniValue(string section, string key, string value, string filename)
        {
            return WritePrivateProfileString(section, key, value, filename);
        }

        private static string LerTagXML(string pTexto, string pTag, int pTamanho)
        {
            string vReturn = "";
            int pIni = 0;

            pIni = (pTexto.IndexOf(pTag, 10) + (pTag.Length + 1));
            if (pIni > 0)
            {
                vReturn = pTexto.Substring(pIni, pTamanho);
            }

            return vReturn;
        }

        private void TratarExcecao(string Mensagem)
        {
            MessageBox.Show(Mensagem, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btConfigurarIni_Click(object sender, EventArgs e)
        {
            try
            {
                string Rs;
                if (cbCertificados.Text != "")
                {
                    Rs = cbCertificados.Text;
                    WriteIniValue("NFE", "NomeCertificado", Rs, ArqIni);
                }
                Process.Start(@ArqIni);
            }
            catch (Exception ex)
            {
                TratarExcecao(ex.Message);
            }
        }

        private void btLoadConfig_Click(object sender, EventArgs e)
        {
            if (edtCnpjSh.Text != "" && edtTokenSh.Text != "") 
            {
                spdNFe.ConfigurarSoftwareHouse(edtCnpjSh.Text, edtTokenSh.Text);
                spdNFe.LoadConfig("");

                edtUf.Text          = spdNFe.UF;
                cbCertificados.Text = spdNFe.NomeCertificado;
                edtCnpj.Text        = spdNFe.CNPJ;

                lblAmbiente.Visible = (spdNFe.Ambiente == NFeX.Ambiente.akProducao);
            }
            else
            {
                TratarExcecao("Favor preencher o CNPJ e Token da SoftwareHouse");
            }
                


        }

        private void btVerificarStatus_Click(object sender, EventArgs e)
        {
            mmXml.Text = spdNFe.StatusDoServico();
        }

        private void btGerarViaRec_Click(object sender, EventArgs e)
        {
            string vXML = "";

            if (mmXml.Text != "")
            {
                vXML = mmXml.Text;
                mmXml.Text = spdNFe.ConverterLoteParaXML(vXML, NFeX.LayoutConv.lkRec, "pl_009");
            }
            else
            {
                ofdAbrirArquivos.InitialDirectory = Application.StartupPath;
                ofdAbrirArquivos.Filter = "Arquivos XML (*.xml)|*.xml";

                if (ofdAbrirArquivos.ShowDialog() == DialogResult.OK)
                {
                    if (ofdAbrirArquivos.FileName != "")
                    {
                        vXML = ofdAbrirArquivos.FileName;
                        mmXml.Text = File.ReadAllText(vXML);
                        mmXml.Text = spdNFe.ConverterLoteParaXML(vXML, NFeX.LayoutConv.lkRec, "pl_009");
                    }
                }
            }

            edtID.Text = LerTagXML(mmXml.Text, "NFe", 44);
        }

        private void btGerarXmlDataset_Click(object sender, EventArgs e)
        {
            string vNumeroLote = "1";
            string vNumeroSerie = "1";

            edtNumRec.Text = "";
            edtNumProt.Text = "";
            spdNFe.VersaoManual = "vm60";
            spdNFeDataSets.VersaoEsquema = "pl_009";

            spdNFeDataSets.DiretorioTemplates = spdNFe.DiretorioTemplates + "Conversor\\NFeDataSets.xml";

            spdNFeDataSets.Incluir();
            spdNFeDataSets.SetCampo("versao_A02=4.00");
            spdNFeDataSets.SetCampo("cUF_B02=41");
            spdNFeDataSets.SetCampo("cNF_B03=555434");
            spdNFeDataSets.SetCampo("natOp_B04=VENDA DE MERCADORIA ADQ. DE TERCEIRO - PF E PJ NAO CONTRIBUI");
            spdNFeDataSets.SetCampo("mod_B06=55");
            spdNFeDataSets.SetCampo("serie_B07=500");
            spdNFeDataSets.SetCampo("nNF_B08=5548164");
            spdNFeDataSets.SetCampo("dhEMI_B099=" + DateTime.Now.ToString("yyyy-MM-ddThh:mm:ss") + "-03:00");
            spdNFeDataSets.SetCampo("dhSaiEnt_B109=" + DateTime.Now.ToString("yyyy-MM-ddThh:mm:ss") + "-03:00");
            spdNFeDataSets.SetCampo("tpNF_B11=1");
            spdNFeDataSets.SetCampo("IDDEST_B11A=2");
            spdNFeDataSets.SetCampo("cMunFG_B12=4115200");
            spdNFeDataSets.SetCampo("tpImp_B21=1");
            spdNFeDataSets.SetCampo("tpEmis_B22=1");

            spdNFeDataSets.SetCampo("cDV_B23=0");
            spdNFeDataSets.SetCampo("tpAmb_B24=2");
            spdNFeDataSets.SetCampo("finNFe_B25=1");
            spdNFeDataSets.SetCampo("INDFINAL_B25A=1");
            spdNFeDataSets.SetCampo("INDPRES_B25B=1");
            spdNFeDataSets.SetCampo("procEmi_B26=0");
            spdNFeDataSets.SetCampo("verProc_B27=VersaoAplicacao001");

            spdNFeDataSets.SetCampo("CRT_C21=3");
            spdNFeDataSets.SetCampo("CNPJ_C02=00000000000000");
            spdNFeDataSets.SetCampo("xNome_C03=TECNOSPEED");
            spdNFeDataSets.SetCampo("xFant_C04=TECNOSPEED");
            spdNFeDataSets.SetCampo("xLgr_C06=RUA BRASIL");
            spdNFeDataSets.SetCampo("nro_C07=111");
            spdNFeDataSets.SetCampo("xBairro_C09=Jardim 1");
            spdNFeDataSets.SetCampo("cMun_C10=4115200");
            spdNFeDataSets.SetCampo("xMun_C11=MARINGA");
            spdNFeDataSets.SetCampo("UF_C12=PR");
            spdNFeDataSets.SetCampo("CEP_C13=87083000");
            spdNFeDataSets.SetCampo("cPais_C14=1058");
            spdNFeDataSets.SetCampo("xPais_C15=BRASIL");
            spdNFeDataSets.SetCampo("fone_C16=4412344567");
            spdNFeDataSets.SetCampo("IE_C17=1111111111");

            spdNFeDataSets.SetCampo("CNPJ_E02=00000000000000");
            spdNFeDataSets.SetCampo("IDESTRANGEIRO_E03A=");
            spdNFeDataSets.SetCampo("xNome_E04=NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL");
            spdNFeDataSets.SetCampo("xLgr_E06=RUA DO CENTRO");
            spdNFeDataSets.SetCampo("nro_E07=897");
            spdNFeDataSets.SetCampo("xBairro_E09=CENTRAL");
            spdNFeDataSets.SetCampo("cMun_E10=4115200");
            spdNFeDataSets.SetCampo("xMun_E11=MARINGA");
            spdNFeDataSets.SetCampo("UF_E12=PR");
            spdNFeDataSets.SetCampo("CEP_E13=87023000");
            spdNFeDataSets.SetCampo("cPais_E14=1058");
            spdNFeDataSets.SetCampo("xPais_E15=BRASIL");
            spdNFeDataSets.SetCampo("fone_E16=4421322132");
            spdNFeDataSets.SetCampo("INDIEDEST_E16A=1");
            spdNFeDataSets.SetCampo("IE_E17=1111111111");
            spdNFeDataSets.SetCampo("IM_E18A=");

            spdNFeDataSets.SetCampo("email_e19=teste@teste.com.br");
            spdNFeDataSets.SetCampo("CNPJ_GA02=00000000000000");

            spdNFeDataSets.IncluirItem();
            spdNFeDataSets.SetCampo("nItem_H02=1");
            spdNFeDataSets.SetCampo("cProd_I02=0999");
            spdNFeDataSets.SetCampo("cEAN_I03=SEM GTIN");
            spdNFeDataSets.SetCampo("xProd_I04=MELAO");
            spdNFeDataSets.SetCampo("NCM_I05=11081200");
            spdNFeDataSets.SetCampo("CEST_I05c=0123456");
            spdNFeDataSets.SetCampo("indEscala_I05d=S");
            spdNFeDataSets.SetCampo("CFOP_I08=6102");
            spdNFeDataSets.SetCampo("uCom_I09=CX");
            spdNFeDataSets.SetCampo("qCom_I10=1");
            spdNFeDataSets.SetCampo("vUnCom_I10a=0.0100");
            spdNFeDataSets.SetCampo("vProd_I11=0.01");
            spdNFeDataSets.SetCampo("cEANTrib_I12=SEM GTIN");
            spdNFeDataSets.SetCampo("uTrib_I13=CX");
            spdNFeDataSets.SetCampo("qTrib_I14=1");
            spdNFeDataSets.SetCampo("vUnTrib_I14a=0.0100");
            spdNFeDataSets.SetCampo("indTot_I17b=1");
            spdNFeDataSets.SetCampo("orig_N11=0");
            spdNFeDataSets.SetCampo("CST_N12=00");
            spdNFeDataSets.SetCampo("modBC_N13=0");
            spdNFeDataSets.SetCampo("vBC_N15=0.01");
            spdNFeDataSets.SetCampo("pICMS_N16=12.00");
            spdNFeDataSets.SetCampo("vICMS_N17=0.01");
            spdNFeDataSets.SetCampo("VICMSDESON_N28A=0.00");

            spdNFeDataSets.SetCampo("CST_Q06=01");
            spdNFeDataSets.SetCampo("vBC_Q07=0.01");
            spdNFeDataSets.SetCampo("pPIS_Q08=1.65");
            spdNFeDataSets.SetCampo("vPIS_Q09=0.00");

            spdNFeDataSets.SetCampo("CST_S06=01");
            spdNFeDataSets.SetCampo("vBC_S07=0.01");
            spdNFeDataSets.SetCampo("pCOFINS_S08=7.60");
            spdNFeDataSets.SetCampo("vCOFINS_S11=0.01");

            spdNFeDataSets.SetCampo("nLote_I81=123");
            spdNFeDataSets.SetCampo("qLote_I82=5565.000");
            spdNFeDataSets.SetCampo("dFab_I83=2017-07-23");
            spdNFeDataSets.SetCampo("dVal_I84=2017-07-23");

            spdNFeDataSets.SetCampo("cProdANVISA_k01a=0000000000111");
            spdNFeDataSets.SetCampo("vPMC_k06=1.00");

            spdNFeDataSets.SalvarItem();

            spdNFeDataSets.SetCampo("vBC_W03=0.01");
            spdNFeDataSets.SetCampo("vICMS_W04=0.01");
            spdNFeDataSets.SetCampo("vICMSDeson_W04a=0.00");
            spdNFeDataSets.SetCampo("vFCP_W04h=0.00");
            spdNFeDataSets.SetCampo("vBCST_W05=0.00");
            spdNFeDataSets.SetCampo("vST_W06=0.00");
            spdNFeDataSets.SetCampo("vFCPST_W06a=0.00");
            spdNFeDataSets.SetCampo("vFCPSTRet_W06b=0.00");
            spdNFeDataSets.SetCampo("vST_W06=0.00");
            spdNFeDataSets.SetCampo("vFCPST_W06a=0.00");
            spdNFeDataSets.SetCampo("vFCPSTRet_W06b=0.00");
            spdNFeDataSets.SetCampo("vProd_W07=0.01");
            spdNFeDataSets.SetCampo("vFrete_W08=0.00");
            spdNFeDataSets.SetCampo("vSeg_W09=0.00");
            spdNFeDataSets.SetCampo("vDesc_W10=0.00");
            spdNFeDataSets.SetCampo("vII_W11=0.00");
            spdNFeDataSets.SetCampo("vIPI_W12=0.00");
            spdNFeDataSets.SetCampo("vIPIDevol_W12a=0.00");
            spdNFeDataSets.SetCampo("vPIS_W13=0.00");
            spdNFeDataSets.SetCampo("vCOFINS_W14=0.01");
            spdNFeDataSets.SetCampo("vOutro_W15=0.00");
            spdNFeDataSets.SetCampo("vNF_W16=0.01");
            spdNFeDataSets.SetCampo("modFrete_X02=0");


            spdNFeDataSets.IncluirParte("YA");
            spdNFeDataSets.SetCampo("tPag_YA02=01");
            spdNFeDataSets.SetCampo("vPag_YA03=0.01");
            spdNFeDataSets.SalvarParte("YA");

            spdNFeDataSets.Salvar();

            mmXml.Text = spdNFeDataSets.LoteNFe;
        }

        private void btGerarXmlTx2_Click(object sender, EventArgs e)
        {
            string vXML = "";

            if (mmXml.Text != "")
            {
                vXML = mmXml.Text;
                mmXml.Text = spdNFe.ConverterLoteParaXML(vXML, NFeX.LayoutConv.lkRec, "pl_009");
            }
            else
            {
                ofdAbrirArquivos.InitialDirectory = Application.StartupPath;
                ofdAbrirArquivos.Filter = "Arquivos TX2 (*.tx2)|*.tx2";

                if (ofdAbrirArquivos.ShowDialog() == DialogResult.OK)
                {
                    if (ofdAbrirArquivos.FileName != "")
                    {
                        vXML = ofdAbrirArquivos.FileName;
                        mmXml.Text = File.ReadAllText(vXML);
                        mmXml.Text = spdNFe.ConverterLoteParaXML(vXML, NFeX.LayoutConv.lkTx2, "pl_009");
                    }
                }
            }

            edtID.Text = LerTagXML(mmXml.Text, "NFe", 44);
        }

        private void btAssinarXml_Click(object sender, EventArgs e)
        {
            if (mmXml.Text != "")
            {
                mmXml.Text = spdNFe.AssinarNota(mmXml.Text);
            }
        }

        private void btnEnviarNfe_Click(object sender, EventArgs e)
        {
            if (mmXml.Text != "")
            {
                mmXml.Text = spdNFe.EnviarNF("1", mmXml.Text, false);

                edtNumRec.Text = LerTagXML(mmXml.Text, "<nRec", 15);
            }
        }

        private void btnEnviarSincrono_Click(object sender, EventArgs e)
        {
            if (mmXml.Text != "")
            {
                mmXml.Text = spdNFe.EnviarNFSincrono("1", mmXml.Text, false);
                
                edtNumProt.Text = LerTagXML(mmXml.Text, "<nProt", 20);
            }
        }

        private void btnConsultarRecibo_Click(object sender, EventArgs e)
        {
            if (edtNumRec.Text != "")
            {
                mmXml.Text = spdNFe.ConsultarRecibo(edtNumRec.Text);

                edtNumProt.Text = LerTagXML(mmXml.Text, "<nProt", 20);
            }
        }

        private void btnConsultarNfe_Click(object sender, EventArgs e)
        {
            if (edtID.Text != "")
            {
                mmXml.Text = spdNFe.ConsultarRecibo(edtID.Text);

                edtNumProt.Text = LerTagXML(mmXml.Text, "<nProt", 20);
            }
        }

        private void btPreverDanfe_Click(object sender, EventArgs e)
        {
            if (mmXml.Text != "")
            {
                spdNFe.PreverDanfe(mmXml.Text, "");
            }
        }

        private void btEditarDanfe_Click(object sender, EventArgs e)
        {
            if (mmXml.Text != "")
            {
                spdNFe.EditarModeloDanfe("1", mmXml.Text, "");
            }
        }

        private void btVisualizarDanfe_Click(object sender, EventArgs e)
        {
            if (mmXml.Text != "")
            {
                spdNFe.VisualizarDanfe("1", mmXml.Text, "");
            }
        }

        private void btImprimirDanfe_Click(object sender, EventArgs e)
        {
            if (mmXml.Text != "")
            {
                spdNFe.ImprimirDanfe("1", mmXml.Text, "", "");
            }
        }

        private void btExportarPDF_Click(object sender, EventArgs e)
        {
            if (mmXml.Text != "")
            {
                spdNFe.ExportarDanfe("1", mmXml.Text, "", 1, "");
            }
        }

        private void btEnviarEmail_Click(object sender, EventArgs e)
        {
            if (edtID.Text != "")
            {
                spdNFe.EnviarNotaDestinatario(edtID.Text, "", "");
            }
        }
    }
}
