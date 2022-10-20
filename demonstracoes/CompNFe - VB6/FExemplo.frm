VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Exemplo de utilização do Componente NFe-X"
   ClientHeight    =   9015
   ClientLeft      =   3660
   ClientTop       =   1815
   ClientWidth     =   11985
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
   ScaleHeight     =   9015
   ScaleWidth      =   11985
   Begin MSComDlg.CommonDialog cdlgXmlNFe 
      Left            =   9120
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox memoRetorno 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   53
      Top             =   5520
      Width           =   11775
   End
   Begin VB.CommandButton Command2 
      Caption         =   "2a - Gerar Nota (via TX2)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   52
      Top             =   3840
      Width           =   2175
   End
   Begin VB.CommandButton btnSalvarConfig 
      Caption         =   "Salvar Configurações"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   46
      Top             =   2880
      Width           =   2175
   End
   Begin VB.Frame Frame5 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   31
      Top             =   4680
      Width           =   11775
      Begin VB.CommandButton btnEnvXmlCCe 
         Caption         =   "envXMLCCE"
         Height          =   375
         Left            =   10080
         TabIndex        =   64
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton btnEnviarCCe 
         Caption         =   "Enviar CCE"
         Height          =   375
         Left            =   8760
         TabIndex        =   63
         Top             =   240
         Width           =   1095
      End
      Begin VB.CommandButton btnImportarXmlNFe 
         Caption         =   "Importar Xml NF-e"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   7200
         TabIndex        =   60
         Top             =   240
         Width           =   1335
      End
      Begin VB.TextBox edIDNfe 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
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
         Left            =   3600
         TabIndex        =   34
         Top             =   360
         Width           =   3375
      End
      Begin VB.TextBox edProtocolo 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
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
         Left            =   1800
         Locked          =   -1  'True
         TabIndex        =   33
         Top             =   360
         Width           =   1695
      End
      Begin VB.TextBox edRecibo 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
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
         Locked          =   -1  'True
         TabIndex        =   32
         Top             =   360
         Width           =   1575
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
         Left            =   3600
         TabIndex        =   37
         Top             =   120
         Width           =   2295
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
         Left            =   1800
         TabIndex        =   36
         Top             =   120
         Width           =   1335
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
         TabIndex        =   35
         Top             =   120
         Width           =   1335
      End
   End
   Begin VB.Frame Frame2 
      BorderStyle     =   0  'None
      Caption         =   " Operações "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   120
      TabIndex        =   5
      Top             =   2640
      Width           =   11775
      Begin VB.CommandButton btnDistribuicaoDFe 
         Caption         =   "Distribuição DFe"
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
         Left            =   7200
         TabIndex        =   61
         Top             =   120
         Width           =   1455
      End
      Begin VB.CheckBox chkCompactado 
         Caption         =   "Check1"
         Enabled         =   0   'False
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
         Left            =   4200
         TabIndex        =   59
         Top             =   1680
         Width           =   255
      End
      Begin VB.CheckBox chkSincrono 
         Caption         =   "Check1"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   4200
         TabIndex        =   58
         Top             =   1320
         Width           =   255
      End
      Begin VB.CommandButton btnCancelarNFe 
         Caption         =   "8 - Cancelar NFe"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4800
         TabIndex        =   54
         Top             =   1560
         Width           =   2175
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Load Configs"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   51
         Top             =   240
         Width           =   2175
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
         Height          =   375
         Left            =   9600
         MaskColor       =   &H80000000&
         Style           =   1  'Graphical
         TabIndex        =   50
         Top             =   1560
         Width           =   2175
      End
      Begin MSComDlg.CommonDialog cdlgModelo 
         Left            =   10560
         Top             =   240
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.CommandButton btnOpenModeloRtm 
         Caption         =   ". . ."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   11400
         TabIndex        =   26
         Top             =   120
         Width           =   375
      End
      Begin VB.TextBox edtModeloRtm 
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
         Left            =   9000
         TabIndex        =   25
         Top             =   240
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
         Height          =   375
         Left            =   9600
         TabIndex        =   48
         Top             =   1200
         Width           =   2175
      End
      Begin VB.CommandButton btnXMLDataset 
         Caption         =   "2b - Gerar Nota (via Dataset)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   0
         TabIndex        =   47
         Top             =   1560
         Width           =   2175
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
         Height          =   375
         Left            =   9600
         TabIndex        =   24
         Top             =   840
         Width           =   2175
      End
      Begin VB.CommandButton btnEditarDanfe 
         Caption         =   "Alterar Modelo Danfe"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   7200
         TabIndex        =   23
         Top             =   1560
         Width           =   2175
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
         Height          =   375
         Left            =   7200
         TabIndex        =   22
         Top             =   1200
         Width           =   2175
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
         Height          =   375
         Left            =   7200
         TabIndex        =   21
         Top             =   840
         Width           =   2175
      End
      Begin VB.CommandButton btnInutilizarNF 
         Caption         =   "7 - Inutilizar NFe"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4800
         TabIndex        =   20
         Top             =   1200
         Width           =   2175
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
         Height          =   375
         Left            =   4800
         TabIndex        =   19
         Top             =   840
         Width           =   2175
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
         Height          =   375
         Left            =   4800
         TabIndex        =   18
         Top             =   480
         Width           =   2175
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
         Height          =   375
         Left            =   4800
         TabIndex        =   17
         Top             =   120
         Width           =   2175
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
         Height          =   375
         Left            =   2400
         TabIndex        =   16
         Top             =   840
         Width           =   2175
      End
      Begin VB.CommandButton btnStatusServico 
         Caption         =   "1 - Status do Serviço"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   0
         TabIndex        =   13
         Top             =   840
         Width           =   2175
      End
      Begin VB.Frame Frame6 
         Caption         =   "Configuração"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   0
         TabIndex        =   57
         Top             =   0
         Width           =   4695
      End
      Begin VB.Label Label13 
         Caption         =   "Enviar Compactado"
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
         Left            =   2400
         TabIndex        =   56
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Modo Síncrono"
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
         Left            =   2400
         TabIndex        =   55
         Top             =   1320
         Width           =   1455
      End
      Begin VB.Label lblModelo 
         Caption         =   "Modelo RTM"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   9000
         TabIndex        =   49
         Top             =   0
         Width           =   1335
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Configuração do NFe-X"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2535
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   11775
      Begin VB.ComboBox cbVersao 
         BackColor       =   &H0000FFFF&
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
         ItemData        =   "FExemplo.frx":0000
         Left            =   120
         List            =   "FExemplo.frx":0007
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   480
         Width           =   1335
      End
      Begin MSComDlg.CommonDialog cdTX2 
         Left            =   7680
         Top             =   120
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.Frame Frame4 
         Caption         =   "Emitente"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1575
         Left            =   120
         TabIndex        =   4
         Top             =   840
         Width           =   6015
         Begin VB.TextBox edSenhaEmail 
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
            IMEMode         =   3  'DISABLE
            Left            =   4800
            PasswordChar    =   "*"
            TabIndex        =   44
            Top             =   1080
            Width           =   1095
         End
         Begin VB.TextBox edUsuarioEmail 
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
            Left            =   2400
            TabIndex        =   42
            Top             =   1080
            Width           =   2295
         End
         Begin VB.TextBox edEmailRemetente 
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
            TabIndex        =   40
            Top             =   1080
            Width           =   2175
         End
         Begin VB.TextBox edServSmtp 
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
            Left            =   2880
            TabIndex        =   39
            Top             =   480
            Width           =   3015
         End
         Begin VB.TextBox edUF 
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
            Top             =   480
            Width           =   735
         End
         Begin VB.TextBox edCNPJ 
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
            Left            =   960
            TabIndex        =   27
            Top             =   480
            Width           =   1815
         End
         Begin VB.Label Label17 
            Caption         =   "Senha"
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
            Left            =   4800
            TabIndex        =   45
            Top             =   840
            Width           =   1095
         End
         Begin VB.Label Label16 
            Caption         =   "Usuário"
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
            Left            =   2400
            TabIndex        =   43
            Top             =   840
            Width           =   1575
         End
         Begin VB.Label Label15 
            Caption         =   "E-mail Remetente"
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
            TabIndex        =   41
            Top             =   840
            Width           =   1455
         End
         Begin VB.Label Label14 
            Caption         =   "Servidor (smtp) E-Mail"
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
            Left            =   2880
            TabIndex        =   38
            Top             =   240
            Width           =   1815
         End
         Begin VB.Label Label3 
            Caption         =   "Estado"
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
            Top             =   240
            Width           =   615
         End
         Begin VB.Label Label7 
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
            Left            =   960
            TabIndex        =   29
            Top             =   240
            Width           =   1695
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Arquivos e Diretórios"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1575
         Left            =   6240
         TabIndex        =   6
         Top             =   840
         Width           =   5415
         Begin VB.TextBox Text2 
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
            Left            =   3720
            Locked          =   -1  'True
            TabIndex        =   15
            Text            =   "Log\"
            Top             =   1080
            Width           =   1575
         End
         Begin VB.TextBox edArqServHomol 
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
            TabIndex        =   12
            Top             =   480
            Width           =   5175
         End
         Begin VB.TextBox edTemplate 
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
            Left            =   1920
            Locked          =   -1  'True
            TabIndex        =   9
            Text            =   "Templates\"
            Top             =   1080
            Width           =   1695
         End
         Begin VB.TextBox edEsquema 
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
            Locked          =   -1  'True
            TabIndex        =   7
            Text            =   "Esquemas\"
            Top             =   1080
            Width           =   1695
         End
         Begin VB.Label Label9 
            Caption         =   "Diretório de Log"
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
            Left            =   3720
            TabIndex        =   14
            Top             =   840
            Width           =   1215
         End
         Begin VB.Label Label6 
            Caption         =   "Arquivo de Servidores de Homologação"
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
            TabIndex        =   11
            Top             =   240
            Width           =   3255
         End
         Begin VB.Label Label5 
            Caption         =   "Diretório de Templates"
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
            Left            =   1920
            TabIndex        =   10
            Top             =   840
            Width           =   2535
         End
         Begin VB.Label Label4 
            Caption         =   "Diretório de Esquemas"
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
            TabIndex        =   8
            Top             =   840
            Width           =   2535
         End
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
         ItemData        =   "FExemplo.frx":0010
         Left            =   1560
         List            =   "FExemplo.frx":0012
         Style           =   2  'Dropdown List
         TabIndex        =   3
         Top             =   480
         Width           =   11295
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Versão Manual"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   255
         Left            =   0
         TabIndex        =   62
         Top             =   240
         Width           =   1455
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
         Left            =   1560
         TabIndex        =   2
         Top             =   240
         Width           =   1215
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
    
