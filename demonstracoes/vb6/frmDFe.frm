VERSION 5.00
Begin VB.Form frmDFe 
   Caption         =   "DFe"
   ClientHeight    =   6480
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   14400
   LinkTopic       =   "Form3"
   ScaleHeight     =   6480
   ScaleWidth      =   14400
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "2 - Manifestação"
      Height          =   675
      Left            =   9000
      TabIndex        =   25
      Top             =   1800
      Width           =   2175
   End
   Begin VB.CommandButton btnConsultarDfe 
      Caption         =   "1 - Consultar Dfe"
      Height          =   675
      Left            =   9000
      TabIndex        =   24
      Top             =   960
      Width           =   2175
   End
   Begin VB.TextBox strngrdNotas 
      Height          =   3255
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   19
      Top             =   3120
      Width           =   14175
   End
   Begin VB.CommandButton btnDownloadNFe 
      Caption         =   "3 - Download NFe"
      Height          =   675
      Left            =   12120
      TabIndex        =   13
      Top             =   960
      Width           =   2175
   End
   Begin VB.Frame Frame3 
      Caption         =   "Dados Consulta "
      Height          =   2175
      Left            =   4560
      TabIndex        =   12
      Top             =   840
      Width           =   4095
      Begin VB.TextBox txtQtdNotas 
         Appearance      =   0  'Flat
         Height          =   375
         Left            =   720
         Locked          =   -1  'True
         TabIndex        =   22
         Top             =   1560
         Width           =   495
      End
      Begin VB.CheckBox chkConsultaTotal 
         Caption         =   "Consultar Todas as notas destinadas?"
         Height          =   495
         Left            =   2280
         TabIndex        =   18
         Top             =   1440
         Width           =   1695
      End
      Begin VB.TextBox txtNroUltiNSU 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   2160
         TabIndex        =   15
         Top             =   720
         Width           =   1695
      End
      Begin VB.TextBox txtNSUInicial 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   240
         TabIndex        =   14
         Top             =   720
         Width           =   1575
      End
      Begin VB.Label Label3 
         Caption         =   "Quantidade de notas"
         Height          =   255
         Left            =   240
         TabIndex        =   23
         Top             =   1200
         Width           =   1695
      End
      Begin VB.Label Label8 
         Caption         =   "Último NSU"
         Height          =   255
         Left            =   2160
         TabIndex        =   17
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label7 
         Caption         =   "NSU Inicial"
         Height          =   255
         Left            =   240
         TabIndex        =   16
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Configurações"
      Height          =   2175
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Width           =   4335
      Begin VB.ComboBox cbbUFConfig 
         Height          =   315
         ItemData        =   "frmDFe.frx":0000
         Left            =   600
         List            =   "frmDFe.frx":0055
         TabIndex        =   20
         Top             =   360
         Width           =   735
      End
      Begin VB.CommandButton btnLoadConfig 
         Caption         =   "Carregar Configs"
         Height          =   315
         Left            =   2280
         TabIndex        =   11
         Top             =   1560
         Width           =   1695
      End
      Begin VB.CommandButton btnAbrirIni 
         Caption         =   "Abrir Ini de Configs"
         Height          =   315
         Left            =   2280
         TabIndex        =   10
         Top             =   1080
         Width           =   1695
      End
      Begin VB.Frame Frame2 
         Caption         =   "Ambiente"
         Height          =   1095
         Left            =   240
         TabIndex        =   6
         Top             =   840
         Width           =   1695
         Begin VB.OptionButton rbHomologacao 
            Caption         =   "Homologação"
            Height          =   255
            Left            =   120
            TabIndex        =   21
            Top             =   360
            Value           =   -1  'True
            Width           =   1455
         End
         Begin VB.OptionButton rbProducao 
            Caption         =   "Produção"
            Height          =   195
            Left            =   120
            TabIndex        =   9
            Top             =   720
            Width           =   1215
         End
      End
      Begin VB.TextBox txtCNPJConfig 
         Height          =   285
         Left            =   2040
         TabIndex        =   5
         Top             =   360
         Width           =   2175
      End
      Begin VB.Label Label2 
         Caption         =   "CNPJ"
         Height          =   255
         Left            =   1440
         TabIndex        =   4
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label1 
         Caption         =   "UF"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Width           =   375
      End
   End
   Begin VB.ComboBox cbbCertificado 
      Height          =   315
      ItemData        =   "frmDFe.frx":00C5
      Left            =   120
      List            =   "frmDFe.frx":00C7
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   360
      Width           =   14175
   End
   Begin VB.Label Label5 
      Caption         =   "Homologação"
      Height          =   255
      Left            =   840
      TabIndex        =   8
      Top             =   2040
      Width           =   1335
   End
   Begin VB.Label Label4 
      Caption         =   "Homologação"
      Height          =   255
      Left            =   480
      TabIndex        =   7
      Top             =   1920
      Width           =   1335
   End
   Begin VB.Label lblDFeCertificado 
      Caption         =   "Certificado Digital"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "frmDFe"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'Declarado Objeto pertencente a Classe que faz interação com servidores da Receita'
