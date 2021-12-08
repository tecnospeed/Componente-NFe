VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Form1 
   Caption         =   "Exemplo de utilização do Componente NFe-X"
   ClientHeight    =   10590
   ClientLeft      =   3660
   ClientTop       =   1815
   ClientWidth     =   11835
   BeginProperty Font 
      Name            =   "Consolas"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   10590
   ScaleWidth      =   11835
   Begin TabDlg.SSTab SSTab2 
      CausesValidation=   0   'False
      Height          =   5415
      Left            =   0
      TabIndex        =   7
      Top             =   0
      Width           =   11775
      _ExtentX        =   20770
      _ExtentY        =   9551
      _Version        =   393216
      Tabs            =   4
      TabsPerRow      =   4
      TabHeight       =   520
      TabCaption(0)   =   "NFe"
      TabPicture(0)   =   "FExemplo.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Impressão"
      TabPicture(1)   =   "FExemplo.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "btnVisualizarDanfe"
      Tab(1).Control(1)=   "btnImprimirDanfe"
      Tab(1).Control(2)=   "btnEditarDanfe"
      Tab(1).Control(3)=   "Frame3"
      Tab(1).ControlCount=   4
      TabCaption(2)   =   "Demais métodos"
      TabPicture(2)   =   "FExemplo.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame5"
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "Ajuda"
      TabPicture(3)   =   "FExemplo.frx":0054
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "btnDicionario"
      Tab(3).Control(1)=   "btnMetodos"
      Tab(3).Control(2)=   "btnPropriedades"
      Tab(3).Control(3)=   "btnGuiaGeral"
      Tab(3).ControlCount=   4
      Begin VB.CommandButton btnDicionario 
         Caption         =   "Dicionário Tx2"
         Height          =   615
         Left            =   -71640
         TabIndex        =   50
         Top             =   3840
         Width           =   4455
      End
      Begin VB.CommandButton btnMetodos 
         Caption         =   "Métodos Componente"
         Height          =   615
         Left            =   -71640
         TabIndex        =   49
         Top             =   2880
         Width           =   4455
      End
      Begin VB.CommandButton btnPropriedades 
         Caption         =   "Propriedades Componente"
         Height          =   615
         Left            =   -71640
         TabIndex        =   48
         Top             =   1920
         Width           =   4455
      End
      Begin VB.CommandButton btnGuiaGeral 
         Caption         =   "Guia Geral"
         Height          =   615
         Left            =   -71640
         TabIndex        =   47
         Top             =   960
         Width           =   4455
      End
      Begin VB.Frame Frame5 
         Caption         =   "Demais métodos"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4815
         Left            =   -74880
         TabIndex        =   39
         Top             =   360
         Width           =   11535
         Begin VB.CommandButton btnImportarXml 
            Caption         =   "Converter Xml para Dataset"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   5160
            TabIndex        =   45
            Top             =   960
            Width           =   2295
         End
         Begin VB.CommandButton btnEventosNFe 
            Appearance      =   0  'Flat
            BackColor       =   &H80000004&
            Caption         =   "Eventos NFe"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   2640
            MaskColor       =   &H80000000&
            Style           =   1  'Graphical
            TabIndex        =   44
            Top             =   960
            Width           =   2295
         End
         Begin VB.CommandButton btnXMLEnvioDest 
            Caption         =   "Enviar XML Destinatário"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   120
            TabIndex        =   43
            Top             =   960
            Width           =   2295
         End
         Begin VB.CommandButton btnEnviarDanfeEmail 
            Caption         =   "Enviar Danfe E-Mail"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   2640
            TabIndex        =   42
            Top             =   360
            Width           =   2295
         End
         Begin VB.CommandButton btnInutilizarNF 
            Caption         =   "Inutilizar NFe"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   120
            TabIndex        =   41
            Top             =   360
            Width           =   2295
         End
         Begin VB.CommandButton btnDistribuicaoDFe 
            Caption         =   "Notas Destinadas"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   5160
            TabIndex        =   40
            Top             =   360
            Width           =   2295
         End
      End
      Begin VB.CommandButton btnVisualizarDanfe 
         Caption         =   "Visualizar Danfe"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -74760
         TabIndex        =   38
         Top             =   720
         Width           =   2295
      End
      Begin VB.CommandButton btnImprimirDanfe 
         Caption         =   "Imprimir Danfe"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -74760
         TabIndex        =   37
         Top             =   1320
         Width           =   2295
      End
      Begin VB.CommandButton btnEditarDanfe 
         Caption         =   "Editar Danfe"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -72240
         TabIndex        =   36
         Top             =   720
         Width           =   2295
      End
      Begin VB.Frame Frame3 
         Caption         =   "Impressão"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4815
         Left            =   -74880
         TabIndex        =   35
         Top             =   360
         Width           =   11535
         Begin VB.CommandButton btnExportarDanfe 
            Caption         =   "Exportar Danfe"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   2640
            TabIndex        =   46
            Top             =   960
            Width           =   2295
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Dados"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4635
         Left            =   120
         TabIndex        =   22
         Top             =   360
         Width           =   5295
         Begin VB.ComboBox cbUf 
            Height          =   315
            ItemData        =   "FExemplo.frx":0070
            Left            =   120
            List            =   "FExemplo.frx":00C5
            TabIndex        =   29
            Top             =   480
            Width           =   615
         End
         Begin VB.TextBox edtIdNfe 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   120
            TabIndex        =   28
            Top             =   1920
            Width           =   4935
         End
         Begin VB.TextBox edtRecibo 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   120
            TabIndex        =   27
            Top             =   2520
            Width           =   4935
         End
         Begin VB.TextBox edtProtocolo 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   120
            TabIndex        =   26
            Top             =   3120
            Width           =   4935
         End
         Begin VB.TextBox edtCNPJ 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   120
            TabIndex        =   25
            Top             =   1200
            Width           =   4935
         End
         Begin VB.OptionButton rdProducao 
            Caption         =   "Produção"
            Height          =   315
            Left            =   3120
            TabIndex        =   24
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton rdHomologacao 
            Caption         =   "Homologação"
            Height          =   195
            Left            =   3120
            TabIndex        =   23
            Top             =   720
            Width           =   1575
         End
         Begin MSComDlg.CommonDialog cdTX2 
            Left            =   1080
            Top             =   480
            _ExtentX        =   847
            _ExtentY        =   847
            _Version        =   393216
         End
         Begin MSComDlg.CommonDialog cdlgXmlNFe 
            Left            =   1680
            Top             =   480
            _ExtentX        =   847
            _ExtentY        =   847
            _Version        =   393216
         End
         Begin VB.Label Label1 
            Caption         =   "UF"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   34
            Top             =   240
            Width           =   735
         End
         Begin VB.Label Label4 
            Caption         =   "CNPJ"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   33
            Top             =   960
            Width           =   1695
         End
         Begin VB.Label Label11 
            Caption         =   "ID da NFe"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   32
            Top             =   1680
            Width           =   2295
         End
         Begin VB.Label Label8 
            Caption         =   "Recibo"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   31
            Top             =   2280
            Width           =   1335
         End
         Begin VB.Label Label10 
            Caption         =   "Protocolo"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   30
            Top             =   2880
            Width           =   1335
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Operações "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4635
         Left            =   5520
         TabIndex        =   8
         Top             =   360
         Width           =   6015
         Begin VB.CommandButton btnStatusServico 
            Caption         =   "8 - Status do Serviço"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   1560
            TabIndex        =   20
            Top             =   3960
            Width           =   2655
         End
         Begin VB.CommandButton btnAssinarNF 
            Caption         =   "3 - Assinar NFe"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   120
            TabIndex        =   19
            Top             =   2160
            Width           =   2415
         End
         Begin VB.CommandButton btnEnviarNF 
            Caption         =   "4 - Enviar NFe"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   3480
            TabIndex        =   18
            Top             =   2160
            Width           =   2415
         End
         Begin VB.CommandButton btnConsReciboNFe 
            Caption         =   "5 - Consultar Recibo da NFe"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   3480
            TabIndex        =   17
            Top             =   2760
            Width           =   2415
         End
         Begin VB.CommandButton btnConsNFe 
            Caption         =   "6 - Consultar NFe"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   120
            TabIndex        =   16
            Top             =   3360
            Width           =   2415
         End
         Begin VB.CommandButton btnXMLDataset 
            Caption         =   "2.1 - Gerar Nota (via Dataset)"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   120
            TabIndex        =   15
            Top             =   1560
            Width           =   2415
         End
         Begin VB.CommandButton btnCancelarNFe 
            Caption         =   "7 - Cancelar NFe"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   3480
            TabIndex        =   14
            Top             =   3360
            Width           =   2415
         End
         Begin VB.CommandButton Command2 
            Caption         =   "2.2 - Gerar Nota (via TX2)"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   3480
            TabIndex        =   13
            Top             =   1560
            Width           =   2415
         End
         Begin VB.CommandButton Command3 
            Caption         =   "1 - Configurar Ini"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   120
            TabIndex        =   12
            Top             =   960
            Width           =   2415
         End
         Begin VB.CommandButton Command1 
            Caption         =   "2 - Load Config"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   3480
            TabIndex        =   11
            Top             =   960
            Width           =   2415
         End
         Begin VB.ComboBox ListCertificado 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            ItemData        =   "FExemplo.frx":0135
            Left            =   120
            List            =   "FExemplo.frx":0137
            Style           =   2  'Dropdown List
            TabIndex        =   10
            Top             =   480
            Width           =   5775
         End
         Begin VB.CommandButton btnEnviarSincrono 
            Caption         =   "4 - Enviar Sincrono"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   120
            TabIndex        =   9
            Top             =   2760
            Width           =   2415
         End
         Begin MSComDlg.CommonDialog cdlgModelo 
            Left            =   2760
            Top             =   1200
            _ExtentX        =   847
            _ExtentY        =   847
            _Version        =   393216
         End
         Begin VB.Label Label2 
            Caption         =   "Certificado"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   21
            Top             =   240
            Width           =   1215
         End
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5055
      Left            =   0
      TabIndex        =   0
      Top             =   5520
      Width           =   11775
      _ExtentX        =   20770
      _ExtentY        =   8916
      _Version        =   393216
      Tabs            =   6
      TabsPerRow      =   6
      TabHeight       =   520
      TabCaption(0)   =   "Xml"
      TabPicture(0)   =   "FExemplo.frx":0139
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "mmXml"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Xml Enviado"
      TabPicture(1)   =   "FExemplo.frx":0155
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "mmXmlEnviado"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Xml Retorno"
      TabPicture(2)   =   "FExemplo.frx":0171
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "mmXmlRetorno"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "Xml Cancelado Envio"
      TabPicture(3)   =   "FExemplo.frx":018D
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "mmXmlCancEnvio"
      Tab(3).ControlCount=   1
      TabCaption(4)   =   "Xml Cancelado Retorno"
      TabPicture(4)   =   "FExemplo.frx":01A9
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "mmXmlCancRetorno"
      Tab(4).ControlCount=   1
      TabCaption(5)   =   "Impressão/Destinatário"
      TabPicture(5)   =   "FExemplo.frx":01C5
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "mmXmlImpressao"
      Tab(5).ControlCount=   1
      Begin VB.TextBox mmXmlImpressao 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4575
         Left            =   -74880
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   6
         Top             =   360
         Width           =   11535
      End
      Begin VB.TextBox mmXmlCancRetorno 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4575
         Left            =   -74880
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   5
         Top             =   360
         Width           =   11535
      End
      Begin VB.TextBox mmXmlCancEnvio 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4575
         Left            =   -74880
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   4
         Top             =   360
         Width           =   11535
      End
      Begin VB.TextBox mmXmlRetorno 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4575
         Left            =   -74880
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   3
         Top             =   360
         Width           =   11535
      End
      Begin VB.TextBox mmXmlEnviado 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4575
         Left            =   -74880
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   2
         Top             =   360
         Width           =   11535
      End
      Begin VB.TextBox mmXml 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4575
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   1
         Top             =   360
         Width           =   11535
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