'Função para ler arquivos INI usando API window
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal padrao As String, ByVal variavel As String, ByVal tam As Long, ByVal arquivo As String) As Long
'Função para gravar arquivos INI usando API windows
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal valor As Any, ByVal arquivo As String) As Long

Private Sub SaveConfigNfeINI()

End Sub

Sub SetConfigNFe()
   
  
    spdNFe.ArquivoServidoresHom = edArqServHomol.Text 'Seta Caminho p/ arquivo de configuração dos Servidores de Homologação
    spdNFe.DiretorioEsquemas = edEsquema.Text 'Seta Diretório esquema para o Componente'
    spdNFe.DiretorioTemplates = edTemplate.Text 'Seta Diretório de Templates para o Componente'
        
    spdNFe.NomeCertificado = ListCertificado.Text 'Seta Nome do Certificado Selecionado'
    spdNFe.UF = edUF.Text 'Seta o Estado ao componente'
    'spdNFe.Ambiente = akHomologacao 'Seta Ambiente de Homologacao'
    spdNFe.DiretorioLog = "Log\" 'Seta Diretório onde será gravado Logs do Componente

    spdNFe.VersaoManual = cbVersao.Text
    
    
    MsgBox "Configurações carregadas"

  
End Sub

Private Sub btnCancelarNF_Click()
  'Dispara Método que solicita Cancelamento da NFe e aguarda retorno.
  memoRetorno.Text = spdNFe.CancelarNF(edIDNfe.Text, edProtocolo.Text, "Emitida com data Data Incorreta")
  
End Sub

Private Sub btnAssinarNF_Click()
 If (memoRetorno = "") Then
    MsgBox ("Primeiro gere a nota!")
  Else
    'Assina o XML das NFs a serem enviadas
    memoRetorno.Text = Trim(spdNFe.AssinarNota(memoRetorno.Text))
    'Guarda na Vari?vel global a NFe assinada para ser utilizada posteriormente
    NFeAssinada = memoRetorno.Text
  End If
End Sub

Private Sub btnConsNFe_Click()
  'Chama método que consulta a Nota Fiscal no servidor da receita
  memoRetorno.Text = spdNFe.ConsultarNF(edIDNfe)
  'Copia Numero do Protocolo para ser utilizado posteriormente
  edProtocolo.Text = Mid$(memoRetorno.Text, InStrRev(memoRetorno.Text, "<nProt>") + 7, 15)
  
End Sub

Private Sub btnConsReciboNFe_Click()
  'Chama método que consulta no servidor da receita, o Recibo capturado ao enviar NF
  memoRetorno.Text = spdNFe.ConsultarRecibo(edRecibo.Text)
  
End Sub

Private Sub btnEditarDanfe_Click()
  Dim arquivo, fso, arqtxt, texto
  Set fso = CreateObject("Scripting.FileSystemObject")
  arquivo = spdNFe.DiretorioXmlDestinatario + edIDNfe.Text + "-NFe.xml"
  Set arqtxt = fso.OpenTextFile(arquivo)
  texto = arqtxt.ReadAll
   memoRetorno.Text = spdNFe.EditarModeloDanfe("0001", texto, edtModeloRtm.Text)
End Sub

Private Sub btnEnviarCCe_Click()
memoRetorno.Text = spdNFe.EnviarCCe("41211108187168000160558030000000281000001573", "correcao de teste tecnospeed 2022", "2022-06-14T17:56:00", "41", "1", "1", "-03:00")
End Sub