Public spdNFe As spdNFeX
Public spdNFeDataSet As NFeDataSetX.spdNFeDataSetX
Dim NFeAssinada As String
Public ArqIni As String
Dim lXMLDoc As IXMLDOMDocument2
Dim nroUltiNSU As String
Dim nroIniNSU As String
Dim maxNSU As String
Dim QtdChaves As Integer
    
'Função para ler arquivos INI usando API window
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal padrao As String, ByVal variavel As String, ByVal tam As Long, ByVal arquivo As String) As Long
'Função para gravar arquivos INI usando API windows
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal valor As Any, ByVal arquivo As String) As Long

Function get_ini(seção$, chave$) As String
  arquiv$ = ArqIni
  Returns$ = Space$(128)
  X% = GetPrivateProfileString(ByVal seção$, ByVal chave$, _
  "", Returns$, Len(Returns$), ByVal arquiv$)
  get_ini = Left$(Returns$, X%)
End Function

Function write_ini(ByVal section$, ByVal chv$, ByVal variavel$) As String
    arquiv$ = ArqIni
    iRet = WritePrivateProfileString(ByVal section$, ByVal chv$, ByVal variavel$, ByVal arquiv$)
End Function

Sub SetConfigNFe()
  
    spdNFe.ArquivoServidoresHom = edArqServHomol.Text 'Seta Caminho p/ arquivo de configuração dos Servidores de Homologação
    spdNFe.DiretorioEsquemas = edEsquema.Text 'Seta Diretório esquema para o Componente'
    spdNFe.DiretorioTemplates = edTemplate.Text 'Seta Diretório de Templates para o Componente'
    spdNFe.NomeCertificado = ListCertificado.Text 'Seta Nome do Certificado Selecionado'
    spdNFe.UF = edUF.Text 'Seta o Estado ao componente'
    spdNFe.Ambiente = akHomologacao 'Seta Ambiente de Homologacao'
    spdNFe.DiretorioLog = "Log\" 'Seta Diretório onde será gravado Logs do Componente
    spdNFe.VersaoManual = cbVersao.Text
    MsgBox "Configurações carregadas"
End Sub

Private Sub btnAbrirIni_Click()
    Shell "C:\Windows\System32\notepad.exe " + App.Path + "\NFeConfig.ini", vbNormalFocus
End Sub

Private Sub btnConsultarDfe_Click()
    If ((cbbUFConfig.Text <> "") And (txtCNPJConfig <> "") And (cbbCertificado.Text <> "")) Then
        strngrdNotas.Text = ""
        txtQtdNotas.Text = ""
        ' Inicia consulta com NSU = "000000000000000"
        consultaDFe ("000000000000000")
    Else
        MsgBox "Campos Certificado ou UF ou CNPJ vazios!"
    End If
End Sub