'Declarado Objeto pertencente a Classe que faz interação com servidores da Receita'
Public spdNFe As spdNFeX
Public spdNFeDataSet As NFeDataSetX.spdNFeDataSetX
Dim NFeAssinada As String
Public ArqIni As String
Public Codigo As String
Public Numero As String
Public Serie  As String

'Função para abrir os links de ajuda
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
'Função para ler arquivos INI usando API window
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal padrao As String, ByVal variavel As String, ByVal tam As Long, ByVal arquivo As String) As Long
'Função para gravar arquivos INI usando API windows
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal valor As Any, ByVal arquivo As String) As Long
' Função para ler o arquivo Ini.
Function get_ini(seção$, chave$) As String
    arquiv$ = ArqIni
    Returns$ = Space$(280)
    X% = GetPrivateProfileString(ByVal seção$, ByVal chave$, _
    "", Returns$, Len(Returns$), ByVal arquiv$)
    get_ini = Left$(Returns$, X%)
End Function
Function write_ini(ByVal section$, ByVal chv$, ByVal variavel$) As String
    Dim arquivo As String
    Dim retorno As String
    arquivo = ArqIni
    retorno = WritePrivateProfileString(ByVal section$, ByVal chv$, ByVal variavel$, ByVal arquivo)
End Function
Private Sub btnCancelarNF_Click()
  'Dispara Método que solicita Cancelamento da NFe e aguarda retorno.
  mmXmlRetorno.Text = spdNFe.CancelarNF(edtIdNfe.Text, edProtocolo.Text, "Emitida com data Data Incorreta")
  
End Sub

Private Sub btnAssinarNF_Click()
 If (mmXml = "") Then
    MsgBox ("Primeiro gere a nota!")
  Else
    'Assina o XML das NFs a serem enviadas
    mmXml.Text = Trim(spdNFe.AssinarNota(mmXml.Text))
    'Guarda na Vari?vel global a NFe assinada para ser utilizada posteriormente
    NFeAssinada = mmXml.Text
  End If
End Sub

