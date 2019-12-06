using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using NFeDataSetX;
using NFeX;

namespace WindowsFormsApplication1
{
    public partial class FormImportacaoXmlNFe : Form
    {
        public string fCnpjSoftwareHouse = "";

        public FormImportacaoXmlNFe()
        {
            InitializeComponent();
        }

        private void btnOpen_Click(object sender, EventArgs e)
        {
            if (ofdArquivoXmlNfe.ShowDialog() == DialogResult.OK)
                txtArquivoXmlNfe.Text = ofdArquivoXmlNfe.FileName;
        }

        private void btnProcessar_Click(object sender, EventArgs e)
        {
            mmoInformacoesNFe.Clear();

            if ((string.IsNullOrEmpty(txtArquivoXmlNfe.Text)) || (!File.Exists(txtArquivoXmlNfe.Text)))
            {
                MessageBox.Show("Não foi encontrado o arquivo Xml.\n\rInforme um arquivo existente.");
                txtArquivoXmlNfe.Focus();
                return;
            }

            var _NFeX = new spdNFeX();
            var _NFeDatasetX = new spdNFeDataSetX();

            _NFeX.ConfigurarSoftwareHouse(fCnpjSoftwareHouse, "");
            _NFeX.LoadConfig("");

            bool _Nfe4OuSuperior = false;
            string _conteudoXml = File.ReadAllText(txtArquivoXmlNfe.Text);
            string _versao310 = @"versao=""3.10""";

            if (_conteudoXml.IndexOf(_versao310) > -1)
            {
                _Nfe4OuSuperior = false;
                _NFeX.VersaoManual = "5.0a";
                _NFeDatasetX.VersaoEsquema = "pl_008i2";
                _NFeDatasetX.DicionarioXML = @"C:\Program Files\TecnoSpeed\NFe\arquivos\Templates\vm50a\Conversor\NFeDataSets.xml";
            }
            else
            {
                _Nfe4OuSuperior = true;
                _NFeX.VersaoManual = "6.0";
                _NFeDatasetX.VersaoEsquema = "pl_009";
                _NFeDatasetX.DicionarioXML = @"C:\Program Files\TecnoSpeed\NFe\arquivos\Templates\vm60\Conversor\NFeDataSets.xml";
            }

            _NFeDatasetX.DiretorioTemplates = @"C:\Program Files\TecnoSpeed\NFe\Arquivos\Templates";
            _NFeDatasetX.ConverterXmlParaDataSet(_conteudoXml, _NFeDatasetX.VersaoEsquema);

            //Exibindo algumas informações gerais do Documento
            _conteudoXml = "---------------------------------------------------------------------------------------------" + Environment.NewLine; 
            _conteudoXml += "INFORMAÇÕES DO DOCUMENTO" + Environment.NewLine;
            _conteudoXml += "   versao_A02 = " + _NFeDatasetX.GetCampo("versao_A02") + Environment.NewLine;
            _conteudoXml += "   cUF_B02 = " + _NFeDatasetX.GetCampo("cUF_B02") + Environment.NewLine;
            _conteudoXml += "   cNF_B03 = " + _NFeDatasetX.GetCampo("cNF_B03") + Environment.NewLine;
            _conteudoXml += "   natOp_B04 = " + _NFeDatasetX.GetCampo("natOp_B04") + Environment.NewLine;
            _conteudoXml += "   serie_B07 = " + _NFeDatasetX.GetCampo("serie_B07") + Environment.NewLine;
            _conteudoXml += "   nNF_B08 = " + _NFeDatasetX.GetCampo("nNF_B08") + Environment.NewLine;
            _conteudoXml += "   dhEmi_B09 = " + _NFeDatasetX.GetCampo("dhEmi_B09") + Environment.NewLine;
            _conteudoXml += "   dhSaiEnt_B10 = " + _NFeDatasetX.GetCampo("dhSaiEnt_B10") + Environment.NewLine;
            _conteudoXml += "   tpNF_B11 = " + _NFeDatasetX.GetCampo("tpNF_B11") + Environment.NewLine;
            _conteudoXml += "   finNFe_B25 = " + _NFeDatasetX.GetCampo("finNFe_B25") + Environment.NewLine;
            _conteudoXml += Environment.NewLine;

            //Exibindo algumas informações do Emitente
            _conteudoXml += "---------------------------------------------------------------------------------------------" + Environment.NewLine; 
            _conteudoXml += "INFORMAÇÕES DO EMITENTE" + Environment.NewLine; 
            _conteudoXml += "   CNPJ_C02 = " + _NFeDatasetX.GetCampo("CNPJ_C02") + Environment.NewLine;
            _conteudoXml += "   xNome_C03 = " + _NFeDatasetX.GetCampo("xNome_C03") + Environment.NewLine;
            _conteudoXml += "   xFant_C04 = " + _NFeDatasetX.GetCampo("xFant_C04") + Environment.NewLine;
            _conteudoXml += "   xLgr_C06 = " + _NFeDatasetX.GetCampo("xLgr_C06") + Environment.NewLine;
            _conteudoXml += "   nro_C07 = " + _NFeDatasetX.GetCampo("nro_C07") + Environment.NewLine;
            _conteudoXml += "   xCpl_C08 = " + _NFeDatasetX.GetCampo("xCpl_C08") + Environment.NewLine;
            _conteudoXml += "   xBairro_C09 = " + _NFeDatasetX.GetCampo("xBairro_C09") + Environment.NewLine;
            _conteudoXml += "   cMun_C10 = " + _NFeDatasetX.GetCampo("cMun_C10") + Environment.NewLine;
            _conteudoXml += "   xMun_C11 = " + _NFeDatasetX.GetCampo("xMun_C11") + Environment.NewLine;
            _conteudoXml += "   UF_C12 = " + _NFeDatasetX.GetCampo("UF_C12") + Environment.NewLine;
            _conteudoXml += "   CEP_C13 = " + _NFeDatasetX.GetCampo("CEP_C13") + Environment.NewLine;
            _conteudoXml += "   cPais_C14 = " + _NFeDatasetX.GetCampo("cPais_C14") + Environment.NewLine;
            _conteudoXml += "   xPais_C15 = " + _NFeDatasetX.GetCampo("xPais_C15") + Environment.NewLine;
            _conteudoXml += "   fone_C16 = " + _NFeDatasetX.GetCampo("fone_C16") + Environment.NewLine;
            _conteudoXml += "   IE_C17 = " + _NFeDatasetX.GetCampo("IE_C17") + Environment.NewLine;
            _conteudoXml += "   IEST_C18 = " + _NFeDatasetX.GetCampo("IEST_C18") + Environment.NewLine;
            _conteudoXml += "   IM_C19 = " + _NFeDatasetX.GetCampo("IM_C19") + Environment.NewLine;
            _conteudoXml += "   CRT_C21 = " + _NFeDatasetX.GetCampo("CRT_C21") + Environment.NewLine;
            _conteudoXml += Environment.NewLine; 

            //Exibindo algumas informações do Destinatário
            _conteudoXml += "---------------------------------------------------------------------------------------------" + Environment.NewLine; 
            _conteudoXml += "INFORMAÇÕES DO DESTINATÁRIO" + Environment.NewLine; 
            if (!string.IsNullOrEmpty(_NFeDatasetX.GetCampo("CPF_E03")))
                _conteudoXml += "   CPF_E03 = " + _NFeDatasetX.GetCampo("CPF_E03") + Environment.NewLine;
            else
                _conteudoXml += "   CNPJ_E02 = " + _NFeDatasetX.GetCampo("CNPJ_E02") + Environment.NewLine;
            _conteudoXml += "   xNome_E04 = " + _NFeDatasetX.GetCampo("xNome_E04") + Environment.NewLine;
            _conteudoXml += "   xLgr_E06 = " + _NFeDatasetX.GetCampo("xLgr_E06") + Environment.NewLine;
            _conteudoXml += "   nro_E07 = " + _NFeDatasetX.GetCampo("nro_E07") + Environment.NewLine;
            _conteudoXml += "   xCpl_E08 = " + _NFeDatasetX.GetCampo("xCpl_E08") + Environment.NewLine;
            _conteudoXml += "   xBairro_E09 = " + _NFeDatasetX.GetCampo("xBairro_E09") + Environment.NewLine;
            _conteudoXml += "   cMun_E10 = " + _NFeDatasetX.GetCampo("cMun_E10") + Environment.NewLine;
            _conteudoXml += "   xMun_E11 = " + _NFeDatasetX.GetCampo("xMun_E11") + Environment.NewLine;
            _conteudoXml += "   UF_E12 = " + _NFeDatasetX.GetCampo("UF_E12") + Environment.NewLine;
            _conteudoXml += "   CEP_E13 = " + _NFeDatasetX.GetCampo("CEP_E13") + Environment.NewLine;
            _conteudoXml += "   cPais_E14 = " + _NFeDatasetX.GetCampo("cPais_E14") + Environment.NewLine;
            _conteudoXml += "   xPais_E15 = " + _NFeDatasetX.GetCampo("xPais_E15") + Environment.NewLine;
            _conteudoXml += "   fone_E16 = " + _NFeDatasetX.GetCampo("fone_E16") + Environment.NewLine;
            _conteudoXml += "   IE_E17 = " + _NFeDatasetX.GetCampo("IE_E17") + Environment.NewLine;
            _conteudoXml += "   ISUF_E18 = " + _NFeDatasetX.GetCampo("ISUF_E18") + Environment.NewLine;
            _conteudoXml += "   email_E19 = " + _NFeDatasetX.GetCampo("email_E19") + Environment.NewLine;
            _conteudoXml += Environment.NewLine; 

            //Exibindo algumas informações dos Itens
            int _idItem = 0;
            var _dsItem = _NFeDatasetX.FindDataset("H");
            _dsItem.First();
            while (!_dsItem.Eof())
	        {
                _idItem += 1;
                _conteudoXml += "-----------------------------------------------------------------------------------------------" + Environment.NewLine;
                _conteudoXml += "INFORMAÇÕES DO ITEM (Id: " + _idItem.ToString() + ")" + Environment.NewLine; 
                _conteudoXml += "   cProd_I02 = " + _NFeDatasetX.GetCampo("cProd_I02") + Environment.NewLine;
                _conteudoXml += "   cEAN_I03 = " + _NFeDatasetX.GetCampo("cEAN_I03") + Environment.NewLine;
                _conteudoXml += "   xProd_I04 = " + _NFeDatasetX.GetCampo("xProd_I04") + Environment.NewLine;
                _conteudoXml += "   NCM_I05 = " + _NFeDatasetX.GetCampo("NCM_I05") + Environment.NewLine;
                _conteudoXml += "   CFOP_I08 = " + _NFeDatasetX.GetCampo("CFOP_I08") + Environment.NewLine;
                _conteudoXml += "   uCom_I09 = " + _NFeDatasetX.GetCampo("uCom_I09") + Environment.NewLine;
                _conteudoXml += "   qCom_I10 = " + _NFeDatasetX.GetCampo("qCom_I10") + Environment.NewLine;
                _conteudoXml += "   vUnCom_I10a = " + _NFeDatasetX.GetCampo("vUnCom_I10a") + Environment.NewLine;
                _conteudoXml += "   vProd_I11 = " + _NFeDatasetX.GetCampo("vProd_I11") + Environment.NewLine;

                //Informações de Impostos
                _conteudoXml += "IMPOSTOS" + Environment.NewLine; 
                _conteudoXml += "   ICMS" + Environment.NewLine; 
                _conteudoXml += "      CST_N12 = " + _NFeDatasetX.GetCampo("CST_N12") + Environment.NewLine;
                _conteudoXml += "      modBC_N13 = " + _NFeDatasetX.GetCampo("modBC_N13") + Environment.NewLine;
                _conteudoXml += "      vBC_N15 = " + _NFeDatasetX.GetCampo("vBC_N15") + Environment.NewLine;
                _conteudoXml += "      pICMS_N16 = " + _NFeDatasetX.GetCampo("pICMS_N16") + Environment.NewLine;
                _conteudoXml += "      vICMS_N17 = " + _NFeDatasetX.GetCampo("vICMS_N17") + Environment.NewLine;
                _conteudoXml += "   PARTILHA ICMS" + Environment.NewLine; 
                _conteudoXml += "      vBCUFDest_NA03 = " + _NFeDatasetX.GetCampo("vBCUFDest_NA03") + Environment.NewLine;
                if (_Nfe4OuSuperior) //So tem a partir desta versão
                    _conteudoXml += "      vBCFCPUFDest_NA04 = " + _NFeDatasetX.GetCampo("vBCFCPUFDest_NA04") + Environment.NewLine;
                _conteudoXml += "      pFCPUFDest_NA05 = " + _NFeDatasetX.GetCampo("pFCPUFDest_NA05") + Environment.NewLine;
                _conteudoXml += "      pICMSUFDest_NA07 = " + _NFeDatasetX.GetCampo("pICMSUFDest_NA07") + Environment.NewLine;
                _conteudoXml += "      pICMSInter_NA09 = " + _NFeDatasetX.GetCampo("pICMSInter_NA09") + Environment.NewLine;
                _conteudoXml += "      pICMSInterPart_NA11 = " + _NFeDatasetX.GetCampo("pICMSInterPart_NA11") + Environment.NewLine;
                _conteudoXml += "      vFCPUFDest_NA13 = " + _NFeDatasetX.GetCampo("vFCPUFDest_NA13") + Environment.NewLine;
                _conteudoXml += "      vICMSUFDest_NA15 = " + _NFeDatasetX.GetCampo("vICMSUFDest_NA15") + Environment.NewLine;
                _conteudoXml += "      vICMSUFRemet_NA17 = " + _NFeDatasetX.GetCampo("vICMSUFRemet_NA17") + Environment.NewLine;
                _conteudoXml += "   PIS" + Environment.NewLine; 
                _conteudoXml += "      CST_Q06 = " + _NFeDatasetX.GetCampo("CST_Q06") + Environment.NewLine;
                _conteudoXml += "      vBC_Q07 = " + _NFeDatasetX.GetCampo("vBC_Q07") + Environment.NewLine;
                _conteudoXml += "      pPIS_Q08 = " + _NFeDatasetX.GetCampo("pPIS_Q08") + Environment.NewLine;
                _conteudoXml += "      vPIS_Q09 = " + _NFeDatasetX.GetCampo("vPIS_Q09") + Environment.NewLine;
                _conteudoXml += "   COFINS" + Environment.NewLine; 
                _conteudoXml += "      CST_S06 = " + _NFeDatasetX.GetCampo("CST_S06") + Environment.NewLine;
                _conteudoXml += "      vBC_S07 = " + _NFeDatasetX.GetCampo("vBC_S07") + Environment.NewLine;
                _conteudoXml += "      pCOFINS_S08 = " + _NFeDatasetX.GetCampo("pCOFINS_S08") + Environment.NewLine;
                _conteudoXml += "      vCOFINS_S11 = " + _NFeDatasetX.GetCampo("vCOFINS_S11") + Environment.NewLine;
                _conteudoXml += "   IPI" + Environment.NewLine; 
                _conteudoXml += "      CST_O09 = " + _NFeDatasetX.GetCampo("CST_O09") + Environment.NewLine;
                _conteudoXml += "      vBC_O10 = " + _NFeDatasetX.GetCampo("vBC_O10") + Environment.NewLine;
                _conteudoXml += "      pIPI_O13 = " + _NFeDatasetX.GetCampo("pIPI_O13") + Environment.NewLine;
                _conteudoXml += "      vIPI_O14 = " + _NFeDatasetX.GetCampo("vIPI_O14") + Environment.NewLine;

                //Informações de Rastro
                if (_Nfe4OuSuperior) //So tem a partir desta versão
                {
                    int _idRastro = 0;
                    var _dsRastro = _NFeDatasetX.FindDataset("I80");
                    _dsRastro.First();
                    while (!_dsRastro.Eof())
                    {
                        if (!string.IsNullOrEmpty(_NFeDatasetX.GetCampo("nLote_I81")))
                        {
                            _idRastro += 1;
                            _conteudoXml += "RASTRO (Id: " + _idRastro.ToString() + ")" + Environment.NewLine; 
                            _conteudoXml += "   nLote_I81 = " + _NFeDatasetX.GetCampo("nLote_I81") + Environment.NewLine;
                            _conteudoXml += "   qLote_I82 = " + _NFeDatasetX.GetCampo("qLote_I82") + Environment.NewLine;
                            _conteudoXml += "   dFab_I83 = " + _NFeDatasetX.GetCampo("dFab_I83") + Environment.NewLine;
                            _conteudoXml += "   dVal_I84 = " + _NFeDatasetX.GetCampo("dVal_I84") + Environment.NewLine;
                            _conteudoXml += "   cAgreg_I85 = " + _NFeDatasetX.GetCampo("cAgreg_I85") + Environment.NewLine;
                        }

                        _dsRastro.Next();
                    }
                }

                //Informações de DI/ADI
                int _idDI = 0;
                var _dsDI = _NFeDatasetX.FindDataset("DI");
                _dsDI.First();
                while (!_dsDI.Eof())
                {
                    if (!string.IsNullOrEmpty(_NFeDatasetX.GetCampo("nDI_I19")))
                    {
	                    _idDI += 1;
                        _conteudoXml += "DECLARAÇÃO DE IMPORTAÇÃO (Id: " + _idDI.ToString() + ")" + Environment.NewLine; 
                        _conteudoXml += "   nDI_I19 = " + _NFeDatasetX.GetCampo("nDI_I19") + Environment.NewLine;
                        _conteudoXml += "   dDI_I20 = " + _NFeDatasetX.GetCampo("dDI_I20") + Environment.NewLine;
                        _conteudoXml += "   xLocDesemb_I21 = " + _NFeDatasetX.GetCampo("xLocDesemb_I21") + Environment.NewLine;
                        _conteudoXml += "   UFDesemb_I22 = " + _NFeDatasetX.GetCampo("UFDesemb_I22") + Environment.NewLine;
                        _conteudoXml += "   dDesemb_I23 = " + _NFeDatasetX.GetCampo("dDesemb_I23") + Environment.NewLine;
                        _conteudoXml += "   tpViaTransp_I23a = " + _NFeDatasetX.GetCampo("tpViaTransp_I23a") + Environment.NewLine;
                        _conteudoXml += "   vAFRMM_I23b = " + _NFeDatasetX.GetCampo("vAFRMM_I23b") + Environment.NewLine;
                        _conteudoXml += "   tpIntermedio_I23c = " + _NFeDatasetX.GetCampo("tpIntermedio_I23c") + Environment.NewLine;
                        _conteudoXml += "   CNPJ_I23d = " + _NFeDatasetX.GetCampo("CNPJ_I23d") + Environment.NewLine;
                        _conteudoXml += "   UFTerceiro_I23e = " + _NFeDatasetX.GetCampo("UFTerceiro_I23e") + Environment.NewLine;
                        _conteudoXml += "   cExportador_I24 = " + _NFeDatasetX.GetCampo("cExportador_I24") + Environment.NewLine;
                    }

                    int _idADI = 0;
                    var _dsADI = _NFeDatasetX.FindDataset("ADI");
                    _dsADI.First();
                    while (!_dsADI.Eof())
                    {
                        if (!string.IsNullOrEmpty(_NFeDatasetX.GetCampo("nAdicao_I26")))
                        {
    	                    _idADI += 1;
                            _conteudoXml += "ADIÇÕES (Id: " + _idADI.ToString() + ")" + Environment.NewLine; 
                            _conteudoXml += "   nAdicao_I26 = " + _NFeDatasetX.GetCampo("nAdicao_I26") + Environment.NewLine;
                            _conteudoXml += "   nSeqAdic_I27 = " + _NFeDatasetX.GetCampo("nSeqAdic_I27") + Environment.NewLine;
                            _conteudoXml += "   cFabricante_I28 = " + _NFeDatasetX.GetCampo("cFabricante_I28") + Environment.NewLine;
                            _conteudoXml += "   vDescDI_I29 = " + _NFeDatasetX.GetCampo("vDescDI_I29") + Environment.NewLine;
                            _conteudoXml += "   nDraw_I29a = " + _NFeDatasetX.GetCampo("nDraw_I29a") + Environment.NewLine;
                        }

                        _dsADI.Next();
                    }

                    _dsDI.Next();
                }

	            _dsItem.Next();

                _conteudoXml += Environment.NewLine; 
	        }

            //Informações de Pagamentos
            if (_Nfe4OuSuperior) //So tem a partir desta versão
            {
                int _idPagamento = 0;
                var _dsPagamento = _NFeDatasetX.FindDataset("YA"); 
                _dsPagamento.First();
                while (!_dsPagamento.Eof())
                {
                    if (!string.IsNullOrEmpty(_NFeDatasetX.GetCampo("tPag_YA02")))
                    {
                        _idPagamento += 1;
                        _conteudoXml += "---------------------------------------------------------------------------------------------" + Environment.NewLine; 
                        _conteudoXml += "INFORMAÇÕES DO PAGAMENTO (Id: "+ _idPagamento.ToString() + ")" + Environment.NewLine; 
                        _conteudoXml += "   indPag_YA01b = " + _NFeDatasetX.GetCampo("indPag_YA01b") + Environment.NewLine;
                        _conteudoXml += "   tPag_YA02 = " + _NFeDatasetX.GetCampo("tPag_YA02") + Environment.NewLine;
                        _conteudoXml += "   vPag_YA03 = " + _NFeDatasetX.GetCampo("vPag_YA03") + Environment.NewLine;
                        _conteudoXml += "   tpIntegra_YA04a = " + _NFeDatasetX.GetCampo("tpIntegra_YA04a") + Environment.NewLine;
                        _conteudoXml += "   CNPJ_YA05 = " + _NFeDatasetX.GetCampo("CNPJ_YA05") + Environment.NewLine;
                        _conteudoXml += "   tBand_YA06 = " + _NFeDatasetX.GetCampo("tBand_YA06") + Environment.NewLine;
                        _conteudoXml += "   cAut_YA07 = " + _NFeDatasetX.GetCampo("cAut_YA07") + Environment.NewLine;
                    }

                    _dsPagamento.Next();

                    _conteudoXml += Environment.NewLine; 
                }
            }

            //Informações de Duplicatas
            int _idDuplicata = 0;
            var _dsDuplicata = _NFeDatasetX.FindDataset("DUP");
            _dsDuplicata.First();
            while (!_dsDuplicata.Eof())
            {
                if (!string.IsNullOrEmpty(_NFeDatasetX.GetCampo("nDup_Y08")))
                {
                    _idDuplicata += 1;
                    _conteudoXml += "---------------------------------------------------------------------------------------------" + Environment.NewLine; 
                    _conteudoXml += "INFORMAÇÕES DA DUPLICATA (Id: " + _idDuplicata.ToString() + ")" + Environment.NewLine; 
                    _conteudoXml += "   nDup_Y08 = " + _NFeDatasetX.GetCampo("nDup_Y08") + Environment.NewLine;
                    _conteudoXml += "   dVenc_Y09 = " + _NFeDatasetX.GetCampo("dVenc_Y09") + Environment.NewLine;
                    _conteudoXml += "   vDup_Y10 = " + _NFeDatasetX.GetCampo("vDup_Y10") + Environment.NewLine;
                }

                _dsDuplicata.Next();

                _conteudoXml += Environment.NewLine; 
            }

            mmoInformacoesNFe.AppendText(_conteudoXml);
        }
    }
}
