Imports System.Xml
Imports System.Text
Imports System.IO


Public Class frmPrincipal
    Public _spdNFeX As NFeX.spdNFeX
    Public _spdNFeDataSetsX As NFeDataSetX.spdNFeDataSetX
    Public xDoc As XmlDocument
    Public AbrirArquivo As OpenFileDialog

    Private Function buscarArquivo(Titulo As String, tipoArquivo As String) As String
        AbrirArquivo.Title = Titulo
        AbrirArquivo.Filter = tipoArquivo
        AbrirArquivo.FileName = ""
        AbrirArquivo.InitialDirectory = Application.StartupPath

        Dim dr1 As DialogResult = AbrirArquivo.ShowDialog()
        If dr1 = System.Windows.Forms.DialogResult.OK Then
            Return AbrirArquivo.FileName
        Else
            Return ""
        End If
    End Function

    Private Sub PreencherComboCertificado()
        Try
            Dim vetor As String()
            Dim _certificado As String = ""

            _certificado = _spdNFeX.ListarCertificados("|")

            If _certificado <> "" And _certificado IsNot Nothing Then
                vetor = _certificado.Split("|"c)
                cbCertificados.Items.Clear()

                For i As Integer = 0 To vetor.Length - 1
                    If vetor(i) <> "" Then
                        cbCertificados.Items.Add(vetor(i))
                    End If
                Next

            End If

            If cbCertificados.Items.Count > 0 Then
                cbCertificados.SelectedIndex = 0

            End If
        Catch ex As Exception
            MessageBox.Show(ex.ToString())
        End Try
    End Sub

    Private Sub btImprimir_Click(sender As Object, e As EventArgs) Handles btImprimir.Click
        Try
            Dim XMLAux As String = ""

            XMLAux = buscarArquivo("Selecionar XML", "XML (*.xml)|*.xml")

            If (XMLAux = "") And (edtNota.Text <> "") Then
                XMLAux = File.ReadAllText(Application.StartupPath + "\XmlDestinatario\" + edtNota.Text + "-nfe.xml", Encoding.Default)
            Else
                XMLAux = File.ReadAllText(XMLAux, Encoding.Default)
            End If

            _spdNFeX.ImprimirLocalRetiradaEntrega = True

            _spdNFeX.ImprimirDanfe("0000", XMLAux, "C:\Program Files\TecnoSpeed\NFe\arquivos\templates\vm60\Danfe\retrato.rtm", "")
        Catch ex As Exception
            MessageBox.Show(ex.ToString())
        End Try

    End Sub

    Private Sub btConsultarProt_Click(sender As Object, e As EventArgs) Handles btConsultarNota.Click
        Try
            If edtNota.Text <> "" Then

                mmRetorno.Text = _spdNFeX.ConsultarNF(edtNota.Text)

                xDoc.LoadXml(mmRetorno.Text)

                If xDoc.GetElementsByTagName("chNFe").Item(0).InnerText <> "" Then
                    edtNota.Text = xDoc.GetElementsByTagName("chNFe").Item(0).InnerText
                End If

                If xDoc.GetElementsByTagName("nProt").Item(0).InnerText <> "" Then
                    edtNumProt.Text = xDoc.GetElementsByTagName("nProt").Item(0).InnerText
                End If
                tcPrincipal.SelectedIndex = 2
            Else
                MsgBox("Favor preencher o ID da Nota", vbOKOnly, "Atenção")
            End If
        Catch ex As Exception
        MessageBox.Show(ex.ToString())
        End Try
    End Sub

    Private Sub btConsultarRec_Click(sender As Object, e As EventArgs) Handles btConsultarRec.Click
        Try
            If edtNumRec.Text <> "" Then
                mmRetorno.Text = _spdNFeX.ConsultarRecibo(edtNumRec.Text)

                xDoc.LoadXml(mmRetorno.Text)

                If xDoc.GetElementsByTagName("cStat").Item(0).InnerText <> "999" Then
                    If xDoc.GetElementsByTagName("chNFe").Item(0).InnerText <> "" Then
                        edtNota.Text = xDoc.GetElementsByTagName("chNFe").Item(0).InnerText
                    End If

                    If xDoc.GetElementsByTagName("nProt").Item(0).InnerText <> "" Then
                        edtNumProt.Text = xDoc.GetElementsByTagName("nProt").Item(0).InnerText
                    End If
                End If
                tcPrincipal.SelectedIndex = 2
            Else
                MsgBox("Favor preencher o número do recibo", vbOKOnly, "Atenção")
            End If
        Catch ex As Exception
        MessageBox.Show(ex.ToString())
        End Try

    End Sub

    Private Sub btnEnviarNFe_Click(sender As Object, e As EventArgs) Handles btnEnviarNFe.Click
        Try
            _spdNFeX.ValidarEsquemaAntesEnvio = True

            If Not RbAssincrono.Checked Then
                mmEnvio.Text = _spdNFeX.EnviarNF("00001", mmXML.Text, False)
            Else
                mmEnvio.Text = _spdNFeX.EnviarNFSincrono("00001", mmXML.Text, False)
            End If

            xDoc.LoadXml(mmEnvio.Text)

            mmRetorno.Clear()
            mmRetorno.Lines.Append("STATUS: " + xDoc.GetElementsByTagName("cStat").Item(0).InnerText)
            mmRetorno.Lines.Append("MOTIVO: " + xDoc.GetElementsByTagName("xMotivo").Item(0).InnerText)


            If (RbAssincrono.Checked) And (xDoc.GetElementsByTagName("cStat").Item(0).InnerText = "104") Then
                If xDoc.GetElementsByTagName("chNFe").Item(0).InnerText <> "" Then
                    edtNota.Text = xDoc.GetElementsByTagName("chNFe").Item(0).InnerText
                End If

                If xDoc.GetElementsByTagName("nProt").Item(0).InnerText <> "" Then
                    edtNumProt.Text = xDoc.GetElementsByTagName("nProt").Item(0).InnerText
                End If
            End If

            tcPrincipal.SelectedIndex = 1

        Catch ex As Exception
            MessageBox.Show(ex.ToString())
        End Try
    End Sub

    Private Sub btLoad_Click(sender As Object, e As EventArgs) Handles btLoad.Click
        Try
            _spdNFeX.LoadConfig("")

            edtUF.Text = _spdNFeX.UF

            edtCNPJ.Text = _spdNFeX.CNPJ

            _spdNFeX.NomeCertificado = cbCertificados.Text
        Catch ex As Exception
        MessageBox.Show(ex.ToString())
        End Try
    End Sub

    Private Sub frmPrincipal_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            _spdNFeX = New NFeX.spdNFeX
            xDoc = New XmlDocument
            AbrirArquivo = New OpenFileDialog

            AbrirArquivo.CheckFileExists = True
            AbrirArquivo.CheckPathExists = True
            AbrirArquivo.ShowReadOnly = True

            _spdNFeX.AtualizarArquivoServidores = False
            _spdNFeX.ConfigurarSoftwareHouse("", "")

            PreencherComboCertificado()
        Catch ex As Exception
        MessageBox.Show(ex.ToString())
        End Try
    End Sub

    Private Sub btGerarXML_Click(sender As Object, e As EventArgs) Handles btGerarXML.Click
        Try
            Dim _TX2 As String

            _TX2 = "
INCLUIR
Id_A03=0
versao_A02=4.00
cUF_B02=41
cNF_B03=5
natOp_B04=VENDA DE MERCADORIA ADQ. DE TERCEIRO - PF E PJ NAO CONTRIBUI
mod_B06=55
serie_B07=500
nNF_B08=" + edtNumNota.Text + "
DHEMI_B09=2020-05-20T08:10:00-03:00
DHSAIENT_B10=2020-05-20T08:10:00-03:00
tpNF_B11=1
IDDEST_B11A=1
cMunFG_B12=4115200
tpImp_B21=1
tpEmis_B22=1
cDV_B23=0
tpAmb_B24=2
finNFe_B25=1
INDFINAL_B25A=1
INDPRES_B25B=1
procEmi_B26=0
verProc_B27=5

CRT_C21=3
CNPJ_C02=08187168000160
xNome_C03= TECNOSPEED NOME 
xFant_C04= TECNOSPEED FANT. 
xLgr_C06=RUA DO POVO
nro_C07=711
xBairro_C09=jardim teste
cMun_C10=4115200
xMun_C11=MARINGA
UF_C12=PR
CEP_C13=79415000
cPais_C14=1058
xPais_C15=BRASIL
fone_C16=4432222222
IE_C17=9044016688

CNPJ_E02=08187168000160
IDESTRANGEIRO_E03A=
xNome_E04=NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL
xLgr_E06=RUA DO CENTRO
nro_E07=897
xBairro_E09=CENTRAL
cMun_E10=4115200 
xMun_E11=MARINGA
UF_E12=PR
CEP_E13=87500000
cPais_E14=1058
xPais_E15=BRASIL
fone_E16=445555555
INDIEDEST_E16A=1
IE_E17=9044016688
IM_E18A=
email_E19=
CNPJ_ZD02=08187168000160
xContato_ZD04=Teste de responsavel
email_ZD05=teste@tecnospeed.com.br
fone_ZD06=4430375500


email_e19=
CNPJ_GA02=

CNPJ_G02=
xLgr_G03=rua teste
nro_G04=145
xBairro_G06=centro
cMun_G07=4115200
xMun_G08=Maringa
UF_G09=PR

INCLUIRITEM
nItem_H02=1
cProd_I02=0999
cEAN_I03=SEM GTIN
xProd_I04=MELAO
NCM_I05=11081200
CEST_I05c=0123456
indEscala_I05d=S
CFOP_I08=5102
uCom_I09=CX
qCom_I10=1
vUnCom_I10a=0.0100
vProd_I11=0.01
cEANTrib_I12=SEM GTIN
uTrib_I13=CX
qTrib_I14=1
vUnTrib_I14a=0.0100
indTot_I17b=1


INCLUIRPARTE=DI
nDi_I19=123456789123
dDi_I20=2015-05-20
xLocDesemb_I21=Paranaguá
UFDesemb_I22=PR
dDesemb_I23=2020-05-20
tpViaTransp_I23a=10
vAFRMM_I23B=100.00
tpIntermedio_I23C=1
CNPJ_I23D=08187168000160
UFTerceiro_I23E=PR
cExportador_I24=123456789123
SALVARPARTE=DI

INCLUIRPARTE=ADI
nAdicao_I26=123
nSeqAdic_I27=1
cFabricante_I28=123
vDescDI_I29=0.10
nDraw_I29a=12345678912
SALVARPARTE=ADI

orig_N11=0
CST_N12=10
modBC_N13=3
vBC_N15=0.01
pICMS_N16=12.00
vICMS_N17=0.01
modBCST_N18=6
pRedBCST_N20=4.00 
vBCST_N21=0.00
pICMSST_N22=12.00
vICMSST_N23=0.00
VICMSDESON_N28A=0.00

CST_Q06=01
vBC_Q07=0.01
pPIS_Q08=1.65
vPIS_Q09=0.00

CST_S06=01
vBC_S07=0.01
pCOFINS_S08=7.60
vCOFINS_S11=0.01

nLote_I81=123
qLote_I82=5565.000
dFab_I83=2017-07-23
dVal_I84=2020-11-23

SALVARITEM

vBC_W03=0.01
vICMS_W04=0.01
vICMSDeson_W04a=0.00
vFCP_W04h=0.00
vBCST_W05=0.00
vST_W06=0.00
vFCPST_W06a=0.00
vFCPSTRet_W06b=0.00
vST_W06=0.00
vFCPST_W06a=0.00
vFCPSTRet_W06b=0.00
vProd_W07=0.01
vFrete_W08=0.00
vSeg_W09=0.00
vDesc_W10=0.00
vII_W11=0.00
vIPI_W12=0.00
vIPIDevol_W12a=0.00
vPIS_W13=0.00
vCOFINS_W14=0.01
vOutro_W15=0.00
vNF_W16=0.01

modFrete_X02=0

nFat_Y03=2000
vOrig_Y04=1000.00
vDesc_Y05=100.00
vLiq_Y06=900.00

INCLUIRPARTE=YA
tPag_YA02=01
vPag_YA03=0.01
SALVARPARTE=YA

SALVAR
"

            mmXML.Text = _spdNFeX.ConverterLoteParaXML(_TX2, NFeX.LayoutConv.lkTx2, "pl_009")
        Catch ex As Exception
        MessageBox.Show(ex.ToString())
        End Try
    End Sub

    Private Sub btStatus_Click(sender As Object, e As EventArgs) Handles btStatus.Click
        Try
            mmXML.Text = _spdNFeX.StatusDoServico
        Catch ex As Exception
        MessageBox.Show(ex.ToString())
        End Try
    End Sub

    Private Sub btnAssinarXML_Click(sender As Object, e As EventArgs) Handles btnAssinarXML.Click
        Try
            mmXML.Text = _spdNFeX.AssinarNota(mmXML.Text)
        Catch ex As Exception
            MessageBox.Show(ex.ToString())
        End Try
    End Sub

    Private Sub btnEnviarEmail_Click(sender As Object, e As EventArgs) Handles btnEnviarEmail.Click
        Try
            Dim auxXML As String = ""
            Dim auxPDF As String = ""

            auxPDF = buscarArquivo("Selecionar PDF", "PDF (*.pdf)|*.pdf")

            If auxPDF = "" Then
                Exit Sub
            End If

            auxXML = buscarArquivo("Selecionar XML", "XML (*.xml)|*.xml")

            If auxXML = "" Then
                Exit Sub
            End If

            _spdNFeX.EmailDestinatario = InputBox("Qual o email do destinatario", "Destinatário", "joao.costa@tecnospeed.com.br")
            _spdNFeX.EmailRemetente = InputBox("Qual o email do remetente", "Remetente", "joao.costa@tecnospeed.com.br")

            _spdNFeX.EnviarNotaDestinatarioAnexos(auxPDF, auxXML, "")
        Catch ex As Exception
            MessageBox.Show(ex.ToString())
        End Try

    End Sub
End Class
