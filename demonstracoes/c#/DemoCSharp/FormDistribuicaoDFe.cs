using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using NFeX;
using NFeDataSetX;
using System.Xml;
using System.IO;

namespace WindowsFormsApplication1
{
    public partial class FormDistribuicaoDFe : Form
    {
        public string fCnpjSoftwareHouse = "";

        private spdNFeX _spdNFeX = new spdNFeX();
        private spdNFeDataSetX _spdNFeDatasetX = new spdNFeDataSetX();

        public class InformacaoArquivoDFe
        {
            public string ChaveNFe { get; set; }
            public string NomeEmitente { get; set; }
            public string ValorNFe { get; set; }
            public string ConteudoXml { get; set; }
        }

        public FormDistribuicaoDFe()
        {
            InitializeComponent();
        }

        private void btnConsultarDFe_Click(object sender, EventArgs e)
        {
            txtQtdNotas.Text = "0";
            txtChaveDownload.Clear();
            txtStatusDownloadNFe.Clear();
            rtbXML.Clear();

            var _tipoNSU = rdbUltimoNSU.Checked ? TipoNSU.nkUltimo : TipoNSU.nkEspecifico;

            var _xml = _spdNFeX.ConsultarDistribuicaoDFe(GetCodigoUF(cbUF.SelectedIndex),
                                                         txtCnpjCpf.Text,
                                                         txtNSU.Text,
                                                         _tipoNSU);

            if (!string.IsNullOrEmpty(_xml))
            {
                rtbXML.Text = _xml;
                DescompactarDFe(_xml);
            }
        }

        private void DescompactarDFe(string aXmlDFe)
        {
            List<InformacaoArquivoDFe> listDFe = new List<InformacaoArquivoDFe>();
            try
            {
                var _cStat = string.Empty;
                var _docXmlDFe = new XmlDocument();
                _docXmlDFe.LoadXml(aXmlDFe);

                if (_docXmlDFe.GetElementsByTagName("cStat")[0] != null)
                    _cStat = _docXmlDFe.GetElementsByTagName("cStat")[0].InnerText;

                if (_cStat == "138") //138 = Documento Localizado
                {
                    string _conteudoLinhaDocZip = "";
                    using (XmlTextReader _xml = new XmlTextReader(new System.IO.StringReader(aXmlDFe)))
                    {
                        bool _nodeDocZip = false;
                        int _i = 0;
                        while (_xml.Read())
                        {
                            if (_xml.NodeType == XmlNodeType.Element)
                                _nodeDocZip = (_xml.Name == "docZip");

                            if ((_nodeDocZip) && (_xml.NodeType == XmlNodeType.Text))
                            {
                                _i += 1;
                                _conteudoLinhaDocZip = _xml.Value;

                                var _xmlDescompactado = _spdNFeX.DescompactarXMLZip(_conteudoLinhaDocZip);
                                var _docXmlDescompactado = new XmlDocument();
                                _docXmlDescompactado.LoadXml(_xmlDescompactado);

                                if (_docXmlDescompactado.DocumentElement.Name == "resNFe")
                                {
                                    InformacaoArquivoDFe _dfe = new InformacaoArquivoDFe();
                                    _dfe.ChaveNFe = _docXmlDescompactado.GetElementsByTagName("chNFe")[0].InnerText;
                                    _dfe.NomeEmitente = _docXmlDescompactado.GetElementsByTagName("xNome")[0].InnerText;
                                    _dfe.ValorNFe = _docXmlDescompactado.GetElementsByTagName("vNF")[0].InnerText;
                                    _dfe.ConteudoXml = _xmlDescompactado;

                                    var existe = listDFe.Where(reg => reg.ChaveNFe == _docXmlDescompactado.GetElementsByTagName("chNFe")[0].InnerText);
                                    if (!existe.Any())
                                        listDFe.Add(_dfe);
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao Consultar Distribuição DFe -> " + ex.Message);
            }

            txtQtdNotas.Text = listDFe.Count.ToString();

            grdNotas.DataSource = listDFe;
            grdNotas.AutoResizeColumns();

            tbcDFe.SelectedTab = (listDFe.Count > 0) ? tabListagem : tabXML;
        }

        private void btnDownloadNFe_Click(object sender, EventArgs e)
        {
            var _cStat = string.Empty;
            var _xMotivo = string.Empty;
            try
            {
                var _xmlRetorno = _spdNFeX.ConsultarDistribuicaoDFeChave(GetCodigoUF(cbUF.SelectedIndex),
                                                                         txtCnpjCpf.Text, 
                                                                         txtChaveDownload.Text);

                var _docXml = new XmlDocument();
                _docXml.LoadXml(_xmlRetorno);

                if (_docXml.GetElementsByTagName("cStat")[1] != null)
                    _cStat = _docXml.GetElementsByTagName("cStat")[1].InnerText;
                else if (_docXml.GetElementsByTagName("cStat")[0] != null)
                    _cStat = _docXml.GetElementsByTagName("cStat")[0].InnerText;

                if (_docXml.GetElementsByTagName("xMotivo")[1] != null)
                    _xMotivo = _docXml.GetElementsByTagName("xMotivo")[1].InnerText;
                else if (_docXml.GetElementsByTagName("xMotivo")[0] != null)
                    _xMotivo = _docXml.GetElementsByTagName("xMotivo")[0].InnerText;

                if (_cStat == "138") //138 = Documento Localizado
                    txtStatusDownloadNFe.Text = "XML disponível em: " + _spdNFeX.DiretorioDownloads + txtChaveDownload.Text + "-nfe.xml";
                else
                    txtStatusDownloadNFe.Text = _cStat + " - " + _xMotivo;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao realizar Download da NFe -> " + ex.Message);
            }
        }

        private void FormDistribuicaoDFe_Shown(object sender, EventArgs e)
        {
            _spdNFeX.ConfigurarSoftwareHouse(fCnpjSoftwareHouse, "");

            _spdNFeX.LoadConfig(""); //Método do componente que lê o arquivo NFeConfig.ini

            txtCnpjCpf.Text = _spdNFeX.CNPJ;
            cbUF.SelectedIndex = cbUF.Items.IndexOf(_spdNFeX.UF);
        }

        private string GetCodigoUF(int aIndexUf)
        {
            switch (aIndexUf)
            {
                case 0  : return "12"; //AC
                case 1  : return "27"; //AL
                case 2  : return "13"; //AM
                case 3  : return "16"; //AP
                case 4  : return "29"; //BA
                case 5  : return "23"; //CE
                case 6  : return "53"; //DF
                case 7  : return "32"; //ES
                case 8  : return "52"; //GO
                case 9  : return "21"; //MA
                case 10 : return "31"; //MG
                case 11 : return "50"; //MS
                case 12 : return "51"; //MT
                case 13 : return "15"; //PA
                case 14 : return "25"; //PB
                case 15 : return "26"; //PE
                case 16 : return "22"; //PI
                case 17 : return "41"; //PR
                case 18 : return "33"; //RJ
                case 19 : return "24"; //RN
                case 20 : return "11"; //RO
                case 21 : return "14"; //RR
                case 22 : return "43"; //RS
                case 23 : return "42"; //SC
                case 24 : return "28"; //SE
                case 25 : return "35"; //SP
                case 26 : return "17"; //TO
                default: return "";
            }            
        }

        private void grdNotas_SelectionChanged(object sender, EventArgs e)
        {
            txtStatusDownloadNFe.Clear();
            txtChaveDownload.Text = grdNotas.RowCount > 0 ? grdNotas.CurrentRow.Cells[0].Value.ToString() : "";
        }
    }
}
