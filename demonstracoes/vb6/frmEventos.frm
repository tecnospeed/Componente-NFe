VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Form2 
   Caption         =   "Eventos NFe"
   ClientHeight    =   6810
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12915
   LinkTopic       =   "Form2"
   ScaleHeight     =   6810
   ScaleWidth      =   12915
   StartUpPosition =   1  'CenterOwner
   Begin TabDlg.SSTab SSTab1 
      Height          =   6495
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   12735
      _ExtentX        =   22463
      _ExtentY        =   11456
      _Version        =   393216
      Tab             =   2
      TabHeight       =   520
      TabCaption(0)   =   "Manifestação"
      TabPicture(0)   =   "frmEventos.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "mmManifestacao"
      Tab(0).Control(1)=   "edtChaveManifestacao"
      Tab(0).Control(2)=   "edtCNPJManifestacao"
      Tab(0).Control(3)=   "cbFusoManifestacao"
      Tab(0).Control(4)=   "cbTipoEvento"
      Tab(0).Control(5)=   "edtJustificativaManifestacao"
      Tab(0).Control(6)=   "edtDataEvento"
      Tab(0).Control(7)=   "btnDataEvento"
      Tab(0).Control(8)=   "btnEnviarManifestacao"
      Tab(0).Control(9)=   "txtOrgao"
      Tab(0).Control(10)=   "Label1"
      Tab(0).Control(11)=   "lblChaveManifestacao"
      Tab(0).Control(12)=   "lblCNPJDestinatario"
      Tab(0).Control(13)=   "lblFusoManifestacao"
      Tab(0).Control(14)=   "lblTipoEvento"
      Tab(0).Control(15)=   "lblJustificativaManifestacao"
      Tab(0).Control(16)=   "lblDataEvento"
      Tab(0).Control(17)=   "lblOrgao"
      Tab(0).Control(18)=   "lblManifestacao"
      Tab(0).ControlCount=   19
      TabCaption(1)   =   "Cancelamento Evento"
      TabPicture(1)   =   "frmEventos.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "lblXmlCancEvento"
      Tab(1).Control(1)=   "lblDataCancEvento(0)"
      Tab(1).Control(2)=   "lblJustificativaCancEvento"
      Tab(1).Control(3)=   "lblFusoCancEvento(0)"
      Tab(1).Control(4)=   "lblProtocoloAutCancEvento"
      Tab(1).Control(5)=   "lblChaveCancelarEvento"
      Tab(1).Control(6)=   "lblCancelarEvento"
      Tab(1).Control(7)=   "cbFusoCancelamento"
      Tab(1).Control(8)=   "edtDataCancEvento"
      Tab(1).Control(9)=   "btnCancelarNFeEvento"
      Tab(1).Control(10)=   "btnDataCancEvento(0)"
      Tab(1).Control(11)=   "edtJustificativaCancEvento"
      Tab(1).Control(12)=   "edtProtocoloCancNFe"
      Tab(1).Control(13)=   "edtChaveCancelamentoNFe"
      Tab(1).Control(14)=   "mmCancelamentoNfe"
      Tab(1).ControlCount=   15
      TabCaption(2)   =   "Carta de Correção"
      TabPicture(2)   =   "frmEventos.frx":0038
      Tab(2).ControlEnabled=   -1  'True
      Tab(2).Control(0)=   "Label2"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).Control(1)=   "Label3"
      Tab(2).Control(1).Enabled=   0   'False
      Tab(2).Control(2)=   "lblFusoCancEvento(1)"
      Tab(2).Control(2).Enabled=   0   'False
      Tab(2).Control(3)=   "lblDataCancEvento(1)"
      Tab(2).Control(3).Enabled=   0   'False
      Tab(2).Control(4)=   "Label4"
      Tab(2).Control(4).Enabled=   0   'False
      Tab(2).Control(5)=   "Label5"
      Tab(2).Control(5).Enabled=   0   'False
      Tab(2).Control(6)=   "Label6"
      Tab(2).Control(6).Enabled=   0   'False
      Tab(2).Control(7)=   "Label7"
      Tab(2).Control(7).Enabled=   0   'False
      Tab(2).Control(8)=   "Label9"
      Tab(2).Control(8).Enabled=   0   'False
      Tab(2).Control(9)=   "edtIdCce"
      Tab(2).Control(9).Enabled=   0   'False
      Tab(2).Control(10)=   "cbFusoHrCce"
      Tab(2).Control(10).Enabled=   0   'False
      Tab(2).Control(11)=   "edtDateCCe"
      Tab(2).Control(11).Enabled=   0   'False
      Tab(2).Control(12)=   "btnDataHrCce(1)"
      Tab(2).Control(12).Enabled=   0   'False
      Tab(2).Control(13)=   "edtUfCce"
      Tab(2).Control(13).Enabled=   0   'False
      Tab(2).Control(14)=   "edtIdLoteCce"
      Tab(2).Control(14).Enabled=   0   'False
      Tab(2).Control(15)=   "edtSeqCce"
      Tab(2).Control(15).Enabled=   0   'False
      Tab(2).Control(16)=   "edtDescCce"
      Tab(2).Control(16).Enabled=   0   'False
      Tab(2).Control(17)=   "btnEnviarCce"
      Tab(2).Control(17).Enabled=   0   'False
      Tab(2).Control(18)=   "btnVisualizarCce"
      Tab(2).Control(18).Enabled=   0   'False
      Tab(2).Control(19)=   "btnExportarCce"
      Tab(2).Control(19).Enabled=   0   'False
      Tab(2).Control(20)=   "mmXmlCce"
      Tab(2).Control(20).Enabled=   0   'False
      Tab(2).Control(21)=   "Command1"
      Tab(2).Control(21).Enabled=   0   'False
      Tab(2).ControlCount=   22
      Begin VB.CommandButton Command1 
         Caption         =   "Imprimir CCe"
         Height          =   495
         Left            =   4920
         TabIndex        =   56
         Top             =   2400
         Width           =   1815
      End
      Begin VB.TextBox mmXmlCce 
         Height          =   3135
         Left            =   240
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   55
         Top             =   3120
         Width           =   12255
      End
      Begin VB.TextBox mmCancelamentoNfe 
         Height          =   3135
         Left            =   -74760
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   54
         Top             =   3120
         Width           =   12255
      End
      Begin VB.TextBox mmManifestacao 
         Height          =   3135
         Left            =   -74760
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   53
         Top             =   3120
         Width           =   12255
      End
      Begin VB.CommandButton btnExportarCce 
         Caption         =   "Exportar PDF CCe"
         Height          =   495
         Left            =   6840
         TabIndex        =   52
         Top             =   2400
         Width           =   1815
      End
      Begin VB.CommandButton btnVisualizarCce 
         Caption         =   "Visualizar CCe"
         Height          =   495
         Left            =   8760
         TabIndex        =   51
         Top             =   2400
         Width           =   1815
      End
      Begin VB.CommandButton btnEnviarCce 
         Caption         =   "Enviar CCe"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   10680
         TabIndex        =   50
         Top             =   2400
         Width           =   1815
      End
      Begin VB.TextBox edtDescCce 
         Height          =   285
         Left            =   240
         MaxLength       =   44
         TabIndex        =   47
         Top             =   1920
         Width           =   6135
      End
      Begin VB.TextBox edtSeqCce 
         Height          =   285
         Left            =   10320
         TabIndex        =   45
         Top             =   1920
         Width           =   2175
      End
      Begin VB.TextBox edtIdLoteCce 
         Height          =   285
         Left            =   8280
         TabIndex        =   43
         Top             =   1920
         Width           =   1935
      End
      Begin VB.TextBox edtUfCce 
         Height          =   285
         Left            =   6480
         TabIndex        =   41
         Top             =   1920
         Width           =   1695
      End
      Begin VB.CommandButton btnDataHrCce 
         Caption         =   "Á"
         BeginProperty Font 
            Name            =   "Wingdings"
            Size            =   11.25
            Charset         =   2
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   1
         Left            =   12120
         TabIndex        =   39
         Top             =   1320
         Width           =   375
      End
      Begin VB.TextBox edtDateCCe 
         Height          =   315
         Left            =   9480
         TabIndex        =   38
         Top             =   1320
         Width           =   2535
      End
      Begin VB.ComboBox cbFusoHrCce 
         Height          =   315
         ItemData        =   "frmEventos.frx":0054
         Left            =   6960
         List            =   "frmEventos.frx":0061
         TabIndex        =   36
         Text            =   "Selecionar"
         Top             =   1320
         Width           =   2415
      End
      Begin VB.TextBox edtIdCce 
         Height          =   315
         Left            =   240
         MaxLength       =   44
         TabIndex        =   33
         Top             =   1320
         Width           =   6615
      End
      Begin VB.TextBox edtChaveCancelamentoNFe 
         Height          =   315
         Left            =   -74760
         MaxLength       =   44
         TabIndex        =   24
         Top             =   1320
         Width           =   6015
      End
      Begin VB.TextBox edtProtocoloCancNFe 
         Height          =   315
         Left            =   -68640
         TabIndex        =   23
         Top             =   1320
         Width           =   3735
      End
      Begin VB.TextBox edtJustificativaCancEvento 
         Height          =   315
         Left            =   -74760
         TabIndex        =   22
         Top             =   1920
         Width           =   6015
      End
      Begin VB.CommandButton btnDataCancEvento 
         Caption         =   "Á"
         BeginProperty Font 
            Name            =   "Wingdings"
            Size            =   11.25
            Charset         =   2
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   0
         Left            =   -66360
         TabIndex        =   21
         Top             =   1920
         Width           =   375
      End
      Begin VB.CommandButton btnCancelarNFeEvento 
         Caption         =   "Cancelar NFe"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -65760
         TabIndex        =   20
         Top             =   1800
         Width           =   3255
      End
      Begin VB.TextBox edtDataCancEvento 
         Height          =   315
         Left            =   -68640
         TabIndex        =   19
         Top             =   1920
         Width           =   2175
      End
      Begin VB.ComboBox cbFusoCancelamento 
         Height          =   315
         ItemData        =   "frmEventos.frx":007D
         Left            =   -64800
         List            =   "frmEventos.frx":008A
         TabIndex        =   18
         Text            =   "Selecionar"
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox edtChaveManifestacao 
         Height          =   315
         Left            =   -74760
         MaxLength       =   44
         TabIndex        =   9
         Top             =   1320
         Width           =   5895
      End
      Begin VB.TextBox edtCNPJManifestacao 
         Height          =   315
         Left            =   -68760
         TabIndex        =   8
         Top             =   1320
         Width           =   3975
      End
      Begin VB.ComboBox cbFusoManifestacao 
         Height          =   315
         ItemData        =   "frmEventos.frx":00A6
         Left            =   -64560
         List            =   "frmEventos.frx":00B3
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   1320
         Width           =   2055
      End
      Begin VB.ComboBox cbTipoEvento 
         Height          =   315
         ItemData        =   "frmEventos.frx":00CF
         Left            =   -74760
         List            =   "frmEventos.frx":00DF
         Style           =   2  'Dropdown List
         TabIndex        =   6
         Top             =   1920
         Width           =   3375
      End
      Begin VB.TextBox edtJustificativaManifestacao 
         Height          =   315
         Left            =   -71280
         TabIndex        =   5
         Top             =   1920
         Width           =   4815
      End
      Begin VB.TextBox edtDataEvento 
         Height          =   315
         Left            =   -66240
         TabIndex        =   4
         Top             =   1920
         Width           =   2175
      End
      Begin VB.CommandButton btnDataEvento 
         Caption         =   "Á"
         BeginProperty Font 
            Name            =   "Wingdings"
            Size            =   11.25
            Charset         =   2
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -63000
         TabIndex        =   3
         Top             =   1920
         Width           =   495
      End
      Begin VB.CommandButton btnEnviarManifestacao 
         Caption         =   "Enviar Manifestação"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -65160
         TabIndex        =   2
         Top             =   2400
         Width           =   2655
      End
      Begin VB.TextBox txtOrgao 
         Height          =   285
         Left            =   -63960
         TabIndex        =   1
         Top             =   1920
         Width           =   735
      End
      Begin VB.Label Label9 
         Caption         =   "XML"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   49
         Top             =   2640
         Width           =   1575
      End
      Begin VB.Label Label7 
         Caption         =   "Descrição Correção"
         Height          =   375
         Left            =   240
         TabIndex        =   48
         Top             =   1680
         Width           =   2295
      End
      Begin VB.Label Label6 
         Caption         =   "Sequência Evento"
         Height          =   255
         Left            =   10320
         TabIndex        =   46
         Top             =   1680
         Width           =   1575
      End
      Begin VB.Label Label5 
         Caption         =   "ID lote"
         Height          =   255
         Left            =   8280
         TabIndex        =   44
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label4 
         Caption         =   "Código UF"
         Height          =   255
         Left            =   6480
         TabIndex        =   42
         Top             =   1680
         Width           =   1215
      End
      Begin VB.Label lblDataCancEvento 
         Caption         =   "Data e Hora Evento"
         Height          =   255
         Index           =   1
         Left            =   9480
         TabIndex        =   40
         Top             =   1080
         Width           =   1695
      End
      Begin VB.Label lblFusoCancEvento 
         Caption         =   "Fuso Horário"
         Height          =   255
         Index           =   1
         Left            =   6960
         TabIndex        =   37
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label Label3 
         Caption         =   "Carta de correção"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   35
         Top             =   480
         Width           =   2895
      End
      Begin VB.Label Label2 
         Caption         =   "Chave da Nota"
         Height          =   255
         Left            =   240
         TabIndex        =   34
         Top             =   1080
         Width           =   1815
      End
      Begin VB.Label Label1 
         Caption         =   "XML"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -74760
         TabIndex        =   32
         Top             =   2640
         Width           =   1575
      End
      Begin VB.Label lblCancelarEvento 
         Caption         =   "Cancelar NFe por Evento"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -74760
         TabIndex        =   31
         Top             =   480
         Width           =   2895
      End
      Begin VB.Label lblChaveCancelarEvento 
         Caption         =   "Chave da Nota"
         Height          =   255
         Left            =   -74760
         TabIndex        =   30
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label lblProtocoloAutCancEvento 
         Caption         =   "Protocolo de Autorização"
         Height          =   255
         Left            =   -68640
         TabIndex        =   29
         Top             =   1080
         Width           =   2295
      End
      Begin VB.Label lblFusoCancEvento 
         Caption         =   "Fuso Horário"
         Height          =   255
         Index           =   0
         Left            =   -64800
         TabIndex        =   28
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label lblJustificativaCancEvento 
         Caption         =   "Justificativa Cancelamento"
         Height          =   255
         Left            =   -74760
         TabIndex        =   27
         Top             =   1680
         Width           =   2415
      End
      Begin VB.Label lblDataCancEvento 
         Caption         =   "Data e Hora Evento"
         Height          =   255
         Index           =   0
         Left            =   -68640
         TabIndex        =   26
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label lblXmlCancEvento 
         Caption         =   "XML"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -74760
         TabIndex        =   25
         Top             =   2640
         Width           =   1575
      End
      Begin VB.Label lblChaveManifestacao 
         Caption         =   "Chave da Nota"
         Height          =   255
         Left            =   -74760
         TabIndex        =   17
         Top             =   1080
         Width           =   1815
      End
      Begin VB.Label lblCNPJDestinatario 
         Caption         =   "CNPJ Destinatário"
         Height          =   255
         Left            =   -68760
         TabIndex        =   16
         Top             =   1080
         Width           =   1575
      End
      Begin VB.Label lblFusoManifestacao 
         Caption         =   "Fuso Horário"
         Height          =   255
         Left            =   -64560
         TabIndex        =   15
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label lblTipoEvento 
         Caption         =   "Tipo Evento"
         Height          =   255
         Left            =   -74760
         TabIndex        =   14
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label lblJustificativaManifestacao 
         Caption         =   "Justificativa Manifestação"
         Height          =   255
         Left            =   -71280
         TabIndex        =   13
         Top             =   1680
         Width           =   2895
      End
      Begin VB.Label lblDataEvento 
         Caption         =   "Data e Hora Evento"
         Height          =   255
         Left            =   -66240
         TabIndex        =   12
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label lblOrgao 
         Caption         =   "Orgão"
         Height          =   255
         Left            =   -63960
         TabIndex        =   11
         Top             =   1680
         Width           =   495
      End
      Begin VB.Label lblManifestacao 
         Caption         =   "Manifestação Destinatário"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -74760
         TabIndex        =   10
         Top             =   480
         Width           =   3015
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public xmlCCe As String
   