Private Sub CarregarLog()
  cdlgXmlNFe.FileName = spdNFe.UltimoLogEnvio
        Open cdlgXmlNFe.FileName For Input As #1
            mmXmlEnviado = Input(FileLen(cdlgXmlNFe.FileName), #1)
            mmXmlEnviado = Mid(mmXmlEnviado.Text, 4, Len(mmXmlEnviado.Text) - 3)
 End Sub
Private Sub btnConsNFe_Click()
  'Chama método que consulta a Nota Fiscal no servidor da receita
  mmXmlRetorno.Text = spdNFe.ConsultarNF(edtIdNfe)
  
  'Copia Numero do Protocolo para ser utilizado posteriormente
  edtProtocolo.Text = Mid$(mmXmlRetorno.Text, InStrRev(mmXmlRetorno.Text, "<nProt>") + 7, 15)
End Sub

Private Sub btnConsReciboNFe_Click()
  'Chama método que consulta no servidor da receita, o Recibo capturado ao enviar NF
  mmXmlRetorno.Text = spdNFe.ConsultarRecibo(edtRecibo.Text)
  
End Sub

Private Sub btnDicionario_Click()
    ret = ShellExecute(Me.hwnd, "OPen", "https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360009515054-Dicion%C3%A1rio-de-dados-", "", "", 1)
End Sub

Private Sub btnEditarDanfe_Click()
   mmXmlImpressao.Text = spdNFe.EditarModeloDanfe("0001", mmXmlImpressao.Text, "")
End Sub

Private Sub btnEnviarDanfeEmail_Click()
  Dim arquivo, fso, arqtxt, texto

  'Carrega o arquivo gerado na pasta XML Destinatario que possui Numero de Protocolo e Numero de Autorização
  arquivo = App.Path + "\XmlDestinatario\" + edtIdNfe.Text + "-NFe.xml"

  Set fso = CreateObject("Scripting.FileSystemObject")
  Set arqtxt = fso.OpenTextFile(arquivo)
  texto = arqtxt.ReadAll
  mmXmlRetorno.Text = spdNFe.EnviarEmailDanfe("0000001", texto, edtModeloRtm.Text)
End Sub

Private Sub btnEnviarNF_Click()
  mmXmlRetorno.Text = spdNFe.EnviarNF("00001", Trim(mmXml.Text), False)

  'Copia o Numero do Recibo do XML Enviado para o edRecibo
  edtRecibo.Text = Mid$(mmXmlRetorno.Text, InStrRev(mmXmlRetorno.Text, "<nRec>") + 6, 15)
  CarregarLog
End Sub


Private Sub btnEnviarSincrono_Click()

    Dim CaminhoXml As String
    
    mmXmlRetorno.Text = spdNFe.EnviarNFSincrono("1", mmXml.Text, False)
    edtProtocolo.Text = Mid$(mmXmlRetorno.Text, InStrRev(mmXmlRetorno.Text, "<nProt>") + 7, 15)
    CarregarLog
    mmXmlImpressao = spdNFe.GeraXMLEnvioDestinatario(edtIdNfe.Text, mmXmlEnviado.Text, mmXmlRetorno.Text, "")
End Sub

Private Sub btnEventosNFe_Click()
  Form2.Show
End Sub


Private Sub btnExportarDanfe_Click()
  Set fso = CreateObject("Scripting.FileSystemObject")
  
  If edtIdNfe <> "" Then
  arquivo = spdNFe.DiretorioXmlDestinatario + edtIdNfe.Text + "-NFe.xml" 'Carrega o arquivo gerado na pasta XML Destinatario que possui Numero de Protocolo e Numero de Autorização
  Set arqtxt = fso.OpenTextFile(arquivo)
  texto = arqtxt.ReadAll
  mmXmlRetorno.Text = spdNFe.ExportarDanfe("0000001", texto, "", "1", "")
  Else
  mmXmlRetorno.Text = spdNFe.ExportarDanfe("0000001", mmXmlImpressao.Text, "", "1", "")
  End If
End Sub

Private Sub btnGuiaGeral_Click()
    ret = ShellExecute(Me.hwnd, "OPen", "https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360010343074-Guia-Geral-Componente-NFe", "", "", 1)
End Sub

Private Sub btnImportarXml_Click()
    'Exemplo de como carregar um xml de NF-e, converter para dataset e percorrer pelas informações,'
    'servindo assim como base para criar rotina de importação, bastando adaptar conforme a necessidade'
    
    Dim pathXml, arquivo, fso, arqtxt, texto, Serie, Numero, Codigo As String
    Dim nfe4OuSuperior As Boolean
    
    Set fso = CreateObject("Scripting.FileSystemObject")
    cdlgXmlNFe.ShowOpen
    If cdlgXmlNFe.FileName <> "" Then
        pathXml = cdlgXmlNFe.FileName
    End If

    
    If Not (pathXml = "") Then
        Set arqtxt = fso.OpenTextFile(pathXml)
    End If
    
    texto = arqtxt.ReadAll
    mmXmlRetorno.Text = texto

        nfe4OuSuperior = True
        spdNFe.VersaoManual = "6.0"
        spdNFeDataSet.VersaoEsquema = "pl_009g"
        spdNFeDataSet.DicionarioXML = "C:\Program Files\TecnoSpeed\NFe\arquivos\templates\vm60\Conversor\NFeDataSets.xml"

    
    spdNFeDataSet.DiretorioTemplates = "C:\Program Files\TecnoSpeed\NFe\arquivos\templates"
    spdNFeDataSet.ConverterXmlParaDataSet texto, spdNFeDataSet.VersaoEsquema
    
    'Exibindo algumas informações gerais do Documento'
    arquivo = "---------------------------------------------------------------------------------------------" & vbCrLf
    arquivo = arquivo + "INFORMAÇÕES DO DOCUMENTO" & vbCrLf
    arquivo = arquivo + "   versao_A02 = " + spdNFeDataSet.GetCampo("versao_A02") & vbCrLf
    arquivo = arquivo + "   cUF_B02 = " + spdNFeDataSet.GetCampo("cUF_B02") & vbCrLf
    arquivo = arquivo + "   cNF_B03 = " + spdNFeDataSet.GetCampo("cNF_B03") & vbCrLf
    arquivo = arquivo + "   natOp_B04 = " + spdNFeDataSet.GetCampo("natOp_B04") & vbCrLf
    arquivo = arquivo + "   serie_B07 = " + spdNFeDataSet.GetCampo("serie_B07") & vbCrLf
    arquivo = arquivo + "   nNF_B08 = " + spdNFeDataSet.GetCampo("nNF_B08") & vbCrLf
    arquivo = arquivo + "   dhEmi_B09 = " + spdNFeDataSet.GetCampo("dhEmi_B09") & vbCrLf
    arquivo = arquivo + "   dhSaiEnt_B10 = " + spdNFeDataSet.GetCampo("dhSaiEnt_B10") & vbCrLf
    arquivo = arquivo + "   tpNF_B11 = " + spdNFeDataSet.GetCampo("tpNF_B11") & vbCrLf
    arquivo = arquivo + "   finNFe_B25 = " + spdNFeDataSet.GetCampo("finNFe_B25") & vbCrLf
    arquivo = arquivo + vbCrLf
    
    'Exibindo algumas informações do Emitente'
    arquivo = arquivo + "---------------------------------------------------------------------------------------------" & vbCrLf
    arquivo = arquivo + "INFORMAÇÕES DO EMITENTE" & vbCrLf
    arquivo = arquivo + "   CNPJ_C02 = " + spdNFeDataSet.GetCampo("CNPJ_C02") & vbCrLf
    arquivo = arquivo + "   xNome_C03 = " + spdNFeDataSet.GetCampo("xNome_C03") & vbCrLf
    arquivo = arquivo + "   xFant_C04 = " + spdNFeDataSet.GetCampo("xFant_C04") & vbCrLf
    arquivo = arquivo + "   xLgr_C06 = " + spdNFeDataSet.GetCampo("xLgr_C06") & vbCrLf
    arquivo = arquivo + "   nro_C07 = " + spdNFeDataSet.GetCampo("nro_C07") & vbCrLf
    arquivo = arquivo + "   xCpl_C08 = " + spdNFeDataSet.GetCampo("xCpl_C08") & vbCrLf
    arquivo = arquivo + "   xBairro_C09 = " + spdNFeDataSet.GetCampo("xBairro_C09") & vbCrLf
    arquivo = arquivo + "   cMun_C10 = " + spdNFeDataSet.GetCampo("cMun_C10") & vbCrLf
    arquivo = arquivo + "   xMun_C11 = " + spdNFeDataSet.GetCampo("xMun_C11") & vbCrLf
    arquivo = arquivo + "   UF_C12 = " + spdNFeDataSet.GetCampo("UF_C12") & vbCrLf
    arquivo = arquivo + "   CEP_C13 = " + spdNFeDataSet.GetCampo("CEP_C13") & vbCrLf
    arquivo = arquivo + "   cPais_C14 = " + spdNFeDataSet.GetCampo("cPais_C14") & vbCrLf
    arquivo = arquivo + "   xPais_C15 = " + spdNFeDataSet.GetCampo("xPais_C15") & vbCrLf
    arquivo = arquivo + "   fone_C16 = " + spdNFeDataSet.GetCampo("fone_C16") & vbCrLf
    arquivo = arquivo + "   IE_C17 = " + spdNFeDataSet.GetCampo("IE_C17") & vbCrLf
    arquivo = arquivo + "   IEST_C18 = " + spdNFeDataSet.GetCampo("IEST_C18") & vbCrLf
    arquivo = arquivo + "   IM_C19 = " + spdNFeDataSet.GetCampo("IM_C19") & vbCrLf
    arquivo = arquivo + "   CRT_C21 = " + spdNFeDataSet.GetCampo("CRT_C21") & vbCrLf
    arquivo = arquivo + vbCrLf
    
    'Exibindo algumas informações do Destinatário'
    arquivo = arquivo + "---------------------------------------------------------------------------------------------" & vbCrLf
    arquivo = arquivo + "INFORMAÇÕES DO DESTINATÁRIO" & vbCrLf
    If (spdNFeDataSet.GetCampo("CPF_E03") <> "") Then
        arquivo = arquivo + "   CPF_E03 = " + spdNFeDataSet.GetCampo("CPF_E03") & vbCrLf
    Else
        arquivo = arquivo + "   CNPJ_E02 = " + spdNFeDataSet.GetCampo("CNPJ_E02") & vbCrLf
    End If
    arquivo = arquivo + "   xNome_E04 = " + spdNFeDataSet.GetCampo("xNome_E04") & vbCrLf
    arquivo = arquivo + "   xLgr_E06 = " + spdNFeDataSet.GetCampo("xLgr_E06") & vbCrLf
    arquivo = arquivo + "   nro_E07 = " + spdNFeDataSet.GetCampo("nro_E07") & vbCrLf
    arquivo = arquivo + "   xCpl_E08 = " + spdNFeDataSet.GetCampo("xCpl_E08") & vbCrLf
    arquivo = arquivo + "   xBairro_E09 = " + spdNFeDataSet.GetCampo("xBairro_E09") & vbCrLf
    arquivo = arquivo + "   cMun_E10 = " + spdNFeDataSet.GetCampo("cMun_E10") & vbCrLf
    arquivo = arquivo + "   xMun_E11 = " + spdNFeDataSet.GetCampo("xMun_E11") & vbCrLf
    arquivo = arquivo + "   UF_E12 = " + spdNFeDataSet.GetCampo("UF_E12") & vbCrLf
    arquivo = arquivo + "   CEP_E13 = " + spdNFeDataSet.GetCampo("CEP_E13") & vbCrLf
    arquivo = arquivo + "   cPais_E14 = " + spdNFeDataSet.GetCampo("cPais_E14") & vbCrLf
    arquivo = arquivo + "   xPais_E15 = " + spdNFeDataSet.GetCampo("xPais_E15") & vbCrLf
    arquivo = arquivo + "   fone_E16 = " + spdNFeDataSet.GetCampo("fone_E16") & vbCrLf
    arquivo = arquivo + "   IE_E17 = " + spdNFeDataSet.GetCampo("IE_E17") & vbCrLf
    arquivo = arquivo + "   ISUF_E18 = " + spdNFeDataSet.GetCampo("ISUF_E18") & vbCrLf
    arquivo = arquivo + "   email_E19 = " + spdNFeDataSet.GetCampo("email_E19") & vbCrLf

    arquivo = arquivo + vbCrLf
    
    'Exibindo algumas informações dos Itens'
    spdNFeDataSet.FindDataset("H").First
    Dim idItem, idRastro, idDI, idADI As Integer
    idItem = 0
    Do While Not (spdNFeDataSet.FindDataset("H").EOF)
        idItem = idItem + 1
        arquivo = arquivo & "-----------------------------------------------------------------------------------------------" & vbCrLf
        arquivo = arquivo & "INFORMAÇÕES DO ITEM (Id: " & idItem & ")" & vbCrLf
        arquivo = arquivo & "   cProd_I02 = " & spdNFeDataSet.GetCampo("cProd_I02") & vbCrLf
        arquivo = arquivo & "   cEAN_I03 = " & spdNFeDataSet.GetCampo("cEAN_I03") & vbCrLf
        arquivo = arquivo & "   xProd_I04 = " & spdNFeDataSet.GetCampo("xProd_I04") & vbCrLf
        arquivo = arquivo & "   NCM_I05 = " & spdNFeDataSet.GetCampo("NCM_I05") & vbCrLf
        arquivo = arquivo & "   CFOP_I08 = " & spdNFeDataSet.GetCampo("CFOP_I08") & vbCrLf
        arquivo = arquivo & "   uCom_I09 = " & spdNFeDataSet.GetCampo("uCom_I09") & vbCrLf
        arquivo = arquivo & "   qCom_I10 = " & spdNFeDataSet.GetCampo("qCom_I10") & vbCrLf
        arquivo = arquivo & "   vUnCom_I10a = " & spdNFeDataSet.GetCampo("vUnCom_I10a") & vbCrLf
        arquivo = arquivo & "   vProd_I11 = " & spdNFeDataSet.GetCampo("vProd_I11") & vbCrLf
        
        'Informações de Impostos'
        arquivo = arquivo & "IMPOSTOS" & vbCrLf
        arquivo = arquivo & "   ICMS" & vbCrLf
        arquivo = arquivo & "      CST_N12 = " & spdNFeDataSet.GetCampo("CST_N12") & vbCrLf
        arquivo = arquivo & "      modBC_N13 = " & spdNFeDataSet.GetCampo("modBC_N13") & vbCrLf
        arquivo = arquivo & "      vBC_N15 = " & spdNFeDataSet.GetCampo("vBC_N15") & vbCrLf
        arquivo = arquivo & "      pICMS_N16 = " & spdNFeDataSet.GetCampo("pICMS_N16") & vbCrLf
        arquivo = arquivo & "      vICMS_N17 = " & spdNFeDataSet.GetCampo("vICMS_N17") & vbCrLf
        arquivo = arquivo & "   PARTILHA ICMS" & vbCrLf
        arquivo = arquivo & "      vBCUFDest_NA03 = " & spdNFeDataSet.GetCampo("vBCUFDest_NA03") & vbCrLf
        If (nfe4OuSuperior) Then 'So tem a partir desta versão'
            arquivo = arquivo & "      vBCFCPUFDest_NA04 = " & spdNFeDataSet.GetCampo("vBCFCPUFDest_NA04") & vbCrLf
        End If
        arquivo = arquivo & "      pFCPUFDest_NA05 = " & spdNFeDataSet.GetCampo("pFCPUFDest_NA05") & vbCrLf
        arquivo = arquivo & "      pICMSUFDest_NA07 = " & spdNFeDataSet.GetCampo("pICMSUFDest_NA07") & vbCrLf
        arquivo = arquivo & "      pICMSInter_NA09 = " & spdNFeDataSet.GetCampo("pICMSInter_NA09") & vbCrLf
        arquivo = arquivo & "      pICMSInterPart_NA11 = " & spdNFeDataSet.GetCampo("pICMSInterPart_NA11") & vbCrLf
        arquivo = arquivo & "      vFCPUFDest_NA13 = " & spdNFeDataSet.GetCampo("vFCPUFDest_NA13") & vbCrLf
        arquivo = arquivo & "      vICMSUFDest_NA15 = " & spdNFeDataSet.GetCampo("vICMSUFDest_NA15") & vbCrLf
        arquivo = arquivo & "      vICMSUFRemet_NA17 = " & spdNFeDataSet.GetCampo("vICMSUFRemet_NA17") & vbCrLf
        arquivo = arquivo & "   PIS" & vbCrLf
        arquivo = arquivo & "      CST_Q06 = " & spdNFeDataSet.GetCampo("CST_Q06") & vbCrLf
        arquivo = arquivo & "      vBC_Q07 = " & spdNFeDataSet.GetCampo("vBC_Q07") & vbCrLf
        arquivo = arquivo & "      pPIS_Q08 = " & spdNFeDataSet.GetCampo("pPIS_Q08") & vbCrLf
        arquivo = arquivo & "      vPIS_Q09 = " & spdNFeDataSet.GetCampo("vPIS_Q09") & vbCrLf
        arquivo = arquivo & "   COFINS" & vbCrLf
        arquivo = arquivo & "      CST_S06 = " & spdNFeDataSet.GetCampo("CST_S06") & vbCrLf
        arquivo = arquivo & "      vBC_S07 = " & spdNFeDataSet.GetCampo("vBC_S07") & vbCrLf
        arquivo = arquivo & "      pCOFINS_S08 = " & spdNFeDataSet.GetCampo("pCOFINS_S08") & vbCrLf
        arquivo = arquivo & "      vCOFINS_S11 = " & spdNFeDataSet.GetCampo("vCOFINS_S11") & vbCrLf
        arquivo = arquivo & "   IPI" & vbCrLf
        arquivo = arquivo & "      CST_O09 = " & spdNFeDataSet.GetCampo("CST_O09") & vbCrLf
        arquivo = arquivo & "      vBC_O10 = " & spdNFeDataSet.GetCampo("vBC_O10") & vbCrLf
        arquivo = arquivo & "      pIPI_O13 = " & spdNFeDataSet.GetCampo("pIPI_O13") & vbCrLf
        arquivo = arquivo & "      vIPI_O14 = " & spdNFeDataSet.GetCampo("vIPI_O14") & vbCrLf
        
        'Informações do Rastro'
        If (nfe4OuSuperior) Then 'So tem a partir desta versão'
            idRastro = 0
            spdNFeDataSet.FindDataset("I80").First
            Do While Not (spdNFeDataSet.FindDataset("I80").EOF)
                If (spdNFeDataSet.GetCampo("nLote_I81") <> "") Then
                    idRastro = idRastro + 1
                    arquivo = arquivo & "RASTRO (Id: " & idRastro & ")" & vbCrLf
                    arquivo = arquivo & "   nLote_I81 = " & spdNFeDataSet.GetCampo("nLote_I81") & vbCrLf
                    arquivo = arquivo & "   qLote_I82 = " & spdNFeDataSet.GetCampo("qLote_I82") & vbCrLf
                    arquivo = arquivo & "   dFab_I83 = " & spdNFeDataSet.GetCampo("dFab_I83") & vbCrLf
                    arquivo = arquivo & "   dVal_I84 = " & spdNFeDataSet.GetCampo("dVal_I84") & vbCrLf
                    arquivo = arquivo & "   cAgreg_I85 = " & spdNFeDataSet.GetCampo("cAgreg_I85") & vbCrLf
                End If
                
                spdNFeDataSet.FindDataset("I80").Next
            Loop
        End If
        
        'Informações do DI/ADI'
        idDI = 0
        spdNFeDataSet.FindDataset("DI").First
        Do While Not (spdNFeDataSet.FindDataset("DI").EOF)
            If (spdNFeDataSet.GetCampo("nDI_I19") <> "") Then
                idDI = idDI + 1
                arquivo = arquivo & "DECLARAÇÃO DE IMPORTAÇÃO (Id: " & idDI & ")" & vbCrLf
                arquivo = arquivo & "   nDI_I19 = " & spdNFeDataSet.GetCampo("nDI_I19") & vbCrLf
                arquivo = arquivo & "   dDI_I20 = " & spdNFeDataSet.GetCampo("dDI_I20") & vbCrLf
                arquivo = arquivo & "   xLocDesemb_I21 = " & spdNFeDataSet.GetCampo("xLocDesemb_I21") & vbCrLf
                arquivo = arquivo & "   dDesemb_I23 = " & spdNFeDataSet.GetCampo("dDesemb_I23") & vbCrLf
                arquivo = arquivo & "   tpViaTransp_I23a = " & spdNFeDataSet.GetCampo("tpViaTransp_I23a") & vbCrLf
                arquivo = arquivo & "   vAFRMM_I23b = " & spdNFeDataSet.GetCampo("vAFRMM_I23b") & vbCrLf
                arquivo = arquivo & "   tpIntermedio_I23c = " & spdNFeDataSet.GetCampo("tpIntermedio_I23c") & vbCrLf
                arquivo = arquivo & "   CNPJ_I23d = " & spdNFeDataSet.GetCampo("CNPJ_I23d") & vbCrLf
                arquivo = arquivo & "   UFTerceiro_I23e = " & spdNFeDataSet.GetCampo("UFTerceiro_I23e") & vbCrLf
                arquivo = arquivo & "   cExportador_I24 = " & spdNFeDataSet.GetCampo("cExportador_I24") & vbCrLf
            End If
            
            idADI = 0
            spdNFeDataSet.FindDataset("ADI").First
            Do While Not (spdNFeDataSet.FindDataset("ADI").EOF)
                If (spdNFeDataSet.GetCampo("nAdicao_I26") <> "") Then
                    idADI = idADI + 1
                    arquivo = arquivo & "ADIÇÕES (Id: " & idADI & ")" & vbCrLf
                    arquivo = arquivo & "   nAdicao_I26 = " & spdNFeDataSet.GetCampo("nAdicao_I26") & vbCrLf
                    arquivo = arquivo & "   nSeqAdic_I27 = " & spdNFeDataSet.GetCampo("nSeqAdic_I27") & vbCrLf
                    arquivo = arquivo & "   cFabricante_I28 = " & spdNFeDataSet.GetCampo("cFabricante_I28") & vbCrLf
                    arquivo = arquivo & "   vDescDI_I29 = " & spdNFeDataSet.GetCampo("vDescDI_I29") & vbCrLf
                    arquivo = arquivo & "   nDraw_I29a = " & spdNFeDataSet.GetCampo("nDraw_I29a") & vbCrLf
                End If
            
                spdNFeDataSet.FindDataset("ADI").Next
            Loop
            
            spdNFeDataSet.FindDataset("DI").Next
        Loop
        
        spdNFeDataSet.FindDataset("H").Next
        
        arquivo = arquivo & vbCrLf
    Loop
    
    'Informações de Pagamentos'
    If (nfe4OuSuperior) Then 'So tem a partir desta versão'
        Dim idPagamento As Integer
        idPagamento = 0
        spdNFeDataSet.FindDataset("YA").First
        Do While Not (spdNFeDataSet.FindDataset("YA").EOF)
            If (spdNFeDataSet.GetCampo("tPag_YA02") <> "") Then
                idPagamento = idPagamento + 1
                arquivo = arquivo & "---------------------------------------------------------------------------------------------" & vbCrLf
                arquivo = arquivo & "INFORMAÇÕES DO PAGAMENTO (Id: " & idPagamento & ")" & vbCrLf
                arquivo = arquivo & "   indPag_YA01b = " & spdNFeDataSet.GetCampo("indPag_YA01b") & vbCrLf
                arquivo = arquivo & "   tPag_YA02 = " & spdNFeDataSet.GetCampo("tPag_YA02") & vbCrLf
                arquivo = arquivo & "   vPag_YA03 = " & spdNFeDataSet.GetCampo("vPag_YA03") & vbCrLf
                arquivo = arquivo & "   tpIntegra_YA04a = " & spdNFeDataSet.GetCampo("tpIntegra_YA04a") & vbCrLf
                arquivo = arquivo & "   CNPJ_YA05 = " & spdNFeDataSet.GetCampo("CNPJ_YA05") & vbCrLf
                arquivo = arquivo & "   tBand_YA06 = " & spdNFeDataSet.GetCampo("tBand_YA06") & vbCrLf
                arquivo = arquivo & "   cAut_YA07 = " & spdNFeDataSet.GetCampo("cAut_YA07") & vbCrLf
            End If
            
            spdNFeDataSet.FindDataset("YA").Next
            
            arquivo = arquivo & vbCrLf
        Loop
    End If
    
    'Informações de Duplicatas'
    Dim idDuplicata As Integer
    idDuplicata = 0
    spdNFeDataSet.FindDataset("DUP").First
    Do While Not (spdNFeDataSet.FindDataset("DUP").EOF)
        If (spdNFeDataSet.GetCampo("nDup_Y08") <> "") Then
            idDuplicata = idDuplicata + 1
            arquivo = arquivo & "---------------------------------------------------------------------------------------------" & vbCrLf
            arquivo = arquivo & "INFORMAÇÕES DO PAGAMENTO (Id: " & idDuplicata & ")" & vbCrLf
            arquivo = arquivo & "   nDup_Y08 = " & spdNFeDataSet.GetCampo("nDup_Y08") & vbCrLf
            arquivo = arquivo & "   dVenc_Y09 = " & spdNFeDataSet.GetCampo("dVenc_Y09") & vbCrLf
            arquivo = arquivo & "   vDup_Y10 = " & spdNFeDataSet.GetCampo("vDup_Y10") & vbCrLf
        End If
        
        spdNFeDataSet.FindDataset("DUP").Next
        
        arquivo = arquivo & vbCrLf
    Loop
    
    mmXmlRetorno.Text = arquivo
    
End Sub

Private Sub btnImprimirDanfe_Click()
  Dim arquivo, fso, arqtxt, texto
  Set fso = CreateObject("Scripting.FileSystemObject")
 
  If edtIdNfe.Text <> "" Then
  arquivo = spdNFe.DiretorioXmlDestinatario + edtIdNfe.Text + "-NFe.xml" 'Carrega o arquivo gerado na pasta XML Destinatario que possui Numero de Protocolo e Numero de Autorização
  Set arqtxt = fso.OpenTextFile(arquivo)
  texto = arqtxt.ReadAll
  mmXmlRetorno.Text = spdNFe.ImprimirDanfe("0000001", texto, "", "")
  Else
  mmXmlRetorno.Text = spdNFe.ImprimirDanfe("0000001", mmXmlImpressao.Text, "", "")
  End If
End Sub

Private Sub btnInutilizarNF_Click()
  'Método para Inutilização de uma faixa de Númoros de spdNFe.
  'Obs: Utilizado alguns campos fixos para demonstração como (Modelo = 55 / Serie = 0 / NFInicial = 1 / NFFinal = 1 / Justificativa )
  mmXmlRetorno.Text = spdNFe.InutilizarNF("", "10", edtCNPJ.Text, "55", "0", "1", "1", "Demonstracao de Inutilizacao NFe")
End Sub

Private Sub btnMetodos_Click()
    ret = ShellExecute(Me.hwnd, "OPen", "https://atendimento.tecnospeed.com.br/hc/pt-br/sections/360001159034-M%C3%A9todos-do-componente", "", "", 1)
End Sub

Private Sub btnPropriedades_Click()
    ret = ShellExecute(Me.hwnd, "OPen", "https://atendimento.tecnospeed.com.br/hc/pt-br/sections/360001177553-Propriedades-do-componente", "", "", 1)
End Sub

Private Sub btnStatusServico_Click()
  mmXmlRetorno.Text = spdNFe.StatusDoServico 'Método que retorna o status do servidor da Receita
  btnStatusServico.Enabled = False
     
End Sub

Private Sub btnVisualizarDanfe_Click()

  Dim arquivo, fso, arqtxt, texto As String
  
  Set fso = CreateObject("Scripting.FileSystemObject")
  
  If edtIdNfe <> "" Then
  arquivo = spdNFe.DiretorioXmlDestinatario + edtIdNfe.Text + "-NFe.xml" 'Carrega o arquivo gerado na pasta XML Destinatario que possui Numero de Protocolo e Numero de Autorização
  Set arqtxt = fso.OpenTextFile(arquivo)
  texto = arqtxt.ReadAll
  mmXmlRetorno.Text = spdNFe.VisualizarDanfe("0000001", texto, "")
  Else
  mmXmlRetorno.Text = spdNFe.VisualizarDanfe("0000001", mmXmlImpressao.Text, "")
  End If
End Sub

'INformações sobre a NFe
Private Sub DadosDoNFe()
  spdNFeDataSet.SetCampo ("Id_A03=0")                          'Calcula Automático. Essa linha é desnecessária
  spdNFeDataSet.SetCampo ("cUF_B02=41")                        'Codigo da UF para o estado de Parana'
  spdNFeDataSet.SetCampo ("cNF_B03=" & Codigo)                    'Código Interno do Sistema que está integrando com a NFe
  spdNFeDataSet.SetCampo ("natOp_B04=VENDA MERC.ADQ.REC.TERC") 'Descrição da(s) CFOP(s) envolvidas nessa NFe
  spdNFeDataSet.SetCampo ("mod_B06=55")                        'Código do Modelo de Documento Fiscal
  spdNFeDataSet.SetCampo ("serie_B07=" & Serie)                   'Série do Documento
  spdNFeDataSet.SetCampo ("CRT_C21=3")
  
  'Rnd(100) ->Randômico até 1000
    spdNFeDataSet.SetCampo ("nNF_B08=" & Numero)                  'Número da Nota Fiscal
    'spdNFeDataSet.SetCampo ("dhEmi_B09=2021-10-04T18:00:01-03:00")
    'spdNFeDataSet.SetCampo ("dhSaiEnt_B10=2021-10-04T18:00:01-03:00")
     spdNFeDataSet.SetCampo ("dhEmi_B09=" & Format(Now(), "yyyy-mm-ddThh:mm:ss-03:00"))
     spdNFeDataSet.SetCampo ("dhSaiEnt_B10=" & Format(Now(), "yyyy-mm-ddThh:mm:ss-03:00"))

  spdNFeDataSet.SetCampo ("tpNF_B11=1")                      'Tipo de Documento Fiscal (0-Entrada, 1-Saída)
  spdNFeDataSet.SetCampo ("IDDEST_B11A=2")
  spdNFeDataSet.SetCampo ("cMunFG_B12=4115200")              'Código do Município, conforme Tabela do IBGE
  spdNFeDataSet.SetCampo ("tpImp_B21=1")                     'Tipo de Impressão da Danfe (1- Retrato , 2-Paisagem)
  spdNFeDataSet.SetCampo ("tpEmis_B22=1")                    'Forma de Emissão da NFe (1-Normal, 2-Contigencia)
  
  spdNFeDataSet.SetCampo ("tpAmb_B24=2")                     'Identificação do Ambiente (1- Producao, 2-Homologação)
  spdNFeDataSet.SetCampo ("finNFe_B25=1")                    'Finalidade da NFe (1-Normal, 2-Complementar, 3-de Ajuste)
  spdNFeDataSet.SetCampo ("INDFINAL_B25A=0")
  spdNFeDataSet.SetCampo ("IndPres_B25B=0")
  spdNFeDataSet.SetCampo ("procEmi_B26=0")                   'Identificador do Processo de emissão (0-Emissão da Nfe com Aplicativo do Contribuinte). Ver outras opções no manual da Receita.
  spdNFeDataSet.SetCampo ("verProc_B27=5")                   'Versão do Aplicativo Emissor
    spdNFeDataSet.SetCampo ("versao_A02=4.00")               'Versão do Layout que está utilizando 2.0
    spdNFeDataSet.SetCampo ("CRT_C21=3")                     'Campo novo da Versão 4.0 que classifica a empresa emitente - Ver Manual de integração
               

End Sub

' Informações do Emitente da NFe
Private Sub DadosDoEmitente()

  spdNFeDataSet.SetCampo ("CNPJ_C02=" & edtCNPJ.Text)         'CNPJ do Emitente
  spdNFeDataSet.SetCampo ("xNome_C03=ACME LTDA")              'Razao Social ou Nome do Emitente
  spdNFeDataSet.SetCampo ("xFant_C04=ACME")                   'Nome Fantasia do Emitente
  spdNFeDataSet.SetCampo ("xLgr_C06=RUA TAL")                 'Logradouro do Emitente
  spdNFeDataSet.SetCampo ("nro_C07=123")                      'Numero do Logradouro do Emitente
  spdNFeDataSet.SetCampo ("xBairro_C09=CENTRO")               'Bairro do Emitente
  spdNFeDataSet.SetCampo ("cMun_C10=4115200")                 'Código da Cidade do Emitente (Tabela do IBGE)
  spdNFeDataSet.SetCampo ("xMun_C11=Maringa")                 'Nome da Cidade do Emitente
  spdNFeDataSet.SetCampo ("UF_C12=" & cbUf.Text)              'SIGLA do Estado do Emitente (Tabela do IBGE)
  spdNFeDataSet.SetCampo ("CEP_C13=87500000")                 'Cep do Emitente
  spdNFeDataSet.SetCampo ("cPais_C14=1058")                   'Código do País do Emitente (Tabela BACEN)
  spdNFeDataSet.SetCampo ("xPais_C15=BRASIL")                 'Nome do País do Emitente
  spdNFeDataSet.SetCampo ("fone_C16=4432222222")              'Fone do Emitente
  spdNFeDataSet.SetCampo ("IE_C17=9044016688")                'Inscrição Estadual do Emitente
  spdNFeDataSet.SetCampo ("IEST_C18=")                        'Inscrição Estadual do Substituto Tributário Emitente
End Sub

' Informações do Destinatário da NFe
Private Sub DadosDoDestinatario()
  spdNFeDataSet.SetCampo ("CNPJ_E02=" & edtCNPJ.Text)                                                   'CNPJ do Destinatário
  spdNFeDataSet.SetCampo ("xNome_E04=NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL")       'Razao social ou Nome do Destinatário
  spdNFeDataSet.SetCampo ("xLgr_E06=RUA DO CENTRO")                                                     'Logradouro do Destinatario
  spdNFeDataSet.SetCampo ("nro_E07=897")                                                                'Numero do Logradouro do Destinatario
  spdNFeDataSet.SetCampo ("xBairro_E09=CENTRO")                                                         'Bairro do Destinatario
  spdNFeDataSet.SetCampo ("cMun_E10=4115200")                                                           'Código do Município do Destinatário (Tabela IBGE)
  spdNFeDataSet.SetCampo ("xMun_E11=Maringa")                                                           'Nome da Cidade do Destinatário
  spdNFeDataSet.SetCampo ("UF_E12=PR")                                                                  'Sigla do Estado do Destinatário
  spdNFeDataSet.SetCampo ("CEP_E13=87500000")                                                           'Cep do Destinatário
  spdNFeDataSet.SetCampo ("cPais_E14=1058")                                                             'Código do Pais do Destinatário (Tabela do BACEN)
  spdNFeDataSet.SetCampo ("xPais_E15=BRASIL")                                                           'Nome do País do Destinatário
  spdNFeDataSet.SetCampo ("fone_E16=445555555")                                                         'Fone do Destinatário
  spdNFeDataSet.SetCampo ("INDIEDEST_E16A=1")
  spdNFeDataSet.SetCampo ("IE_E17=9044016688")                                                          'Inscrição Estadual do Destinatário
  
  
  spdNFeDataSet.SetCampo ("CNPJ_ZD02=08187168000160")
  spdNFeDataSet.SetCampo ("xContato_ZD04=Nome do Contato")
  spdNFeDataSet.SetCampo ("email_ZD05=email@empresaficticia.com.br")
  spdNFeDataSet.SetCampo ("fone_ZD06=41999999999")
  
  
  
End Sub
' Informações Referentes aos ITens da NFe
Private Sub DadosDoItem(ByVal aNumItem As String)
  spdNFeDataSet.SetCampo ("nItem_H02=1")
  spdNFeDataSet.SetCampo ("vTotTrib_M02=0")
  spdNFeDataSet.SetCampo ("cProd_I02=0999")                   'Código do PRoduto ou Serviço
  spdNFeDataSet.SetCampo ("cEAN_I03=7896806500263")           'EAN do Produto
  spdNFeDataSet.SetCampo ("xProd_I04=MELAO")                  'Descrição do PRoduto
  spdNFeDataSet.SetCampo ("NCM_I05=11081200")                 'Código do NCM - informar de acordo com o Tabela oficial do NCM
  spdNFeDataSet.SetCampo ("CFOP_I08=6102")                    'CFOP incidente neste Item da NF
  spdNFeDataSet.SetCampo ("uCom_I09=CX")                      'Unidade de Medida do Item
  spdNFeDataSet.SetCampo ("qCom_I10=1.0000")                  'Quantidade Comercializada do Item
  spdNFeDataSet.SetCampo ("vUnCom_I10a=0.0100")               'Valor Comercializado do Item
  spdNFeDataSet.SetCampo ("vProd_I11=0.01")                   'Valor Total Bruto do Item
  spdNFeDataSet.SetCampo ("cEANTrib_I12=7898106035513")       'EAN Tributável do Item
  spdNFeDataSet.SetCampo ("uTrib_I13=CX")                     'Unidade de Medida Tributável do Item
  spdNFeDataSet.SetCampo ("qTrib_I14=1.0000")                 'Quantidade Tributável do Item
  spdNFeDataSet.SetCampo ("vUnTrib_I14a=0.0100")              'Valor Tributável do Item
  
  spdNFeDataSet.SetCampo ("indEscala_I05d=S")                 'Indicador de Escala Relevante (S ou N)
  spdNFeDataSet.SetCampo ("indTot_I17b=1")

  spdNFeDataSet.SetCampo ("CEST_I05c=0123456")                'CEST - Código Especificador de Substituição Tributária (7 digitos)
  spdNFeDataSet.SetCampo ("CST_N12=00")
 
  '''''''''' Aqui começam os Impostos Incidentes sobre o Item''''''''''''
  'Verificar Manual - os campos variam de acordo com Tipo de Tributação''
  
  'ICMS
  spdNFeDataSet.SetCampo ("orig_N11=0")                       'Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  spdNFeDataSet.SetCampo ("CST_N12=00")                       'Tipo da Tributação do ICMS (00 - Integralmente) ver outras formas no Manual
  spdNFeDataSet.SetCampo ("modBC_N13=0")                      'Modalidade de determinação da Base de Cálculo - ver Manual
  spdNFeDataSet.SetCampo ("vBC_N15=0.01")                     'Valor da Base de Cálculo do ICMS
  spdNFeDataSet.SetCampo ("pICMS_N16=0.01")                   'Alíquota do ICMS em Percentual
  spdNFeDataSet.SetCampo ("vICMS_N17=0.01")                   'Valor do ICMS em Reais
  spdNFeDataSet.SetCampo ("vBCST_N21=0.01")

  ' PIS
  spdNFeDataSet.SetCampo ("CST_Q06=01")                       'Codigo de Situacao Tributária - ver opções no Manual
  spdNFeDataSet.SetCampo ("CST_S06=01")                       'Código de Situacao Tributária - ver opções no Manual
  spdNFeDataSet.SetCampo ("vBC_Q07=0.01")                     'Valor da Base de Cálculo do PIS
  spdNFeDataSet.SetCampo ("pPIS_Q08=1.65")                    'Alíquota em Percencual do PIS
  spdNFeDataSet.SetCampo ("vPIS_Q09=0.00")                    'Valor do PIS em Reais
  
  ' COFINS
  spdNFeDataSet.SetCampo ("vBC_S07=0.01")                     'Valor da Base de Cálculo do COFINS
  spdNFeDataSet.SetCampo ("pCOFINS_S08=7.60")                 'Alíquota do COFINS em Percentual
  spdNFeDataSet.SetCampo ("vCOFINS_S11=0.01")                 'Valor do COFINS em Reais
End Sub

' Grupo I80. Rastreabilidade de produto

Private Sub Rastro()
        spdNFeDataSet.IncluirParte ("I80")
           spdNFeDataSet.SetCampo ("nLote_I81=123")           'Número do Lote do produto
           spdNFeDataSet.SetCampo ("qLote_I82=5565.000")      'Quantidade de produto no Lote
           spdNFeDataSet.SetCampo ("dFab_I83=2018-04-30")     'Data de fabricação/Produção - Formato: ?AAAA-MM-DD?
           spdNFeDataSet.SetCampo ("dVal_I84=2018-04-30")     'Data de validade - Formato: ?AAAA-MM-DD?
        spdNFeDataSet.SalvarParte ("I80")
End Sub

' Grupo K. Detalhamento Específico de Medicamento e de matérias-primas farmacêuticas
' Para VersaoManual = 5.0a

Private Sub Medicamento()
    spdNFeDataSet.IncluirParte ("K")
     spdNFeDataSet.SetCampo ("vPMC_K06=0.00")                   'Preço máximo consumidor
    spdNFeDataSet.SalvarParte ("K")
End Sub

' Grupo LA. Item / Combustível

Private Sub Combustivel()
    spdNFeDataSet.IncluirParte ("LA")
      spdNFeDataSet.SetCampo ("cProdANP_LA02=0123456789")       'Código de produto da ANP - Utilizar a codificação de produtos do Sistema de Informações de Movimentação de Produtos - SIMP
      spdNFeDataSet.SetCampo ("descANP_LA03=DESCRICAO")         'Descrição do produto conforme ANP - Utilizar a descrição de produtos do Sistema de Informações de Movimentação de Produtos - SIMP
      spdNFeDataSet.SetCampo ("pGLP_LA03a=000")                 'Percentual do GLP derivado do petróleo no produto GLP (cProdANP=210203001)
      spdNFeDataSet.SetCampo ("pGNn_LA03b=0.00")                'Percentual de Gás Natural Nacional ? GLGNn para o produto GLP (cProdANP=210203001)
      spdNFeDataSet.SetCampo ("pGNi_LA03c=0.00")                'Percentual de Gás Natural Importado ? GLGNi para o produto GLP (cProdANP=210203001)
      spdNFeDataSet.SetCampo ("vPart_LA03d=9.99")               'Valor de partida (cProdANP=210203001)

      spdNFeDataSet.SetCampo ("UFCons_LA06=PR")                 'Sigla da UF de consumo
      spdNFeDataSet.SetCampo ("qBCProd_LA08=999")               'BC da CIDE - Informar a BC da CIDE em quantidade
      sdNFeDataSet.SetCampo ("vAliqProd_LA09=99.99")             'Valor da alíquota da CIDE - Informar o valor da alíquota em reais da CIDE
      spdNFeDataSet.SetCampo ("vCIDE_LA10=09.99")               'Valor da CIDE - Informar o valor da CIDE
      spdNFeDataSet.SetCampo ("nBico_LA12=1")                   'Número de identificação do bico utilizado no abastecimento
      spdNFeDataSet.SetCampo ("nTanque_LA14=1")                 'Número de identificação do tanque ao qual o bico está interligado
      spdNFeDataSet.SetCampo ("vEnclni_LA15=55.55")             'Informar o valor da leitura do contador (Encerrante) no Início do abastecimento.
      spdNFeDataSet.SetCampo ("vEncFin_LA16=105.55")            'Informar o valor da leitura do contador (Encerrante) no Término do abastecimento.
    spdNFeDataSet.SalvarParte ("LA")
End Sub

Private Sub ProdutosIndustrializados()
  spdNFeDataSet.IncluirParte ("O")
    spdNFeDataSet.SetCampo ("cEnq_O06=00.0")                    'Código de Enquadramento Legal do IPI
  spdNFeDataSet.SalvarParte ("O")
End Sub

' Totalizadores da NFe
Private Sub DadosTotalizadores()
  spdNFeDataSet.SetCampo ("vBC_W03=0.01")                       'Base de Cálculo do ICMS
  spdNFeDataSet.SetCampo ("vICMS_W04=0.01")                     'Valor Total do ICMS
  
    spdNFeDataSet.SetCampo ("vFCP_W04h=0.00")
    spdNFeDataSet.SetCampo ("vFCPST_W06a=0.00")
    spdNFeDataSet.SetCampo ("vFCPSTRet_W06b=0.00")
    spdNFeDataSet.SetCampo ("vFCPUFDest_W04c=0.00")             'Valor total do ICMS relativo Fundo de Combate à Pobreza (FCP) da UF de destino
    spdNFeDataSet.SetCampo ("vICMSUFDest_W04e=0.00")            'Valor total do ICMS de partilha para a UF do destinatario
    spdNFeDataSet.SetCampo ("vICMSUFRemet_W04g=0.00")           'Valor total do ICMS de partilha para a UF do destinatario
    spdNFeDataSet.SetCampo ("vIPIDevol_W12a=0.00")              'Valor Total do IPI devolvido

  spdNFeDataSet.SetCampo ("vBCST_W05=0.00")                     'Base de Cálculo do ICMS Subst. Tributária
  spdNFeDataSet.SetCampo ("vICMSDeson_W04a=0.00")
  spdNFeDataSet.SetCampo ("vST_W06=0.00")                       'Valor Total do ICMS Subst. Tributária
  spdNFeDataSet.SetCampo ("vProd_W07=0.01")                     'Valor Total de Produtos
  spdNFeDataSet.SetCampo ("vFrete_W08=0.00")                    'Valor Total do Frete
  spdNFeDataSet.SetCampo ("vSeg_W09=0.00")                      'Valor Total do Seguro
  spdNFeDataSet.SetCampo ("vDesc_W10=0.00")                     'Valor Total de Desconto
  spdNFeDataSet.SetCampo ("vII_W11=0.00")                       'Valor Total do II
  spdNFeDataSet.SetCampo ("vIPI_W12=0.00")                      'Valor Total do IPI
  spdNFeDataSet.SetCampo ("vPIS_W13=0.00")                      'Valor Toal do PIS
  spdNFeDataSet.SetCampo ("vCOFINS_W14=0.01")                   'Valor Total do COFINS
  spdNFeDataSet.SetCampo ("vOutro_W15=0.00")                    'OUtras Despesas Acessórias
  spdNFeDataSet.SetCampo ("vNF_W16=0.01")                       'Valor Total da NFe - Versão Trial só aceita NF até R$ 1.00
  spdNFeDataSet.SetCampo ("vTotTrib_W16a=0.00")
End Sub

' Dados do Transporte da NFe
Private Sub DadosTransporte()
  spdNFeDataSet.IncluirParte ("X")
    spdNFeDataSet.SetCampo ("modFrete_X02=0")                   'Modalidade de Frete - Novas modalidades no Manual 4.0 - ver manual
  spdNFeDataSet.SalvarParte ("X")
End Sub

Private Sub InformacoesPagamento()
    If (spdNFe.VersaoManual = "6.0") Then
        spdNFeDataSet.IncluirParte ("YA")
          spdNFeDataSet.SetCampo ("tPag_YA02=14")               'Forma de Pagamento
          spdNFeDataSet.SetCampo ("vPag_YA03=0.01")             'Valor do Pagamento
          spdNFeDataSet.SetCampo ("tpIntegra_YA04a=2")          'Tipo de integração do processo de pagto
          spdNFeDataSet.SetCampo ("vTroco_YA09=0.00")
        spdNFeDataSet.SalvarParte ("YA")
    End If
End Sub

'Dados De Cobrança
Private Sub DadosCobranca()
  Dim a As String
  Dim mes As String
  Dim i As Integer
  mes = 9
  
  'Dados da Fatura
  spdNFeDataSet.SetCampo ("nFat_Y03=0.01")            ' Número da Fatura
  spdNFeDataSet.SetCampo ("vOrig_Y04=0.01")           ' Valor Original da Fatura
  spdNFeDataSet.SetCampo ("vDesc_Y05=0.00")           ' Valor do Desconto
  spdNFeDataSet.SetCampo ("vLiq_Y06=0.01")            ' Valor Líquido da Fatura

   '1 Fatura  - 3 Duplicatas
   'For i = 1 To 3
      spdNFeDataSet.IncluirCobranca
     'mes = mes + 1

      ' Duplicatas
      spdNFeDataSet.SetCampo ("nDup_Y08=001")                    ' Número da Duplicata
      spdNFeDataSet.SetCampo ("dVenc_Y09=" & Format(Now(), "yyyy-mm-dd")) 'Data de Vencimento da Duplicata
      spdNFeDataSet.SetCampo ("vDup_Y10=0.01")                 ' Valor da Duplicata
      spdNFeDataSet.SalvarCobranca ' Grava a Duplicata em questão.
   'Next i  ' Incrementa Parcela p/ cada Mês
End Sub

' Dados Adicionais da NFe - Observações
Private Sub DadosAdicionais()
Dim a As String
  spdNFeDataSet.SetCampo ("infAdFisco_Z02=OBSERVACAO TESTE DA DANFE - FISCO")     ' Interesse do Fisco
  spdNFeDataSet.SetCampo ("infCpl_Z03=OBSERVACAO TESTE DA DANFE - CONTRIBUINTE")  ' Interesse da Empresa
End Sub

Private Sub btnXMLDataset_Click()
    Dim i As Integer
    Dim a As String

    'Seta o Layout de conversão dos dados em memória no DataSet para XML de acordo com a
    'Versão setada no componente NFe
    
    ' verifica versao do manual e define a versao do esquema
    
    spdNFeDataSet.VersaoEsquema = "pl_009g"
    spdNFeDataSet.DicionarioXML = spdNFe.DiretorioTemplates + "\Conversor\NFeDataSets.xml"
    spdNFe.VersaoManual = "6.0"
    
    Serie = InputBox("Digite a Serie da nota:", App.Title, "")
    Numero = InputBox("Digite o Numero da nota:", App.Title, "")
    Codigo = InputBox("Digite o Codigo da nota:", App.Title, "")

    
    spdNFeDataSet.Incluir 'Inicia NFe
    DadosDoNFe 'Passa dados referentes a NFe
    DadosDoEmitente 'Passa Dados do emitente
    DadosDoDestinatario ' Passa Dados do Destinatario
    
  ' Para simular mais de um item, descomente o loop abaixo e substitua o índice de DadosDoItem com i
   

    spdNFeDataSet.IncluirItem
    DadosDoItem (i)
    spdNFeDataSet.SalvarItem
   
     DadosCobranca                   'Dados da Cobranca
     DadosTotalizadores              'Dados dos Totalizadores da NFe
     DadosTransporte                 'Dados de Transporte
     DadosAdicionais                 'Dados Adicionais (observacoes)
    'Medicamento                     'Em caso de medicamento, descomentar
    'Combustivel                     'Em caso de Combustivel, descomentar
    'ProdutosIndustrializados        'Em caso de IPI, descomentar
    'Rastro
     InformacoesPagamento            'Informacoes de Pagamento

    spdNFeDataSet.Salvar             'Salva a NFe e Acumula o XML dela na propriedade LoteNFe
    
    mmXml.Text = spdNFeDataSet.LoteNFe
    
    'Copia a Chave da NFe para utilizar em outros métodos
    edtIdNfe.Text = Mid$(mmXml.Text, InStrRev(mmXml.Text, "infNFe Id=") + 14, 44)
End Sub

Private Sub btnXMLEnvioDest_Click()
  Dim ChaveNFe As String
  Dim LogEnv As String
  Dim LogConsRec As String
  
  'Captura as configurações que estão nos TextBox e Seta para o Componente - Isso pode ser Feito Direto na Inicialização
  spdNFe.EmailRemetente = edEmailRemetente.Text
  spdNFe.EmailServidor = edServSmtp.Text
  spdNFe.EmailUsuario = edUsuarioEmail.Text
  spdNFe.EmailSenha = edSenhaEmail.Text
  spdNFe.ArquivoServidoresHom = edArqServHomol.Text
  
  'Dados para Envio do Emial para o Destinatario
  spdNFe.EmailDestinatario = InputBox("Digite o Email do Destinatário", App.Title, "")
  spdNFe.EmailAssunto = InputBox("Digite o Assunto ", App.Title, "")
  spdNFe.EmailMensagem = InputBox("Digite a Mensagem", App.Title, "")
  
  'Dados necessários para Gerar o XML e Enviar
  ChaveNFe = InputBox("Chave de Acesso da NFE", App.Title, "")
  LogEnv = InputBox("Arquivo LOG de Envio", App.Title, "")
  LogConsRec = InputBox("Arquivo LOG de Consulta de Recibo", App.Title, "")
  
  mmXmlRetorno.Text = spdNFe.EnviarNotaDestinatario(ChaveNFe, LogEnv, LogConsRec)

End Sub

Private Sub Command1_Click()
  Form_Initialize
  MsgBox "Configurações carregadas"
End Sub

Private Sub Command2_Click()
    Dim Handle As Integer
    Dim Nota As String
    Dim retorno As String
    
    cdTX2.ShowOpen
    If cdTX2.FileName <> "" Then
        Open cdTX2.FileName For Input As #1
            Nota = Input(FileLen(Trim(cdTX2.FileName)), #1)
            mmXml.Text = Trim(Form1.spdNFe.ConverterLoteParaXML(Nota, lkTx2, "pl_009g"))
        Close #1
    End If
End Sub

Private Sub btnCancelarNFe_Click()
    Form2.Show
    Form2.edtChaveCancelamentoNFe.Text = edtIdNfe.Text
    Form2.edtProtocoloCancNFe.Text = edtProtocolo.Text

End Sub

Private Sub btnDistribuicaoDFe_Click()
    frmDFe.Show
End Sub

Private Sub Command3_Click()
    write_ini "NFE", "NomeCertificado", ListCertificado.Text
    Shell "C:\Windows\System32\notepad.exe " + App.Path + "\nfeConfig.ini", vbNormalFocus
End Sub

Private Sub Command4_Click()
    ret = ShellExecute(Me.hwnd, "OPen", "https://atendimento.tecnospeed.com.br/hc/pt-br/articles/4404184018839-Guia-Geral-Componente-eSocial", "", "", 1)
End Sub

Private Sub Form_Load()
  Form1.Caption = "NFe - TecnoSpeed - " + spdNFe.Versao
End Sub


Private Sub Form_Initialize()
  'Instancia o Objeto responsável pela interação com servidores da Receita'
  Set spdNFe = New NFeX.spdNFeX
  Set spdNFeDataSet = New NFeDataSetX.spdNFeDataSetX

  spdNFe.ConfigurarSoftwareHouse "08187168000160", "000000000000000000000"      ' Metodo para configurar a SoftwareHouse
  
  Dim i As Integer
  Dim vetor As Variant

  spdNFe.NomeCertificado = ListCertificado.Text
  write_ini "NFE", "NomeCertificado", ListCertificado.Text

  'Utiliza Método do Componente para Listar Certificados instalado no SO
  vetor = Split(spdNFe.ListarCertificados("|"), "|")
  ListCertificado.Clear
  For i = LBound(vetor) To UBound(vetor)
          ListCertificado.AddItem vetor(i)
  Next
  
  'Arquivo INI a ser manipulado com parametrizações
  spdNFe.ConfigINI = App.Path + "\nfeConfig.ini"
  ArqIni = App.Path + "\nfeConfig.ini"
  spdNFe.DiretorioLog = App.Path + "\Log"
  spdNFe.DiretorioLogErro = App.Path + "\LogErro"
  spdNFe.DiretorioXmlDestinatario = App.Path + "\XmlDestinatario"

  'Esse metodo faz com que o Componente carregue as configuracoes do INI para as devidas propriedades
  spdNFe.LoadConfig (ArqIni)
  
  cdlgModelo.DialogTitle = "Abrir"
  cdlgModelo.Filter = "(*.rtm)|*.rtm"

  'Mostra nos TextBox da tela os valores que foram carregados nas propriedades do componente
  If edtCNPJ.Text = "" Then
     edtCNPJ.Text = spdNFe.CNPJ
  Else
     spdNFe.CNPJ = edtCNPJ.Text
  End If
  
  If cbUf.Text = "" Then
    cbUf.Text = spdNFe.UF
  Else
     spdNFe.UF = cbUf.Text
  End If
  
  If spdNFe.Ambiente = akHomologacao Then
    rdHomologacao.Value = True
  Else
    rdProducao.Value = True
  End If

  
  If spdNFe.NomeCertificado <> "" Then
     ListCertificado.List(0) = spdNFe.NomeCertificado
     ListCertificado.ListIndex = 0
  End If
  
End Sub

Private Sub rdHomologacao_Click()
    spdNFe.Ambiente = akHomologacao
    write_ini "NFE", "Ambiente", "2"
End Sub

Private Sub rdProducao_Click()
    spdNFe.Ambiente = akProducao
    write_ini "NFE", "Ambiente", "1"
End Sub