Private Sub btnEnviarDanfeEmail_Click()
'Seta Configurações de Email para a Componente NFe
  spdNFe.DiretorioXmlDestinatario = "C:\CompNFe - VB6_Gilberto\XmlDestinatario"

  spdNFe.EmailServidor = "smtp.gmail.com"
  spdNFe.EmailPorta = "587"
  spdNFe.EmailAutenticacao = True
  spdNFe.EmailRemetente = "testeemailatlanta280422@gmail.com"
  spdNFe.EmailUsuario = "testeemailatlanta280422@gmail.com"
  spdNFe.EmailSenha = "VXP4457atl22"
  spdNFe.EmailDestinatario = "gabriel.cunha@tecnospeed.com.br"
  spdNFe.EmailAssunto = "teste atlanta"
  spdNFe.EmailMensagem = "teste atlanta sistemas"
  'O parametro Numero do Lote deverá ser controlado pelo usuário. Foi Utilizado 000001 somente para demonstração
  
  spdNFe.SaveConfig ("C:\nfeConfig.ini")
  
  arquivo = App.Path + "\XmlDestinatario\" + edIDNfe.Text + "-NF"
  Dim arquivo, fso, arqtxt, textoe.xml" 'Carrega o arquivo gerado na pasta XML Destinatario
  

  Set fso = CreateObject("Scripting.FileSystemObject")   'que possui Numero de Protocolo e Numero de Autorização
  Set arqtxt = fso.OpenTextFile(arquivo)
  texto = arqtxt.ReadAll
  memoRetorno.Text = spdNFe.EnviarEmailDanfe("0000001", texto, edtModeloRtm.Text)
   
End Sub

Private Sub btnEnviarNF_Click()
Dim FlagCompactado, FlagSincrono
If (chkSincrono.Value = 1) Then FlagSincrono = True Else FlagSincrono = False
If (chkCompactado.Value = 1) Then FlagCompactado = True Else FlagCompactado = False

If (spdNFe.VersaoManual = "5.0a") Or (spdNFe.VersaoManual = "4.0") Then
  memoRetorno.Text = spdNFe.EnviarNF("00001", Trim(memoRetorno.Text), FlagCompactado)
  'Copia o Numero do Recibo do XML Enviado para o edRecibo
  edRecibo.Text = Mid$(memoRetorno.Text, InStrRev(memoRetorno.Text, "<nRec>") + 6, 15)
Else
 If (FlagSincrono = True) Then
    memoRetorno.Text = spdNFe.EnviarNFSincrono("00001", Trim(memoRetorno.Text), FlagCompactado)
 Else
  memoRetorno.Text = spdNFe.EnviarNF("00001", Trim(memoRetorno.Text), FlagCompactado)
  'Copia o Numero do Recibo do XML Enviado para o edRecibo
  edRecibo.Text = Mid$(memoRetorno.Text, InStrRev(memoRetorno.Text, "<nRec>") + 6, 15)
 End If
End If
  'Chama método que enviar XML Assinado para o servidor da receita e aguarda resultado da operação
'  memoRetorno.Text = spdNFe.EnviarNF("000001", Trim(memoRetorno.Text), False)
  

  
End Sub


Private Sub btnEnvXmlCCe_Click()
spdNFe.EnviarCCeDestinatario ("\41210208187168000160558040895959941000000014")
spdNFe.EmailQtdeTentativas = 1



End Sub

Private Sub btnEventosNFe_Click()
  Form2.Show
  'spdNFe.LoadConfig
  'memoRetorno.Text = spdNFe.EnviarManifestacaoDestinatario(1, "43120513634729000161553320000099671046403274", "00169604000166", "teste teste teste", "2012-05-24T00:00:00", 1, "-03:00")
End Sub

Private Sub btnImprimirDanfe_Click()
  Dim arquivo, fso, arqtxt, texto
  Set fso = CreateObject("Scripting.FileSystemObject")
  arquivo = spdNFe.DiretorioXmlDestinatario + edIDNfe.Text + "-NFe.xml" 'Carrega o arquivo gerado na pasta XML Destinatario
                                                                   'que possui Numero de Protocolo e Numero de Autorização
  Set arqtxt = fso.OpenTextFile(arquivo)
  texto = arqtxt.ReadAll
  memoRetorno.Text = spdNFe.ImprimirDanfe("0000001", texto, edtModeloRtm.Text, "")
End Sub

Private Sub btnInutilizarNF_Click()
  'Método para Inutilização de uma faixa de Númoros de spdNFe.
  'Obs: Utilizado alguns campos fixos para demonstração como (Modelo = 55 / Serie = 0 / NFInicial = 1 / NFFinal = 1 / Justificativa )
  memoRetorno.Text = spdNFe.InutilizarNF("", "10", edCNPJ.Text, "55", "0", "1", "1", "Demonstracao de Inutilizacao NFe")
     
End Sub

Private Sub btnOpenModeloRtm_Click()

    cdlgModelo.ShowOpen
    If cdlgModelo.FileName <> "" Then
        edtModeloRtm.Text = cdlgModelo.FileName
    End If
    
End Sub

Private Sub btnSalvarConfig_Click()
   spdNFe.VersaoManual = cbVersao.Text
   spdNFe.CNPJ = edCNPJ.Text
   spdNFe.NomeCertificado = ListCertificado.Text
   spdNFe.UF = edUF.Text
   spdNFe.ArquivoServidoresHom = edArqServHomol
   spdNFe.DiretorioEsquemas = edEsquema.Text
   spdNFe.DiretorioTemplates = edTemplate.Text
   spdNFe.DiretorioLog = Text2.Text
   spdNFe.ModeloRetrato = edtModeloRtm.Text
   spdNFe.EmailServidor = edServSmtp.Text
   spdNFe.EmailRemetente = edEmailRemetente.Text
   spdNFe.EmailUsuario = edUsuarioEmail.Text
   spdNFe.EmailSenha = edSenhaEmail.Text
   spdNFe.SaveConfig
   
End Sub

Private Sub btnStatusServico_Click()
  memoRetorno.Text = spdNFe.StatusDoServico 'Método que retorna o status do servidor da Receita
  btnStatusServico.Enabled = False
     
End Sub

Private Sub btnVisualizarDanfe_Click()

  Dim arquivo, fso, arqtxt, texto
  Set fso = CreateObject("Scripting.FileSystemObject")
  arquivo = spdNFe.DiretorioXmlDestinatario + edIDNfe.Text + "-NFe.xml" 'Carrega o arquivo gerado na pasta XML Destinatario
                                                                   'que possui Numero de Protocolo e Numero de Autorização
  Set arqtxt = fso.OpenTextFile(arquivo)
  texto = arqtxt.ReadAll
  memoRetorno.Text = spdNFe.VisualizarDanfe("0000001", texto, edtModeloRtm.Text)
End Sub