Private Sub consultaDFe(ultNSU As String)
   Dim RetDFe, auxXML, vDirResumo As String
    Dim j, jx, i  As Integer
    Dim listaXML, nsu As Collection
    Set nsu = New Collection
    Set listaXML = New Collection
    Dim lNodeList, iRSEmitente, iVNF, iSitManifestacao As IXMLDOMNodeList ' tipagem da MSXML6_TLB

    vDirResumo = App.Path + "\XmlResumo"

    ' Função de "Consulta da Relação de Documentos a serem distribuidos para determinado CPF ou CNPJ de acordo com a NF-e"
    ' ConsultarDistribuicaoDFe(aCodigoUF, aCNPJCPF : string; aNSU: string; aTipoNSU: TNSUKind): string;

    RetDFe = spdNFe.ConsultarDistribuicaoDFe(trataUF(cbbUFConfig.Text), spdNFe.CNPJ, ultNSU, nkUltimo)

    ' Grava o retorno em um diretório
    spdNFe.TratarXMLRetornoDFe strngrdNotas.Text, vDirResumo
    
    ' A função abaixo recebe o XML da consulta
    configObjeto (RetDFe)

    
    
    ' Obtém o NSU mais alto e salva em maxNSU
    Set lNodeList = lXMLDoc.selectNodes("//retDistDFeInt/maxNSU")
    maxNSU = lNodeList.Item(0).Text
    
    ' Percorre os NSU e salva os números em nsu
    Set lNodeList = lXMLDoc.selectNodes("//retDistDFeInt/loteDistDFeInt/docZip/@NSU")
    If lNodeList.length > 0 Then
        For i = 0 To lNodeList.length - 1
            nsu.Add lNodeList.Item(i).Text
            ' Atualiza variável nroUltiNSU (último NSU) e nroIniNSU (valor inicial do NSU)
            ' Cada consulta retorna 50 ítens; ao final da Sub, esses valores serão usados para
            ' repetir a consulta até atingir o maxNSU
            nroUltiNSU = lNodeList.Item(i).Text
            nroIniNSU = lNodeList.Item(0).Text
            If ultNSU = "000000000000000" Then
                txtNSUInicial.Text = nroIniNSU
            End If
        Next i
    End If
    
    ' Criando NodeList com XML compactado
    Set lNodeList = lXMLDoc.selectNodes("//retDistDFeInt/loteDistDFeInt/docZip")
    
    ' Verifica se NodeList não está vazia
    If (lNodeList.length > 0) Then
        For i = 0 To lNodeList.length - 1
            auxXML = lNodeList.Item(i).Text
            ' Descompacta cada XML e salva o na collection listaXML
            listaXML.Add spdNFe.DescompactarXMLZip(auxXML)
        Next
    End If
    
    ' Conta o número de chaves para atualizar o contador
    For jx = 1 To listaXML.Count
        configObjeto (listaXML(jx))
        ' Criando NodeList com as chaves
        Set lNodeList = lXMLDoc.selectNodes("//resNFe/chNFe")
        ' Verifica se NodeList está vazia
        If lNodeList.length > 0 Then
            For i = 0 To lNodeList.length - 1
                QtdChaves = QtdChaves + 1
            Next
        End If
    Next
    ' Atualiza o contador
    txtQtdNotas.Text = Str(QtdChaves)
    
    ' Loop para carregar as chaves
    For j = 1 To listaXML.Count
        configObjeto (listaXML.Item(j))
        ' Selecionando chNFe, xNome e vNF para gerar o relatório
        Set lNodeList = lXMLDoc.selectNodes("//resNFe/chNFe")
        Set iRSEmitente = lXMLDoc.selectNodes("//resNFe/xNome")
        Set iVNF = lXMLDoc.selectNodes("//resNFe/vNF")
               
        ' Verifica se NodeList não está vazia
        If (lNodeList.length > 0) Then
            ' Preenche a lista com os resultados da pesquisa
            For i = 0 To lNodeList.length - 1
                strngrdNotas.Text = strngrdNotas.Text & vbCrLf _
                & " * chNota        = " & lNodeList.Item(i).Text & vbCrLf _
                & "     * NSU       = " & nsu.Item(j) & vbCrLf _
                & "     * xNome     = " & iRSEmitente.Item(i).Text & vbCrLf _
                & "     * vNF       = " & iVNF.Item(i).Text & vbCrLf _
                & "========================================================"
            Next
        End If
    Next
    
    ' Implementação recursiva para fazer as consultas
    ' Caso esteja marcada a checkbox chkConsultaTotal
    
    ' Atualiza os campos de texto com valores inicial e final de NSU
    txtNroUltiNSU.Text = nroUltiNSU
    
    ' Chama a Sub consultaDFe informando o último NSU consultado
    ' Na próxima consulta, SEFAZ envia a partir do próximo NSU
    If (Val(nroUltiNSU) < Val(maxNSU)) And (chkConsultaTotal.Value) Then
        consultaDFe nroUltiNSU
    End If