Private Sub btnAssinarEPEC_Click()
    memoRetorno.Text = Form1.spdNFe.AssinarEPEC(memoRetorno.Text)
    btnEnviarEPEC.Enabled = True
End Sub

Private Sub btnConsultaRecibo_Click()
  'Chama método que consulta no servidor da receita, o Recibo capturado ao enviar NF
  memoRetorno.Text = Form1.spdNFe.ConsultarRecibo(edRecibo.Text)
End Sub

Private Sub btnCartaCorrecaoEvento_Click(Index As Integer)
    edtDataCartaCorrecao.Text = Format(Now(), "yyyy-mm-ddThh:mm:ss")
End Sub

Private Sub btnDataCancEvento_Click(Index As Integer)
    edtDataCancEvento.Text = Format(Now(), "yyyy-mm-ddThh:mm:ss")
End Sub


Private Sub btnCancelarNFeEvento_Click()
  If ((edtChaveCancelamentoNFe.Text = "") Or (edtProtocoloCancNFe.Text = "") Or (cbFusoCancelamento.Text = "Selecionar") Or (cbFusoCancelamento.Text = "") Or (edtJustificativaCancEvento.Text = "") Or (edtDataCancEvento.Text = "")) Then
    MsgBox ("Preencha os Campos Chave da nota, Protocolo Autorização, Fuso horário, Cancelamento e Data Cancelamento.")
  Else
    mmCancelamentoNfe.Text = Form1.spdNFe.CancelarNFeEvento(edtChaveCancelamentoNFe.Text, edtProtocoloCancNFe.Text, edtJustificativaCancEvento.Text, edtDataCancEvento.Text, 1, cbFusoCancelamento.Text)
    Form1.mmXmlCancRetorno.Text = mmCancelamentoNfe.Text

    'Comando para pegar o xml de envio do cancelamento
    Form1.cdlgXmlNFe.FileName = Form1.spdNFe.UltimoLogCancelamento
        Open Form1.cdlgXmlNFe.FileName For Input As #1
            Form1.mmXmlCancEnvio = Input(FileLen(cdlgXmlNFe.FileName), #1)
            Form1.mmXmlCancEnvio = Mid(Form1.mmXmlCancEnvio.Text, 4, Len(Form1.mmXmlCancEnvio.Text) - 3)
  End If
End Sub

Private Sub btnConsultaDestinadas_Click()
  If ((cbIndNFe.Text = "") Or (cbEmiNFe.Text = "")) Then
    MsgBox ("Os Campos Indicador de NFe e Indicador do Emissor são Obrigatórios")
  Else
    Form1.spdNFe.LoadConfig
    mmConsultaDestinadas.Caption = Form1.spdNFe.ConsultarNFDestinadas(Mid(cbIndNFe.Text, 1, 1), Mid(cbEmiNFe.Text, 1, 1), edtUltNSU.Text)
  End If

End Sub


Private Sub CarregarXml()
  Dim arquivo, fso, arqtxt, texto  As String

  'Carrega o arquivo gerado na pasta XML Destinatario com a chave da CCe
  arquivo = App.Path + "\XmlDestinatario\" + edtIdCce.Text + "-cce.xml"
  
  Set fso = CreateObject("Scripting.FileSystemObject")
  Set arqtxt = fso.OpenTextFile(arquivo)

  texto = arqtxt.ReadAll
  xmlCCe = texto

End Sub

Private Sub btnDataEvento_Click()
  edtDataEvento.Text = Format(Now(), "yyyy-mm-ddThh:mm:ss")
End Sub

Private Sub btnDownloadNFe_Click()
  If (edtChaveDownload.Text = "") Then
    MsgBox ("O campo Chave da Nota é Obrigatório.")
  Else
    Form1.spdNFe.LoadConfig
    mmDownloadNFe.Caption = Form1.spdNFe.DownloadNFe(edtChaveDownload.Text, txtOrgao.Text)
  End If
End Sub

Private Sub btnDataHrCce_Click(Index As Integer)
    edtDateCCe.Text = Format(Now(), "yyyy-mm-ddThh:mm:ss")
End Sub


Private Sub btnEnviarCce_Click()
    If mmXmlCce.Text = "" Then
    MsgBox "Informe um xml válido para enviar a CCE"
    mmXmlCce.SetFocus
    Else
    mmXmlCce.Text = Form1.spdNFe.EnviarCCe(edtIdCce.Text, edtDescCce.Text, edtDateCCe.Text, edtUfCce.Text, edtIdLoteCce.Text, CInt(edtSeqCce.Text), cbFusoHrCce.Text)
    End If
End Sub

Private Sub btnEnviarManifestacao_Click()
  If ((cbTipoEvento.Text = "") Or (edtChaveManifestacao.Text = "") Or (edtCNPJManifestacao.Text = "") Or (edtDataEvento.Text = "") Or (cbFusoManifestacao.Text = "")) Then
    MsgBox ("Os Campos Tipo Evento, Chave da Nota, CNPJ Destinatário, Justificativa, Data Manifestação e Fuso horário são obrigatórios.")
  Else
    Form1.spdNFe.LoadConfig
    mmManifestacao.Text = Form1.spdNFe.EnviarManifestacaoDestinatario(Mid(cbTipoEvento.Text, 1, 1), edtChaveManifestacao.Text, edtCNPJManifestacao.Text, edtJustificativaManifestacao.Text, edtDataEvento.Text, 1, cbFusoManifestacao.Text, txtOrgao.Text)
  End If
End Sub

Private Sub btnEnviarServidorEst_Click()
  Dim retorno As String
  retorno = Form1.spdNFe.EnviarNF("001", Label1.Caption, False)
  edtRecibo.Text = Mid$(retorno, InStrRev(retorno, "<nRec>") + 6, 15)
  btnConsultaRecibo.Enabled = True
End Sub

Private Sub btnXMLDataset_Click()
    Dim Handle As Integer
    Dim Nota As String
    Dim retorno As String
    
    cdTX2.ShowOpen
    If cdTX2.FileName <> "" Then
        Handle = FreeFile
        Open cdTX2.FileName For Input As #Handle
        Nota = Input$(LOF(Handle), Handle)
        Close #Handle
        Label1.Caption = Form1.spdNFe.ConverterLoteParaXML(Trim(Nota), lkTx2, "pl_009g")
        Label1.Caption = Form1.spdNFe.AssinarNota(Label1.Caption)
        MontarEPEC.Enabled = True
    End If
End Sub

Private Sub btnExportarCce_Click()  '
     If mmXmlCce.Text <> "" Then
       Form1.spdNFe.ExportarCCe mmXmlCce.Text, ""
    End If

    'Verificar se um ID de nota foi informado
    If edtIdCce.Text = "" Then
    MsgBox "Informe a chave da CCe que deseja visualizar"
    edtIdCce.SetFocus
    Else
    CarregarXml
    Form1.spdNFe.ExportarCCe xmlCCe, ""
    End If
End Sub

Private Sub btnVisualizarCce_Click()
    If mmXmlCce.Text <> "" Then
      Form1.spdNFe.VisualizarCCe mmXmlCce
    End If

    'Verificar se um ID de nota foi informado
    If edtIdCce.Text = "" Then
    MsgBox "Informe a chave da CCe que deseja visualizar"
    edtIdCce.SetFocus
    Else
    CarregarXml
    
    End If
End Sub

Private Sub Command1_Click()
     If mmXmlCce.Text <> "" Then
      Form1.spdNFe.ImprimirCCe mmXmlCce.Text, ""
    End If
    
    'Verificar se um ID de nota foi informado
    If edtIdCce.Text = "" Then
    MsgBox "Informe a chave da CCe que deseja visualizar"
    edtIdCce.SetFocus
    Else
    CarregarXml
    Form1.spdNFe.ImprimirCCe xmlCCe, ""
    End If
End Sub

Private Sub Form_Load()
    edtIdCce.Text = Form1.edtIdNfe.Text
End Sub