'INformações sobre a NFe
Private Sub DadosDoNFe()
  spdNFeDataSet.SetCampo ("CNPJ_ZD02=28419557000180")
  spdNFeDataSet.SetCampo ("xContato_ZD04=Usuario Teste")
  spdNFeDataSet.SetCampo ("email_ZD05=email@email.com")
  spdNFeDataSet.SetCampo ("fone_ZD06=4434222112")
  spdNFeDataSet.SetCampo ("Id_A03=0")                          'Calcula Automático. Essa linha é desnecessária
  spdNFeDataSet.SetCampo ("cUF_B02=41")                       'Codigo da UF para o estado de Parana'
  spdNFeDataSet.SetCampo ("cNF_B03=04640327")                'Código Interno do Sistema que está integrando com a NFe
  spdNFeDataSet.SetCampo ("natOp_B04=VENDA MERC.ADQ.REC.TERC") 'Descrição da(s) CFOP(s) envolvidas nessa NFe
  If (spdNFe.VersaoManual = "5.0a") Then
    spdNFeDataSet.SetCampo ("indPag_B05=0")
  End If
  spdNFeDataSet.SetCampo ("mod_B06=55")                       'Código do Modelo de Documento Fiscal
  spdNFeDataSet.SetCampo ("serie_B07=121")                      'S érie do Documento
  spdNFeDataSet.SetCampo ("CRT_C21=3")
  
  'Rnd(100) ->Randômico até 1000
  spdNFeDataSet.SetCampo ("nNF_B08=" & Int((100000 * Rnd * 3.54 * Rnd) + 4)) 'Número da Nota Fiscal
  If (spdNFe.VersaoManual = "6.0") Then
  ' versao manual 6.0
    spdNFeDataSet.SetCampo ("dhEmi_B09=2021-05-04T09:34:01-03:00")
    'Data de Emissão da Nota Fiscal
    spdNFeDataSet.SetCampo ("dhSaiEnt_B10=2021-05-04T09:34:01-03:00")
  ElseIf (spdNFe.VersaoManual = "5.0a") Then
    ' versao manual 5.0a
    spdNFeDataSet.SetCampo ("dhEmi_B09=2018-05-16T15:34:01-03:00")
    'Data de Emissão da Nota Fiscal
    spdNFeDataSet.SetCampo ("dhSaiEnt_B10=2018-05-16T15:34:01-03:00")
  Else
    ' versao manual 4.0
    spdNFeDataSet.SetCampo ("dEmi_B09=2018-05-16")             'Data de Emissão da Nota Fiscal
    spdNFeDataSet.SetCampo ("dSaiEnt_B10=2018-05-16")
  End If

  spdNFeDataSet.SetCampo ("tpNF_B11=1")                      'Tipo de Documento Fiscal (0-Entrada, 1-Saída)
  spdNFeDataSet.SetCampo ("IDDEST_B11A=2")
  spdNFeDataSet.SetCampo ("cMunFG_B12=4115200")              'Código do Município, conforme Tabela do IBGE
  spdNFeDataSet.SetCampo ("tpImp_B21=1")                     'Tipo de Impressão da Danfe (1- Retrato , 2-Paisagem)
  spdNFeDataSet.SetCampo ("tpEmis_B22=1")                    'Forma de Emissão da NFe (1-Normal, 2-Contigencia)
               'Calcula Automatico - Linha desnecessária já que o componente calcula o Dígito Verificador automaticamente e coloca no devido campo
  spdNFeDataSet.SetCampo ("tpAmb_B24=2")                     'Identificação do Ambiente (1- Producao, 2-Homologação)
  spdNFeDataSet.SetCampo ("finNFe_B25=1")                    'Finalidade da NFe (1-Normal, 2-Complementar, 3-de Ajuste)
  spdNFeDataSet.SetCampo ("INDFINAL_B25A=0")
  spdNFeDataSet.SetCampo ("IndPres_B25B=0")
  spdNFeDataSet.SetCampo ("procEmi_B26=0")                   'Identificador do Processo de emissão (0-Emissão da Nfe com Aplicativo do Contribuinte). Ver outras opções no manual da Receita.
  spdNFeDataSet.SetCampo ("verProc_B27=5")                 'Versão do Aplicativo Emissor
  If (spdNFe.VersaoManual = "6.0") Then
    spdNFeDataSet.SetCampo ("versao_A02=4.00")                  'Versão do Layout que está utilizando 2.0
    spdNFeDataSet.SetCampo ("CRT_C21=3")                     'Campo novo da Versão 4.0 que classifica a empresa emitente - Ver Manual de integração
  ElseIf (spdNFe.VersaoManual = "5.0a") Then
    spdNFeDataSet.SetCampo ("versao_A02=3.10")                  'Versão do Layout que está utilizando 2.0
    spdNFeDataSet.SetCampo ("CRT_C21=3")                     'Campo novo da Versão 4.0 que classifica a empresa emitente - Ver Manual de integração
  Else
    spdNFeDataSet.SetCampo ("versao_A02=1.10")                  'Versão do Layout que está utilizando
  End If
End Sub

' Informações do Emitente da NFe
Private Sub DadosDoEmitente()

  spdNFeDataSet.SetCampo ("CNPJ_C02=" & edCNPJ.Text)                ' CNPJ do Emitente
  spdNFeDataSet.SetCampo ("xNome_C03=ACME LTDA")              ' Razao Social ou Nome do Emitente
  spdNFeDataSet.SetCampo ("xFant_C04=ACME")                   ' Nome Fantasia do Emitente
  spdNFeDataSet.SetCampo ("xLgr_C06=RUA TAL")                 ' Logradouro do Emitente
  spdNFeDataSet.SetCampo ("nro_C07=123")                      ' Numero do Logradouro do Emitente
  spdNFeDataSet.SetCampo ("xBairro_C09=CENTRO")               ' Bairro do Emitente
  spdNFeDataSet.SetCampo ("cMun_C10=4115200")                 ' Código da Cidade do Emitente (Tabela do IBGE)
  spdNFeDataSet.SetCampo ("xMun_C11=Maringa")                ' Nome da Cidade do Emitente
  spdNFeDataSet.SetCampo ("UF_C12=" & edUF.Text)                   ' SIGLA do Estado do Emitente (Tabela do IBGE)
  spdNFeDataSet.SetCampo ("CEP_C13=87500000")                 ' Cep do Emitente
  spdNFeDataSet.SetCampo ("cPais_C14=1058")                   ' Código do País do Emitente (Tabela BACEN)
  spdNFeDataSet.SetCampo ("xPais_C15=BRASIL")                 ' Nome do País do Emitente
  spdNFeDataSet.SetCampo ("fone_C16=4432222222")              ' Fone do Emitente
  spdNFeDataSet.SetCampo ("IE_C17=9044016688")              ' Inscrição Estadual do Emitente
  spdNFeDataSet.SetCampo ("IEST_C18=")            ' Inscrição Estadual do Substituto Tributário Emitente
End Sub