End Sub

Sub configObjeto(XML As String)
    ' Configura objeto lXMLDoc
    Set lXMLDoc = New DOMDocument60
    lXMLDoc.setProperty "SelectionLanguage", "XPath"
    lXMLDoc.async = False
    If XML <> "" Then
        lXMLDoc.loadXML RemoverNameSpaces(XML)
    Else
        MsgBox "XML não informado!"
    End If
End Sub

Private Function RemoverNameSpaces(XMLString As String) As String
    cRemoveNSTransform = "<xsl:stylesheet version=""1.0"" xmlns:xsl=""http://www.w3.org/1999/XSL/Transform"">" _
    & "<xsl:output method=""xml"" indent=""no""/>" _
    & "<xsl:template match=""/|comment()|processing-instruction()"">" _
    & "    <xsl:copy>" & "      <xsl:apply-templates/>" & "    </xsl:copy>" _
    & "</xsl:template>" _
    & "<xsl:template match=""*"">" & "    <xsl:element name=""{local-name()}"">" _
    & "     <xsl:apply-templates select=""@*|node()""/>" & "    </xsl:element>" _
    & "</xsl:template>" _
    & "<xsl:template match=""@*"">" & "    <xsl:attribute name=""{local-name()}"">" _
    & "     <xsl:value-of select="".""/>" & "    </xsl:attribute>" _
    & "</xsl:template>" _
    & "</xsl:stylesheet>"

    Dim Doc, XSL As IXMLDOMDocument2
    Dim Res As String
    Dim p As Long
        
    Set Doc = New DOMDocument60
    Doc.async = False
    Set XSL = New DOMDocument60
    XSL.async = False
    If Doc.loadXML(XMLString) Then
        XSL.loadXML (cRemoveNSTransform)
        Res = Doc.transformNode(XSL)
        p = InStrRev(Res, "?>")
        If p <> 0 Then
            result = Mid(Res, p + 2)
        End If
        RemoverNameSpaces = result
    Else
        MsgBox "Ocorreu um erro!"
    End If
End Function


Private Sub btnDownloadNFe_Click()
    Dim chaveDownload, xmlCompactado, vDirChave As String
    Dim localiza As Integer
    chaveDownload = InputBox("Entre o valor da chave")
    If chaveDownload <> "" Then
        strngrdNotas.Text = ""
        vDirChave = App.Path + "\XmlDownload"
        strngrdNotas.Text = spdNFe.ConsultarDistribuicaoDFeChave(trataUF(spdNFe.UF), spdNFe.CNPJ, chaveDownload)
        ' Salva o Xml em um diretório
        spdNFe.TratarXMLRetornoDFe strngrdNotas.Text, vDirChave
        ' Limpa o retorno, deixando apenas o valor dentro da tag <docZip></docZip>
        localiza = InStrRev(strngrdNotas.Text, ".xsd")
        If localiza <> 0 Then
            xmlCompactado = Mid(strngrdNotas.Text, localiza + 6)
            strngrdNotas.Text = Replace(xmlCompactado, "</docZip></loteDistDFeInt></retDistDFeInt>", "")
            ' Aplica o método DescompactarXMLZip
            strngrdNotas.Text = spdNFe.DescompactarXMLZip(strngrdNotas.Text)
           
        End If
    Else
        MsgBox "Chave da nota não preenchida!"
    End If
End Sub

