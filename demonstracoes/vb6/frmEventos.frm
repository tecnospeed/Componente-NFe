VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Form2 
   Caption         =   "Eventos NFe"
   ClientHeight    =   6705
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12885
   LinkTopic       =   "Form2"
   ScaleHeight     =   6705
   ScaleWidth      =   12885
   StartUpPosition =   1  'CenterOwner
   Begin TabDlg.SSTab SSTab1 
      Height          =   6375
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   12495
      _ExtentX        =   22040
      _ExtentY        =   11245
      _Version        =   393216
      Tabs            =   5
      TabsPerRow      =   8
      TabHeight       =   741
      TabCaption(0)   =   "Manifestação"
      TabPicture(0)   =   "frmEventos.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "lblManifestacao"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "lblChaveManifestacao"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "lblCNPJDestinatario"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "lblFusoManifestacao"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "lblTipoEvento"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "lblJustificativaManifestacao"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "lblDataEvento"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "lblXmlManisfestacao"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "mmManifestacao"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "lblOrgao"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "edtChaveManifestacao"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "edtCNPJManifestacao"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "cbFusoManifestacao"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "cbTipoEvento"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "edtJustificativaManifestacao"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "edtDataEvento"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "btnDataEvento"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "btnEnviarManifestacao"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "txtOrgao"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).ControlCount=   19
      TabCaption(1)   =   "Consulta"
      TabPicture(1)   =   "frmEventos.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "btnConsultaDestinadas"
      Tab(1).Control(1)=   "edtUltNSU"
      Tab(1).Control(2)=   "cbEmiNFe"
      Tab(1).Control(3)=   "cbIndNFe"
      Tab(1).Control(4)=   "mmConsultaDestinadas"
      Tab(1).Control(5)=   "lblXmlConsultaDest"
      Tab(1).Control(6)=   "lblUltNSU"
      Tab(1).Control(7)=   "lblEmiNFe"
      Tab(1).Control(8)=   "lblIndNFe"
      Tab(1).Control(9)=   "lblConsultaDest"
      Tab(1).ControlCount=   10
      TabCaption(2)   =   "Download"
      TabPicture(2)   =   "frmEventos.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "lblDownloadNFe"
      Tab(2).Control(1)=   "lblChaveDownload"
      Tab(2).Control(2)=   "lblXmlDownload"
      Tab(2).Control(3)=   "mmDownloadNFe"
      Tab(2).Control(4)=   "edtChaveDownload"
      Tab(2).Control(5)=   "btnDownloadNFe"
      Tab(2).ControlCount=   6
      TabCaption(3)   =   "Cancelamento Evento"
      TabPicture(3)   =   "frmEventos.frx":0054
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "lblCancelarEvento"
      Tab(3).Control(1)=   "lblChaveCancelarEvento"
      Tab(3).Control(2)=   "lblProtocoloAutCancEvento"
      Tab(3).Control(3)=   "lblFusoCancEvento(0)"
      Tab(3).Control(4)=   "lblJustificativaCancEvento"
      Tab(3).Control(5)=   "lblDataCancEvento(0)"
      Tab(3).Control(6)=   "lblXmlCancEvento"
      Tab(3).Control(7)=   "mmCancelamentoNFe"
      Tab(3).Control(8)=   "edtChaveCancelamentoNFe"
      Tab(3).Control(9)=   "edtProtocoloCancNFe"
      Tab(3).Control(10)=   "edtJustificativaCancEvento"
      Tab(3).Control(11)=   "btnDataCancEvento(0)"
      Tab(3).Control(12)=   "btnCancelarNFeEvento"
      Tab(3).Control(13)=   "edtDataCancEvento"
      Tab(3).Control(14)=   "cbFusoCancelamento"
      Tab(3).ControlCount=   15
      TabCaption(4)   =   "Envio EPEC"
      TabPicture(4)   =   "frmEventos.frx":0070
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "btnConsultaRecibo"
      Tab(4).Control(1)=   "edtRecibo"
      Tab(4).Control(2)=   "btnEnviarServidorEst"
      Tab(4).Control(3)=   "memoRetorno"
      Tab(4).Control(4)=   "btnEnviarEPEC"
      Tab(4).Control(5)=   "btnAssinarEPEC"
      Tab(4).Control(6)=   "cbFusoEPEC"
      Tab(4).Control(7)=   "edtDataHoraEPEC"
      Tab(4).Control(8)=   "Command2"
      Tab(4).Control(9)=   "montarEPEC"
      Tab(4).Control(10)=   "cdTX2"
      Tab(4).Control(11)=   "btnXMLDataset"
      Tab(4).Control(12)=   "Label4"
      Tab(4).Control(13)=   "Label3"
      Tab(4).Control(14)=   "Label2"
      Tab(4).Control(15)=   "lblDataCancEvento(1)"
      Tab(4).Control(16)=   "lblFusoCancEvento(1)"
      Tab(4).Control(17)=   "Label1"
      Tab(4).ControlCount=   18
      Begin VB.CommandButton btnConsultaRecibo 
         Caption         =   "Consulta Recibo"
         Enabled         =   0   'False
         Height          =   375
         Left            =   -72480
         TabIndex        =   65
         Top             =   1440
         Width           =   1695
      End
      Begin VB.TextBox edtRecibo 
         Enabled         =   0   'False
         Height          =   285
         Left            =   -65160
         TabIndex        =   63
         Top             =   5880
         Width           =   2415
      End
      Begin VB.CommandButton btnEnviarServidorEst 
         Caption         =   "Enviar p/Serv Esta"
         Enabled         =   0   'False
         Height          =   375
         Left            =   -72480
         TabIndex        =   62
         Top             =   1080
         Width           =   1695
      End
      Begin VB.ComboBox cbFusoCancelamento 
         Height          =   315
         ItemData        =   "frmEventos.frx":008C
         Left            =   -65040
         List            =   "frmEventos.frx":0099
         TabIndex        =   61
         Text            =   "Selecionar"
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox memoRetorno 
         Height          =   3495
         Left            =   -69000
         MultiLine       =   -1  'True
         TabIndex        =   60
         Top             =   2280
         Width           =   6255
      End
      Begin VB.CommandButton btnEnviarEPEC 
         Caption         =   "4. Enviar EPEC"
         Enabled         =   0   'False
         Height          =   375
         Left            =   -72480
         TabIndex        =   59
         Top             =   720
         Width           =   1695
      End
      Begin VB.CommandButton btnAssinarEPEC 
         Caption         =   "3. Assinar EPEC"
         Enabled         =   0   'False
         Height          =   375
         Left            =   -74880
         TabIndex        =   58
         Top             =   1440
         Width           =   2175
      End
      Begin VB.ComboBox cbFusoEPEC 
         Height          =   315
         ItemData        =   "frmEventos.frx":00B5
         Left            =   -65520
         List            =   "frmEventos.frx":00C2
         TabIndex        =   57
         Top             =   960
         Width           =   2295
      End
      Begin VB.TextBox edtDataCancEvento 
         Height          =   315
         Left            =   -68400
         TabIndex        =   56
         Top             =   2040
         Width           =   2175
      End
      Begin VB.TextBox edtDataHoraEPEC 
         Height          =   285
         Left            =   -65520
         TabIndex        =   55
         Top             =   1560
         Width           =   2295
      End
      Begin VB.CommandButton Command2 
         Caption         =   "À"
         BeginProperty Font 
            Name            =   "Wingdings"
            Size            =   8.25
            Charset         =   2
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -63120
         TabIndex        =   54
         Top             =   1560
         Width           =   375
      End
      Begin VB.CommandButton montarEPEC 
         Caption         =   "2.Montar EPEC"
         Enabled         =   0   'False
         Height          =   375
         Left            =   -74880
         TabIndex        =   51
         Top             =   1080
         Width           =   2175
      End
      Begin MSComDlg.CommonDialog cdTX2 
         Left            =   -63840
         Top             =   0
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.CommandButton btnXMLDataset 
         Caption         =   "1.Gerar Nota assinada"
         Height          =   375
         Left            =   -74880
         TabIndex        =   49
         Top             =   720
         Width           =   2175
      End
      Begin VB.TextBox txtOrgao 
         Height          =   285
         Left            =   11040
         TabIndex        =   47
         Top             =   1920
         Width           =   495
      End
      Begin VB.CommandButton btnCancelarNFeEvento 
         Caption         =   "Cancelar NFe"
         Height          =   375
         Left            =   -65040
         TabIndex        =   36
         Top             =   2040
         Width           =   1695
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
         Left            =   -66120
         TabIndex        =   35
         Top             =   2040
         Width           =   375
      End
      Begin VB.TextBox edtJustificativaCancEvento 
         Height          =   315
         Left            =   -74760
         TabIndex        =   34
         Top             =   2040
         Width           =   6015
      End
      Begin VB.TextBox edtProtocoloCancNFe 
         Height          =   315
         Left            =   -68400
         TabIndex        =   33
         Top             =   1320
         Width           =   3135
      End
      Begin VB.TextBox edtChaveCancelamentoNFe 
         Height          =   315
         Left            =   -74760
         MaxLength       =   44
         TabIndex        =   32
         Top             =   1320
         Width           =   6015
      End
      Begin VB.CommandButton btnDownloadNFe 
         Caption         =   "Download NFe"
         Height          =   315
         Left            =   -66960
         TabIndex        =   29
         Top             =   1320
         Width           =   1575
      End
      Begin VB.TextBox edtChaveDownload 
         Height          =   315
         Left            =   -74760
         TabIndex        =   27
         Top             =   1320
         Width           =   7575
      End
      Begin VB.CommandButton btnConsultaDestinadas 
         Caption         =   "Consulta DFe"
         Height          =   450
         Left            =   -67080
         TabIndex        =   23
         Top             =   1920
         Width           =   1935
      End
      Begin VB.TextBox edtUltNSU 
         Height          =   315
         Left            =   -65760
         TabIndex        =   19
         Text            =   "0"
         Top             =   1320
         Width           =   2895
      End
      Begin VB.ComboBox cbEmiNFe 
         Height          =   315
         ItemData        =   "frmEventos.frx":00DE
         Left            =   -70200
         List            =   "frmEventos.frx":00E8
         Style           =   2  'Dropdown List
         TabIndex        =   18
         Top             =   1320
         Width           =   4095
      End
      Begin VB.ComboBox cbIndNFe 
         Height          =   315
         ItemData        =   "frmEventos.frx":0142
         Left            =   -74760
         List            =   "frmEventos.frx":014F
         Style           =   2  'Dropdown List
         TabIndex        =   17
         Top             =   1320
         Width           =   4215
      End
      Begin VB.CommandButton btnEnviarManifestacao 
         Caption         =   "Enviar Manifestação"
         Height          =   495
         Left            =   10560
         TabIndex        =   15
         Top             =   2400
         Width           =   1695
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
         Left            =   11760
         TabIndex        =   8
         Top             =   1920
         Width           =   495
      End
      Begin VB.TextBox edtDataEvento 
         Height          =   315
         Left            =   8760
         TabIndex        =   7
         Top             =   1920
         Width           =   2175
      End
      Begin VB.TextBox edtJustificativaManifestacao 
         Height          =   315
         Left            =   3720
         TabIndex        =   6
         Top             =   1920
         Width           =   4815
      End
      Begin VB.ComboBox cbTipoEvento 
         Height          =   315
         ItemData        =   "frmEventos.frx":01C4
         Left            =   240
         List            =   "frmEventos.frx":01D4
         Style           =   2  'Dropdown List
         TabIndex        =   5
         Top             =   1920
         Width           =   3375
      End
      Begin VB.ComboBox cbFusoManifestacao 
         Height          =   315
         ItemData        =   "frmEventos.frx":024B
         Left            =   10320
         List            =   "frmEventos.frx":0258
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   1200
         Width           =   1935
      End
      Begin VB.TextBox edtCNPJManifestacao 
         Height          =   315
         Left            =   6480
         TabIndex        =   3
         Top             =   1200
         Width           =   3495
      End
      Begin VB.TextBox edtChaveManifestacao 
         Height          =   315
         Left            =   240
         MaxLength       =   44
         TabIndex        =   2
         Top             =   1200
         Width           =   5895
      End
      Begin VB.Label Label4 
         Caption         =   "XMLs"
         Height          =   255
         Left            =   -68880
         TabIndex        =   67
         Top             =   2040
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "XML de Envio"
         Height          =   255
         Left            =   -74880
         TabIndex        =   66
         Top             =   2040
         Width           =   1335
      End
      Begin VB.Label Label2 
         Caption         =   "Numero Recibo"
         Height          =   255
         Left            =   -66480
         TabIndex        =   64
         Top             =   5880
         Width           =   1215
      End
      Begin VB.Label lblDataCancEvento 
         Caption         =   "Data e Hora Evento"
         Height          =   255
         Index           =   1
         Left            =   -65520
         TabIndex        =   53
         Top             =   1320
         Width           =   1695
      End
      Begin VB.Label lblFusoCancEvento 
         Caption         =   "Fuso Horário"
         Height          =   255
         Index           =   1
         Left            =   -65520
         TabIndex        =   52
         Top             =   720
         Width           =   1215
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   3495
         Left            =   -74880
         TabIndex        =   50
         Top             =   2280
         Width           =   5655
      End
      Begin VB.Label lblOrgao 
         Caption         =   "Orgão"
         Height          =   255
         Left            =   11040
         TabIndex        =   48
         Top             =   1680
         Width           =   495
      End
      Begin VB.Label mmCancelamentoNFe 
         BackColor       =   &H8000000E&
         Height          =   2895
         Left            =   -74880
         TabIndex        =   46
         Top             =   2880
         Width           =   12255
      End
      Begin VB.Label mmDownloadNFe 
         BackColor       =   &H8000000E&
         Height          =   3495
         Left            =   -74880
         TabIndex        =   45
         Top             =   2280
         Width           =   12255
      End
      Begin VB.Label mmConsultaDestinadas 
         BackColor       =   &H8000000E&
         Height          =   3255
         Left            =   -74880
         TabIndex        =   44
         Top             =   2520
         Width           =   12255
      End
      Begin VB.Label mmManifestacao 
         BackColor       =   &H8000000E&
         Height          =   2775
         Left            =   120
         TabIndex        =   43
         Top             =   3000
         Width           =   12255
         WordWrap        =   -1  'True
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
         TabIndex        =   42
         Top             =   2640
         Width           =   1575
      End
      Begin VB.Label lblDataCancEvento 
         Caption         =   "Data e Hora Evento"
         Height          =   255
         Index           =   0
         Left            =   -68400
         TabIndex        =   41
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label lblJustificativaCancEvento 
         Caption         =   "Justificativa Cancelamento"
         Height          =   255
         Left            =   -74760
         TabIndex        =   40
         Top             =   1800
         Width           =   2415
      End
      Begin VB.Label lblFusoCancEvento 
         Caption         =   "Fuso Horário"
         Height          =   255
         Index           =   0
         Left            =   -64920
         TabIndex        =   39
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label lblProtocoloAutCancEvento 
         Caption         =   "Protocolo de Autorização"
         Height          =   255
         Left            =   -68400
         TabIndex        =   38
         Top             =   1080
         Width           =   2295
      End
      Begin VB.Label lblChaveCancelarEvento 
         Caption         =   "Chave da Nota"
         Height          =   255
         Left            =   -74760
         TabIndex        =   37
         Top             =   1080
         Width           =   1215
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
         Top             =   600
         Width           =   2895
      End
      Begin VB.Label lblXmlDownload 
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
         Left            =   -74880
         TabIndex        =   30
         Top             =   2040
         Width           =   1455
      End
      Begin VB.Label lblChaveDownload 
         Caption         =   "Chave da Nota"
         Height          =   255
         Left            =   -74760
         TabIndex        =   28
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label lblDownloadNFe 
         Caption         =   "Download de NFe"
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
         TabIndex        =   26
         Top             =   600
         Width           =   3015
      End
      Begin VB.Label lblXmlConsultaDest 
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
         Left            =   -74880
         TabIndex        =   25
         Top             =   2280
         Width           =   1455
      End
      Begin VB.Label lblXmlManisfestacao 
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
         Left            =   120
         TabIndex        =   24
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label lblUltNSU 
         Caption         =   "Último NSU"
         Height          =   255
         Left            =   -65760
         TabIndex        =   22
         Top             =   1080
         Width           =   1575
      End
      Begin VB.Label lblEmiNFe 
         Caption         =   "Indicador do Emissor NFe"
         Height          =   255
         Left            =   -70200
         TabIndex        =   21
         Top             =   1080
         Width           =   1935
      End
      Begin VB.Label lblIndNFe 
         Caption         =   "Indicador de NFe"
         Height          =   255
         Left            =   -74760
         TabIndex        =   20
         Top             =   1080
         Width           =   1935
      End
      Begin VB.Label lblConsultaDest 
         Caption         =   "Consulta NFe Destinadas"
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
         TabIndex        =   16
         Top             =   600
         Width           =   3375
      End
      Begin VB.Label lblDataEvento 
         Caption         =   "Data e Hora Evento"
         Height          =   255
         Left            =   8760
         TabIndex        =   14
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label lblJustificativaManifestacao 
         Caption         =   "Justificativa Manifestação"
         Height          =   255
         Left            =   3720
         TabIndex        =   13
         Top             =   1680
         Width           =   2895
      End
      Begin VB.Label lblTipoEvento 
         Caption         =   "Tipo Evento"
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label lblFusoManifestacao 
         Caption         =   "Fuso Horário"
         Height          =   255
         Left            =   10320
         TabIndex        =   11
         Top             =   960
         Width           =   1455
      End
      Begin VB.Label lblCNPJDestinatario 
         Caption         =   "CNPJ Destinatário"
         Height          =   255
         Left            =   6480
         TabIndex        =   10
         Top             =   960
         Width           =   1575
      End
      Begin VB.Label lblChaveManifestacao 
         Caption         =   "Chave da Nota"
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   960
         Width           =   1815
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
         Left            =   240
         TabIndex        =   1
         Top             =   600
         Width           =   3015
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub TabStrip1_Click()