' Informações do Destinatário da NFe
Private Sub DadosDoDestinatario()

  spdNFeDataSet.SetCampo ("CNPJ_E02=" & edCNPJ.Text)          ' CNPJ do Destinatário
  spdNFeDataSet.SetCampo ("xNome_E04=NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL")       ' Razao social ou Nome do Destinatário
  spdNFeDataSet.SetCampo ("xLgr_E06=RUA DO CENTRO")           ' Logradouro do Destinatario
  spdNFeDataSet.SetCampo ("nro_E07=897")                      ' Numero do Logradouro do Destinatario
  spdNFeDataSet.SetCampo ("xBairro_E09=CENTRO")               ' Bairro do Destinatario
  spdNFeDataSet.SetCampo ("cMun_E10=4115200")                 ' Código do Município do Destinatário (Tabela IBGE)
  spdNFeDataSet.SetCampo ("xMun_E11=Maringa")                ' Nome da Cidade do Destinatário
  spdNFeDataSet.SetCampo ("UF_E12=PR")                        ' Sigla do Estado do Destinatário
  spdNFeDataSet.SetCampo ("CEP_E13=87500000")                 ' Cep do Destinatário
  spdNFeDataSet.SetCampo ("cPais_E14=1058")                   ' Código do Pais do Destinatário (Tabela do BACEN)
  spdNFeDataSet.SetCampo ("xPais_E15=BRASIL")                 ' Nome do País do Destinatário
  spdNFeDataSet.SetCampo ("fone_E16=445555555")               ' Fone do Destinatário
  spdNFeDataSet.SetCampo ("INDIEDEST_E16A=1")
  spdNFeDataSet.SetCampo ("IE_E17=9044016688")              ' Inscrição Estadual do Destinatário