Private Sub btnLoadConfig_Click()

  spdNFe.NomeCertificado = cbbCertificado.Text
  write_ini "NFE", "NomeCertificado", cbbCertificado.Text

  'Esse metodo faz com que o Componente carregue as configuracoes do INI para as devidas propriedades
  spdNFe.LoadConfig (ArqIni)
  
  'carregar valores do emitente
  txtCNPJConfig.Text = spdNFe.CNPJ
  cbbUFConfig.Text = spdNFe.UF
  
  If spdNFe.NomeCertificado <> "" Then
     cbbCertificado.List(0) = spdNFe.NomeCertificado
     cbbCertificado.ListIndex = 0
  End If
  
  If rbHomologacao.Value = True Then
    spdNFe.Ambiente = akHomologacao
    
  Else
    spdNFe.Ambiente = akProducao
  End If
End Sub

Private Sub Command1_Click()
  Form2.Show
End Sub

Private Sub Form_Initialize()

  'Instancia o Objeto responsável pela interação com servidores da Receita'
  Set spdNFe = New NFeX.spdNFeX
  Set spdNFeDataSet = New NFeDataSetX.spdNFeDataSetX

  ' Método ConfigurarSoftwareHouse
  ' Método responsável por realizar a validação de licença com a Tecnospeed.
  ' Chamada  : _spdNFeX.ConfigurarSoftwareHouse(aCnpjSH : String, aTokenSH : String)
  ' aCnpjSH  : deve ser informado o CNPJ da Software House cliente Tecnospeed
  ' aTokenSH : deve ser informado o Token que a Software House possui junto a Tecnospeed
  spdNFe.ConfigurarSoftwareHouse "00000000000000", "000000000000000000000"

  'Arquivo INI a ser manipulado com parametrizações
  spdNFe.ConfigINI = App.Path + "\nfeConfig.ini"
  ArqIni = App.Path + "\nfeConfig.ini"
  
  'Utiliza Método do Componente para Listar Certificados instalado no SO
  Dim i As Integer
  Dim vetor As Variant
  vetor = Split(spdNFe.ListarCertificados("|"), "|")
  cbbCertificado.Clear
  For i = LBound(vetor) To UBound(vetor)
          cbbCertificado.AddItem vetor(i)
  Next
End Sub

Private Function trataUF(strUF As String) As String
    ' Associa cada UF a seu respectivo código
    Select Case strUF
        Case "AC"
            trataUF = "12"
            Exit Function
        Case "AL"
            trataUF = "27"
            Exit Function
        Case "AP"
            trataUF = "16"
            Exit Function
        Case "AM"
            trataUF = "13"
            Exit Function
        Case "BA"
            trataUF = "29"
            Exit Function
        Case "CE"
            trataUF = "23"
            Exit Function
        Case "DF"
            trataUF = "53"
            Exit Function
        Case "ES"
            trataUF = "32"
            Exit Function
        Case "GO"
            trataUF = "52"
            Exit Function
        Case "MA"
            trataUF = "21"
            Exit Function
        Case "MT"
            trataUF = "51"
            Exit Function
        Case "MS"
            trataUF = "50"
            Exit Function
        Case "MG"
            trataUF = "31"
            Exit Function
        Case "PA"
            trataUF = "15"
            Exit Function
        Case "PB"
            trataUF = "25"
            Exit Function
        Case "PR"
            trataUF = "41"
            Exit Function
        Case "PE"
            trataUF = "26"
            Exit Function
        Case "PI"
            trataUF = "22"
            Exit Function
        Case "RJ"
            trataUF = "33"
            Exit Function
        Case "RN"
            trataUF = "24"
            Exit Function
        Case "RS"
            trataUF = "43"
            Exit Function
        Case "RO"
            trataUF = "11"
            Exit Function
        Case "RR"
            trataUF = "14"
            Exit Function
        Case "SC"
            trataUF = "42"
            Exit Function
        Case "SP"
            trataUF = "35"
            Exit Function
        Case "SE"
            trataUF = "28"
            Exit Function
        Case "TO"
            trataUF = "17"
            Exit Function
    End Select
End Function


Private Sub rbHomologacao_Click()
    spdNFe.Ambiente = akHomologacao
    write_ini "NFE", "Ambiente", "2"
End Sub

Private Sub rbProducao_Click()
    spdNFe.Ambiente = akProducao
    write_ini "NFE", "Ambiente", "1"
End Sub