End Sub



Private Sub btnDataEventoEPEC_Click(Index As Integer)
    
End Sub

Private Sub btnAssinarEPEC_Click()
    memoRetorno.Text = Form1.spdNFe.AssinarEPEC(memoRetorno.Text)
    btnEnviarEPEC.Enabled = True
End Sub

Private Sub btnConsultaRecibo_Click()
  'Chama método que consulta no servidor da receita, o Recibo capturado ao enviar NF
  memoRetorno.Text = Form1.spdNFe.ConsultarRecibo(edRecibo.Text)
End Sub

Private Sub btnDataCancEvento_Click(Index As Integer)
    edtDataCancEvento.Text = Format(Now(), "yyyy-mm-ddThh:mm:ss")
End Sub

Private Sub btnEnviarEPEC_Click()
    Form2.memoRetorno.Text = Form1.spdNFe.EnviarEPEC(memoRetorno.Text)
    If Mid$(memoRetorno.Text, InStrRev(memoRetorno.Text, "<cOrgao>91</cOrgao><cStat>") + 26, 3) = "136" Then
      btnEnviarServidorEst.Enabled = True
    End If
End Sub

Private Sub btnCancelarNFeEvento_Click()
  If ((edtChaveCancelamentoNFe.Text = "") Or (edtProtocoloCancNFe.Text = "") Or (cbFusoCancelamento.Text = "Selecionar") Or (cbFusoCancelamento.Text = "") Or (edtJustificativaCancEvento.Text = "") Or (edtDataCancEvento.Text = "")) Then
    MsgBox ("Os Campos Chave da nota, Protocolo Autorização, Fuso horário, Cancelamento e Data Cancelamento.")
  Else
    Form1.spdNFe.LoadConfig
    mmCancelamentoNFe.Caption = Form1.spdNFe.CancelarNFeEvento(edtChaveCancelamentoNFe.Text, edtProtocoloCancNFe.Text, edtJustificativaCancEvento.Text, edtDataCancEvento.Text, 1, cbFusoCancelamento.Text)
  End If