End Sub
' Informações Referentes aos ITens da NFe
Private Sub DadosDoItem(ByVal aNumItem As String)
                                                                 
  spdNFeDataSet.SetCampo ("nItem_H02=" & aNumItem)            ' Número do Item da NFe (1 até 990)'Dados do Produto Vend Subido
  spdNFeDataSet.SetCampo ("vTotTrib_M02=0")
  spdNFeDataSet.SetCampo ("cProd_I02=0999")                   'Código do PRoduto ou Serviço
  spdNFeDataSet.SetCampo ("cEAN_I03=7896806500263")           ' EAN do Produto
  spdNFeDataSet.SetCampo ("xProd_I04=MELAO")                  ' Descrição do PRoduto
  spdNFeDataSet.SetCampo ("cBarra_I03a=000")
  spdNFeDataSet.SetCampo ("NCM_I05=11081200")                 ' Código do NCM - informar de acordo com o Tabela oficial do NCM
  spdNFeDataSet.SetCampo ("CFOP_I08=6102")                    ' CFOP incidente neste Item da NF
  spdNFeDataSet.SetCampo ("uCom_I09=CX")                      ' Unidade de Medida do Item
  spdNFeDataSet.SetCampo ("qCom_I10=1.0000")                       ' Quantidade Comercializada do Item
  spdNFeDataSet.SetCampo ("vUnCom_I10a=0.0100")               ' Valor Comercializado do Item
  spdNFeDataSet.SetCampo ("vProd_I11=0.01")                   ' Valor Total Bruto do Item
  spdNFeDataSet.SetCampo ("cEANTrib_I12=7898106035513")       ' EAN Tributável do Item
  spdNFeDataSet.SetCampo ("uTrib_I13=CX")                     ' Unidade de Medida Tributável do Item
  spdNFeDataSet.SetCampo ("qTrib_I14=1.0000")                      ' Quantidade Tributável do Item
  spdNFeDataSet.SetCampo ("vUnTrib_I14a=0.0100")              ' Valor Tributável do Item
  
  If (spdNFe.VersaoManual = "6.0") Then
    spdNFeDataSet.SetCampo ("indEscala_I05d=S")                 ' Indicador de Escala Relevante (S ou N)
   'spdNFeDataSet.SetCampo ("CNPJFab_I05e=00000000000000")      ' CNPJ do Fabricante da Mercadoria, obrigatório para produto em escala não relevante
   'spdNFeDataSet.SetCampo ("cBenef_I05f=000")                     ' Código de Benefício Fiscal utilizado pela UF, aplicado ao item
    spdNFeDataSet.SetCampo ("indTot_I17b=1")
  ElseIf (spdNFe.VersaoManual = "5.0a") Then
    spdNFeDataSet.SetCampo ("indTot_I17b=1")
  End If

  'spdNFeDataSet.SetCampo ("xPed_I60=4509916408")
  'spdNFeDataSet.SetCampo ("nItemPed_I61=000001")
  spdNFeDataSet.SetCampo ("CEST_I05c=0123456")                ' CEST - Código Especificador de Substituição Tributária (7 digitos)
  spdNFeDataSet.SetCampo ("CST_N12=00")
 
  '''''''''' Aqui começam os Impostos Incidentes sobre o Item''''''''''''
  'Verificar Manual - os campos variam de acordo com Tipo de Tributação''
  
  'ICMS
  spdNFeDataSet.SetCampo ("orig_N11=0")                       ' Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  spdNFeDataSet.SetCampo ("CST_N12=00")                       ' Tipo da Tributação do ICMS (00 - Integralmente) ver outras formas no Manual
  spdNFeDataSet.SetCampo ("modBC_N13=0")                      ' Modalidade de determinação da Base de Cálculo - ver Manual
  spdNFeDataSet.SetCampo ("vBC_N15=0.01")                     ' Valor da Base de Cálculo do ICMS
  spdNFeDataSet.SetCampo ("pICMS_N16=0.01")                   ' Alíquota do ICMS em Percentual
  spdNFeDataSet.SetCampo ("vICMS_N17=0.01")                   ' Valor do ICMS em Reais

  If (spdNFe.VersaoManual = "6.0") Then
    'spdNFeDataSet.SetCampo ("vBCFCP_N17a=99.99")              ' Informar o valor da Base de Cálculo do FCP
    'spdNFeDataSet.SetCampo ("pFCP_N17b=00.0")                 ' Percentual relativo ao Fundo de Combate à Pobreza (FCP).
    'spdNFeDataSet.SetCampo ("vFCP_N17c=00.00")                ' Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    'spdNFeDataSet.SetCampo ("vBCFCPST_N23a=99.99")            ' Informar o valor da Base de Cálculo do FCP retido por Substituição Tributária
    'spdNFeDataSet.SetCampo ("pFCPST_N23b=00.0")               ' Percentual relativo ao Fundo de Combate à Pobreza (FCP) retido por substituição tributária..
    'spdNFeDataSet.SetCampo ("vFCPST_N23d=00.0")               ' Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) retido por substituição tributária.
    'spdNFeDataSet.SetCampo ("pST_N26a=20.0")                  ' Alíquota suportada pelo Consumidor Final
    'spdNFeDataSet.SetCampo ("vBCFCPSTRet_N27a=00.0")          ' Informar o valor da Base de Cálculo do FCP retido anteriormente por ST
    'spdNFeDataSet.SetCampo ("pFCPSTRet_N27b=00.0")            ' Percentual do FCP retido anteriormente por Substituição Tributária
    'spdNFeDataSet.SetCampo ("vFCPSTRet_N27d=00.0")            ' Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) retido por substituição tributária
    'spdNFeDataSet.SetCampo ("vICMSDeson_N28a=0.00")           ' Informar apenas em casos de desoneração
    'spdNFeDataSet.SetCampo ("pCredSN_N29=00.0")               ' Alíquota aplicável de cálculo do crédito (SIMPLES NACIONAL).
    'spdNFeDataSet.SetCampo ("vCredICMSSN_N30=00.0")            ' Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (SIMPLES NACIONAL)
    spdNFeDataSet.SetCampo ("vBCST_N21=0.01")
  Else
    spdNFeDataSet.SetCampo ("vICMSDeson_N27A=0.00")
  End If

  ' PIS
  spdNFeDataSet.SetCampo ("CST_Q06=01")                       ' Codigo de Situacao Tributária - ver opções no Manual
  spdNFeDataSet.SetCampo ("CST_S06=01")                       ' Código de Situacao Tributária - ver opções no Manual
  spdNFeDataSet.SetCampo ("vBC_Q07=0.01")                     ' Valor da Base de Cálculo do PIS
  spdNFeDataSet.SetCampo ("pPIS_Q08=1.65")                    ' Alíquota em Percencual do PIS
  spdNFeDataSet.SetCampo ("vPIS_Q09=0.00")                    ' Valor do PIS em Reais
  ' COFINS
  
  spdNFeDataSet.SetCampo ("vBC_S07=0.01")                     ' Valor da Base de Cálculo do COFINS
  spdNFeDataSet.SetCampo ("pCOFINS_S08=7.60")                 ' Alíquota do COFINS em Percentual
  spdNFeDataSet.SetCampo ("vCOFINS_S11=0.01")                 ' Valor do COFINS em Reais
End Sub

' Grupo I80. Rastreabilidade de produto

Private Sub Rastro()
    If (spdNFe.VersaoManual = "6.0") Then
        spdNFeDataSet.IncluirParte ("I80")
        spdNFeDataSet.SetCampo ("nLote_I81=123")              ' Número do Lote do produto
        spdNFeDataSet.SetCampo ("qLote_I82=5565.000")         ' Quantidade de produto no Lote
        spdNFeDataSet.SetCampo ("dFab_I83=2018-04-30")        ' Data de fabricação/Produção - Formato: ?AAAA-MM-DD?
        spdNFeDataSet.SetCampo ("dVal_I84=2018-04-30")        ' Data de validade - Formato: ?AAAA-MM-DD?
'        spdNFeDataSet.SetCampo ("cAgreg_I85=0000")           ' Código de Agregação
        spdNFeDataSet.SalvarParte ("I80")
    End If
End Sub

' Grupo K. Detalhamento Específico de Medicamento e de matérias-primas farmacêuticas
' Para VersaoManual = 5.0a

Private Sub Medicamento()
    spdNFeDataSet.IncluirParte ("K")
      If (spdNFe.VersaoManual = "5.0a") Then
        spdNFeDataSet.SetCampo ("cProdANVISA_K01a=12345678912")       ' Código de Produto da ANVISA - Utilizar o número do registro ANVISA
        spdNFeDataSet.SetCampo ("nLote_K02=12345678901234567890")     ' Número do Lote de medicamentos ou de matérias-primas farmacêuticas
        spdNFeDataSet.SetCampo ("qLote_K03=100")                      ' Quantidade de produto no Lote de medicamentos ou de matérias-primas farmacêuticas
        spdNFeDataSet.SetCampo ("dFab_K04=2018-04-30")                ' Data de fabricação - Formato: ?AAAA-MM-DD?
        spdNFeDataSet.SetCampo ("dVal_K05=2018-04-30")                ' Data de fabricação - Formato: ?AAAA-MM-DD?
      End If
    spdNFeDataSet.SetCampo ("vPMC_K06=0.00")                          ' Preço máximo consumidor
    spdNFeDataSet.SalvarParte ("K")
End Sub

' Grupo LA. Item / Combustível

Private Sub Combustivel()
    spdNFeDataSet.IncluirParte ("LA")
      spdNFeDataSet.SetCampo ("cProdANP_LA02=0123456789")           ' Código de produto da ANP - Utilizar a codificação de produtos do Sistema de Informações de Movimentação de Produtos - SIMP
      If (spdNFe.VersaoManual = "5.0a") Then
        spdNFeDataSet.SetCampo ("pMixGN_LA03=000")                  ' Percentual de Gás Natural para o produto GLP (cProdANP=210203001)
      End If
      If (spdNFe.VersaoManual = "6.0") Then
        spdNFeDataSet.SetCampo ("descANP_LA03=DESCRICAO")           ' Descrição do produto conforme ANP - Utilizar a descrição de produtos do Sistema de Informações de Movimentação de Produtos - SIMP
        spdNFeDataSet.SetCampo ("pGLP_LA03a=000")                   ' Percentual do GLP derivado do petróleo no produto GLP (cProdANP=210203001)
        spdNFeDataSet.SetCampo ("pGNn_LA03b=0.00")                  ' Percentual de Gás Natural Nacional ? GLGNn para o produto GLP (cProdANP=210203001)
        spdNFeDataSet.SetCampo ("pGNi_LA03c=0.00")                  ' Percentual de Gás Natural Importado ? GLGNi para o produto GLP (cProdANP=210203001)
        spdNFeDataSet.SetCampo ("vPart_LA03d=9.99")                 ' Valor de partida (cProdANP=210203001)
      End If
      spdNFeDataSet.SetCampo ("UFCons_LA06=PR")       ' Sigla da UF de consumo
      spdNFeDataSet.SetCampo ("qBCProd_LA08=999")     ' BC da CIDE - Informar a BC da CIDE em quantidade
      sdNFeDataSet.SetCampo ("vAliqProd_LA09=99.99")  ' Valor da alíquota da CIDE - Informar o valor da alíquota em reais da CIDE
      spdNFeDataSet.SetCampo ("vCIDE_LA10=09.99")     ' Valor da CIDE - Informar o valor da CIDE
      spdNFeDataSet.SetCampo ("nBico_LA12=1")         ' Número de identificação do bico utilizado no abastecimento
      spdNFeDataSet.SetCampo ("nTanque_LA14=1")       ' Número de identificação do tanque ao qual o bico está interligado
      spdNFeDataSet.SetCampo ("vEnclni_LA15=55.55")   ' Informar o valor da leitura do contador (Encerrante) no Início do abastecimento.
      spdNFeDataSet.SetCampo ("vEncFin_LA16=105.55")  ' Informar o valor da leitura do contador (Encerrante) no Término do abastecimento.
    spdNFeDataSet.SalvarParte ("LA")
End Sub

Private Sub ProdutosIndustrializados()
  spdNFeDataSet.IncluirParte ("O")
    spdNFeDataSet.SetCampo ("cEnq_O06=00.0")          ' Código de Enquadramento Legal do IPI
  spdNFeDataSet.SalvarParte ("O")
End Sub

' Totalizadores da NFe
Private Sub DadosTotalizadores()
  spdNFeDataSet.SetCampo ("vBC_W03=0.05")                    ' Base de Cálculo do ICMS
  spdNFeDataSet.SetCampo ("vICMS_W04=0.05")                   ' Valor Total do ICMS
  
  If (spdNFe.VersaoManual = "6.0") Then
        ' se a versao do manual é 6.0, adiciona vFCPST - fundo de combate 'a pobreza
        spdNFeDataSet.SetCampo ("vFCP_W04h=0.00")
        spdNFeDataSet.SetCampo ("vFCPST_W06a=0.00")
        spdNFeDataSet.SetCampo ("vFCPSTRet_W06b=0.00")
        spdNFeDataSet.SetCampo ("vFCPUFDest_W04c=0.00") ' Valor total do ICMS relativo Fundo de Combate à Pobreza (FCP) da UF de destino
        spdNFeDataSet.SetCampo ("vICMSUFDest_W04e=0.00") ' Valor total do ICMS de partilha para a UF do destinatario
        spdNFeDataSet.SetCampo ("vICMSUFRemet_W04g=0.00") ' Valor total do ICMS de partilha para a UF do destinatario
        spdNFeDataSet.SetCampo ("vIPIDevol_W12a=0.00")              ' Valor Total do IPI devolvido
  End If

  spdNFeDataSet.SetCampo ("vBCST_W05=0.00")                   ' Base de Cálculo do ICMS Subst. Tributária
  spdNFeDataSet.SetCampo ("vICMSDeson_W04a=0.00")
  spdNFeDataSet.SetCampo ("vST_W06=0.00")                     ' Valor Total do ICMS Subst. Tributária
  spdNFeDataSet.SetCampo ("vProd_W07=0.05")                   ' Valor Total de Produtos
  spdNFeDataSet.SetCampo ("vFrete_W08=0.00")                  ' Valor Total do Frete
  spdNFeDataSet.SetCampo ("vSeg_W09=0.00")                    ' Valor Total do Seguro
  spdNFeDataSet.SetCampo ("vDesc_W10=0.00")                   ' Valor Total de Desconto
  spdNFeDataSet.SetCampo ("vII_W11=0.00")                     ' Valor Total do II
  spdNFeDataSet.SetCampo ("vIPI_W12=0.00")                    ' Valor Total do IPI
  spdNFeDataSet.SetCampo ("vPIS_W13=0.00")                    ' Valor Toal do PIS
  spdNFeDataSet.SetCampo ("vCOFINS_W14=0.05")                 ' Valor Total do COFINS
  spdNFeDataSet.SetCampo ("vOutro_W15=0.00")                  ' OUtras Despesas Acessórias
  spdNFeDataSet.SetCampo ("vNF_W16=0.01")                     ' Valor Total da NFe - Versão Trial só aceita NF até R$ 1.00
  spdNFeDataSet.SetCampo ("vTotTrib_W16a=0.00")
End Sub

' Dados do Transporte da NFe
Private Sub DadosTransporte()
  spdNFeDataSet.IncluirParte ("X")
    spdNFeDataSet.SetCampo ("modFrete_X02=0")                   ' Modalidade de Frete - Novas modalidades no Manual 4.0 - ver manual
  spdNFeDataSet.SalvarParte ("X")
End Sub

Private Sub InformacoesPagamento()
    If (spdNFe.VersaoManual = "6.0") Then
        spdNFeDataSet.IncluirParte ("YA")
        spdNFeDataSet.SetCampo ("tPag_YA02=14")                     ' Forma de Pagamento
        spdNFeDataSet.SetCampo ("vPag_YA03=0.01")                   ' Valor do Pagamento
        spdNFeDataSet.SetCampo ("tpIntegra_YA04a=1")                ' Tipo de integração do processo de pagto
        spdNFeDataSet.SetCampo ("vTroco_YA09=0.00")
        spdNFeDataSet.SalvarParte ("YA")
    End If
End Sub

' Dados De Cobrança
Private Sub DadosCobranca()
  Dim a As String
  Dim mes As String
  Dim i As Integer
  mes = 9
  
  ' Dados da Fatura '
  spdNFeDataSet.SetCampo ("nFat_Y03=0.01")            ' Número da Fatura
  spdNFeDataSet.SetCampo ("vOrig_Y04=1000.00")           ' Valor Original da Fatura
  spdNFeDataSet.SetCampo ("vDesc_Y05=100.00")           ' Valor do Desconto
  spdNFeDataSet.SetCampo ("vLiq_Y06=900.00")            ' Valor Líquido da Fatura

   '1 Fatura  - 3 Duplicatas
   For i = 1 To 3
      spdNFeDataSet.IncluirCobranca
      mes = mes + 1

      ' Duplicatas
      spdNFeDataSet.SetCampo ("nDup_Y08=00" & Int(i))            ' Número da Duplicata
      spdNFeDataSet.SetCampo ("dVenc_Y09=2021-" & mes & "-25") ' Data de Vencimento da Duplicata
      spdNFeDataSet.SetCampo ("vDup_Y10=300.00")               ' Valor da Duplicata
      spdNFeDataSet.SalvarCobranca ' Grava a Duplicata em questão.
   Next i  ' Incrementa Parcela p/ cada Mês
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
    spdNFe.VersaoManual = cbVersao.Text
    
    ' verifica versao do manual e define a versao do esquema
    If (spdNFe.VersaoManual = "5.0a") Then
       spdNFeDataSet.VersaoEsquema = "pl_008a"
       
       spdNFeDataSet.DicionarioXML = "C:\Program Files\TecnoSpeed\NFe\arquivos\Conversor\NFeDataSets.xml"
    ElseIf (spdNFe.VersaoManual = "6.0") Then
       spdNFeDataSet.VersaoEsquema = "pl_009g"
       spdNFeDataSet.DicionarioXML = spdNFe.DiretorioTemplates + "\Conversor\NFeDataSets.xml"
    Else
       spdNFeDataSet.VersaoEsquema = "pl_006j"
       spdNFeDataSet.DicionarioXML = spdNFe.DiretorioTemplates + "\Conversor\NFeDataSets.xml"
    End If
    
    spdNFeDataSet.Incluir 'Inicia NFe
    DadosDoNFe 'Passa dados referentes a NFe
    DadosDoEmitente 'Passa Dados do emitente
    DadosDoDestinatario ' Passa Dados do Destinatario
    
   ' Para simular mais de um item, descomente o loop abaixo e substitua o índice de DadosDoItem com i
   
   For i = 1 To 5 'Faz um Loop para inserir 3 Itens (produtos)
        spdNFeDataSet.IncluirItem
        DadosDoItem (i)
        spdNFeDataSet.SalvarItem
   Next i
   
    DadosCobranca 'Dados da Cobranca
    DadosTotalizadores 'Dados dos Totalizadores da NFe
    DadosTransporte 'Dados de Transporte
    DadosAdicionais 'Dados Adicionais (observacoes)
    Medicamento        ' Em caso de medicamento, descomentar
    'Combustivel        ' Em caso de Combustivel, descomentar
    'ProdutosIndustrializados       ' Em caso de IPI, descomentar
    Rastro
    InformacoesPagamento ' Informacoes de Pagamento
    spdNFeDataSet.Salvar 'Salva a NFe e Acumula o XML dela na propriedade LoteNFe
        memoRetorno.Text = spdNFeDataSet.LoteNFe
    
    'Copia a Chave da NFe para utilizar em outros métodos
    edIDNfe.Text = Mid$(memoRetorno.Text, InStrRev(memoRetorno.Text, "infNFe Id=") + 14, 44)
End Sub

Private Sub btnXMLEnvioDest_Click()
  Dim ChaveNFe As String
  Dim LogEnv As String
  Dim LogConsRec As String
  
  spdNFe.DiretorioXmlDestinatario = "C:\CompNFe - VB6_Gilberto\XmlDestinatario"
  spdNFe.DiretorioEsquemas = "C:\Program Files\TecnoSpeed\NFe\arquivos\Esquemas\vm60"
  spdNFe.DiretorioTemplates = "C:\Program Files\TecnoSpeed\NFe\arquivos\templates\vm60"
  spdNFe.EmailQtdeTentativas = 1
  
  
  spdNFe.EmailServidor = "smtp.gmail.com"
  spdNFe.EmailPorta = "587"
  spdNFe.EmailAutenticacao = True
  spdNFe.EmailRemetente = "testeemailatlanta280422@gmail.com"
  spdNFe.EmailUsuario = "testeemailatlanta280422@gmail.com"
  spdNFe.EmailSenha = "VXP4457atl22"
  spdNFe.EmailDestinatario = "gabriel.cunha@tecnospeed.com.br"
  spdNFe.EmailAssunto = "teste atlanta"
  spdNFe.EmailMensagem = "teste atlanta sistemas"
  
  
  'Captura as configurações que estão nos TextBox e Seta para o Componente - Isso pode ser Feito Direto na Inicialização
  'spdNFe.EmailRemetente = edEmailRemetente.Text
  'spdNFe.EmailServidor = edServSmtp.Text
 ' spdNFe.EmailUsuario = edUsuarioEmail.Text
  'spdNFe.EmailSenha = edSenhaEmail.Text
  'spdNFe.ArquivoServidoresHom = edArqServHomol.Text
  
  'Dados para Envio do Emial para o Destinatario
  'spdNFe.EmailDestinatario = InputBox("Digite o Email do Destinatário", App.Title, "")
  'spdNFe.EmailAssunto = InputBox("Digite o Assunto ", App.Title, "")
  'spdNFe.EmailMensagem = InputBox("Digite a Mensagem", App.Title, "")
  'Dados necessários para Gerar o XML e Enviar
  ChaveNFe = InputBox("Chave de Acesso da NFE", App.Title, "")
 'LogEnv = InputBox("Arquivo LOG de Envio", App.Title, "")
'LogConsRec = InputBox("Arquivo LOG de Consulta de Recibo", App.Title, "")
  
  memoRetorno.Text = spdNFe.EnviarNotaDestinatario(ChaveNFe, "", "")
 

End Sub

Private Sub chkSincronoTrue_Click()
    If (spdNFe.VersaoManual <> "6.0") Then
        MsgBox ("Envio síncrono disponível apenas a partir da spdNFe.VersaoManual >= 6.0")
        chkSincronoTrue.Value = False
    End If
End Sub

Private Sub Command1_Click()
  Form_Initialize
End Sub

Private Sub Command2_Click()
    Dim Handle As Integer
    Dim Nota As String
    Dim retorno As String
    
    cdTX2.ShowOpen
    If cdTX2.FileName <> "" Then
        Open cdTX2.FileName For Input As #1
            Nota = Input(FileLen(cdTX2.FileName), #1)
        If (spdNFe.VersaoManual = "6.0") Then
            memoRetorno.Text = Trim(Form1.spdNFe.ConverterLoteParaXML(Nota, lkTx2, "pl_009"))
        Else
            memoRetorno.Text = Trim(Form1.spdNFe.ConverterLoteParaXML(Nota, lkTx2, "pl_008a"))
        End If
        Close #1
    End If
End Sub

Private Sub btnImportarXmlNFe_Click()
    'Exemplo de como carregar um xml de NF-e, converter para dataset e percorrer pelas informações,'
    'servindo assim como base para criar rotina de importação, bastando adaptar conforme a necessidade'
    
    Dim pathXml, arquivo, fso, arqtxt, texto As String
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
    memoRetorno.Text = texto
    
    If (spdNFe.VersaoManual = "5.0a") Then
        nfe4OuSuperior = False
        spdNFe.VersaoManual = "5.0a"
        spdNFeDataSet.VersaoEsquema = "pl_008i2"
        spdNFeDataSet.DicionarioXML = "C:\Program Files\TecnoSpeed\NFe\arquivos\templates\vm50a\Conversor\NFeDataSets.xml"
    Else
        nfe4OuSuperior = True
        spdNFe.VersaoManual = "6.0"
        spdNFeDataSet.VersaoEsquema = "pl_009g"
        spdNFeDataSet.DicionarioXML = "C:\Program Files\TecnoSpeed\NFe\arquivos\templates\vm60\Conversor\NFeDataSets.xml"
    End If
    
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
    
    memoRetorno.Text = arquivo
    
End Sub

Private Sub btnCancelarNFe_Click()
    Form2.Show
    Form2.edtChaveCancelamentoNFe.Text = edIDNfe.Text
    Form2.edtProtocoloCancNFe.Text = edProtocolo.Text
    Form2.SSTab1(0).Tab = 3
End Sub

Private Sub btnDistribuicaoDFe_Click()
    frmDFe.Show
End Sub

Private Sub Command3_Click()

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
   spdNFe.ConfigurarSoftwareHouse "11313847000142", "2ptvRQWYKe8CPQI1f2xsF5ba7JKzgVqM2Xr3nwJy"
  Dim i As Integer
  Dim vetor As Variant

  'Utiliza Método do Componente para Listar Certificados instalado no SO
  vetor = Split(spdNFe.ListarCertificados("|"), "|")
  ListCertificado.Clear
  For i = LBound(vetor) To UBound(vetor)
          ListCertificado.AddItem vetor(i)
  Next
  
  'Arquivo INI a ser manipulado com parametrizações
  spdNFe.ConfigINI = App.Path + "\nfeConfig.ini"
  ArqIni = App.Path + "\nfeConfig.ini"
  spdNFe.LoadConfig (ArqIni) 'Esse metodo faz com que o Componente carregue as configuracoes do INI para as devidas propriedades
  'spdNFe.Ambiente = akHomologacao
  'spdNFe.HttpLibs = "wininet, sbb"

  
  cdlgModelo.DialogTitle = "Abrir"
  cdlgModelo.Filter = "(*.rtm)|*.rtm"
  
  'Mostra nos TextBox da tela os valores que foram carregados nas propriedades do componente
  edCNPJ.Text = spdNFe.CNPJ
  edUF.Text = spdNFe.UF
  'edEmailRemetente.Text = spdNFe.EmailRemetente
  'edServSmtp.Text = spdNFe.EmailServidor
 ' edUsuarioEmail.Text = spdNFe.EmailUsuario
 ' edSenhaEmail.Text = spdNFe.EmailSenha
 ' edArqServHomol.Text = spdNFe.ArquivoServidoresHom
  
  If spdNFe.NomeCertificado <> "" Then
     ListCertificado.List(0) = spdNFe.NomeCertificado
     ListCertificado.ListIndex = 0
  End If
  
  If spdNFe.VersaoManual <> "" Then
     cbVersao.List(0) = spdNFe.VersaoManual
     cbVersao.ListIndex = 0
  End If
  
  edtModeloRtm.Text = spdNFe.ModeloRetrato
  edEsquema.Text = spdNFe.DiretorioEsquemas
  edTemplate.Text = spdNFe.DiretorioTemplates
End Sub