End Sub

Private Sub btnConsultaDestinadas_Click()
'  If ((cbIndNFe.Text = "") Or (cbEmiNFe.Text = "")) Then
'    MsgBox ("Os Campos Indicador de NFe e Indicador do Emissor são Obrigatórios")
'  Else
'    Form1.spdNFe.LoadConfig
'    mmConsultaDestinadas.Caption = Form1.spdNFe.ConsultarNFDestinadas(Mid(cbIndNFe.Text, 1, 1), Mid(cbEmiNFe.Text, 1, 1), edtUltNSU.Text)
'  End If

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

Private Sub btnEnviarManifestacao_Click()
  If ((cbTipoEvento.Text = "") Or (edtChaveManifestacao.Text = "") Or (edtCNPJManifestacao.Text = "") Or (edtDataEvento.Text = "") Or (cbFusoManifestacao.Text = "")) Then
    MsgBox ("Os Campos Tipo Evento, Chave da Nota, CNPJ Destinatário, Justificativa, Data Manifestação e Fuso horário são obrigatórios.")
  Else
    Form1.spdNFe.LoadConfig
    mmManifestacao.Caption = Form1.spdNFe.EnviarManifestacaoDestinatario(Mid(cbTipoEvento.Text, 1, 1), edtChaveManifestacao.Text, edtCNPJManifestacao.Text, edtJustificativaManifestacao.Text, edtDataEvento.Text, 1, cbFusoManifestacao.Text, txtOrgao.Text)
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
        Label1.Caption = Form1.spdNFe.ConverterLoteParaXML(Trim(Nota), lkTx2, "pl_008a")
        Label1.Caption = Form1.spdNFe.AssinarNota(Label1.Caption)
        montarEPEC.Enabled = True
    End If
End Sub

Private Sub Command2_Click()
    edtDataHoraEPEC.Text = Format(Now(), "yyyy-mm-ddThh:mm:ss")
End Sub

Private Sub montarEPEC_Click()
    If ((edtDataHoraEPEC.Text = "") Or (cbFusoEPEC.Text = "")) Then
        MsgBox ("Preencha a data e hora do evento para prosseguir.")
      Else
        memoRetorno.Text = Form1.spdNFe.montarEPEC("0", Label1.Caption, edtDataHoraEPEC.Text, cbFusoEPEC.Text)
        btnAssinarEPEC.Enabled = True
    End If
End Sub

