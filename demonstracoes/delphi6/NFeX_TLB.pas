unit NFeX_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 16/07/2018 17:32:48 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Windows\SysWow64\NFeX.dll (1)
// LIBID: {D7C99CD2-F300-4EF5-A416-0302B9DD1F0C}
// LCID: 0
// Helpfile: 
// HelpString: NFeX Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Errors:
//   Error creating palette bitmap of (TspdCustomNFe) : Server C:\Windows\SysWow64\NFeX.dll contains no icons
//   Error creating palette bitmap of (TspdNFeSCAN) : Server C:\Windows\SysWow64\NFeX.dll contains no icons
//   Error creating palette bitmap of (TspdNFeDPECX) : Server C:\Windows\SysWow64\NFeX.dll contains no icons
//   Error creating palette bitmap of (TspdNFeX) : Server C:\Windows\SysWow64\NFeX.dll contains no icons
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
//{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  NFeXMajorVersion = 1;
  NFeXMinorVersion = 0;

  LIBID_NFeX: TGUID = '{D7C99CD2-F300-4EF5-A416-0302B9DD1F0C}';

  IID_IspdCustomNFe: TGUID = '{5899CB42-1105-48E8-9F33-FD9A5765FC2B}';
  CLASS_spdCustomNFe: TGUID = '{88716594-B22D-4544-BB86-CB9E6520E1F7}';
  IID_IspdNFeX: TGUID = '{7B83E236-4BC7-457D-92E7-B9CD2A5E6815}';
  IID_IspdNFeSCAN: TGUID = '{7B1CF680-E7AA-4BEC-99E5-C776E43386CA}';
  CLASS_spdNFeSCAN: TGUID = '{EF5F9D8B-C80D-4ACC-8B04-A5A00BA26C6D}';
  IID_IspdNFeDPECX: TGUID = '{54BAA9D8-BA38-404C-A766-F5BBC68D25DD}';
  CLASS_spdNFeDPECX: TGUID = '{95D879BC-F103-4F33-B4DE-B1E6BCC0A4B5}';
  CLASS_spdNFeX: TGUID = '{443DDDD3-7E78-44C6-865C-7984C9D2B08A}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum Ambiente
type
  Ambiente = TOleEnum;
const
  akHomologacao = $00000002;
  akProducao = $00000001;

// Constants for enum TipoCertificado
type
  TipoCertificado = TOleEnum;
const
  ckFile = $00000000;
  ckSmartCard = $00000001;
  ckMemory = $00000002;
  ckLocalMashine = $00000003;
  ckActiveDirectory = $00000004;

// Constants for enum ParamConsDPEC
type
  ParamConsDPEC = TOleEnum;
const
  pcChaveNFe = $00000000;
  pcRegDPEC = $00000001;

// Constants for enum LayoutConv
type
  LayoutConv = TOleEnum;
const
  lkDic = $00000000;
  lkTx2 = $00000001;
  lkRec = $00000002;

// Constants for enum EntregaXML
type
  EntregaXML = TOleEnum;
const
  exEmail = $00000000;
  exNotaSegura = $00000001;

// Constants for enum Estagio
type
  Estagio = TOleEnum;
const
  esProducao = $00000001;
  esTeste = $00000002;

// Constants for enum TipoResposta
type
  TipoResposta = TOleEnum;
const
  trJSON = $00000001;
  trTexto = $00000000;

// Constants for enum LinguagemResposta
type
  LinguagemResposta = TOleEnum;
const
  tlHtml = $00000000;
  tlJavaScript = $00000001;

// Constants for enum ModoOperacao
type
  ModoOperacao = TOleEnum;
const
  moLocal = $00000000;
  moCliente = $00000001;

// Constants for enum TipoNSU
type
  TipoNSU = TOleEnum;
const
  nkUltimo = $00000000;
  nkEspecifico = $00000001;

// Constants for enum TipoPedidoProrrogacao
type
  TipoPedidoProrrogacao = TOleEnum;
const
  tEPP1 = $00000000;
  tEPP2 = $00000001;

// Constants for enum TipoCancelamentoPedidoProrrogacao
type
  TipoCancelamentoPedidoProrrogacao = TOleEnum;
const
  tECPP1 = $00000000;
  tECPP2 = $00000001;

// Constants for enum ModoOperacaoNFe
type
  ModoOperacaoNFe = TOleEnum;
const
  moNormal = $00000000;
  moSVCAN = $00000001;
  moSVCRS = $00000002;
  moEPEC = $00000003;

// Constants for enum ImprimirFrenteVerso
type
  ImprimirFrenteVerso = TOleEnum;
const
  fvDesabilitado = $00000000;
  fvVertical = $00000001;
  fvHorizontal = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IspdCustomNFe = interface;
  IspdCustomNFeDisp = dispinterface;
  IspdNFeX = interface;
  IspdNFeXDisp = dispinterface;
  IspdNFeSCAN = interface;
  IspdNFeSCANDisp = dispinterface;
  IspdNFeDPECX = interface;
  IspdNFeDPECXDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  spdCustomNFe = IspdCustomNFe;
  spdNFeSCAN = IspdNFeSCAN;
  spdNFeDPECX = IspdNFeDPECX;
  spdNFeX = IspdNFeX;


// *********************************************************************//
// Interface: IspdCustomNFe
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5899CB42-1105-48E8-9F33-FD9A5765FC2B}
// *********************************************************************//
  IspdCustomNFe = interface(IDispatch)
    ['{5899CB42-1105-48E8-9F33-FD9A5765FC2B}']
    function Get_DiretorioTemplates: WideString; safecall;
    procedure Set_DiretorioTemplates(const Value: WideString); safecall;
    function Get_NomeCertificado: WideString; safecall;
    procedure Set_NomeCertificado(const Value: WideString); safecall;
    function Get_TipoCertificado: TipoCertificado; safecall;
    procedure Set_TipoCertificado(Value: TipoCertificado); safecall;
    function Get_Proxy: WideString; safecall;
    procedure Set_Proxy(const Value: WideString); safecall;
    function Get_Usuario: WideString; safecall;
    procedure Set_Usuario(const Value: WideString); safecall;
    function Get_ConfigINI: WideString; safecall;
    procedure Set_ConfigINI(const Value: WideString); safecall;
    function Get_SectionINI: WideString; safecall;
    procedure Set_SectionINI(const Value: WideString); safecall;
    function Get_Ambiente: Ambiente; safecall;
    procedure Set_Ambiente(Value: Ambiente); safecall;
    function Get_ArquivoServidoresHom: WideString; safecall;
    procedure Set_ArquivoServidoresHom(const Value: WideString); safecall;
    function Get_ArquivoServidoresProd: WideString; safecall;
    procedure Set_ArquivoServidoresProd(const Value: WideString); safecall;
    function Get_DiretorioLog: WideString; safecall;
    procedure Set_DiretorioLog(const Value: WideString); safecall;
    function ListarCertificados(const aDelimiter: WideString): WideString; safecall;
    function RemoverCertificado(const CertificateName: WideString): WordBool; safecall;
    function Get_ErrosValidador: WideString; safecall;
    procedure Set_ErrosValidador(const Value: WideString); safecall;
    function Get_Senha: WideString; safecall;
    procedure Set_Senha(const Value: WideString); safecall;
    function Get_LogotipoEmitente: WideString; safecall;
    procedure Set_LogotipoEmitente(const Value: WideString); safecall;
    function Get_UF: WideString; safecall;
    procedure Set_UF(const Value: WideString); safecall;
    function Get_CNPJ: WideString; safecall;
    procedure Set_CNPJ(const Value: WideString); safecall;
    function Get_DiretorioEsquemas: WideString; safecall;
    procedure Set_DiretorioEsquemas(const Value: WideString); safecall;
    function Get_ValidarEsquemaAntesEnvio: WordBool; safecall;
    procedure Set_ValidarEsquemaAntesEnvio(Value: WordBool); safecall;
    function Get_EmailServidor: WideString; safecall;
    procedure Set_EmailServidor(const Value: WideString); safecall;
    function Get_EmailAutenticacao: WordBool; safecall;
    procedure Set_EmailAutenticacao(Value: WordBool); safecall;
    function Get_EmailRemetente: WideString; safecall;
    procedure Set_EmailRemetente(const Value: WideString); safecall;
    function Get_EmailDestinatario: WideString; safecall;
    procedure Set_EmailDestinatario(const Value: WideString); safecall;
    function Get_EmailAssunto: WideString; safecall;
    procedure Set_EmailAssunto(const Value: WideString); safecall;
    function Get_EmailMensagem: WideString; safecall;
    procedure Set_EmailMensagem(const Value: WideString); safecall;
    function Get_EmailUsuario: WideString; safecall;
    procedure Set_EmailUsuario(const Value: WideString); safecall;
    function Get_EmailSenha: WideString; safecall;
    procedure Set_EmailSenha(const Value: WideString); safecall;
    function Get_FraseContingencia: WideString; safecall;
    procedure Set_FraseContingencia(const Value: WideString); safecall;
    function Get_FraseHomologacao: WideString; safecall;
    procedure Set_FraseHomologacao(const Value: WideString); safecall;
    function Get_ModeloRetrato: WideString; safecall;
    procedure Set_ModeloRetrato(const Value: WideString); safecall;
    function Get_ModeloPaisagem: WideString; safecall;
    procedure Set_ModeloPaisagem(const Value: WideString); safecall;
    function Get_VersaoManual: WideString; safecall;
    procedure Set_VersaoManual(const Value: WideString); safecall;
    function Get_AnexarDanfePDF: WordBool; safecall;
    procedure Set_AnexarDanfePDF(Value: WordBool); safecall;
    function Get_QtdeCopias: Integer; safecall;
    procedure Set_QtdeCopias(Value: Integer); safecall;
    procedure EmailAddCC(const Email: WideString); safecall;
    procedure EmailAddCCO(const Email: WideString); safecall;
    function GetVencimentoCertificado: WideString; safecall;
    function Get_EmailPorta: Integer; safecall;
    procedure Set_EmailPorta(Value: Integer); safecall;
    function Get_LineDelimiter: WideString; safecall;
    procedure Set_LineDelimiter(const Value: WideString); safecall;
    function Get_IgnoreInvalidCertificates: WordBool; safecall;
    procedure Set_IgnoreInvalidCertificates(Value: WordBool); safecall;
    procedure SaveConfig(const aConfigFile: WideString); safecall;
    function Get_Versao: WideString; safecall;
    function Get_EmailTimeOut: Integer; safecall;
    procedure Set_EmailTimeOut(Value: Integer); safecall;
    function Get_PINCODE: WideString; safecall;
    procedure Set_PINCODE(const Value: WideString); safecall;
    function Get_InfCplMaxCol: Integer; safecall;
    procedure Set_InfCplMaxCol(Value: Integer); safecall;
    function Get_InfCplMaxRow: Integer; safecall;
    procedure Set_InfCplMaxRow(Value: Integer); safecall;
    function Get_EmailCC: WideString; safecall;
    procedure Set_EmailCC(const Value: WideString); safecall;
    function Get_EmailCCo: WideString; safecall;
    procedure Set_EmailCCo(const Value: WideString); safecall;
    function Get_TimeOut: Integer; safecall;
    procedure Set_TimeOut(Value: Integer); safecall;
    function Get_ModeloDanfeSimplificado: WideString; safecall;
    procedure Set_ModeloDanfeSimplificado(const Value: WideString); safecall;
    function Get_CaracteresRemoverAcentos: WideString; safecall;
    procedure Set_CaracteresRemoverAcentos(const Value: WideString); safecall;
    function Get_ImprimirVolume: WordBool; safecall;
    procedure Set_ImprimirVolume(Value: WordBool); safecall;
    function Get_ImprimirDuplicata: WordBool; safecall;
    procedure Set_ImprimirDuplicata(Value: WordBool); safecall;
    function Get_CaminhoCertificado: WideString; safecall;
    procedure Set_CaminhoCertificado(const Value: WideString); safecall;
    function Get_SenhaCertificado: WideString; safecall;
    procedure Set_SenhaCertificado(const Value: WideString); safecall;
    function Get_ImprimirUnidadeTributada: WordBool; safecall;
    procedure Set_ImprimirUnidadeTributada(Value: WordBool); safecall;
    function Get_DiretorioLogErro: WideString; safecall;
    procedure Set_DiretorioLogErro(const Value: WideString); safecall;
    function Get_DiretorioTemporario: WideString; safecall;
    procedure Set_DiretorioTemporario(const Value: WideString); safecall;
    function Get_UltimoLogCancelamento: WideString; safecall;
    procedure Set_UltimoLogCancelamento(const Value: WideString); safecall;
    function Get_ModoOperacao: ModoOperacaoNFe; safecall;
    procedure Set_ModoOperacao(Value: ModoOperacaoNFe); safecall;
    function Get_EmailConteudoHtml: WordBool; safecall;
    procedure Set_EmailConteudoHtml(Value: WordBool); safecall;
    function Get_MensagemPartilhaAutomatica: WordBool; safecall;
    procedure Set_MensagemPartilhaAutomatica(Value: WordBool); safecall;
    function Get_ImprimirObsCont: WordBool; safecall;
    procedure Set_ImprimirObsCont(Value: WordBool); safecall;
    function Get_MensagemFCP: WordBool; safecall;
    procedure Set_MensagemFCP(Value: WordBool); safecall;
    function GetValidadeInicialCertificado: WideString; safecall;
    function Get_ImprimirFrenteVerso: ImprimirFrenteVerso; safecall;
    procedure Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso); safecall;
    function Get_AtualizarArquivoServidores: WordBool; safecall;
    procedure Set_AtualizarArquivoServidores(Value: WordBool); safecall;
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property NomeCertificado: WideString read Get_NomeCertificado write Set_NomeCertificado;
    property TipoCertificado: TipoCertificado read Get_TipoCertificado write Set_TipoCertificado;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property ConfigINI: WideString read Get_ConfigINI write Set_ConfigINI;
    property SectionINI: WideString read Get_SectionINI write Set_SectionINI;
    property Ambiente: Ambiente read Get_Ambiente write Set_Ambiente;
    property ArquivoServidoresHom: WideString read Get_ArquivoServidoresHom write Set_ArquivoServidoresHom;
    property ArquivoServidoresProd: WideString read Get_ArquivoServidoresProd write Set_ArquivoServidoresProd;
    property DiretorioLog: WideString read Get_DiretorioLog write Set_DiretorioLog;
    property ErrosValidador: WideString read Get_ErrosValidador write Set_ErrosValidador;
    property Senha: WideString read Get_Senha write Set_Senha;
    property LogotipoEmitente: WideString read Get_LogotipoEmitente write Set_LogotipoEmitente;
    property UF: WideString read Get_UF write Set_UF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property DiretorioEsquemas: WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    property ValidarEsquemaAntesEnvio: WordBool read Get_ValidarEsquemaAntesEnvio write Set_ValidarEsquemaAntesEnvio;
    property EmailServidor: WideString read Get_EmailServidor write Set_EmailServidor;
    property EmailAutenticacao: WordBool read Get_EmailAutenticacao write Set_EmailAutenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property EmailAssunto: WideString read Get_EmailAssunto write Set_EmailAssunto;
    property EmailMensagem: WideString read Get_EmailMensagem write Set_EmailMensagem;
    property EmailUsuario: WideString read Get_EmailUsuario write Set_EmailUsuario;
    property EmailSenha: WideString read Get_EmailSenha write Set_EmailSenha;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property VersaoManual: WideString read Get_VersaoManual write Set_VersaoManual;
    property AnexarDanfePDF: WordBool read Get_AnexarDanfePDF write Set_AnexarDanfePDF;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property EmailPorta: Integer read Get_EmailPorta write Set_EmailPorta;
    property LineDelimiter: WideString read Get_LineDelimiter write Set_LineDelimiter;
    property IgnoreInvalidCertificates: WordBool read Get_IgnoreInvalidCertificates write Set_IgnoreInvalidCertificates;
    property Versao: WideString read Get_Versao;
    property EmailTimeOut: Integer read Get_EmailTimeOut write Set_EmailTimeOut;
    property PINCODE: WideString read Get_PINCODE write Set_PINCODE;
    property InfCplMaxCol: Integer read Get_InfCplMaxCol write Set_InfCplMaxCol;
    property InfCplMaxRow: Integer read Get_InfCplMaxRow write Set_InfCplMaxRow;
    property EmailCC: WideString read Get_EmailCC write Set_EmailCC;
    property EmailCCo: WideString read Get_EmailCCo write Set_EmailCCo;
    property TimeOut: Integer read Get_TimeOut write Set_TimeOut;
    property ModeloDanfeSimplificado: WideString read Get_ModeloDanfeSimplificado write Set_ModeloDanfeSimplificado;
    property CaracteresRemoverAcentos: WideString read Get_CaracteresRemoverAcentos write Set_CaracteresRemoverAcentos;
    property ImprimirVolume: WordBool read Get_ImprimirVolume write Set_ImprimirVolume;
    property ImprimirDuplicata: WordBool read Get_ImprimirDuplicata write Set_ImprimirDuplicata;
    property CaminhoCertificado: WideString read Get_CaminhoCertificado write Set_CaminhoCertificado;
    property SenhaCertificado: WideString read Get_SenhaCertificado write Set_SenhaCertificado;
    property ImprimirUnidadeTributada: WordBool read Get_ImprimirUnidadeTributada write Set_ImprimirUnidadeTributada;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
    property DiretorioTemporario: WideString read Get_DiretorioTemporario write Set_DiretorioTemporario;
    property UltimoLogCancelamento: WideString read Get_UltimoLogCancelamento write Set_UltimoLogCancelamento;
    property ModoOperacao: ModoOperacaoNFe read Get_ModoOperacao write Set_ModoOperacao;
    property EmailConteudoHtml: WordBool read Get_EmailConteudoHtml write Set_EmailConteudoHtml;
    property MensagemPartilhaAutomatica: WordBool read Get_MensagemPartilhaAutomatica write Set_MensagemPartilhaAutomatica;
    property ImprimirObsCont: WordBool read Get_ImprimirObsCont write Set_ImprimirObsCont;
    property MensagemFCP: WordBool read Get_MensagemFCP write Set_MensagemFCP;
    property ImprimirFrenteVerso: ImprimirFrenteVerso read Get_ImprimirFrenteVerso write Set_ImprimirFrenteVerso;
    property AtualizarArquivoServidores: WordBool read Get_AtualizarArquivoServidores write Set_AtualizarArquivoServidores;
  end;

// *********************************************************************//
// DispIntf:  IspdCustomNFeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5899CB42-1105-48E8-9F33-FD9A5765FC2B}
// *********************************************************************//
  IspdCustomNFeDisp = dispinterface
    ['{5899CB42-1105-48E8-9F33-FD9A5765FC2B}']
    property DiretorioTemplates: WideString dispid 101;
    property NomeCertificado: WideString dispid 102;
    property TipoCertificado: TipoCertificado dispid 103;
    property Proxy: WideString dispid 104;
    property Usuario: WideString dispid 105;
    property ConfigINI: WideString dispid 106;
    property SectionINI: WideString dispid 107;
    property Ambiente: Ambiente dispid 108;
    property ArquivoServidoresHom: WideString dispid 109;
    property ArquivoServidoresProd: WideString dispid 110;
    property DiretorioLog: WideString dispid 111;
    function ListarCertificados(const aDelimiter: WideString): WideString; dispid 112;
    function RemoverCertificado(const CertificateName: WideString): WordBool; dispid 113;
    property ErrosValidador: WideString dispid 500;
    property Senha: WideString dispid 580;
    property LogotipoEmitente: WideString dispid 700;
    property UF: WideString dispid 701;
    property CNPJ: WideString dispid 702;
    property DiretorioEsquemas: WideString dispid 703;
    property ValidarEsquemaAntesEnvio: WordBool dispid 704;
    property EmailServidor: WideString dispid 705;
    property EmailAutenticacao: WordBool dispid 706;
    property EmailRemetente: WideString dispid 707;
    property EmailDestinatario: WideString dispid 708;
    property EmailAssunto: WideString dispid 709;
    property EmailMensagem: WideString dispid 710;
    property EmailUsuario: WideString dispid 711;
    property EmailSenha: WideString dispid 712;
    property FraseContingencia: WideString dispid 713;
    property FraseHomologacao: WideString dispid 714;
    property ModeloRetrato: WideString dispid 715;
    property ModeloPaisagem: WideString dispid 716;
    property VersaoManual: WideString dispid 717;
    property AnexarDanfePDF: WordBool dispid 718;
    property QtdeCopias: Integer dispid 719;
    procedure EmailAddCC(const Email: WideString); dispid 720;
    procedure EmailAddCCO(const Email: WideString); dispid 721;
    function GetVencimentoCertificado: WideString; dispid 900;
    property EmailPorta: Integer dispid 901;
    property LineDelimiter: WideString dispid 904;
    property IgnoreInvalidCertificates: WordBool dispid 907;
    procedure SaveConfig(const aConfigFile: WideString); dispid 909;
    property Versao: WideString readonly dispid 911;
    property EmailTimeOut: Integer dispid 912;
    property PINCODE: WideString dispid 913;
    property InfCplMaxCol: Integer dispid 914;
    property InfCplMaxRow: Integer dispid 915;
    property EmailCC: WideString dispid 916;
    property EmailCCo: WideString dispid 917;
    property TimeOut: Integer dispid 918;
    property ModeloDanfeSimplificado: WideString dispid 920;
    property CaracteresRemoverAcentos: WideString dispid 921;
    property ImprimirVolume: WordBool dispid 922;
    property ImprimirDuplicata: WordBool dispid 923;
    property CaminhoCertificado: WideString dispid 924;
    property SenhaCertificado: WideString dispid 925;
    property ImprimirUnidadeTributada: WordBool dispid 926;
    property DiretorioLogErro: WideString dispid 927;
    property DiretorioTemporario: WideString dispid 928;
    property UltimoLogCancelamento: WideString dispid 929;
    property ModoOperacao: ModoOperacaoNFe dispid 666;
    property EmailConteudoHtml: WordBool dispid 345;
    property MensagemPartilhaAutomatica: WordBool dispid 930;
    property ImprimirObsCont: WordBool dispid 931;
    property MensagemFCP: WordBool dispid 932;
    function GetValidadeInicialCertificado: WideString; dispid 933;
    property ImprimirFrenteVerso: ImprimirFrenteVerso dispid 934;
    property AtualizarArquivoServidores: WordBool dispid 935;
  end;

// *********************************************************************//
// Interface: IspdNFeX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B83E236-4BC7-457D-92E7-B9CD2A5E6815}
// *********************************************************************//
  IspdNFeX = interface(IspdCustomNFe)
    ['{7B83E236-4BC7-457D-92E7-B9CD2A5E6815}']
    function CalculaChaveNFe(const aDtEmissao: WideString; const aUF: WideString; 
                             const aCNPJ: WideString; const aModelo: WideString; 
                             const aSerie: WideString; const aNRNota: WideString; 
                             const aCodSistema: WideString; const aTpEmis: WideString): WideString; safecall;
    function AssinarNota(const aXML: WideString): WideString; safecall;
    function GerarNotasAleatorias(Qtde: Integer; const CNPJ: WideString): WideString; safecall;
    function ConverterLoteParaXML(const ArquivoLoteTxt: WideString; aLayoutConv: LayoutConv; 
                                  const aVersaoEsquema: WideString): WideString; safecall;
    function StatusDoServico: WideString; safecall;
    function CancelarNF(const aNotaID: WideString; const aNumProtocolo: WideString; 
                        const aJustificativa: WideString): WideString; safecall;
    function ConsultarNF(const aNotaID: WideString): WideString; safecall;
    function InutilizarNF(const aNotaID: WideString; const aAno: WideString; 
                          const aCNPJ: WideString; const aModelo: WideString; 
                          const aSerie: WideString; const aNFIni: WideString; 
                          const aNFFin: WideString; const aJustificativa: WideString): WideString; safecall;
    function EnviarNF(const aNumLote: WideString; const aLoteNotas: WideString; 
                      aCompactado: WordBool): WideString; safecall;
    function ConsultarRecibo(const aNumRecibo: WideString): WideString; safecall;
    function ConsultarCadastro(const aDocumento: WideString; const aTpDocumento: WideString; 
                               const aUF: WideString): WideString; safecall;
    function VisualizarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                             const aArquivoModelo: WideString): WideString; safecall;
    function ImprimirDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                           const aArquivoModelo: WideString; const aImpressora: WideString): WideString; safecall;
    function EditarModeloDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                               const aArquivoModelo: WideString): WideString; safecall;
    function ExportarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                           const aArquivoModelo: WideString; aFormato: Integer; 
                           const aExportarParaArquivo: WideString): WideString; safecall;
    function EnviarEmailDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                              const aArquivoModelo: WideString): WideString; safecall;
    function LerLog(const aPathArquivoLog: WideString): WideString; safecall;
    function VisualizarDanfeLog(const aPathArquivoLog: WideString): WideString; safecall;
    function GeraXMLEnvioDestinatario(const aIdNFe: WideString; const aLogEnvLote: WideString; 
                                      const aLogConsRecibo: WideString; 
                                      const aSalvarComo: WideString): WideString; safecall;
    function EnviarNotaDestinatario(const aIdNFe: WideString; const aLogEnvio: WideString; 
                                    const aLogRecibo: WideString): WideString; safecall;
    procedure LoadConfig(const aConfigFile: WideString); safecall;
    function Get_UltimoLogEnvio: WideString; safecall;
    procedure Set_UltimoLogEnvio(const Value: WideString); safecall;
    function Get_UltimoLogConsRecibo: WideString; safecall;
    procedure Set_UltimoLogConsRecibo(const Value: WideString); safecall;
    function Get_DiretorioXmlDestinatario: WideString; safecall;
    procedure Set_DiretorioXmlDestinatario(const Value: WideString); safecall;
    function ValidarLoteParaEnvio(const aNumLote: WideString; const aLoteXml: WideString): WideString; safecall;
    function GerarXmlCancelamentoDestinatario(const aIdNFe: WideString; 
                                              const aContentLogPedCanc: WideString; 
                                              const aContentLogRetCanc: WideString; 
                                              const aSalvarComo: WideString): WideString; safecall;
    function EnviarNotaCanceladaDestinatario(const aIdNFe: WideString; 
                                             const aLogPedCanc: WideString; 
                                             const aLogRetCanc: WideString; 
                                             const aEmailDestinatario: WideString): WideString; safecall;
    function PreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString): WideString; safecall;
    function Get_MaxSizeLoteEnvio: Integer; safecall;
    procedure Set_MaxSizeLoteEnvio(Value: Integer); safecall;
    function EnviarNotaDestinatarioAnexos(const aArquivoPDF: WideString; 
                                          const aArquivoXML: WideString; const aOutros: WideString): WideString; safecall;
    function ValidarArquivoXmlDestinatario(const aXML: WideString; var aErrorList: WideString): WordBool; safecall;
    function Get_DanfeSimplificado: WordBool; safecall;
    procedure Set_DanfeSimplificado(Value: WordBool); safecall;
    function EnviarManifestacaoDestinatario(aTpEvento: Integer; const aNotaID: WideString; 
                                            const aCNPJCPF: WideString; 
                                            const aJustificativa: WideString; 
                                            const aDataHoraEvento: WideString; 
                                            aSequenciaEvento: Integer; 
                                            const aFusoHorario: WideString; 
                                            const aCOrgao: WideString): WideString; safecall;
    function ConsultarNFDestinadas(aIndNFe: Integer; aIndEmi: Integer; const aUltNSU: WideString): WideString; safecall;
    function CancelarNFeEvento(const aNotaID: WideString; const aNumProtocolo: WideString; 
                               const aJustificativa: WideString; const aDataHoraEvento: WideString; 
                               aSequenciaEvento: Integer; const aFusoHorario: WideString): WideString; safecall;
    function DownloadNFe(const aChaves: WideString; const aCOrgao: WideString): WideString; safecall;
    function Get_DiretorioDownloads: WideString; safecall;
    procedure Set_DiretorioDownloads(const Value: WideString); safecall;
    function EnviarCCe(const aNotaID: WideString; const aTextoCorrecao: WideString; 
                       const aDataHoraEvento: WideString; const aOrgao: WideString; 
                       const aIdLote: WideString; aSequenciaEvento: Integer; 
                       const aFusoHorario: WideString): WideString; safecall;
    function GerarXMLCCeDestinatario(const aIDEvento: WideString; const aLogEvento: WideString; 
                                     const aLogRetEvento: WideString; const aSalvarComo: WideString): WideString; safecall;
    procedure EnviarCCeDestinatario(const aCCe: WideString); safecall;
    procedure ImprimirCCe(const aXmlCCe: WideString; const aImpressora: WideString); safecall;
    procedure VisualizarCCe(const aXmlCCe: WideString); safecall;
    procedure EditarModeloCCe(const aXmlCCe: WideString); safecall;
    procedure ExportarCCe(const aXmlCCe: WideString; const aSalvarComo: WideString); safecall;
    function CancelarNFeEventoIdLote(const aNotaID: WideString; const aNumProtocolo: WideString; 
                                     const aJustificativa: WideString; 
                                     const aDataHoraEvento: WideString; aSequenciaEvento: Integer; 
                                     const aFusoHorario: WideString; const aIdLote: WideString): WideString; safecall;
    function GerarXmlManifestoDestinatario(const aIDEvento: WideString; 
                                           const aLogEvento: WideString; 
                                           const aLogRetEvento: WideString; 
                                           const aSalvarComo: WideString): WideString; safecall;
    function ImprimirDanfeXmlDiretorio(const aDiretorioXml: WideString; 
                                       const aArquivoModelo: WideString; 
                                       const aExportarArquivoPara: WideString; 
                                       const aImpressora: WideString): WideString; safecall;
    function Get_UltimoLogRecibo: WideString; safecall;
    procedure Set_UltimoLogRecibo(const Value: WideString); safecall;
    function ConverterLoteParaXMLExportacao(const aArquivoLoteTxt: WideString; 
                                            aLayoutConv: LayoutConv; 
                                            const aVersaoEsquema: WideString; aExportacao: WordBool): WideString; safecall;
    function Get_UltimoLogReciboCancelamento: WideString; safecall;
    procedure Set_UltimoLogReciboCancelamento(const Value: WideString); safecall;
    function EnviarNFSincrono(const aNumLote: WideString; const aLoteNota: WideString; 
                              aCompactado: WordBool): WideString; safecall;
    function GerarIDCCe(const aChaveNFe: WideString; aSeqEvento: Integer): WideString; safecall;
    procedure ExportarPreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString; 
                                  const aLocalNomeArquivo: WideString); safecall;
    function Get_ModeloRTMCCe: WideString; safecall;
    procedure Set_ModeloRTMCCe(const Value: WideString); safecall;
    function Get_EntregaXML: EntregaXML; safecall;
    procedure Set_EntregaXML(Value: EntregaXML); safecall;
    function AuditarXml(const aXML: WideString; const aDelimitador: WideString; 
                        const aServidor: WideString; aExibirRegra: WordBool; aExibirHtml: WordBool; 
                        const aParams: WideString): WideString; safecall;
    function Get_NotaSeguraToken: WideString; safecall;
    procedure Set_NotaSeguraToken(const Value: WideString); safecall;
    function Get_NotaSeguraLogin: WideString; safecall;
    procedure Set_NotaSeguraLogin(const Value: WideString); safecall;
    function Get_NotaSeguraSenha: WideString; safecall;
    procedure Set_NotaSeguraSenha(const Value: WideString); safecall;
    function Get_NotaSeguraServidor: WideString; safecall;
    procedure Set_NotaSeguraServidor(const Value: WideString); safecall;
    function Get_AuditorServidor: WideString; safecall;
    procedure Set_AuditorServidor(const Value: WideString); safecall;
    function Get_AuditorExibirRegrasValidacao: WordBool; safecall;
    procedure Set_AuditorExibirRegrasValidacao(Value: WordBool); safecall;
    function Get_AuditorCodigoProduto: Integer; safecall;
    procedure Set_AuditorCodigoProduto(Value: Integer); safecall;
    function Get_AuditorEstagio: Estagio; safecall;
    procedure Set_AuditorEstagio(Value: Estagio); safecall;
    function Get_AuditorTemplateHtml: WideString; safecall;
    procedure Set_AuditorTemplateHtml(const Value: WideString); safecall;
    function Get_AuditorHeigthHtml: Integer; safecall;
    procedure Set_AuditorHeigthHtml(Value: Integer); safecall;
    function Get_AuditorWidthHtml: Integer; safecall;
    procedure Set_AuditorWidthHtml(Value: Integer); safecall;
    function Get_AuditorHtmlBaseUrl: WideString; safecall;
    procedure Set_AuditorHtmlBaseUrl(const Value: WideString); safecall;
    function Get_AuditorTipoResposta: TipoResposta; safecall;
    procedure Set_AuditorTipoResposta(Value: TipoResposta); safecall;
    function Get_AuditorTotalRejeicao: WideString; safecall;
    procedure Set_AuditorTotalRejeicao(const Value: WideString); safecall;
    function Get_AuditorLinguagemResposta: LinguagemResposta; safecall;
    procedure Set_AuditorLinguagemResposta(Value: LinguagemResposta); safecall;
    function Get_AuditorModoOperacao: ModoOperacao; safecall;
    procedure Set_AuditorModoOperacao(Value: ModoOperacao); safecall;
    function Get_AuditorDiretorioEsquemas: WideString; safecall;
    procedure Set_AuditorDiretorioEsquemas(const Value: WideString); safecall;
    function Get_AuditorDiretorioTemplates: WideString; safecall;
    procedure Set_AuditorDiretorioTemplates(const Value: WideString); safecall;
    function Get_AuditorDiretorioRegras: WideString; safecall;
    procedure Set_AuditorDiretorioRegras(const Value: WideString); safecall;
    function Get_AuditorDiretorioLogErro: WideString; safecall;
    procedure Set_AuditorDiretorioLogErro(const Value: WideString); safecall;
    function AuditorValidarXml(const aXML: WideString; const aDelimitador: WideString): WideString; safecall;
    procedure AuditorShowHtml(const aJSON: WideString); safecall;
    procedure AuditorDownloadRegras; safecall;
    procedure AuditorLoadConfig(const aConfiINI: WideString); safecall;
    procedure AuditorSaveConfig(const aConfiINI: WideString); safecall;
    function NotaSeguraEnviarXml(const aXML: WideString): WideString; safecall;
    function EnviarEPEC(const aEPECAssinado: WideString): WideString; safecall;
    function AssinarEPEC(const aXMLEpec: WideString): WideString; safecall;
    function MontarEPEC(const aIdLote: WideString; const aXmlEnvio: WideString; 
                        const aDHEvento: WideString; const aFusoHorario: WideString): WideString; safecall;
    function Get_AuditorServidorProxy: WideString; safecall;
    procedure Set_AuditorServidorProxy(const Value: WideString); safecall;
    function Get_AuditorPortaProxy: Integer; safecall;
    procedure Set_AuditorPortaProxy(Value: Integer); safecall;
    function Get_AuditorUsuarioProxy: WideString; safecall;
    procedure Set_AuditorUsuarioProxy(const Value: WideString); safecall;
    function Get_AuditorSenhaProxy: WideString; safecall;
    procedure Set_AuditorSenhaProxy(const Value: WideString); safecall;
    function GerarXMLEPECDestinatario(const aIDEvento: WideString; const aLogEvento: WideString; 
                                      const aLogRetEvento: WideString; const aSalvarComo: WideString): WideString; safecall;
    function ImprimirEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                          const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                          const aImpressora: WideString): WideString; safecall;
    function VisualizarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                            const aDataHoraEPEC: WideString; const aArquivoModelo: WideString): WideString; safecall;
    function ExportarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                          const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                          aFormato: Integer; const aExportarParaArquivo: WideString): WideString; safecall;
    function ConsultarDistribuicaoDFe(const aCodigoUF: WideString; const aCNPJCPF: WideString; 
                                      const aNSU: WideString; aTipoNSU: TipoNSU): WideString; safecall;
    function DescompactarXMLZip(const aXML: WideString): WideString; safecall;
    function Get_ConexaoSegura: WordBool; safecall;
    procedure Set_ConexaoSegura(Value: WordBool); safecall;
    function Get_UltimoLogConsultarDFe: WideString; safecall;
    procedure Set_UltimoLogConsultarDFe(const Value: WideString); safecall;
    function EnviarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                     const aNumProtocolo: WideString; 
                                     const aDataHoraEvento: WideString; const aOrgao: WideString; 
                                     aTpEvento: TipoPedidoProrrogacao; aSequenciaEvento: SYSINT; 
                                     const aFusoHorario: WideString; const aDelimiter: WideString): WideString; safecall;
    function CancelarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                       const aNumProtocolo: WideString; 
                                       const aDataHoraEvento: WideString; 
                                       aTpEvento: TipoCancelamentoPedidoProrrogacao; 
                                       aSequenciaEvento: SYSINT; const aFusoHorario: WideString): WideString; safecall;
    procedure AdicionarItens(const aNumItens: WideString; const aQtdeItens: WideString); safecall;
    function Get_AuditorTimeOut: Integer; safecall;
    procedure Set_AuditorTimeOut(Value: Integer); safecall;
    function ConsultarDistribuicaoDFeChave(const aCodigoUF: WideString; const aCNPJCPF: WideString; 
                                           const aChave: WideString): WideString; safecall;
    function Get_UltimoLogReciboInutilizacao: WideString; safecall;
    procedure Set_UltimoLogReciboInutilizacao(const Value: WideString); safecall;
    function Get_ModeloRetratoCancelamento: WideString; safecall;
    procedure Set_ModeloRetratoCancelamento(const Value: WideString); safecall;
    function Get_UltimoLogInutilizacao: WideString; safecall;
    procedure Set_UltimoLogInutilizacao(const Value: WideString); safecall;
    function CalculaSegCodBarra(const cUF: WideString; const tpEmis: WideString; 
                                const CNPJ: WideString; const vNF: WideString; 
                                const ICMSp: WideString; const ICMSs: WideString; 
                                const DD: WideString): WideString; safecall;
    function TestarEmailConfig: WideString; safecall;
    procedure ConfigurarSoftwareHouse(const aCNPJSH: WideString; const aKey: WideString); safecall;
    property UltimoLogEnvio: WideString read Get_UltimoLogEnvio write Set_UltimoLogEnvio;
    property UltimoLogConsRecibo: WideString read Get_UltimoLogConsRecibo write Set_UltimoLogConsRecibo;
    property DiretorioXmlDestinatario: WideString read Get_DiretorioXmlDestinatario write Set_DiretorioXmlDestinatario;
    property MaxSizeLoteEnvio: Integer read Get_MaxSizeLoteEnvio write Set_MaxSizeLoteEnvio;
    property DanfeSimplificado: WordBool read Get_DanfeSimplificado write Set_DanfeSimplificado;
    property DiretorioDownloads: WideString read Get_DiretorioDownloads write Set_DiretorioDownloads;
    property UltimoLogRecibo: WideString read Get_UltimoLogRecibo write Set_UltimoLogRecibo;
    property UltimoLogReciboCancelamento: WideString read Get_UltimoLogReciboCancelamento write Set_UltimoLogReciboCancelamento;
    property ModeloRTMCCe: WideString read Get_ModeloRTMCCe write Set_ModeloRTMCCe;
    property EntregaXML: EntregaXML read Get_EntregaXML write Set_EntregaXML;
    property NotaSeguraToken: WideString read Get_NotaSeguraToken write Set_NotaSeguraToken;
    property NotaSeguraLogin: WideString read Get_NotaSeguraLogin write Set_NotaSeguraLogin;
    property NotaSeguraSenha: WideString read Get_NotaSeguraSenha write Set_NotaSeguraSenha;
    property NotaSeguraServidor: WideString read Get_NotaSeguraServidor write Set_NotaSeguraServidor;
    property AuditorServidor: WideString read Get_AuditorServidor write Set_AuditorServidor;
    property AuditorExibirRegrasValidacao: WordBool read Get_AuditorExibirRegrasValidacao write Set_AuditorExibirRegrasValidacao;
    property AuditorCodigoProduto: Integer read Get_AuditorCodigoProduto write Set_AuditorCodigoProduto;
    property AuditorEstagio: Estagio read Get_AuditorEstagio write Set_AuditorEstagio;
    property AuditorTemplateHtml: WideString read Get_AuditorTemplateHtml write Set_AuditorTemplateHtml;
    property AuditorHeigthHtml: Integer read Get_AuditorHeigthHtml write Set_AuditorHeigthHtml;
    property AuditorWidthHtml: Integer read Get_AuditorWidthHtml write Set_AuditorWidthHtml;
    property AuditorHtmlBaseUrl: WideString read Get_AuditorHtmlBaseUrl write Set_AuditorHtmlBaseUrl;
    property AuditorTipoResposta: TipoResposta read Get_AuditorTipoResposta write Set_AuditorTipoResposta;
    property AuditorTotalRejeicao: WideString read Get_AuditorTotalRejeicao write Set_AuditorTotalRejeicao;
    property AuditorLinguagemResposta: LinguagemResposta read Get_AuditorLinguagemResposta write Set_AuditorLinguagemResposta;
    property AuditorModoOperacao: ModoOperacao read Get_AuditorModoOperacao write Set_AuditorModoOperacao;
    property AuditorDiretorioEsquemas: WideString read Get_AuditorDiretorioEsquemas write Set_AuditorDiretorioEsquemas;
    property AuditorDiretorioTemplates: WideString read Get_AuditorDiretorioTemplates write Set_AuditorDiretorioTemplates;
    property AuditorDiretorioRegras: WideString read Get_AuditorDiretorioRegras write Set_AuditorDiretorioRegras;
    property AuditorDiretorioLogErro: WideString read Get_AuditorDiretorioLogErro write Set_AuditorDiretorioLogErro;
    property AuditorServidorProxy: WideString read Get_AuditorServidorProxy write Set_AuditorServidorProxy;
    property AuditorPortaProxy: Integer read Get_AuditorPortaProxy write Set_AuditorPortaProxy;
    property AuditorUsuarioProxy: WideString read Get_AuditorUsuarioProxy write Set_AuditorUsuarioProxy;
    property AuditorSenhaProxy: WideString read Get_AuditorSenhaProxy write Set_AuditorSenhaProxy;
    property ConexaoSegura: WordBool read Get_ConexaoSegura write Set_ConexaoSegura;
    property UltimoLogConsultarDFe: WideString read Get_UltimoLogConsultarDFe write Set_UltimoLogConsultarDFe;
    property AuditorTimeOut: Integer read Get_AuditorTimeOut write Set_AuditorTimeOut;
    property UltimoLogReciboInutilizacao: WideString read Get_UltimoLogReciboInutilizacao write Set_UltimoLogReciboInutilizacao;
    property ModeloRetratoCancelamento: WideString read Get_ModeloRetratoCancelamento write Set_ModeloRetratoCancelamento;
    property UltimoLogInutilizacao: WideString read Get_UltimoLogInutilizacao write Set_UltimoLogInutilizacao;
  end;

// *********************************************************************//
// DispIntf:  IspdNFeXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B83E236-4BC7-457D-92E7-B9CD2A5E6815}
// *********************************************************************//
  IspdNFeXDisp = dispinterface
    ['{7B83E236-4BC7-457D-92E7-B9CD2A5E6815}']
    function CalculaChaveNFe(const aDtEmissao: WideString; const aUF: WideString; 
                             const aCNPJ: WideString; const aModelo: WideString; 
                             const aSerie: WideString; const aNRNota: WideString; 
                             const aCodSistema: WideString; const aTpEmis: WideString): WideString; dispid 214;
    function AssinarNota(const aXML: WideString): WideString; dispid 215;
    function GerarNotasAleatorias(Qtde: Integer; const CNPJ: WideString): WideString; dispid 216;
    function ConverterLoteParaXML(const ArquivoLoteTxt: WideString; aLayoutConv: LayoutConv; 
                                  const aVersaoEsquema: WideString): WideString; dispid 217;
    function StatusDoServico: WideString; dispid 218;
    function CancelarNF(const aNotaID: WideString; const aNumProtocolo: WideString; 
                        const aJustificativa: WideString): WideString; dispid 219;
    function ConsultarNF(const aNotaID: WideString): WideString; dispid 220;
    function InutilizarNF(const aNotaID: WideString; const aAno: WideString; 
                          const aCNPJ: WideString; const aModelo: WideString; 
                          const aSerie: WideString; const aNFIni: WideString; 
                          const aNFFin: WideString; const aJustificativa: WideString): WideString; dispid 221;
    function EnviarNF(const aNumLote: WideString; const aLoteNotas: WideString; 
                      aCompactado: WordBool): WideString; dispid 222;
    function ConsultarRecibo(const aNumRecibo: WideString): WideString; dispid 223;
    function ConsultarCadastro(const aDocumento: WideString; const aTpDocumento: WideString; 
                               const aUF: WideString): WideString; dispid 224;
    function VisualizarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                             const aArquivoModelo: WideString): WideString; dispid 225;
    function ImprimirDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                           const aArquivoModelo: WideString; const aImpressora: WideString): WideString; dispid 226;
    function EditarModeloDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                               const aArquivoModelo: WideString): WideString; dispid 227;
    function ExportarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                           const aArquivoModelo: WideString; aFormato: Integer; 
                           const aExportarParaArquivo: WideString): WideString; dispid 228;
    function EnviarEmailDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                              const aArquivoModelo: WideString): WideString; dispid 229;
    function LerLog(const aPathArquivoLog: WideString): WideString; dispid 230;
    function VisualizarDanfeLog(const aPathArquivoLog: WideString): WideString; dispid 231;
    function GeraXMLEnvioDestinatario(const aIdNFe: WideString; const aLogEnvLote: WideString; 
                                      const aLogConsRecibo: WideString; 
                                      const aSalvarComo: WideString): WideString; dispid 232;
    function EnviarNotaDestinatario(const aIdNFe: WideString; const aLogEnvio: WideString; 
                                    const aLogRecibo: WideString): WideString; dispid 233;
    procedure LoadConfig(const aConfigFile: WideString); dispid 234;
    property UltimoLogEnvio: WideString dispid 501;
    property UltimoLogConsRecibo: WideString dispid 502;
    property DiretorioXmlDestinatario: WideString dispid 611;
    function ValidarLoteParaEnvio(const aNumLote: WideString; const aLoteXml: WideString): WideString; dispid 613;
    function GerarXmlCancelamentoDestinatario(const aIdNFe: WideString; 
                                              const aContentLogPedCanc: WideString; 
                                              const aContentLogRetCanc: WideString; 
                                              const aSalvarComo: WideString): WideString; dispid 902;
    function EnviarNotaCanceladaDestinatario(const aIdNFe: WideString; 
                                             const aLogPedCanc: WideString; 
                                             const aLogRetCanc: WideString; 
                                             const aEmailDestinatario: WideString): WideString; dispid 903;
    function PreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString): WideString; dispid 905;
    property MaxSizeLoteEnvio: Integer dispid 906;
    function EnviarNotaDestinatarioAnexos(const aArquivoPDF: WideString; 
                                          const aArquivoXML: WideString; const aOutros: WideString): WideString; dispid 908;
    function ValidarArquivoXmlDestinatario(const aXML: WideString; var aErrorList: WideString): WordBool; dispid 919;
    property DanfeSimplificado: WordBool dispid 943;
    function EnviarManifestacaoDestinatario(aTpEvento: Integer; const aNotaID: WideString; 
                                            const aCNPJCPF: WideString; 
                                            const aJustificativa: WideString; 
                                            const aDataHoraEvento: WideString; 
                                            aSequenciaEvento: Integer; 
                                            const aFusoHorario: WideString; 
                                            const aCOrgao: WideString): WideString; dispid 952;
    function ConsultarNFDestinadas(aIndNFe: Integer; aIndEmi: Integer; const aUltNSU: WideString): WideString; dispid 953;
    function CancelarNFeEvento(const aNotaID: WideString; const aNumProtocolo: WideString; 
                               const aJustificativa: WideString; const aDataHoraEvento: WideString; 
                               aSequenciaEvento: Integer; const aFusoHorario: WideString): WideString; dispid 954;
    function DownloadNFe(const aChaves: WideString; const aCOrgao: WideString): WideString; dispid 955;
    property DiretorioDownloads: WideString dispid 317;
    function EnviarCCe(const aNotaID: WideString; const aTextoCorrecao: WideString; 
                       const aDataHoraEvento: WideString; const aOrgao: WideString; 
                       const aIdLote: WideString; aSequenciaEvento: Integer; 
                       const aFusoHorario: WideString): WideString; dispid 318;
    function GerarXMLCCeDestinatario(const aIDEvento: WideString; const aLogEvento: WideString; 
                                     const aLogRetEvento: WideString; const aSalvarComo: WideString): WideString; dispid 319;
    procedure EnviarCCeDestinatario(const aCCe: WideString); dispid 320;
    procedure ImprimirCCe(const aXmlCCe: WideString; const aImpressora: WideString); dispid 321;
    procedure VisualizarCCe(const aXmlCCe: WideString); dispid 322;
    procedure EditarModeloCCe(const aXmlCCe: WideString); dispid 323;
    procedure ExportarCCe(const aXmlCCe: WideString; const aSalvarComo: WideString); dispid 324;
    function CancelarNFeEventoIdLote(const aNotaID: WideString; const aNumProtocolo: WideString; 
                                     const aJustificativa: WideString; 
                                     const aDataHoraEvento: WideString; aSequenciaEvento: Integer; 
                                     const aFusoHorario: WideString; const aIdLote: WideString): WideString; dispid 956;
    function GerarXmlManifestoDestinatario(const aIDEvento: WideString; 
                                           const aLogEvento: WideString; 
                                           const aLogRetEvento: WideString; 
                                           const aSalvarComo: WideString): WideString; dispid 301;
    function ImprimirDanfeXmlDiretorio(const aDiretorioXml: WideString; 
                                       const aArquivoModelo: WideString; 
                                       const aExportarArquivoPara: WideString; 
                                       const aImpressora: WideString): WideString; dispid 303;
    property UltimoLogRecibo: WideString dispid 304;
    function ConverterLoteParaXMLExportacao(const aArquivoLoteTxt: WideString; 
                                            aLayoutConv: LayoutConv; 
                                            const aVersaoEsquema: WideString; aExportacao: WordBool): WideString; dispid 325;
    property UltimoLogReciboCancelamento: WideString dispid 383;
    function EnviarNFSincrono(const aNumLote: WideString; const aLoteNota: WideString; 
                              aCompactado: WordBool): WideString; dispid 302;
    function GerarIDCCe(const aChaveNFe: WideString; aSeqEvento: Integer): WideString; dispid 305;
    procedure ExportarPreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString; 
                                  const aLocalNomeArquivo: WideString); dispid 306;
    property ModeloRTMCCe: WideString dispid 307;
    property EntregaXML: EntregaXML dispid 310;
    function AuditarXml(const aXML: WideString; const aDelimitador: WideString; 
                        const aServidor: WideString; aExibirRegra: WordBool; aExibirHtml: WordBool; 
                        const aParams: WideString): WideString; dispid 311;
    property NotaSeguraToken: WideString dispid 308;
    property NotaSeguraLogin: WideString dispid 309;
    property NotaSeguraSenha: WideString dispid 312;
    property NotaSeguraServidor: WideString dispid 313;
    property AuditorServidor: WideString dispid 314;
    property AuditorExibirRegrasValidacao: WordBool dispid 315;
    property AuditorCodigoProduto: Integer dispid 316;
    property AuditorEstagio: Estagio dispid 326;
    property AuditorTemplateHtml: WideString dispid 327;
    property AuditorHeigthHtml: Integer dispid 328;
    property AuditorWidthHtml: Integer dispid 329;
    property AuditorHtmlBaseUrl: WideString dispid 330;
    property AuditorTipoResposta: TipoResposta dispid 331;
    property AuditorTotalRejeicao: WideString dispid 332;
    property AuditorLinguagemResposta: LinguagemResposta dispid 333;
    property AuditorModoOperacao: ModoOperacao dispid 334;
    property AuditorDiretorioEsquemas: WideString dispid 335;
    property AuditorDiretorioTemplates: WideString dispid 336;
    property AuditorDiretorioRegras: WideString dispid 337;
    property AuditorDiretorioLogErro: WideString dispid 338;
    function AuditorValidarXml(const aXML: WideString; const aDelimitador: WideString): WideString; dispid 339;
    procedure AuditorShowHtml(const aJSON: WideString); dispid 340;
    procedure AuditorDownloadRegras; dispid 341;
    procedure AuditorLoadConfig(const aConfiINI: WideString); dispid 342;
    procedure AuditorSaveConfig(const aConfiINI: WideString); dispid 343;
    function NotaSeguraEnviarXml(const aXML: WideString): WideString; dispid 344;
    function EnviarEPEC(const aEPECAssinado: WideString): WideString; dispid 346;
    function AssinarEPEC(const aXMLEpec: WideString): WideString; dispid 347;
    function MontarEPEC(const aIdLote: WideString; const aXmlEnvio: WideString; 
                        const aDHEvento: WideString; const aFusoHorario: WideString): WideString; dispid 348;
    property AuditorServidorProxy: WideString dispid 349;
    property AuditorPortaProxy: Integer dispid 350;
    property AuditorUsuarioProxy: WideString dispid 351;
    property AuditorSenhaProxy: WideString dispid 352;
    function GerarXMLEPECDestinatario(const aIDEvento: WideString; const aLogEvento: WideString; 
                                      const aLogRetEvento: WideString; const aSalvarComo: WideString): WideString; dispid 353;
    function ImprimirEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                          const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                          const aImpressora: WideString): WideString; dispid 354;
    function VisualizarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                            const aDataHoraEPEC: WideString; const aArquivoModelo: WideString): WideString; dispid 355;
    function ExportarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                          const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                          aFormato: Integer; const aExportarParaArquivo: WideString): WideString; dispid 356;
    function ConsultarDistribuicaoDFe(const aCodigoUF: WideString; const aCNPJCPF: WideString; 
                                      const aNSU: WideString; aTipoNSU: TipoNSU): WideString; dispid 357;
    function DescompactarXMLZip(const aXML: WideString): WideString; dispid 358;
    property ConexaoSegura: WordBool dispid 359;
    property UltimoLogConsultarDFe: WideString dispid 360;
    function EnviarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                     const aNumProtocolo: WideString; 
                                     const aDataHoraEvento: WideString; const aOrgao: WideString; 
                                     aTpEvento: TipoPedidoProrrogacao; aSequenciaEvento: SYSINT; 
                                     const aFusoHorario: WideString; const aDelimiter: WideString): WideString; dispid 361;
    function CancelarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                       const aNumProtocolo: WideString; 
                                       const aDataHoraEvento: WideString; 
                                       aTpEvento: TipoCancelamentoPedidoProrrogacao; 
                                       aSequenciaEvento: SYSINT; const aFusoHorario: WideString): WideString; dispid 362;
    procedure AdicionarItens(const aNumItens: WideString; const aQtdeItens: WideString); dispid 363;
    property AuditorTimeOut: Integer dispid 364;
    function ConsultarDistribuicaoDFeChave(const aCodigoUF: WideString; const aCNPJCPF: WideString; 
                                           const aChave: WideString): WideString; dispid 365;
    property UltimoLogReciboInutilizacao: WideString dispid 366;
    property ModeloRetratoCancelamento: WideString dispid 367;
    property UltimoLogInutilizacao: WideString dispid 368;
    function CalculaSegCodBarra(const cUF: WideString; const tpEmis: WideString; 
                                const CNPJ: WideString; const vNF: WideString; 
                                const ICMSp: WideString; const ICMSs: WideString; 
                                const DD: WideString): WideString; dispid 369;
    function TestarEmailConfig: WideString; dispid 370;
    procedure ConfigurarSoftwareHouse(const aCNPJSH: WideString; const aKey: WideString); dispid 371;
    property DiretorioTemplates: WideString dispid 101;
    property NomeCertificado: WideString dispid 102;
    property TipoCertificado: TipoCertificado dispid 103;
    property Proxy: WideString dispid 104;
    property Usuario: WideString dispid 105;
    property ConfigINI: WideString dispid 106;
    property SectionINI: WideString dispid 107;
    property Ambiente: Ambiente dispid 108;
    property ArquivoServidoresHom: WideString dispid 109;
    property ArquivoServidoresProd: WideString dispid 110;
    property DiretorioLog: WideString dispid 111;
    function ListarCertificados(const aDelimiter: WideString): WideString; dispid 112;
    function RemoverCertificado(const CertificateName: WideString): WordBool; dispid 113;
    property ErrosValidador: WideString dispid 500;
    property Senha: WideString dispid 580;
    property LogotipoEmitente: WideString dispid 700;
    property UF: WideString dispid 701;
    property CNPJ: WideString dispid 702;
    property DiretorioEsquemas: WideString dispid 703;
    property ValidarEsquemaAntesEnvio: WordBool dispid 704;
    property EmailServidor: WideString dispid 705;
    property EmailAutenticacao: WordBool dispid 706;
    property EmailRemetente: WideString dispid 707;
    property EmailDestinatario: WideString dispid 708;
    property EmailAssunto: WideString dispid 709;
    property EmailMensagem: WideString dispid 710;
    property EmailUsuario: WideString dispid 711;
    property EmailSenha: WideString dispid 712;
    property FraseContingencia: WideString dispid 713;
    property FraseHomologacao: WideString dispid 714;
    property ModeloRetrato: WideString dispid 715;
    property ModeloPaisagem: WideString dispid 716;
    property VersaoManual: WideString dispid 717;
    property AnexarDanfePDF: WordBool dispid 718;
    property QtdeCopias: Integer dispid 719;
    procedure EmailAddCC(const Email: WideString); dispid 720;
    procedure EmailAddCCO(const Email: WideString); dispid 721;
    function GetVencimentoCertificado: WideString; dispid 900;
    property EmailPorta: Integer dispid 901;
    property LineDelimiter: WideString dispid 904;
    property IgnoreInvalidCertificates: WordBool dispid 907;
    procedure SaveConfig(const aConfigFile: WideString); dispid 909;
    property Versao: WideString readonly dispid 911;
    property EmailTimeOut: Integer dispid 912;
    property PINCODE: WideString dispid 913;
    property InfCplMaxCol: Integer dispid 914;
    property InfCplMaxRow: Integer dispid 915;
    property EmailCC: WideString dispid 916;
    property EmailCCo: WideString dispid 917;
    property TimeOut: Integer dispid 918;
    property ModeloDanfeSimplificado: WideString dispid 920;
    property CaracteresRemoverAcentos: WideString dispid 921;
    property ImprimirVolume: WordBool dispid 922;
    property ImprimirDuplicata: WordBool dispid 923;
    property CaminhoCertificado: WideString dispid 924;
    property SenhaCertificado: WideString dispid 925;
    property ImprimirUnidadeTributada: WordBool dispid 926;
    property DiretorioLogErro: WideString dispid 927;
    property DiretorioTemporario: WideString dispid 928;
    property UltimoLogCancelamento: WideString dispid 929;
    property ModoOperacao: ModoOperacaoNFe dispid 666;
    property EmailConteudoHtml: WordBool dispid 345;
    property MensagemPartilhaAutomatica: WordBool dispid 930;
    property ImprimirObsCont: WordBool dispid 931;
    property MensagemFCP: WordBool dispid 932;
    function GetValidadeInicialCertificado: WideString; dispid 933;
    property ImprimirFrenteVerso: ImprimirFrenteVerso dispid 934;
    property AtualizarArquivoServidores: WordBool dispid 935;
  end;

// *********************************************************************//
// Interface: IspdNFeSCAN
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B1CF680-E7AA-4BEC-99E5-C776E43386CA}
// *********************************************************************//
  IspdNFeSCAN = interface(IspdNFeX)
    ['{7B1CF680-E7AA-4BEC-99E5-C776E43386CA}']
    function Get_Serie: WideString; safecall;
    procedure Set_Serie(const Value: WideString); safecall;
    function Get_tpEmis: WideString; safecall;
    procedure Set_tpEmis(const Value: WideString); safecall;
    property Serie: WideString read Get_Serie write Set_Serie;
    property tpEmis: WideString read Get_tpEmis write Set_tpEmis;
  end;

// *********************************************************************//
// DispIntf:  IspdNFeSCANDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B1CF680-E7AA-4BEC-99E5-C776E43386CA}
// *********************************************************************//
  IspdNFeSCANDisp = dispinterface
    ['{7B1CF680-E7AA-4BEC-99E5-C776E43386CA}']
    property Serie: WideString dispid 1610743808;
    property tpEmis: WideString dispid 1610743810;
    function CalculaChaveNFe(const aDtEmissao: WideString; const aUF: WideString; 
                             const aCNPJ: WideString; const aModelo: WideString; 
                             const aSerie: WideString; const aNRNota: WideString; 
                             const aCodSistema: WideString; const aTpEmis: WideString): WideString; dispid 214;
    function AssinarNota(const aXML: WideString): WideString; dispid 215;
    function GerarNotasAleatorias(Qtde: Integer; const CNPJ: WideString): WideString; dispid 216;
    function ConverterLoteParaXML(const ArquivoLoteTxt: WideString; aLayoutConv: LayoutConv; 
                                  const aVersaoEsquema: WideString): WideString; dispid 217;
    function StatusDoServico: WideString; dispid 218;
    function CancelarNF(const aNotaID: WideString; const aNumProtocolo: WideString; 
                        const aJustificativa: WideString): WideString; dispid 219;
    function ConsultarNF(const aNotaID: WideString): WideString; dispid 220;
    function InutilizarNF(const aNotaID: WideString; const aAno: WideString; 
                          const aCNPJ: WideString; const aModelo: WideString; 
                          const aSerie: WideString; const aNFIni: WideString; 
                          const aNFFin: WideString; const aJustificativa: WideString): WideString; dispid 221;
    function EnviarNF(const aNumLote: WideString; const aLoteNotas: WideString; 
                      aCompactado: WordBool): WideString; dispid 222;
    function ConsultarRecibo(const aNumRecibo: WideString): WideString; dispid 223;
    function ConsultarCadastro(const aDocumento: WideString; const aTpDocumento: WideString; 
                               const aUF: WideString): WideString; dispid 224;
    function VisualizarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                             const aArquivoModelo: WideString): WideString; dispid 225;
    function ImprimirDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                           const aArquivoModelo: WideString; const aImpressora: WideString): WideString; dispid 226;
    function EditarModeloDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                               const aArquivoModelo: WideString): WideString; dispid 227;
    function ExportarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                           const aArquivoModelo: WideString; aFormato: Integer; 
                           const aExportarParaArquivo: WideString): WideString; dispid 228;
    function EnviarEmailDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                              const aArquivoModelo: WideString): WideString; dispid 229;
    function LerLog(const aPathArquivoLog: WideString): WideString; dispid 230;
    function VisualizarDanfeLog(const aPathArquivoLog: WideString): WideString; dispid 231;
    function GeraXMLEnvioDestinatario(const aIdNFe: WideString; const aLogEnvLote: WideString; 
                                      const aLogConsRecibo: WideString; 
                                      const aSalvarComo: WideString): WideString; dispid 232;
    function EnviarNotaDestinatario(const aIdNFe: WideString; const aLogEnvio: WideString; 
                                    const aLogRecibo: WideString): WideString; dispid 233;
    procedure LoadConfig(const aConfigFile: WideString); dispid 234;
    property UltimoLogEnvio: WideString dispid 501;
    property UltimoLogConsRecibo: WideString dispid 502;
    property DiretorioXmlDestinatario: WideString dispid 611;
    function ValidarLoteParaEnvio(const aNumLote: WideString; const aLoteXml: WideString): WideString; dispid 613;
    function GerarXmlCancelamentoDestinatario(const aIdNFe: WideString; 
                                              const aContentLogPedCanc: WideString; 
                                              const aContentLogRetCanc: WideString; 
                                              const aSalvarComo: WideString): WideString; dispid 902;
    function EnviarNotaCanceladaDestinatario(const aIdNFe: WideString; 
                                             const aLogPedCanc: WideString; 
                                             const aLogRetCanc: WideString; 
                                             const aEmailDestinatario: WideString): WideString; dispid 903;
    function PreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString): WideString; dispid 905;
    property MaxSizeLoteEnvio: Integer dispid 906;
    function EnviarNotaDestinatarioAnexos(const aArquivoPDF: WideString; 
                                          const aArquivoXML: WideString; const aOutros: WideString): WideString; dispid 908;
    function ValidarArquivoXmlDestinatario(const aXML: WideString; var aErrorList: WideString): WordBool; dispid 919;
    property DanfeSimplificado: WordBool dispid 943;
    function EnviarManifestacaoDestinatario(aTpEvento: Integer; const aNotaID: WideString; 
                                            const aCNPJCPF: WideString; 
                                            const aJustificativa: WideString; 
                                            const aDataHoraEvento: WideString; 
                                            aSequenciaEvento: Integer; 
                                            const aFusoHorario: WideString; 
                                            const aCOrgao: WideString): WideString; dispid 952;
    function ConsultarNFDestinadas(aIndNFe: Integer; aIndEmi: Integer; const aUltNSU: WideString): WideString; dispid 953;
    function CancelarNFeEvento(const aNotaID: WideString; const aNumProtocolo: WideString; 
                               const aJustificativa: WideString; const aDataHoraEvento: WideString; 
                               aSequenciaEvento: Integer; const aFusoHorario: WideString): WideString; dispid 954;
    function DownloadNFe(const aChaves: WideString; const aCOrgao: WideString): WideString; dispid 955;
    property DiretorioDownloads: WideString dispid 317;
    function EnviarCCe(const aNotaID: WideString; const aTextoCorrecao: WideString; 
                       const aDataHoraEvento: WideString; const aOrgao: WideString; 
                       const aIdLote: WideString; aSequenciaEvento: Integer; 
                       const aFusoHorario: WideString): WideString; dispid 318;
    function GerarXMLCCeDestinatario(const aIDEvento: WideString; const aLogEvento: WideString; 
                                     const aLogRetEvento: WideString; const aSalvarComo: WideString): WideString; dispid 319;
    procedure EnviarCCeDestinatario(const aCCe: WideString); dispid 320;
    procedure ImprimirCCe(const aXmlCCe: WideString; const aImpressora: WideString); dispid 321;
    procedure VisualizarCCe(const aXmlCCe: WideString); dispid 322;
    procedure EditarModeloCCe(const aXmlCCe: WideString); dispid 323;
    procedure ExportarCCe(const aXmlCCe: WideString; const aSalvarComo: WideString); dispid 324;
    function CancelarNFeEventoIdLote(const aNotaID: WideString; const aNumProtocolo: WideString; 
                                     const aJustificativa: WideString; 
                                     const aDataHoraEvento: WideString; aSequenciaEvento: Integer; 
                                     const aFusoHorario: WideString; const aIdLote: WideString): WideString; dispid 956;
    function GerarXmlManifestoDestinatario(const aIDEvento: WideString; 
                                           const aLogEvento: WideString; 
                                           const aLogRetEvento: WideString; 
                                           const aSalvarComo: WideString): WideString; dispid 301;
    function ImprimirDanfeXmlDiretorio(const aDiretorioXml: WideString; 
                                       const aArquivoModelo: WideString; 
                                       const aExportarArquivoPara: WideString; 
                                       const aImpressora: WideString): WideString; dispid 303;
    property UltimoLogRecibo: WideString dispid 304;
    function ConverterLoteParaXMLExportacao(const aArquivoLoteTxt: WideString; 
                                            aLayoutConv: LayoutConv; 
                                            const aVersaoEsquema: WideString; aExportacao: WordBool): WideString; dispid 325;
    property UltimoLogReciboCancelamento: WideString dispid 383;
    function EnviarNFSincrono(const aNumLote: WideString; const aLoteNota: WideString; 
                              aCompactado: WordBool): WideString; dispid 302;
    function GerarIDCCe(const aChaveNFe: WideString; aSeqEvento: Integer): WideString; dispid 305;
    procedure ExportarPreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString; 
                                  const aLocalNomeArquivo: WideString); dispid 306;
    property ModeloRTMCCe: WideString dispid 307;
    property EntregaXML: EntregaXML dispid 310;
    function AuditarXml(const aXML: WideString; const aDelimitador: WideString; 
                        const aServidor: WideString; aExibirRegra: WordBool; aExibirHtml: WordBool; 
                        const aParams: WideString): WideString; dispid 311;
    property NotaSeguraToken: WideString dispid 308;
    property NotaSeguraLogin: WideString dispid 309;
    property NotaSeguraSenha: WideString dispid 312;
    property NotaSeguraServidor: WideString dispid 313;
    property AuditorServidor: WideString dispid 314;
    property AuditorExibirRegrasValidacao: WordBool dispid 315;
    property AuditorCodigoProduto: Integer dispid 316;
    property AuditorEstagio: Estagio dispid 326;
    property AuditorTemplateHtml: WideString dispid 327;
    property AuditorHeigthHtml: Integer dispid 328;
    property AuditorWidthHtml: Integer dispid 329;
    property AuditorHtmlBaseUrl: WideString dispid 330;
    property AuditorTipoResposta: TipoResposta dispid 331;
    property AuditorTotalRejeicao: WideString dispid 332;
    property AuditorLinguagemResposta: LinguagemResposta dispid 333;
    property AuditorModoOperacao: ModoOperacao dispid 334;
    property AuditorDiretorioEsquemas: WideString dispid 335;
    property AuditorDiretorioTemplates: WideString dispid 336;
    property AuditorDiretorioRegras: WideString dispid 337;
    property AuditorDiretorioLogErro: WideString dispid 338;
    function AuditorValidarXml(const aXML: WideString; const aDelimitador: WideString): WideString; dispid 339;
    procedure AuditorShowHtml(const aJSON: WideString); dispid 340;
    procedure AuditorDownloadRegras; dispid 341;
    procedure AuditorLoadConfig(const aConfiINI: WideString); dispid 342;
    procedure AuditorSaveConfig(const aConfiINI: WideString); dispid 343;
    function NotaSeguraEnviarXml(const aXML: WideString): WideString; dispid 344;
    function EnviarEPEC(const aEPECAssinado: WideString): WideString; dispid 346;
    function AssinarEPEC(const aXMLEpec: WideString): WideString; dispid 347;
    function MontarEPEC(const aIdLote: WideString; const aXmlEnvio: WideString; 
                        const aDHEvento: WideString; const aFusoHorario: WideString): WideString; dispid 348;
    property AuditorServidorProxy: WideString dispid 349;
    property AuditorPortaProxy: Integer dispid 350;
    property AuditorUsuarioProxy: WideString dispid 351;
    property AuditorSenhaProxy: WideString dispid 352;
    function GerarXMLEPECDestinatario(const aIDEvento: WideString; const aLogEvento: WideString; 
                                      const aLogRetEvento: WideString; const aSalvarComo: WideString): WideString; dispid 353;
    function ImprimirEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                          const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                          const aImpressora: WideString): WideString; dispid 354;
    function VisualizarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                            const aDataHoraEPEC: WideString; const aArquivoModelo: WideString): WideString; dispid 355;
    function ExportarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                          const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                          aFormato: Integer; const aExportarParaArquivo: WideString): WideString; dispid 356;
    function ConsultarDistribuicaoDFe(const aCodigoUF: WideString; const aCNPJCPF: WideString; 
                                      const aNSU: WideString; aTipoNSU: TipoNSU): WideString; dispid 357;
    function DescompactarXMLZip(const aXML: WideString): WideString; dispid 358;
    property ConexaoSegura: WordBool dispid 359;
    property UltimoLogConsultarDFe: WideString dispid 360;
    function EnviarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                     const aNumProtocolo: WideString; 
                                     const aDataHoraEvento: WideString; const aOrgao: WideString; 
                                     aTpEvento: TipoPedidoProrrogacao; aSequenciaEvento: SYSINT; 
                                     const aFusoHorario: WideString; const aDelimiter: WideString): WideString; dispid 361;
    function CancelarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                       const aNumProtocolo: WideString; 
                                       const aDataHoraEvento: WideString; 
                                       aTpEvento: TipoCancelamentoPedidoProrrogacao; 
                                       aSequenciaEvento: SYSINT; const aFusoHorario: WideString): WideString; dispid 362;
    procedure AdicionarItens(const aNumItens: WideString; const aQtdeItens: WideString); dispid 363;
    property AuditorTimeOut: Integer dispid 364;
    function ConsultarDistribuicaoDFeChave(const aCodigoUF: WideString; const aCNPJCPF: WideString; 
                                           const aChave: WideString): WideString; dispid 365;
    property UltimoLogReciboInutilizacao: WideString dispid 366;
    property ModeloRetratoCancelamento: WideString dispid 367;
    property UltimoLogInutilizacao: WideString dispid 368;
    function CalculaSegCodBarra(const cUF: WideString; const tpEmis: WideString; 
                                const CNPJ: WideString; const vNF: WideString; 
                                const ICMSp: WideString; const ICMSs: WideString; 
                                const DD: WideString): WideString; dispid 369;
    function TestarEmailConfig: WideString; dispid 370;
    procedure ConfigurarSoftwareHouse(const aCNPJSH: WideString; const aKey: WideString); dispid 371;
    property DiretorioTemplates: WideString dispid 101;
    property NomeCertificado: WideString dispid 102;
    property TipoCertificado: TipoCertificado dispid 103;
    property Proxy: WideString dispid 104;
    property Usuario: WideString dispid 105;
    property ConfigINI: WideString dispid 106;
    property SectionINI: WideString dispid 107;
    property Ambiente: Ambiente dispid 108;
    property ArquivoServidoresHom: WideString dispid 109;
    property ArquivoServidoresProd: WideString dispid 110;
    property DiretorioLog: WideString dispid 111;
    function ListarCertificados(const aDelimiter: WideString): WideString; dispid 112;
    function RemoverCertificado(const CertificateName: WideString): WordBool; dispid 113;
    property ErrosValidador: WideString dispid 500;
    property Senha: WideString dispid 580;
    property LogotipoEmitente: WideString dispid 700;
    property UF: WideString dispid 701;
    property CNPJ: WideString dispid 702;
    property DiretorioEsquemas: WideString dispid 703;
    property ValidarEsquemaAntesEnvio: WordBool dispid 704;
    property EmailServidor: WideString dispid 705;
    property EmailAutenticacao: WordBool dispid 706;
    property EmailRemetente: WideString dispid 707;
    property EmailDestinatario: WideString dispid 708;
    property EmailAssunto: WideString dispid 709;
    property EmailMensagem: WideString dispid 710;
    property EmailUsuario: WideString dispid 711;
    property EmailSenha: WideString dispid 712;
    property FraseContingencia: WideString dispid 713;
    property FraseHomologacao: WideString dispid 714;
    property ModeloRetrato: WideString dispid 715;
    property ModeloPaisagem: WideString dispid 716;
    property VersaoManual: WideString dispid 717;
    property AnexarDanfePDF: WordBool dispid 718;
    property QtdeCopias: Integer dispid 719;
    procedure EmailAddCC(const Email: WideString); dispid 720;
    procedure EmailAddCCO(const Email: WideString); dispid 721;
    function GetVencimentoCertificado: WideString; dispid 900;
    property EmailPorta: Integer dispid 901;
    property LineDelimiter: WideString dispid 904;
    property IgnoreInvalidCertificates: WordBool dispid 907;
    procedure SaveConfig(const aConfigFile: WideString); dispid 909;
    property Versao: WideString readonly dispid 911;
    property EmailTimeOut: Integer dispid 912;
    property PINCODE: WideString dispid 913;
    property InfCplMaxCol: Integer dispid 914;
    property InfCplMaxRow: Integer dispid 915;
    property EmailCC: WideString dispid 916;
    property EmailCCo: WideString dispid 917;
    property TimeOut: Integer dispid 918;
    property ModeloDanfeSimplificado: WideString dispid 920;
    property CaracteresRemoverAcentos: WideString dispid 921;
    property ImprimirVolume: WordBool dispid 922;
    property ImprimirDuplicata: WordBool dispid 923;
    property CaminhoCertificado: WideString dispid 924;
    property SenhaCertificado: WideString dispid 925;
    property ImprimirUnidadeTributada: WordBool dispid 926;
    property DiretorioLogErro: WideString dispid 927;
    property DiretorioTemporario: WideString dispid 928;
    property UltimoLogCancelamento: WideString dispid 929;
    property ModoOperacao: ModoOperacaoNFe dispid 666;
    property EmailConteudoHtml: WordBool dispid 345;
    property MensagemPartilhaAutomatica: WordBool dispid 930;
    property ImprimirObsCont: WordBool dispid 931;
    property MensagemFCP: WordBool dispid 932;
    function GetValidadeInicialCertificado: WideString; dispid 933;
    property ImprimirFrenteVerso: ImprimirFrenteVerso dispid 934;
    property AtualizarArquivoServidores: WordBool dispid 935;
  end;

// *********************************************************************//
// Interface: IspdNFeDPECX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {54BAA9D8-BA38-404C-A766-F5BBC68D25DD}
// *********************************************************************//
  IspdNFeDPECX = interface(IspdCustomNFe)
    ['{54BAA9D8-BA38-404C-A766-F5BBC68D25DD}']
    function AssinarDPEC(const aXMLDPEC: WideString): WideString; safecall;
    function EnviarDPEC(const aDPECAssinado: WideString): WideString; safecall;
    procedure LoadConfig(const aConfigFile: WideString); safecall;
    function ConsultarDPEC(aTpConsulta: ParamConsDPEC; const aParam: WideString): WideString; safecall;
    function MontarDPEC(const aLoteNormal: WideString): WideString; safecall;
    function VisualizarDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                             const aDataHoraDPEC: WideString; const aArquivoModelo: WideString): WideString; safecall;
    function ImprimirDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                           const aDataHoraDPEC: WideString; const aArquivoModelo: WideString; 
                           const aImpressora: WideString): WideString; safecall;
    function EditarModeloDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                               const aDataHoraDPEC: WideString; const aArquivoModelo: WideString): WideString; safecall;
    function ExportarDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                           const aDataHoraDPEC: WideString; const aArquivoModelo: WideString; 
                           aFormato: Integer; const aExportarParaArquivo: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IspdNFeDPECXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {54BAA9D8-BA38-404C-A766-F5BBC68D25DD}
// *********************************************************************//
  IspdNFeDPECXDisp = dispinterface
    ['{54BAA9D8-BA38-404C-A766-F5BBC68D25DD}']
    function AssinarDPEC(const aXMLDPEC: WideString): WideString; dispid 201;
    function EnviarDPEC(const aDPECAssinado: WideString): WideString; dispid 203;
    procedure LoadConfig(const aConfigFile: WideString); dispid 202;
    function ConsultarDPEC(aTpConsulta: ParamConsDPEC; const aParam: WideString): WideString; dispid 204;
    function MontarDPEC(const aLoteNormal: WideString): WideString; dispid 614;
    function VisualizarDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                             const aDataHoraDPEC: WideString; const aArquivoModelo: WideString): WideString; dispid 722;
    function ImprimirDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                           const aDataHoraDPEC: WideString; const aArquivoModelo: WideString; 
                           const aImpressora: WideString): WideString; dispid 723;
    function EditarModeloDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                               const aDataHoraDPEC: WideString; const aArquivoModelo: WideString): WideString; dispid 724;
    function ExportarDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                           const aDataHoraDPEC: WideString; const aArquivoModelo: WideString; 
                           aFormato: Integer; const aExportarParaArquivo: WideString): WideString; dispid 725;
    property DiretorioTemplates: WideString dispid 101;
    property NomeCertificado: WideString dispid 102;
    property TipoCertificado: TipoCertificado dispid 103;
    property Proxy: WideString dispid 104;
    property Usuario: WideString dispid 105;
    property ConfigINI: WideString dispid 106;
    property SectionINI: WideString dispid 107;
    property Ambiente: Ambiente dispid 108;
    property ArquivoServidoresHom: WideString dispid 109;
    property ArquivoServidoresProd: WideString dispid 110;
    property DiretorioLog: WideString dispid 111;
    function ListarCertificados(const aDelimiter: WideString): WideString; dispid 112;
    function RemoverCertificado(const CertificateName: WideString): WordBool; dispid 113;
    property ErrosValidador: WideString dispid 500;
    property Senha: WideString dispid 580;
    property LogotipoEmitente: WideString dispid 700;
    property UF: WideString dispid 701;
    property CNPJ: WideString dispid 702;
    property DiretorioEsquemas: WideString dispid 703;
    property ValidarEsquemaAntesEnvio: WordBool dispid 704;
    property EmailServidor: WideString dispid 705;
    property EmailAutenticacao: WordBool dispid 706;
    property EmailRemetente: WideString dispid 707;
    property EmailDestinatario: WideString dispid 708;
    property EmailAssunto: WideString dispid 709;
    property EmailMensagem: WideString dispid 710;
    property EmailUsuario: WideString dispid 711;
    property EmailSenha: WideString dispid 712;
    property FraseContingencia: WideString dispid 713;
    property FraseHomologacao: WideString dispid 714;
    property ModeloRetrato: WideString dispid 715;
    property ModeloPaisagem: WideString dispid 716;
    property VersaoManual: WideString dispid 717;
    property AnexarDanfePDF: WordBool dispid 718;
    property QtdeCopias: Integer dispid 719;
    procedure EmailAddCC(const Email: WideString); dispid 720;
    procedure EmailAddCCO(const Email: WideString); dispid 721;
    function GetVencimentoCertificado: WideString; dispid 900;
    property EmailPorta: Integer dispid 901;
    property LineDelimiter: WideString dispid 904;
    property IgnoreInvalidCertificates: WordBool dispid 907;
    procedure SaveConfig(const aConfigFile: WideString); dispid 909;
    property Versao: WideString readonly dispid 911;
    property EmailTimeOut: Integer dispid 912;
    property PINCODE: WideString dispid 913;
    property InfCplMaxCol: Integer dispid 914;
    property InfCplMaxRow: Integer dispid 915;
    property EmailCC: WideString dispid 916;
    property EmailCCo: WideString dispid 917;
    property TimeOut: Integer dispid 918;
    property ModeloDanfeSimplificado: WideString dispid 920;
    property CaracteresRemoverAcentos: WideString dispid 921;
    property ImprimirVolume: WordBool dispid 922;
    property ImprimirDuplicata: WordBool dispid 923;
    property CaminhoCertificado: WideString dispid 924;
    property SenhaCertificado: WideString dispid 925;
    property ImprimirUnidadeTributada: WordBool dispid 926;
    property DiretorioLogErro: WideString dispid 927;
    property DiretorioTemporario: WideString dispid 928;
    property UltimoLogCancelamento: WideString dispid 929;
    property ModoOperacao: ModoOperacaoNFe dispid 666;
    property EmailConteudoHtml: WordBool dispid 345;
    property MensagemPartilhaAutomatica: WordBool dispid 930;
    property ImprimirObsCont: WordBool dispid 931;
    property MensagemFCP: WordBool dispid 932;
    function GetValidadeInicialCertificado: WideString; dispid 933;
    property ImprimirFrenteVerso: ImprimirFrenteVerso dispid 934;
    property AtualizarArquivoServidores: WordBool dispid 935;
  end;

// *********************************************************************//
// The Class CospdCustomNFe provides a Create and CreateRemote method to          
// create instances of the default interface IspdCustomNFe exposed by              
// the CoClass spdCustomNFe. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdCustomNFe = class
    class function Create: IspdCustomNFe;
    class function CreateRemote(const MachineName: string): IspdCustomNFe;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TspdCustomNFe
// Help String      : spdCustomNFe
// Default Interface: IspdCustomNFe
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TspdCustomNFeProperties= class;
{$ENDIF}
  TspdCustomNFe = class(TOleServer)
  private
    FIntf:        IspdCustomNFe;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TspdCustomNFeProperties;
    function      GetServerProperties: TspdCustomNFeProperties;
{$ENDIF}
    function      GetDefaultInterface: IspdCustomNFe;
  protected
    procedure InitServerData; override;
    function Get_DiretorioTemplates: WideString;
    procedure Set_DiretorioTemplates(const Value: WideString);
    function Get_NomeCertificado: WideString;
    procedure Set_NomeCertificado(const Value: WideString);
    function Get_TipoCertificado: TipoCertificado;
    procedure Set_TipoCertificado(Value: TipoCertificado);
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_Usuario: WideString;
    procedure Set_Usuario(const Value: WideString);
    function Get_ConfigINI: WideString;
    procedure Set_ConfigINI(const Value: WideString);
    function Get_SectionINI: WideString;
    procedure Set_SectionINI(const Value: WideString);
    function Get_Ambiente: Ambiente;
    procedure Set_Ambiente(Value: Ambiente);
    function Get_ArquivoServidoresHom: WideString;
    procedure Set_ArquivoServidoresHom(const Value: WideString);
    function Get_ArquivoServidoresProd: WideString;
    procedure Set_ArquivoServidoresProd(const Value: WideString);
    function Get_DiretorioLog: WideString;
    procedure Set_DiretorioLog(const Value: WideString);
    function Get_ErrosValidador: WideString;
    procedure Set_ErrosValidador(const Value: WideString);
    function Get_Senha: WideString;
    procedure Set_Senha(const Value: WideString);
    function Get_LogotipoEmitente: WideString;
    procedure Set_LogotipoEmitente(const Value: WideString);
    function Get_UF: WideString;
    procedure Set_UF(const Value: WideString);
    function Get_CNPJ: WideString;
    procedure Set_CNPJ(const Value: WideString);
    function Get_DiretorioEsquemas: WideString;
    procedure Set_DiretorioEsquemas(const Value: WideString);
    function Get_ValidarEsquemaAntesEnvio: WordBool;
    procedure Set_ValidarEsquemaAntesEnvio(Value: WordBool);
    function Get_EmailServidor: WideString;
    procedure Set_EmailServidor(const Value: WideString);
    function Get_EmailAutenticacao: WordBool;
    procedure Set_EmailAutenticacao(Value: WordBool);
    function Get_EmailRemetente: WideString;
    procedure Set_EmailRemetente(const Value: WideString);
    function Get_EmailDestinatario: WideString;
    procedure Set_EmailDestinatario(const Value: WideString);
    function Get_EmailAssunto: WideString;
    procedure Set_EmailAssunto(const Value: WideString);
    function Get_EmailMensagem: WideString;
    procedure Set_EmailMensagem(const Value: WideString);
    function Get_EmailUsuario: WideString;
    procedure Set_EmailUsuario(const Value: WideString);
    function Get_EmailSenha: WideString;
    procedure Set_EmailSenha(const Value: WideString);
    function Get_FraseContingencia: WideString;
    procedure Set_FraseContingencia(const Value: WideString);
    function Get_FraseHomologacao: WideString;
    procedure Set_FraseHomologacao(const Value: WideString);
    function Get_ModeloRetrato: WideString;
    procedure Set_ModeloRetrato(const Value: WideString);
    function Get_ModeloPaisagem: WideString;
    procedure Set_ModeloPaisagem(const Value: WideString);
    function Get_VersaoManual: WideString;
    procedure Set_VersaoManual(const Value: WideString);
    function Get_AnexarDanfePDF: WordBool;
    procedure Set_AnexarDanfePDF(Value: WordBool);
    function Get_QtdeCopias: Integer;
    procedure Set_QtdeCopias(Value: Integer);
    function Get_EmailPorta: Integer;
    procedure Set_EmailPorta(Value: Integer);
    function Get_LineDelimiter: WideString;
    procedure Set_LineDelimiter(const Value: WideString);
    function Get_IgnoreInvalidCertificates: WordBool;
    procedure Set_IgnoreInvalidCertificates(Value: WordBool);
    function Get_Versao: WideString;
    function Get_EmailTimeOut: Integer;
    procedure Set_EmailTimeOut(Value: Integer);
    function Get_PINCODE: WideString;
    procedure Set_PINCODE(const Value: WideString);
    function Get_InfCplMaxCol: Integer;
    procedure Set_InfCplMaxCol(Value: Integer);
    function Get_InfCplMaxRow: Integer;
    procedure Set_InfCplMaxRow(Value: Integer);
    function Get_EmailCC: WideString;
    procedure Set_EmailCC(const Value: WideString);
    function Get_EmailCCo: WideString;
    procedure Set_EmailCCo(const Value: WideString);
    function Get_TimeOut: Integer;
    procedure Set_TimeOut(Value: Integer);
    function Get_ModeloDanfeSimplificado: WideString;
    procedure Set_ModeloDanfeSimplificado(const Value: WideString);
    function Get_CaracteresRemoverAcentos: WideString;
    procedure Set_CaracteresRemoverAcentos(const Value: WideString);
    function Get_ImprimirVolume: WordBool;
    procedure Set_ImprimirVolume(Value: WordBool);
    function Get_ImprimirDuplicata: WordBool;
    procedure Set_ImprimirDuplicata(Value: WordBool);
    function Get_CaminhoCertificado: WideString;
    procedure Set_CaminhoCertificado(const Value: WideString);
    function Get_SenhaCertificado: WideString;
    procedure Set_SenhaCertificado(const Value: WideString);
    function Get_ImprimirUnidadeTributada: WordBool;
    procedure Set_ImprimirUnidadeTributada(Value: WordBool);
    function Get_DiretorioLogErro: WideString;
    procedure Set_DiretorioLogErro(const Value: WideString);
    function Get_DiretorioTemporario: WideString;
    procedure Set_DiretorioTemporario(const Value: WideString);
    function Get_UltimoLogCancelamento: WideString;
    procedure Set_UltimoLogCancelamento(const Value: WideString);
    function Get_ModoOperacao: ModoOperacaoNFe;
    procedure Set_ModoOperacao(Value: ModoOperacaoNFe);
    function Get_EmailConteudoHtml: WordBool;
    procedure Set_EmailConteudoHtml(Value: WordBool);
    function Get_MensagemPartilhaAutomatica: WordBool;
    procedure Set_MensagemPartilhaAutomatica(Value: WordBool);
    function Get_ImprimirObsCont: WordBool;
    procedure Set_ImprimirObsCont(Value: WordBool);
    function Get_MensagemFCP: WordBool;
    procedure Set_MensagemFCP(Value: WordBool);
    function Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
    procedure Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
    function Get_AtualizarArquivoServidores: WordBool;
    procedure Set_AtualizarArquivoServidores(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IspdCustomNFe);
    procedure Disconnect; override;
    function ListarCertificados(const aDelimiter: WideString): WideString;
    function RemoverCertificado(const CertificateName: WideString): WordBool;
    procedure EmailAddCC(const Email: WideString);
    procedure EmailAddCCO(const Email: WideString);
    function GetVencimentoCertificado: WideString;
    procedure SaveConfig(const aConfigFile: WideString);
    function GetValidadeInicialCertificado: WideString;
    property DefaultInterface: IspdCustomNFe read GetDefaultInterface;
    property Versao: WideString read Get_Versao;
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property NomeCertificado: WideString read Get_NomeCertificado write Set_NomeCertificado;
    property TipoCertificado: TipoCertificado read Get_TipoCertificado write Set_TipoCertificado;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property ConfigINI: WideString read Get_ConfigINI write Set_ConfigINI;
    property SectionINI: WideString read Get_SectionINI write Set_SectionINI;
    property Ambiente: Ambiente read Get_Ambiente write Set_Ambiente;
    property ArquivoServidoresHom: WideString read Get_ArquivoServidoresHom write Set_ArquivoServidoresHom;
    property ArquivoServidoresProd: WideString read Get_ArquivoServidoresProd write Set_ArquivoServidoresProd;
    property DiretorioLog: WideString read Get_DiretorioLog write Set_DiretorioLog;
    property ErrosValidador: WideString read Get_ErrosValidador write Set_ErrosValidador;
    property Senha: WideString read Get_Senha write Set_Senha;
    property LogotipoEmitente: WideString read Get_LogotipoEmitente write Set_LogotipoEmitente;
    property UF: WideString read Get_UF write Set_UF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property DiretorioEsquemas: WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    property ValidarEsquemaAntesEnvio: WordBool read Get_ValidarEsquemaAntesEnvio write Set_ValidarEsquemaAntesEnvio;
    property EmailServidor: WideString read Get_EmailServidor write Set_EmailServidor;
    property EmailAutenticacao: WordBool read Get_EmailAutenticacao write Set_EmailAutenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property EmailAssunto: WideString read Get_EmailAssunto write Set_EmailAssunto;
    property EmailMensagem: WideString read Get_EmailMensagem write Set_EmailMensagem;
    property EmailUsuario: WideString read Get_EmailUsuario write Set_EmailUsuario;
    property EmailSenha: WideString read Get_EmailSenha write Set_EmailSenha;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property VersaoManual: WideString read Get_VersaoManual write Set_VersaoManual;
    property AnexarDanfePDF: WordBool read Get_AnexarDanfePDF write Set_AnexarDanfePDF;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property EmailPorta: Integer read Get_EmailPorta write Set_EmailPorta;
    property LineDelimiter: WideString read Get_LineDelimiter write Set_LineDelimiter;
    property IgnoreInvalidCertificates: WordBool read Get_IgnoreInvalidCertificates write Set_IgnoreInvalidCertificates;
    property EmailTimeOut: Integer read Get_EmailTimeOut write Set_EmailTimeOut;
    property PINCODE: WideString read Get_PINCODE write Set_PINCODE;
    property InfCplMaxCol: Integer read Get_InfCplMaxCol write Set_InfCplMaxCol;
    property InfCplMaxRow: Integer read Get_InfCplMaxRow write Set_InfCplMaxRow;
    property EmailCC: WideString read Get_EmailCC write Set_EmailCC;
    property EmailCCo: WideString read Get_EmailCCo write Set_EmailCCo;
    property TimeOut: Integer read Get_TimeOut write Set_TimeOut;
    property ModeloDanfeSimplificado: WideString read Get_ModeloDanfeSimplificado write Set_ModeloDanfeSimplificado;
    property CaracteresRemoverAcentos: WideString read Get_CaracteresRemoverAcentos write Set_CaracteresRemoverAcentos;
    property ImprimirVolume: WordBool read Get_ImprimirVolume write Set_ImprimirVolume;
    property ImprimirDuplicata: WordBool read Get_ImprimirDuplicata write Set_ImprimirDuplicata;
    property CaminhoCertificado: WideString read Get_CaminhoCertificado write Set_CaminhoCertificado;
    property SenhaCertificado: WideString read Get_SenhaCertificado write Set_SenhaCertificado;
    property ImprimirUnidadeTributada: WordBool read Get_ImprimirUnidadeTributada write Set_ImprimirUnidadeTributada;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
    property DiretorioTemporario: WideString read Get_DiretorioTemporario write Set_DiretorioTemporario;
    property UltimoLogCancelamento: WideString read Get_UltimoLogCancelamento write Set_UltimoLogCancelamento;
    property ModoOperacao: ModoOperacaoNFe read Get_ModoOperacao write Set_ModoOperacao;
    property EmailConteudoHtml: WordBool read Get_EmailConteudoHtml write Set_EmailConteudoHtml;
    property MensagemPartilhaAutomatica: WordBool read Get_MensagemPartilhaAutomatica write Set_MensagemPartilhaAutomatica;
    property ImprimirObsCont: WordBool read Get_ImprimirObsCont write Set_ImprimirObsCont;
    property MensagemFCP: WordBool read Get_MensagemFCP write Set_MensagemFCP;
    property ImprimirFrenteVerso: ImprimirFrenteVerso read Get_ImprimirFrenteVerso write Set_ImprimirFrenteVerso;
    property AtualizarArquivoServidores: WordBool read Get_AtualizarArquivoServidores write Set_AtualizarArquivoServidores;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TspdCustomNFeProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TspdCustomNFe
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TspdCustomNFeProperties = class(TPersistent)
  private
    FServer:    TspdCustomNFe;
    function    GetDefaultInterface: IspdCustomNFe;
    constructor Create(AServer: TspdCustomNFe);
  protected
    function Get_DiretorioTemplates: WideString;
    procedure Set_DiretorioTemplates(const Value: WideString);
    function Get_NomeCertificado: WideString;
    procedure Set_NomeCertificado(const Value: WideString);
    function Get_TipoCertificado: TipoCertificado;
    procedure Set_TipoCertificado(Value: TipoCertificado);
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_Usuario: WideString;
    procedure Set_Usuario(const Value: WideString);
    function Get_ConfigINI: WideString;
    procedure Set_ConfigINI(const Value: WideString);
    function Get_SectionINI: WideString;
    procedure Set_SectionINI(const Value: WideString);
    function Get_Ambiente: Ambiente;
    procedure Set_Ambiente(Value: Ambiente);
    function Get_ArquivoServidoresHom: WideString;
    procedure Set_ArquivoServidoresHom(const Value: WideString);
    function Get_ArquivoServidoresProd: WideString;
    procedure Set_ArquivoServidoresProd(const Value: WideString);
    function Get_DiretorioLog: WideString;
    procedure Set_DiretorioLog(const Value: WideString);
    function Get_ErrosValidador: WideString;
    procedure Set_ErrosValidador(const Value: WideString);
    function Get_Senha: WideString;
    procedure Set_Senha(const Value: WideString);
    function Get_LogotipoEmitente: WideString;
    procedure Set_LogotipoEmitente(const Value: WideString);
    function Get_UF: WideString;
    procedure Set_UF(const Value: WideString);
    function Get_CNPJ: WideString;
    procedure Set_CNPJ(const Value: WideString);
    function Get_DiretorioEsquemas: WideString;
    procedure Set_DiretorioEsquemas(const Value: WideString);
    function Get_ValidarEsquemaAntesEnvio: WordBool;
    procedure Set_ValidarEsquemaAntesEnvio(Value: WordBool);
    function Get_EmailServidor: WideString;
    procedure Set_EmailServidor(const Value: WideString);
    function Get_EmailAutenticacao: WordBool;
    procedure Set_EmailAutenticacao(Value: WordBool);
    function Get_EmailRemetente: WideString;
    procedure Set_EmailRemetente(const Value: WideString);
    function Get_EmailDestinatario: WideString;
    procedure Set_EmailDestinatario(const Value: WideString);
    function Get_EmailAssunto: WideString;
    procedure Set_EmailAssunto(const Value: WideString);
    function Get_EmailMensagem: WideString;
    procedure Set_EmailMensagem(const Value: WideString);
    function Get_EmailUsuario: WideString;
    procedure Set_EmailUsuario(const Value: WideString);
    function Get_EmailSenha: WideString;
    procedure Set_EmailSenha(const Value: WideString);
    function Get_FraseContingencia: WideString;
    procedure Set_FraseContingencia(const Value: WideString);
    function Get_FraseHomologacao: WideString;
    procedure Set_FraseHomologacao(const Value: WideString);
    function Get_ModeloRetrato: WideString;
    procedure Set_ModeloRetrato(const Value: WideString);
    function Get_ModeloPaisagem: WideString;
    procedure Set_ModeloPaisagem(const Value: WideString);
    function Get_VersaoManual: WideString;
    procedure Set_VersaoManual(const Value: WideString);
    function Get_AnexarDanfePDF: WordBool;
    procedure Set_AnexarDanfePDF(Value: WordBool);
    function Get_QtdeCopias: Integer;
    procedure Set_QtdeCopias(Value: Integer);
    function Get_EmailPorta: Integer;
    procedure Set_EmailPorta(Value: Integer);
    function Get_LineDelimiter: WideString;
    procedure Set_LineDelimiter(const Value: WideString);
    function Get_IgnoreInvalidCertificates: WordBool;
    procedure Set_IgnoreInvalidCertificates(Value: WordBool);
    function Get_Versao: WideString;
    function Get_EmailTimeOut: Integer;
    procedure Set_EmailTimeOut(Value: Integer);
    function Get_PINCODE: WideString;
    procedure Set_PINCODE(const Value: WideString);
    function Get_InfCplMaxCol: Integer;
    procedure Set_InfCplMaxCol(Value: Integer);
    function Get_InfCplMaxRow: Integer;
    procedure Set_InfCplMaxRow(Value: Integer);
    function Get_EmailCC: WideString;
    procedure Set_EmailCC(const Value: WideString);
    function Get_EmailCCo: WideString;
    procedure Set_EmailCCo(const Value: WideString);
    function Get_TimeOut: Integer;
    procedure Set_TimeOut(Value: Integer);
    function Get_ModeloDanfeSimplificado: WideString;
    procedure Set_ModeloDanfeSimplificado(const Value: WideString);
    function Get_CaracteresRemoverAcentos: WideString;
    procedure Set_CaracteresRemoverAcentos(const Value: WideString);
    function Get_ImprimirVolume: WordBool;
    procedure Set_ImprimirVolume(Value: WordBool);
    function Get_ImprimirDuplicata: WordBool;
    procedure Set_ImprimirDuplicata(Value: WordBool);
    function Get_CaminhoCertificado: WideString;
    procedure Set_CaminhoCertificado(const Value: WideString);
    function Get_SenhaCertificado: WideString;
    procedure Set_SenhaCertificado(const Value: WideString);
    function Get_ImprimirUnidadeTributada: WordBool;
    procedure Set_ImprimirUnidadeTributada(Value: WordBool);
    function Get_DiretorioLogErro: WideString;
    procedure Set_DiretorioLogErro(const Value: WideString);
    function Get_DiretorioTemporario: WideString;
    procedure Set_DiretorioTemporario(const Value: WideString);
    function Get_UltimoLogCancelamento: WideString;
    procedure Set_UltimoLogCancelamento(const Value: WideString);
    function Get_ModoOperacao: ModoOperacaoNFe;
    procedure Set_ModoOperacao(Value: ModoOperacaoNFe);
    function Get_EmailConteudoHtml: WordBool;
    procedure Set_EmailConteudoHtml(Value: WordBool);
    function Get_MensagemPartilhaAutomatica: WordBool;
    procedure Set_MensagemPartilhaAutomatica(Value: WordBool);
    function Get_ImprimirObsCont: WordBool;
    procedure Set_ImprimirObsCont(Value: WordBool);
    function Get_MensagemFCP: WordBool;
    procedure Set_MensagemFCP(Value: WordBool);
    function Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
    procedure Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
    function Get_AtualizarArquivoServidores: WordBool;
    procedure Set_AtualizarArquivoServidores(Value: WordBool);
  public
    property DefaultInterface: IspdCustomNFe read GetDefaultInterface;
  published
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property NomeCertificado: WideString read Get_NomeCertificado write Set_NomeCertificado;
    property TipoCertificado: TipoCertificado read Get_TipoCertificado write Set_TipoCertificado;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property ConfigINI: WideString read Get_ConfigINI write Set_ConfigINI;
    property SectionINI: WideString read Get_SectionINI write Set_SectionINI;
    property Ambiente: Ambiente read Get_Ambiente write Set_Ambiente;
    property ArquivoServidoresHom: WideString read Get_ArquivoServidoresHom write Set_ArquivoServidoresHom;
    property ArquivoServidoresProd: WideString read Get_ArquivoServidoresProd write Set_ArquivoServidoresProd;
    property DiretorioLog: WideString read Get_DiretorioLog write Set_DiretorioLog;
    property ErrosValidador: WideString read Get_ErrosValidador write Set_ErrosValidador;
    property Senha: WideString read Get_Senha write Set_Senha;
    property LogotipoEmitente: WideString read Get_LogotipoEmitente write Set_LogotipoEmitente;
    property UF: WideString read Get_UF write Set_UF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property DiretorioEsquemas: WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    property ValidarEsquemaAntesEnvio: WordBool read Get_ValidarEsquemaAntesEnvio write Set_ValidarEsquemaAntesEnvio;
    property EmailServidor: WideString read Get_EmailServidor write Set_EmailServidor;
    property EmailAutenticacao: WordBool read Get_EmailAutenticacao write Set_EmailAutenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property EmailAssunto: WideString read Get_EmailAssunto write Set_EmailAssunto;
    property EmailMensagem: WideString read Get_EmailMensagem write Set_EmailMensagem;
    property EmailUsuario: WideString read Get_EmailUsuario write Set_EmailUsuario;
    property EmailSenha: WideString read Get_EmailSenha write Set_EmailSenha;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property VersaoManual: WideString read Get_VersaoManual write Set_VersaoManual;
    property AnexarDanfePDF: WordBool read Get_AnexarDanfePDF write Set_AnexarDanfePDF;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property EmailPorta: Integer read Get_EmailPorta write Set_EmailPorta;
    property LineDelimiter: WideString read Get_LineDelimiter write Set_LineDelimiter;
    property IgnoreInvalidCertificates: WordBool read Get_IgnoreInvalidCertificates write Set_IgnoreInvalidCertificates;
    property EmailTimeOut: Integer read Get_EmailTimeOut write Set_EmailTimeOut;
    property PINCODE: WideString read Get_PINCODE write Set_PINCODE;
    property InfCplMaxCol: Integer read Get_InfCplMaxCol write Set_InfCplMaxCol;
    property InfCplMaxRow: Integer read Get_InfCplMaxRow write Set_InfCplMaxRow;
    property EmailCC: WideString read Get_EmailCC write Set_EmailCC;
    property EmailCCo: WideString read Get_EmailCCo write Set_EmailCCo;
    property TimeOut: Integer read Get_TimeOut write Set_TimeOut;
    property ModeloDanfeSimplificado: WideString read Get_ModeloDanfeSimplificado write Set_ModeloDanfeSimplificado;
    property CaracteresRemoverAcentos: WideString read Get_CaracteresRemoverAcentos write Set_CaracteresRemoverAcentos;
    property ImprimirVolume: WordBool read Get_ImprimirVolume write Set_ImprimirVolume;
    property ImprimirDuplicata: WordBool read Get_ImprimirDuplicata write Set_ImprimirDuplicata;
    property CaminhoCertificado: WideString read Get_CaminhoCertificado write Set_CaminhoCertificado;
    property SenhaCertificado: WideString read Get_SenhaCertificado write Set_SenhaCertificado;
    property ImprimirUnidadeTributada: WordBool read Get_ImprimirUnidadeTributada write Set_ImprimirUnidadeTributada;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
    property DiretorioTemporario: WideString read Get_DiretorioTemporario write Set_DiretorioTemporario;
    property UltimoLogCancelamento: WideString read Get_UltimoLogCancelamento write Set_UltimoLogCancelamento;
    property ModoOperacao: ModoOperacaoNFe read Get_ModoOperacao write Set_ModoOperacao;
    property EmailConteudoHtml: WordBool read Get_EmailConteudoHtml write Set_EmailConteudoHtml;
    property MensagemPartilhaAutomatica: WordBool read Get_MensagemPartilhaAutomatica write Set_MensagemPartilhaAutomatica;
    property ImprimirObsCont: WordBool read Get_ImprimirObsCont write Set_ImprimirObsCont;
    property MensagemFCP: WordBool read Get_MensagemFCP write Set_MensagemFCP;
    property ImprimirFrenteVerso: ImprimirFrenteVerso read Get_ImprimirFrenteVerso write Set_ImprimirFrenteVerso;
    property AtualizarArquivoServidores: WordBool read Get_AtualizarArquivoServidores write Set_AtualizarArquivoServidores;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CospdNFeSCAN provides a Create and CreateRemote method to          
// create instances of the default interface IspdNFeSCAN exposed by              
// the CoClass spdNFeSCAN. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdNFeSCAN = class
    class function Create: IspdNFeSCAN;
    class function CreateRemote(const MachineName: string): IspdNFeSCAN;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TspdNFeSCAN
// Help String      : spdNFeSCAN
// Default Interface: IspdNFeSCAN
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TspdNFeSCANProperties= class;
{$ENDIF}
  TspdNFeSCAN = class(TOleServer)
  private
    FIntf:        IspdNFeSCAN;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TspdNFeSCANProperties;
    function      GetServerProperties: TspdNFeSCANProperties;
{$ENDIF}
    function      GetDefaultInterface: IspdNFeSCAN;
  protected
    procedure InitServerData; override;
    function Get_DiretorioTemplates: WideString;
    procedure Set_DiretorioTemplates(const Value: WideString);
    function Get_NomeCertificado: WideString;
    procedure Set_NomeCertificado(const Value: WideString);
    function Get_TipoCertificado: TipoCertificado;
    procedure Set_TipoCertificado(Value: TipoCertificado);
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_Usuario: WideString;
    procedure Set_Usuario(const Value: WideString);
    function Get_ConfigINI: WideString;
    procedure Set_ConfigINI(const Value: WideString);
    function Get_SectionINI: WideString;
    procedure Set_SectionINI(const Value: WideString);
    function Get_Ambiente: Ambiente;
    procedure Set_Ambiente(Value: Ambiente);
    function Get_ArquivoServidoresHom: WideString;
    procedure Set_ArquivoServidoresHom(const Value: WideString);
    function Get_ArquivoServidoresProd: WideString;
    procedure Set_ArquivoServidoresProd(const Value: WideString);
    function Get_DiretorioLog: WideString;
    procedure Set_DiretorioLog(const Value: WideString);
    function Get_ErrosValidador: WideString;
    procedure Set_ErrosValidador(const Value: WideString);
    function Get_Senha: WideString;
    procedure Set_Senha(const Value: WideString);
    function Get_LogotipoEmitente: WideString;
    procedure Set_LogotipoEmitente(const Value: WideString);
    function Get_UF: WideString;
    procedure Set_UF(const Value: WideString);
    function Get_CNPJ: WideString;
    procedure Set_CNPJ(const Value: WideString);
    function Get_DiretorioEsquemas: WideString;
    procedure Set_DiretorioEsquemas(const Value: WideString);
    function Get_ValidarEsquemaAntesEnvio: WordBool;
    procedure Set_ValidarEsquemaAntesEnvio(Value: WordBool);
    function Get_EmailServidor: WideString;
    procedure Set_EmailServidor(const Value: WideString);
    function Get_EmailAutenticacao: WordBool;
    procedure Set_EmailAutenticacao(Value: WordBool);
    function Get_EmailRemetente: WideString;
    procedure Set_EmailRemetente(const Value: WideString);
    function Get_EmailDestinatario: WideString;
    procedure Set_EmailDestinatario(const Value: WideString);
    function Get_EmailAssunto: WideString;
    procedure Set_EmailAssunto(const Value: WideString);
    function Get_EmailMensagem: WideString;
    procedure Set_EmailMensagem(const Value: WideString);
    function Get_EmailUsuario: WideString;
    procedure Set_EmailUsuario(const Value: WideString);
    function Get_EmailSenha: WideString;
    procedure Set_EmailSenha(const Value: WideString);
    function Get_FraseContingencia: WideString;
    procedure Set_FraseContingencia(const Value: WideString);
    function Get_FraseHomologacao: WideString;
    procedure Set_FraseHomologacao(const Value: WideString);
    function Get_ModeloRetrato: WideString;
    procedure Set_ModeloRetrato(const Value: WideString);
    function Get_ModeloPaisagem: WideString;
    procedure Set_ModeloPaisagem(const Value: WideString);
    function Get_VersaoManual: WideString;
    procedure Set_VersaoManual(const Value: WideString);
    function Get_AnexarDanfePDF: WordBool;
    procedure Set_AnexarDanfePDF(Value: WordBool);
    function Get_QtdeCopias: Integer;
    procedure Set_QtdeCopias(Value: Integer);
    function Get_EmailPorta: Integer;
    procedure Set_EmailPorta(Value: Integer);
    function Get_LineDelimiter: WideString;
    procedure Set_LineDelimiter(const Value: WideString);
    function Get_IgnoreInvalidCertificates: WordBool;
    procedure Set_IgnoreInvalidCertificates(Value: WordBool);
    function Get_Versao: WideString;
    function Get_EmailTimeOut: Integer;
    procedure Set_EmailTimeOut(Value: Integer);
    function Get_PINCODE: WideString;
    procedure Set_PINCODE(const Value: WideString);
    function Get_InfCplMaxCol: Integer;
    procedure Set_InfCplMaxCol(Value: Integer);
    function Get_InfCplMaxRow: Integer;
    procedure Set_InfCplMaxRow(Value: Integer);
    function Get_EmailCC: WideString;
    procedure Set_EmailCC(const Value: WideString);
    function Get_EmailCCo: WideString;
    procedure Set_EmailCCo(const Value: WideString);
    function Get_TimeOut: Integer;
    procedure Set_TimeOut(Value: Integer);
    function Get_ModeloDanfeSimplificado: WideString;
    procedure Set_ModeloDanfeSimplificado(const Value: WideString);
    function Get_CaracteresRemoverAcentos: WideString;
    procedure Set_CaracteresRemoverAcentos(const Value: WideString);
    function Get_ImprimirVolume: WordBool;
    procedure Set_ImprimirVolume(Value: WordBool);
    function Get_ImprimirDuplicata: WordBool;
    procedure Set_ImprimirDuplicata(Value: WordBool);
    function Get_CaminhoCertificado: WideString;
    procedure Set_CaminhoCertificado(const Value: WideString);
    function Get_SenhaCertificado: WideString;
    procedure Set_SenhaCertificado(const Value: WideString);
    function Get_ImprimirUnidadeTributada: WordBool;
    procedure Set_ImprimirUnidadeTributada(Value: WordBool);
    function Get_DiretorioLogErro: WideString;
    procedure Set_DiretorioLogErro(const Value: WideString);
    function Get_DiretorioTemporario: WideString;
    procedure Set_DiretorioTemporario(const Value: WideString);
    function Get_UltimoLogCancelamento: WideString;
    procedure Set_UltimoLogCancelamento(const Value: WideString);
    function Get_ModoOperacao: ModoOperacaoNFe;
    procedure Set_ModoOperacao(Value: ModoOperacaoNFe);
    function Get_EmailConteudoHtml: WordBool;
    procedure Set_EmailConteudoHtml(Value: WordBool);
    function Get_MensagemPartilhaAutomatica: WordBool;
    procedure Set_MensagemPartilhaAutomatica(Value: WordBool);
    function Get_ImprimirObsCont: WordBool;
    procedure Set_ImprimirObsCont(Value: WordBool);
    function Get_MensagemFCP: WordBool;
    procedure Set_MensagemFCP(Value: WordBool);
    function Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
    procedure Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
    function Get_AtualizarArquivoServidores: WordBool;
    procedure Set_AtualizarArquivoServidores(Value: WordBool);
    function Get_UltimoLogEnvio: WideString;
    procedure Set_UltimoLogEnvio(const Value: WideString);
    function Get_UltimoLogConsRecibo: WideString;
    procedure Set_UltimoLogConsRecibo(const Value: WideString);
    function Get_DiretorioXmlDestinatario: WideString;
    procedure Set_DiretorioXmlDestinatario(const Value: WideString);
    function Get_MaxSizeLoteEnvio: Integer;
    procedure Set_MaxSizeLoteEnvio(Value: Integer);
    function Get_DanfeSimplificado: WordBool;
    procedure Set_DanfeSimplificado(Value: WordBool);
    function Get_DiretorioDownloads: WideString;
    procedure Set_DiretorioDownloads(const Value: WideString);
    function Get_UltimoLogRecibo: WideString;
    procedure Set_UltimoLogRecibo(const Value: WideString);
    function Get_UltimoLogReciboCancelamento: WideString;
    procedure Set_UltimoLogReciboCancelamento(const Value: WideString);
    function Get_ModeloRTMCCe: WideString;
    procedure Set_ModeloRTMCCe(const Value: WideString);
    function Get_EntregaXML: EntregaXML;
    procedure Set_EntregaXML(Value: EntregaXML);
    function Get_NotaSeguraToken: WideString;
    procedure Set_NotaSeguraToken(const Value: WideString);
    function Get_NotaSeguraLogin: WideString;
    procedure Set_NotaSeguraLogin(const Value: WideString);
    function Get_NotaSeguraSenha: WideString;
    procedure Set_NotaSeguraSenha(const Value: WideString);
    function Get_NotaSeguraServidor: WideString;
    procedure Set_NotaSeguraServidor(const Value: WideString);
    function Get_AuditorServidor: WideString;
    procedure Set_AuditorServidor(const Value: WideString);
    function Get_AuditorExibirRegrasValidacao: WordBool;
    procedure Set_AuditorExibirRegrasValidacao(Value: WordBool);
    function Get_AuditorCodigoProduto: Integer;
    procedure Set_AuditorCodigoProduto(Value: Integer);
    function Get_AuditorEstagio: Estagio;
    procedure Set_AuditorEstagio(Value: Estagio);
    function Get_AuditorTemplateHtml: WideString;
    procedure Set_AuditorTemplateHtml(const Value: WideString);
    function Get_AuditorHeigthHtml: Integer;
    procedure Set_AuditorHeigthHtml(Value: Integer);
    function Get_AuditorWidthHtml: Integer;
    procedure Set_AuditorWidthHtml(Value: Integer);
    function Get_AuditorHtmlBaseUrl: WideString;
    procedure Set_AuditorHtmlBaseUrl(const Value: WideString);
    function Get_AuditorTipoResposta: TipoResposta;
    procedure Set_AuditorTipoResposta(Value: TipoResposta);
    function Get_AuditorTotalRejeicao: WideString;
    procedure Set_AuditorTotalRejeicao(const Value: WideString);
    function Get_AuditorLinguagemResposta: LinguagemResposta;
    procedure Set_AuditorLinguagemResposta(Value: LinguagemResposta);
    function Get_AuditorModoOperacao: ModoOperacao;
    procedure Set_AuditorModoOperacao(Value: ModoOperacao);
    function Get_AuditorDiretorioEsquemas: WideString;
    procedure Set_AuditorDiretorioEsquemas(const Value: WideString);
    function Get_AuditorDiretorioTemplates: WideString;
    procedure Set_AuditorDiretorioTemplates(const Value: WideString);
    function Get_AuditorDiretorioRegras: WideString;
    procedure Set_AuditorDiretorioRegras(const Value: WideString);
    function Get_AuditorDiretorioLogErro: WideString;
    procedure Set_AuditorDiretorioLogErro(const Value: WideString);
    function Get_AuditorServidorProxy: WideString;
    procedure Set_AuditorServidorProxy(const Value: WideString);
    function Get_AuditorPortaProxy: Integer;
    procedure Set_AuditorPortaProxy(Value: Integer);
    function Get_AuditorUsuarioProxy: WideString;
    procedure Set_AuditorUsuarioProxy(const Value: WideString);
    function Get_AuditorSenhaProxy: WideString;
    procedure Set_AuditorSenhaProxy(const Value: WideString);
    function Get_ConexaoSegura: WordBool;
    procedure Set_ConexaoSegura(Value: WordBool);
    function Get_UltimoLogConsultarDFe: WideString;
    procedure Set_UltimoLogConsultarDFe(const Value: WideString);
    function Get_AuditorTimeOut: Integer;
    procedure Set_AuditorTimeOut(Value: Integer);
    function Get_UltimoLogReciboInutilizacao: WideString;
    procedure Set_UltimoLogReciboInutilizacao(const Value: WideString);
    function Get_ModeloRetratoCancelamento: WideString;
    procedure Set_ModeloRetratoCancelamento(const Value: WideString);
    function Get_UltimoLogInutilizacao: WideString;
    procedure Set_UltimoLogInutilizacao(const Value: WideString);
    function Get_Serie: WideString;
    procedure Set_Serie(const Value: WideString);
    function Get_tpEmis: WideString;
    procedure Set_tpEmis(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IspdNFeSCAN);
    procedure Disconnect; override;
    function ListarCertificados(const aDelimiter: WideString): WideString;
    function RemoverCertificado(const CertificateName: WideString): WordBool;
    procedure EmailAddCC(const Email: WideString);
    procedure EmailAddCCO(const Email: WideString);
    function GetVencimentoCertificado: WideString;
    procedure SaveConfig(const aConfigFile: WideString);
    function GetValidadeInicialCertificado: WideString;
    function CalculaChaveNFe(const aDtEmissao: WideString; const aUF: WideString; 
                             const aCNPJ: WideString; const aModelo: WideString; 
                             const aSerie: WideString; const aNRNota: WideString; 
                             const aCodSistema: WideString; const aTpEmis: WideString): WideString;
    function AssinarNota(const aXML: WideString): WideString;
    function GerarNotasAleatorias(Qtde: Integer; const CNPJ: WideString): WideString;
    function ConverterLoteParaXML(const ArquivoLoteTxt: WideString; aLayoutConv: LayoutConv; 
                                  const aVersaoEsquema: WideString): WideString;
    function StatusDoServico: WideString;
    function CancelarNF(const aNotaID: WideString; const aNumProtocolo: WideString; 
                        const aJustificativa: WideString): WideString;
    function ConsultarNF(const aNotaID: WideString): WideString;
    function InutilizarNF(const aNotaID: WideString; const aAno: WideString; 
                          const aCNPJ: WideString; const aModelo: WideString; 
                          const aSerie: WideString; const aNFIni: WideString; 
                          const aNFFin: WideString; const aJustificativa: WideString): WideString;
    function EnviarNF(const aNumLote: WideString; const aLoteNotas: WideString; 
                      aCompactado: WordBool): WideString;
    function ConsultarRecibo(const aNumRecibo: WideString): WideString;
    function ConsultarCadastro(const aDocumento: WideString; const aTpDocumento: WideString; 
                               const aUF: WideString): WideString;
    function VisualizarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                             const aArquivoModelo: WideString): WideString;
    function ImprimirDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                           const aArquivoModelo: WideString; const aImpressora: WideString): WideString;
    function EditarModeloDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                               const aArquivoModelo: WideString): WideString;
    function ExportarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                           const aArquivoModelo: WideString; aFormato: Integer; 
                           const aExportarParaArquivo: WideString): WideString;
    function EnviarEmailDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                              const aArquivoModelo: WideString): WideString;
    function LerLog(const aPathArquivoLog: WideString): WideString;
    function VisualizarDanfeLog(const aPathArquivoLog: WideString): WideString;
    function GeraXMLEnvioDestinatario(const aIdNFe: WideString; const aLogEnvLote: WideString; 
                                      const aLogConsRecibo: WideString; 
                                      const aSalvarComo: WideString): WideString;
    function EnviarNotaDestinatario(const aIdNFe: WideString; const aLogEnvio: WideString; 
                                    const aLogRecibo: WideString): WideString;
    procedure LoadConfig(const aConfigFile: WideString);
    function ValidarLoteParaEnvio(const aNumLote: WideString; const aLoteXml: WideString): WideString;
    function GerarXmlCancelamentoDestinatario(const aIdNFe: WideString; 
                                              const aContentLogPedCanc: WideString; 
                                              const aContentLogRetCanc: WideString; 
                                              const aSalvarComo: WideString): WideString;
    function EnviarNotaCanceladaDestinatario(const aIdNFe: WideString; 
                                             const aLogPedCanc: WideString; 
                                             const aLogRetCanc: WideString; 
                                             const aEmailDestinatario: WideString): WideString;
    function PreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString): WideString;
    function EnviarNotaDestinatarioAnexos(const aArquivoPDF: WideString; 
                                          const aArquivoXML: WideString; const aOutros: WideString): WideString;
    function ValidarArquivoXmlDestinatario(const aXML: WideString; var aErrorList: WideString): WordBool;
    function EnviarManifestacaoDestinatario(aTpEvento: Integer; const aNotaID: WideString; 
                                            const aCNPJCPF: WideString; 
                                            const aJustificativa: WideString; 
                                            const aDataHoraEvento: WideString; 
                                            aSequenciaEvento: Integer; 
                                            const aFusoHorario: WideString; 
                                            const aCOrgao: WideString): WideString;
    function ConsultarNFDestinadas(aIndNFe: Integer; aIndEmi: Integer; const aUltNSU: WideString): WideString;
    function CancelarNFeEvento(const aNotaID: WideString; const aNumProtocolo: WideString; 
                               const aJustificativa: WideString; const aDataHoraEvento: WideString; 
                               aSequenciaEvento: Integer; const aFusoHorario: WideString): WideString;
    function DownloadNFe(const aChaves: WideString; const aCOrgao: WideString): WideString;
    function EnviarCCe(const aNotaID: WideString; const aTextoCorrecao: WideString; 
                       const aDataHoraEvento: WideString; const aOrgao: WideString; 
                       const aIdLote: WideString; aSequenciaEvento: Integer; 
                       const aFusoHorario: WideString): WideString;
    function GerarXMLCCeDestinatario(const aIDEvento: WideString; const aLogEvento: WideString; 
                                     const aLogRetEvento: WideString; const aSalvarComo: WideString): WideString;
    procedure EnviarCCeDestinatario(const aCCe: WideString);
    procedure ImprimirCCe(const aXmlCCe: WideString; const aImpressora: WideString);
    procedure VisualizarCCe(const aXmlCCe: WideString);
    procedure EditarModeloCCe(const aXmlCCe: WideString);
    procedure ExportarCCe(const aXmlCCe: WideString; const aSalvarComo: WideString);
    function CancelarNFeEventoIdLote(const aNotaID: WideString; const aNumProtocolo: WideString; 
                                     const aJustificativa: WideString; 
                                     const aDataHoraEvento: WideString; aSequenciaEvento: Integer; 
                                     const aFusoHorario: WideString; const aIdLote: WideString): WideString;
    function GerarXmlManifestoDestinatario(const aIDEvento: WideString; 
                                           const aLogEvento: WideString; 
                                           const aLogRetEvento: WideString; 
                                           const aSalvarComo: WideString): WideString;
    function ImprimirDanfeXmlDiretorio(const aDiretorioXml: WideString; 
                                       const aArquivoModelo: WideString; 
                                       const aExportarArquivoPara: WideString; 
                                       const aImpressora: WideString): WideString;
    function ConverterLoteParaXMLExportacao(const aArquivoLoteTxt: WideString; 
                                            aLayoutConv: LayoutConv; 
                                            const aVersaoEsquema: WideString; aExportacao: WordBool): WideString;
    function EnviarNFSincrono(const aNumLote: WideString; const aLoteNota: WideString; 
                              aCompactado: WordBool): WideString;
    function GerarIDCCe(const aChaveNFe: WideString; aSeqEvento: Integer): WideString;
    procedure ExportarPreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString; 
                                  const aLocalNomeArquivo: WideString);
    function AuditarXml(const aXML: WideString; const aDelimitador: WideString; 
                        const aServidor: WideString; aExibirRegra: WordBool; aExibirHtml: WordBool; 
                        const aParams: WideString): WideString;
    function AuditorValidarXml(const aXML: WideString; const aDelimitador: WideString): WideString;
    procedure AuditorShowHtml(const aJSON: WideString);
    procedure AuditorDownloadRegras;
    procedure AuditorLoadConfig(const aConfiINI: WideString);
    procedure AuditorSaveConfig(const aConfiINI: WideString);
    function NotaSeguraEnviarXml(const aXML: WideString): WideString;
    function EnviarEPEC(const aEPECAssinado: WideString): WideString;
    function AssinarEPEC(const aXMLEpec: WideString): WideString;
    function MontarEPEC(const aIdLote: WideString; const aXmlEnvio: WideString; 
                        const aDHEvento: WideString; const aFusoHorario: WideString): WideString;
    function GerarXMLEPECDestinatario(const aIDEvento: WideString; const aLogEvento: WideString; 
                                      const aLogRetEvento: WideString; const aSalvarComo: WideString): WideString;
    function ImprimirEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                          const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                          const aImpressora: WideString): WideString;
    function VisualizarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                            const aDataHoraEPEC: WideString; const aArquivoModelo: WideString): WideString;
    function ExportarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                          const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                          aFormato: Integer; const aExportarParaArquivo: WideString): WideString;
    function ConsultarDistribuicaoDFe(const aCodigoUF: WideString; const aCNPJCPF: WideString; 
                                      const aNSU: WideString; aTipoNSU: TipoNSU): WideString;
    function DescompactarXMLZip(const aXML: WideString): WideString;
    function EnviarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                     const aNumProtocolo: WideString; 
                                     const aDataHoraEvento: WideString; const aOrgao: WideString; 
                                     aTpEvento: TipoPedidoProrrogacao; aSequenciaEvento: SYSINT; 
                                     const aFusoHorario: WideString; const aDelimiter: WideString): WideString;
    function CancelarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                       const aNumProtocolo: WideString; 
                                       const aDataHoraEvento: WideString; 
                                       aTpEvento: TipoCancelamentoPedidoProrrogacao; 
                                       aSequenciaEvento: SYSINT; const aFusoHorario: WideString): WideString;
    procedure AdicionarItens(const aNumItens: WideString; const aQtdeItens: WideString);
    function ConsultarDistribuicaoDFeChave(const aCodigoUF: WideString; const aCNPJCPF: WideString; 
                                           const aChave: WideString): WideString;
    function CalculaSegCodBarra(const cUF: WideString; const tpEmis: WideString; 
                                const CNPJ: WideString; const vNF: WideString; 
                                const ICMSp: WideString; const ICMSs: WideString; 
                                const DD: WideString): WideString;
    function TestarEmailConfig: WideString;
    procedure ConfigurarSoftwareHouse(const aCNPJSH: WideString; const aKey: WideString);
    property DefaultInterface: IspdNFeSCAN read GetDefaultInterface;
    property Versao: WideString read Get_Versao;
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property NomeCertificado: WideString read Get_NomeCertificado write Set_NomeCertificado;
    property TipoCertificado: TipoCertificado read Get_TipoCertificado write Set_TipoCertificado;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property ConfigINI: WideString read Get_ConfigINI write Set_ConfigINI;
    property SectionINI: WideString read Get_SectionINI write Set_SectionINI;
    property Ambiente: Ambiente read Get_Ambiente write Set_Ambiente;
    property ArquivoServidoresHom: WideString read Get_ArquivoServidoresHom write Set_ArquivoServidoresHom;
    property ArquivoServidoresProd: WideString read Get_ArquivoServidoresProd write Set_ArquivoServidoresProd;
    property DiretorioLog: WideString read Get_DiretorioLog write Set_DiretorioLog;
    property ErrosValidador: WideString read Get_ErrosValidador write Set_ErrosValidador;
    property Senha: WideString read Get_Senha write Set_Senha;
    property LogotipoEmitente: WideString read Get_LogotipoEmitente write Set_LogotipoEmitente;
    property UF: WideString read Get_UF write Set_UF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property DiretorioEsquemas: WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    property ValidarEsquemaAntesEnvio: WordBool read Get_ValidarEsquemaAntesEnvio write Set_ValidarEsquemaAntesEnvio;
    property EmailServidor: WideString read Get_EmailServidor write Set_EmailServidor;
    property EmailAutenticacao: WordBool read Get_EmailAutenticacao write Set_EmailAutenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property EmailAssunto: WideString read Get_EmailAssunto write Set_EmailAssunto;
    property EmailMensagem: WideString read Get_EmailMensagem write Set_EmailMensagem;
    property EmailUsuario: WideString read Get_EmailUsuario write Set_EmailUsuario;
    property EmailSenha: WideString read Get_EmailSenha write Set_EmailSenha;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property VersaoManual: WideString read Get_VersaoManual write Set_VersaoManual;
    property AnexarDanfePDF: WordBool read Get_AnexarDanfePDF write Set_AnexarDanfePDF;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property EmailPorta: Integer read Get_EmailPorta write Set_EmailPorta;
    property LineDelimiter: WideString read Get_LineDelimiter write Set_LineDelimiter;
    property IgnoreInvalidCertificates: WordBool read Get_IgnoreInvalidCertificates write Set_IgnoreInvalidCertificates;
    property EmailTimeOut: Integer read Get_EmailTimeOut write Set_EmailTimeOut;
    property PINCODE: WideString read Get_PINCODE write Set_PINCODE;
    property InfCplMaxCol: Integer read Get_InfCplMaxCol write Set_InfCplMaxCol;
    property InfCplMaxRow: Integer read Get_InfCplMaxRow write Set_InfCplMaxRow;
    property EmailCC: WideString read Get_EmailCC write Set_EmailCC;
    property EmailCCo: WideString read Get_EmailCCo write Set_EmailCCo;
    property TimeOut: Integer read Get_TimeOut write Set_TimeOut;
    property ModeloDanfeSimplificado: WideString read Get_ModeloDanfeSimplificado write Set_ModeloDanfeSimplificado;
    property CaracteresRemoverAcentos: WideString read Get_CaracteresRemoverAcentos write Set_CaracteresRemoverAcentos;
    property ImprimirVolume: WordBool read Get_ImprimirVolume write Set_ImprimirVolume;
    property ImprimirDuplicata: WordBool read Get_ImprimirDuplicata write Set_ImprimirDuplicata;
    property CaminhoCertificado: WideString read Get_CaminhoCertificado write Set_CaminhoCertificado;
    property SenhaCertificado: WideString read Get_SenhaCertificado write Set_SenhaCertificado;
    property ImprimirUnidadeTributada: WordBool read Get_ImprimirUnidadeTributada write Set_ImprimirUnidadeTributada;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
    property DiretorioTemporario: WideString read Get_DiretorioTemporario write Set_DiretorioTemporario;
    property UltimoLogCancelamento: WideString read Get_UltimoLogCancelamento write Set_UltimoLogCancelamento;
    property ModoOperacao: ModoOperacaoNFe read Get_ModoOperacao write Set_ModoOperacao;
    property EmailConteudoHtml: WordBool read Get_EmailConteudoHtml write Set_EmailConteudoHtml;
    property MensagemPartilhaAutomatica: WordBool read Get_MensagemPartilhaAutomatica write Set_MensagemPartilhaAutomatica;
    property ImprimirObsCont: WordBool read Get_ImprimirObsCont write Set_ImprimirObsCont;
    property MensagemFCP: WordBool read Get_MensagemFCP write Set_MensagemFCP;
    property ImprimirFrenteVerso: ImprimirFrenteVerso read Get_ImprimirFrenteVerso write Set_ImprimirFrenteVerso;
    property AtualizarArquivoServidores: WordBool read Get_AtualizarArquivoServidores write Set_AtualizarArquivoServidores;
    property UltimoLogEnvio: WideString read Get_UltimoLogEnvio write Set_UltimoLogEnvio;
    property UltimoLogConsRecibo: WideString read Get_UltimoLogConsRecibo write Set_UltimoLogConsRecibo;
    property DiretorioXmlDestinatario: WideString read Get_DiretorioXmlDestinatario write Set_DiretorioXmlDestinatario;
    property MaxSizeLoteEnvio: Integer read Get_MaxSizeLoteEnvio write Set_MaxSizeLoteEnvio;
    property DanfeSimplificado: WordBool read Get_DanfeSimplificado write Set_DanfeSimplificado;
    property DiretorioDownloads: WideString read Get_DiretorioDownloads write Set_DiretorioDownloads;
    property UltimoLogRecibo: WideString read Get_UltimoLogRecibo write Set_UltimoLogRecibo;
    property UltimoLogReciboCancelamento: WideString read Get_UltimoLogReciboCancelamento write Set_UltimoLogReciboCancelamento;
    property ModeloRTMCCe: WideString read Get_ModeloRTMCCe write Set_ModeloRTMCCe;
    property EntregaXML: EntregaXML read Get_EntregaXML write Set_EntregaXML;
    property NotaSeguraToken: WideString read Get_NotaSeguraToken write Set_NotaSeguraToken;
    property NotaSeguraLogin: WideString read Get_NotaSeguraLogin write Set_NotaSeguraLogin;
    property NotaSeguraSenha: WideString read Get_NotaSeguraSenha write Set_NotaSeguraSenha;
    property NotaSeguraServidor: WideString read Get_NotaSeguraServidor write Set_NotaSeguraServidor;
    property AuditorServidor: WideString read Get_AuditorServidor write Set_AuditorServidor;
    property AuditorExibirRegrasValidacao: WordBool read Get_AuditorExibirRegrasValidacao write Set_AuditorExibirRegrasValidacao;
    property AuditorCodigoProduto: Integer read Get_AuditorCodigoProduto write Set_AuditorCodigoProduto;
    property AuditorEstagio: Estagio read Get_AuditorEstagio write Set_AuditorEstagio;
    property AuditorTemplateHtml: WideString read Get_AuditorTemplateHtml write Set_AuditorTemplateHtml;
    property AuditorHeigthHtml: Integer read Get_AuditorHeigthHtml write Set_AuditorHeigthHtml;
    property AuditorWidthHtml: Integer read Get_AuditorWidthHtml write Set_AuditorWidthHtml;
    property AuditorHtmlBaseUrl: WideString read Get_AuditorHtmlBaseUrl write Set_AuditorHtmlBaseUrl;
    property AuditorTipoResposta: TipoResposta read Get_AuditorTipoResposta write Set_AuditorTipoResposta;
    property AuditorTotalRejeicao: WideString read Get_AuditorTotalRejeicao write Set_AuditorTotalRejeicao;
    property AuditorLinguagemResposta: LinguagemResposta read Get_AuditorLinguagemResposta write Set_AuditorLinguagemResposta;
    property AuditorModoOperacao: ModoOperacao read Get_AuditorModoOperacao write Set_AuditorModoOperacao;
    property AuditorDiretorioEsquemas: WideString read Get_AuditorDiretorioEsquemas write Set_AuditorDiretorioEsquemas;
    property AuditorDiretorioTemplates: WideString read Get_AuditorDiretorioTemplates write Set_AuditorDiretorioTemplates;
    property AuditorDiretorioRegras: WideString read Get_AuditorDiretorioRegras write Set_AuditorDiretorioRegras;
    property AuditorDiretorioLogErro: WideString read Get_AuditorDiretorioLogErro write Set_AuditorDiretorioLogErro;
    property AuditorServidorProxy: WideString read Get_AuditorServidorProxy write Set_AuditorServidorProxy;
    property AuditorPortaProxy: Integer read Get_AuditorPortaProxy write Set_AuditorPortaProxy;
    property AuditorUsuarioProxy: WideString read Get_AuditorUsuarioProxy write Set_AuditorUsuarioProxy;
    property AuditorSenhaProxy: WideString read Get_AuditorSenhaProxy write Set_AuditorSenhaProxy;
    property ConexaoSegura: WordBool read Get_ConexaoSegura write Set_ConexaoSegura;
    property UltimoLogConsultarDFe: WideString read Get_UltimoLogConsultarDFe write Set_UltimoLogConsultarDFe;
    property AuditorTimeOut: Integer read Get_AuditorTimeOut write Set_AuditorTimeOut;
    property UltimoLogReciboInutilizacao: WideString read Get_UltimoLogReciboInutilizacao write Set_UltimoLogReciboInutilizacao;
    property ModeloRetratoCancelamento: WideString read Get_ModeloRetratoCancelamento write Set_ModeloRetratoCancelamento;
    property UltimoLogInutilizacao: WideString read Get_UltimoLogInutilizacao write Set_UltimoLogInutilizacao;
    property Serie: WideString read Get_Serie write Set_Serie;
    property tpEmis: WideString read Get_tpEmis write Set_tpEmis;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TspdNFeSCANProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TspdNFeSCAN
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TspdNFeSCANProperties = class(TPersistent)
  private
    FServer:    TspdNFeSCAN;
    function    GetDefaultInterface: IspdNFeSCAN;
    constructor Create(AServer: TspdNFeSCAN);
  protected
    function Get_DiretorioTemplates: WideString;
    procedure Set_DiretorioTemplates(const Value: WideString);
    function Get_NomeCertificado: WideString;
    procedure Set_NomeCertificado(const Value: WideString);
    function Get_TipoCertificado: TipoCertificado;
    procedure Set_TipoCertificado(Value: TipoCertificado);
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_Usuario: WideString;
    procedure Set_Usuario(const Value: WideString);
    function Get_ConfigINI: WideString;
    procedure Set_ConfigINI(const Value: WideString);
    function Get_SectionINI: WideString;
    procedure Set_SectionINI(const Value: WideString);
    function Get_Ambiente: Ambiente;
    procedure Set_Ambiente(Value: Ambiente);
    function Get_ArquivoServidoresHom: WideString;
    procedure Set_ArquivoServidoresHom(const Value: WideString);
    function Get_ArquivoServidoresProd: WideString;
    procedure Set_ArquivoServidoresProd(const Value: WideString);
    function Get_DiretorioLog: WideString;
    procedure Set_DiretorioLog(const Value: WideString);
    function Get_ErrosValidador: WideString;
    procedure Set_ErrosValidador(const Value: WideString);
    function Get_Senha: WideString;
    procedure Set_Senha(const Value: WideString);
    function Get_LogotipoEmitente: WideString;
    procedure Set_LogotipoEmitente(const Value: WideString);
    function Get_UF: WideString;
    procedure Set_UF(const Value: WideString);
    function Get_CNPJ: WideString;
    procedure Set_CNPJ(const Value: WideString);
    function Get_DiretorioEsquemas: WideString;
    procedure Set_DiretorioEsquemas(const Value: WideString);
    function Get_ValidarEsquemaAntesEnvio: WordBool;
    procedure Set_ValidarEsquemaAntesEnvio(Value: WordBool);
    function Get_EmailServidor: WideString;
    procedure Set_EmailServidor(const Value: WideString);
    function Get_EmailAutenticacao: WordBool;
    procedure Set_EmailAutenticacao(Value: WordBool);
    function Get_EmailRemetente: WideString;
    procedure Set_EmailRemetente(const Value: WideString);
    function Get_EmailDestinatario: WideString;
    procedure Set_EmailDestinatario(const Value: WideString);
    function Get_EmailAssunto: WideString;
    procedure Set_EmailAssunto(const Value: WideString);
    function Get_EmailMensagem: WideString;
    procedure Set_EmailMensagem(const Value: WideString);
    function Get_EmailUsuario: WideString;
    procedure Set_EmailUsuario(const Value: WideString);
    function Get_EmailSenha: WideString;
    procedure Set_EmailSenha(const Value: WideString);
    function Get_FraseContingencia: WideString;
    procedure Set_FraseContingencia(const Value: WideString);
    function Get_FraseHomologacao: WideString;
    procedure Set_FraseHomologacao(const Value: WideString);
    function Get_ModeloRetrato: WideString;
    procedure Set_ModeloRetrato(const Value: WideString);
    function Get_ModeloPaisagem: WideString;
    procedure Set_ModeloPaisagem(const Value: WideString);
    function Get_VersaoManual: WideString;
    procedure Set_VersaoManual(const Value: WideString);
    function Get_AnexarDanfePDF: WordBool;
    procedure Set_AnexarDanfePDF(Value: WordBool);
    function Get_QtdeCopias: Integer;
    procedure Set_QtdeCopias(Value: Integer);
    function Get_EmailPorta: Integer;
    procedure Set_EmailPorta(Value: Integer);
    function Get_LineDelimiter: WideString;
    procedure Set_LineDelimiter(const Value: WideString);
    function Get_IgnoreInvalidCertificates: WordBool;
    procedure Set_IgnoreInvalidCertificates(Value: WordBool);
    function Get_Versao: WideString;
    function Get_EmailTimeOut: Integer;
    procedure Set_EmailTimeOut(Value: Integer);
    function Get_PINCODE: WideString;
    procedure Set_PINCODE(const Value: WideString);
    function Get_InfCplMaxCol: Integer;
    procedure Set_InfCplMaxCol(Value: Integer);
    function Get_InfCplMaxRow: Integer;
    procedure Set_InfCplMaxRow(Value: Integer);
    function Get_EmailCC: WideString;
    procedure Set_EmailCC(const Value: WideString);
    function Get_EmailCCo: WideString;
    procedure Set_EmailCCo(const Value: WideString);
    function Get_TimeOut: Integer;
    procedure Set_TimeOut(Value: Integer);
    function Get_ModeloDanfeSimplificado: WideString;
    procedure Set_ModeloDanfeSimplificado(const Value: WideString);
    function Get_CaracteresRemoverAcentos: WideString;
    procedure Set_CaracteresRemoverAcentos(const Value: WideString);
    function Get_ImprimirVolume: WordBool;
    procedure Set_ImprimirVolume(Value: WordBool);
    function Get_ImprimirDuplicata: WordBool;
    procedure Set_ImprimirDuplicata(Value: WordBool);
    function Get_CaminhoCertificado: WideString;
    procedure Set_CaminhoCertificado(const Value: WideString);
    function Get_SenhaCertificado: WideString;
    procedure Set_SenhaCertificado(const Value: WideString);
    function Get_ImprimirUnidadeTributada: WordBool;
    procedure Set_ImprimirUnidadeTributada(Value: WordBool);
    function Get_DiretorioLogErro: WideString;
    procedure Set_DiretorioLogErro(const Value: WideString);
    function Get_DiretorioTemporario: WideString;
    procedure Set_DiretorioTemporario(const Value: WideString);
    function Get_UltimoLogCancelamento: WideString;
    procedure Set_UltimoLogCancelamento(const Value: WideString);
    function Get_ModoOperacao: ModoOperacaoNFe;
    procedure Set_ModoOperacao(Value: ModoOperacaoNFe);
    function Get_EmailConteudoHtml: WordBool;
    procedure Set_EmailConteudoHtml(Value: WordBool);
    function Get_MensagemPartilhaAutomatica: WordBool;
    procedure Set_MensagemPartilhaAutomatica(Value: WordBool);
    function Get_ImprimirObsCont: WordBool;
    procedure Set_ImprimirObsCont(Value: WordBool);
    function Get_MensagemFCP: WordBool;
    procedure Set_MensagemFCP(Value: WordBool);
    function Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
    procedure Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
    function Get_AtualizarArquivoServidores: WordBool;
    procedure Set_AtualizarArquivoServidores(Value: WordBool);
    function Get_UltimoLogEnvio: WideString;
    procedure Set_UltimoLogEnvio(const Value: WideString);
    function Get_UltimoLogConsRecibo: WideString;
    procedure Set_UltimoLogConsRecibo(const Value: WideString);
    function Get_DiretorioXmlDestinatario: WideString;
    procedure Set_DiretorioXmlDestinatario(const Value: WideString);
    function Get_MaxSizeLoteEnvio: Integer;
    procedure Set_MaxSizeLoteEnvio(Value: Integer);
    function Get_DanfeSimplificado: WordBool;
    procedure Set_DanfeSimplificado(Value: WordBool);
    function Get_DiretorioDownloads: WideString;
    procedure Set_DiretorioDownloads(const Value: WideString);
    function Get_UltimoLogRecibo: WideString;
    procedure Set_UltimoLogRecibo(const Value: WideString);
    function Get_UltimoLogReciboCancelamento: WideString;
    procedure Set_UltimoLogReciboCancelamento(const Value: WideString);
    function Get_ModeloRTMCCe: WideString;
    procedure Set_ModeloRTMCCe(const Value: WideString);
    function Get_EntregaXML: EntregaXML;
    procedure Set_EntregaXML(Value: EntregaXML);
    function Get_NotaSeguraToken: WideString;
    procedure Set_NotaSeguraToken(const Value: WideString);
    function Get_NotaSeguraLogin: WideString;
    procedure Set_NotaSeguraLogin(const Value: WideString);
    function Get_NotaSeguraSenha: WideString;
    procedure Set_NotaSeguraSenha(const Value: WideString);
    function Get_NotaSeguraServidor: WideString;
    procedure Set_NotaSeguraServidor(const Value: WideString);
    function Get_AuditorServidor: WideString;
    procedure Set_AuditorServidor(const Value: WideString);
    function Get_AuditorExibirRegrasValidacao: WordBool;
    procedure Set_AuditorExibirRegrasValidacao(Value: WordBool);
    function Get_AuditorCodigoProduto: Integer;
    procedure Set_AuditorCodigoProduto(Value: Integer);
    function Get_AuditorEstagio: Estagio;
    procedure Set_AuditorEstagio(Value: Estagio);
    function Get_AuditorTemplateHtml: WideString;
    procedure Set_AuditorTemplateHtml(const Value: WideString);
    function Get_AuditorHeigthHtml: Integer;
    procedure Set_AuditorHeigthHtml(Value: Integer);
    function Get_AuditorWidthHtml: Integer;
    procedure Set_AuditorWidthHtml(Value: Integer);
    function Get_AuditorHtmlBaseUrl: WideString;
    procedure Set_AuditorHtmlBaseUrl(const Value: WideString);
    function Get_AuditorTipoResposta: TipoResposta;
    procedure Set_AuditorTipoResposta(Value: TipoResposta);
    function Get_AuditorTotalRejeicao: WideString;
    procedure Set_AuditorTotalRejeicao(const Value: WideString);
    function Get_AuditorLinguagemResposta: LinguagemResposta;
    procedure Set_AuditorLinguagemResposta(Value: LinguagemResposta);
    function Get_AuditorModoOperacao: ModoOperacao;
    procedure Set_AuditorModoOperacao(Value: ModoOperacao);
    function Get_AuditorDiretorioEsquemas: WideString;
    procedure Set_AuditorDiretorioEsquemas(const Value: WideString);
    function Get_AuditorDiretorioTemplates: WideString;
    procedure Set_AuditorDiretorioTemplates(const Value: WideString);
    function Get_AuditorDiretorioRegras: WideString;
    procedure Set_AuditorDiretorioRegras(const Value: WideString);
    function Get_AuditorDiretorioLogErro: WideString;
    procedure Set_AuditorDiretorioLogErro(const Value: WideString);
    function Get_AuditorServidorProxy: WideString;
    procedure Set_AuditorServidorProxy(const Value: WideString);
    function Get_AuditorPortaProxy: Integer;
    procedure Set_AuditorPortaProxy(Value: Integer);
    function Get_AuditorUsuarioProxy: WideString;
    procedure Set_AuditorUsuarioProxy(const Value: WideString);
    function Get_AuditorSenhaProxy: WideString;
    procedure Set_AuditorSenhaProxy(const Value: WideString);
    function Get_ConexaoSegura: WordBool;
    procedure Set_ConexaoSegura(Value: WordBool);
    function Get_UltimoLogConsultarDFe: WideString;
    procedure Set_UltimoLogConsultarDFe(const Value: WideString);
    function Get_AuditorTimeOut: Integer;
    procedure Set_AuditorTimeOut(Value: Integer);
    function Get_UltimoLogReciboInutilizacao: WideString;
    procedure Set_UltimoLogReciboInutilizacao(const Value: WideString);
    function Get_ModeloRetratoCancelamento: WideString;
    procedure Set_ModeloRetratoCancelamento(const Value: WideString);
    function Get_UltimoLogInutilizacao: WideString;
    procedure Set_UltimoLogInutilizacao(const Value: WideString);
    function Get_Serie: WideString;
    procedure Set_Serie(const Value: WideString);
    function Get_tpEmis: WideString;
    procedure Set_tpEmis(const Value: WideString);
  public
    property DefaultInterface: IspdNFeSCAN read GetDefaultInterface;
  published
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property NomeCertificado: WideString read Get_NomeCertificado write Set_NomeCertificado;
    property TipoCertificado: TipoCertificado read Get_TipoCertificado write Set_TipoCertificado;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property ConfigINI: WideString read Get_ConfigINI write Set_ConfigINI;
    property SectionINI: WideString read Get_SectionINI write Set_SectionINI;
    property Ambiente: Ambiente read Get_Ambiente write Set_Ambiente;
    property ArquivoServidoresHom: WideString read Get_ArquivoServidoresHom write Set_ArquivoServidoresHom;
    property ArquivoServidoresProd: WideString read Get_ArquivoServidoresProd write Set_ArquivoServidoresProd;
    property DiretorioLog: WideString read Get_DiretorioLog write Set_DiretorioLog;
    property ErrosValidador: WideString read Get_ErrosValidador write Set_ErrosValidador;
    property Senha: WideString read Get_Senha write Set_Senha;
    property LogotipoEmitente: WideString read Get_LogotipoEmitente write Set_LogotipoEmitente;
    property UF: WideString read Get_UF write Set_UF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property DiretorioEsquemas: WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    property ValidarEsquemaAntesEnvio: WordBool read Get_ValidarEsquemaAntesEnvio write Set_ValidarEsquemaAntesEnvio;
    property EmailServidor: WideString read Get_EmailServidor write Set_EmailServidor;
    property EmailAutenticacao: WordBool read Get_EmailAutenticacao write Set_EmailAutenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property EmailAssunto: WideString read Get_EmailAssunto write Set_EmailAssunto;
    property EmailMensagem: WideString read Get_EmailMensagem write Set_EmailMensagem;
    property EmailUsuario: WideString read Get_EmailUsuario write Set_EmailUsuario;
    property EmailSenha: WideString read Get_EmailSenha write Set_EmailSenha;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property VersaoManual: WideString read Get_VersaoManual write Set_VersaoManual;
    property AnexarDanfePDF: WordBool read Get_AnexarDanfePDF write Set_AnexarDanfePDF;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property EmailPorta: Integer read Get_EmailPorta write Set_EmailPorta;
    property LineDelimiter: WideString read Get_LineDelimiter write Set_LineDelimiter;
    property IgnoreInvalidCertificates: WordBool read Get_IgnoreInvalidCertificates write Set_IgnoreInvalidCertificates;
    property EmailTimeOut: Integer read Get_EmailTimeOut write Set_EmailTimeOut;
    property PINCODE: WideString read Get_PINCODE write Set_PINCODE;
    property InfCplMaxCol: Integer read Get_InfCplMaxCol write Set_InfCplMaxCol;
    property InfCplMaxRow: Integer read Get_InfCplMaxRow write Set_InfCplMaxRow;
    property EmailCC: WideString read Get_EmailCC write Set_EmailCC;
    property EmailCCo: WideString read Get_EmailCCo write Set_EmailCCo;
    property TimeOut: Integer read Get_TimeOut write Set_TimeOut;
    property ModeloDanfeSimplificado: WideString read Get_ModeloDanfeSimplificado write Set_ModeloDanfeSimplificado;
    property CaracteresRemoverAcentos: WideString read Get_CaracteresRemoverAcentos write Set_CaracteresRemoverAcentos;
    property ImprimirVolume: WordBool read Get_ImprimirVolume write Set_ImprimirVolume;
    property ImprimirDuplicata: WordBool read Get_ImprimirDuplicata write Set_ImprimirDuplicata;
    property CaminhoCertificado: WideString read Get_CaminhoCertificado write Set_CaminhoCertificado;
    property SenhaCertificado: WideString read Get_SenhaCertificado write Set_SenhaCertificado;
    property ImprimirUnidadeTributada: WordBool read Get_ImprimirUnidadeTributada write Set_ImprimirUnidadeTributada;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
    property DiretorioTemporario: WideString read Get_DiretorioTemporario write Set_DiretorioTemporario;
    property UltimoLogCancelamento: WideString read Get_UltimoLogCancelamento write Set_UltimoLogCancelamento;
    property ModoOperacao: ModoOperacaoNFe read Get_ModoOperacao write Set_ModoOperacao;
    property EmailConteudoHtml: WordBool read Get_EmailConteudoHtml write Set_EmailConteudoHtml;
    property MensagemPartilhaAutomatica: WordBool read Get_MensagemPartilhaAutomatica write Set_MensagemPartilhaAutomatica;
    property ImprimirObsCont: WordBool read Get_ImprimirObsCont write Set_ImprimirObsCont;
    property MensagemFCP: WordBool read Get_MensagemFCP write Set_MensagemFCP;
    property ImprimirFrenteVerso: ImprimirFrenteVerso read Get_ImprimirFrenteVerso write Set_ImprimirFrenteVerso;
    property AtualizarArquivoServidores: WordBool read Get_AtualizarArquivoServidores write Set_AtualizarArquivoServidores;
    property UltimoLogEnvio: WideString read Get_UltimoLogEnvio write Set_UltimoLogEnvio;
    property UltimoLogConsRecibo: WideString read Get_UltimoLogConsRecibo write Set_UltimoLogConsRecibo;
    property DiretorioXmlDestinatario: WideString read Get_DiretorioXmlDestinatario write Set_DiretorioXmlDestinatario;
    property MaxSizeLoteEnvio: Integer read Get_MaxSizeLoteEnvio write Set_MaxSizeLoteEnvio;
    property DanfeSimplificado: WordBool read Get_DanfeSimplificado write Set_DanfeSimplificado;
    property DiretorioDownloads: WideString read Get_DiretorioDownloads write Set_DiretorioDownloads;
    property UltimoLogRecibo: WideString read Get_UltimoLogRecibo write Set_UltimoLogRecibo;
    property UltimoLogReciboCancelamento: WideString read Get_UltimoLogReciboCancelamento write Set_UltimoLogReciboCancelamento;
    property ModeloRTMCCe: WideString read Get_ModeloRTMCCe write Set_ModeloRTMCCe;
    property EntregaXML: EntregaXML read Get_EntregaXML write Set_EntregaXML;
    property NotaSeguraToken: WideString read Get_NotaSeguraToken write Set_NotaSeguraToken;
    property NotaSeguraLogin: WideString read Get_NotaSeguraLogin write Set_NotaSeguraLogin;
    property NotaSeguraSenha: WideString read Get_NotaSeguraSenha write Set_NotaSeguraSenha;
    property NotaSeguraServidor: WideString read Get_NotaSeguraServidor write Set_NotaSeguraServidor;
    property AuditorServidor: WideString read Get_AuditorServidor write Set_AuditorServidor;
    property AuditorExibirRegrasValidacao: WordBool read Get_AuditorExibirRegrasValidacao write Set_AuditorExibirRegrasValidacao;
    property AuditorCodigoProduto: Integer read Get_AuditorCodigoProduto write Set_AuditorCodigoProduto;
    property AuditorEstagio: Estagio read Get_AuditorEstagio write Set_AuditorEstagio;
    property AuditorTemplateHtml: WideString read Get_AuditorTemplateHtml write Set_AuditorTemplateHtml;
    property AuditorHeigthHtml: Integer read Get_AuditorHeigthHtml write Set_AuditorHeigthHtml;
    property AuditorWidthHtml: Integer read Get_AuditorWidthHtml write Set_AuditorWidthHtml;
    property AuditorHtmlBaseUrl: WideString read Get_AuditorHtmlBaseUrl write Set_AuditorHtmlBaseUrl;
    property AuditorTipoResposta: TipoResposta read Get_AuditorTipoResposta write Set_AuditorTipoResposta;
    property AuditorTotalRejeicao: WideString read Get_AuditorTotalRejeicao write Set_AuditorTotalRejeicao;
    property AuditorLinguagemResposta: LinguagemResposta read Get_AuditorLinguagemResposta write Set_AuditorLinguagemResposta;
    property AuditorModoOperacao: ModoOperacao read Get_AuditorModoOperacao write Set_AuditorModoOperacao;
    property AuditorDiretorioEsquemas: WideString read Get_AuditorDiretorioEsquemas write Set_AuditorDiretorioEsquemas;
    property AuditorDiretorioTemplates: WideString read Get_AuditorDiretorioTemplates write Set_AuditorDiretorioTemplates;
    property AuditorDiretorioRegras: WideString read Get_AuditorDiretorioRegras write Set_AuditorDiretorioRegras;
    property AuditorDiretorioLogErro: WideString read Get_AuditorDiretorioLogErro write Set_AuditorDiretorioLogErro;
    property AuditorServidorProxy: WideString read Get_AuditorServidorProxy write Set_AuditorServidorProxy;
    property AuditorPortaProxy: Integer read Get_AuditorPortaProxy write Set_AuditorPortaProxy;
    property AuditorUsuarioProxy: WideString read Get_AuditorUsuarioProxy write Set_AuditorUsuarioProxy;
    property AuditorSenhaProxy: WideString read Get_AuditorSenhaProxy write Set_AuditorSenhaProxy;
    property ConexaoSegura: WordBool read Get_ConexaoSegura write Set_ConexaoSegura;
    property UltimoLogConsultarDFe: WideString read Get_UltimoLogConsultarDFe write Set_UltimoLogConsultarDFe;
    property AuditorTimeOut: Integer read Get_AuditorTimeOut write Set_AuditorTimeOut;
    property UltimoLogReciboInutilizacao: WideString read Get_UltimoLogReciboInutilizacao write Set_UltimoLogReciboInutilizacao;
    property ModeloRetratoCancelamento: WideString read Get_ModeloRetratoCancelamento write Set_ModeloRetratoCancelamento;
    property UltimoLogInutilizacao: WideString read Get_UltimoLogInutilizacao write Set_UltimoLogInutilizacao;
    property Serie: WideString read Get_Serie write Set_Serie;
    property tpEmis: WideString read Get_tpEmis write Set_tpEmis;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CospdNFeDPECX provides a Create and CreateRemote method to          
// create instances of the default interface IspdNFeDPECX exposed by              
// the CoClass spdNFeDPECX. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdNFeDPECX = class
    class function Create: IspdNFeDPECX;
    class function CreateRemote(const MachineName: string): IspdNFeDPECX;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TspdNFeDPECX
// Help String      : spdNFeDPECX
// Default Interface: IspdNFeDPECX
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TspdNFeDPECXProperties= class;
{$ENDIF}
  TspdNFeDPECX = class(TOleServer)
  private
    FIntf:        IspdNFeDPECX;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TspdNFeDPECXProperties;
    function      GetServerProperties: TspdNFeDPECXProperties;
{$ENDIF}
    function      GetDefaultInterface: IspdNFeDPECX;
  protected
    procedure InitServerData; override;
    function Get_DiretorioTemplates: WideString;
    procedure Set_DiretorioTemplates(const Value: WideString);
    function Get_NomeCertificado: WideString;
    procedure Set_NomeCertificado(const Value: WideString);
    function Get_TipoCertificado: TipoCertificado;
    procedure Set_TipoCertificado(Value: TipoCertificado);
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_Usuario: WideString;
    procedure Set_Usuario(const Value: WideString);
    function Get_ConfigINI: WideString;
    procedure Set_ConfigINI(const Value: WideString);
    function Get_SectionINI: WideString;
    procedure Set_SectionINI(const Value: WideString);
    function Get_Ambiente: Ambiente;
    procedure Set_Ambiente(Value: Ambiente);
    function Get_ArquivoServidoresHom: WideString;
    procedure Set_ArquivoServidoresHom(const Value: WideString);
    function Get_ArquivoServidoresProd: WideString;
    procedure Set_ArquivoServidoresProd(const Value: WideString);
    function Get_DiretorioLog: WideString;
    procedure Set_DiretorioLog(const Value: WideString);
    function Get_ErrosValidador: WideString;
    procedure Set_ErrosValidador(const Value: WideString);
    function Get_Senha: WideString;
    procedure Set_Senha(const Value: WideString);
    function Get_LogotipoEmitente: WideString;
    procedure Set_LogotipoEmitente(const Value: WideString);
    function Get_UF: WideString;
    procedure Set_UF(const Value: WideString);
    function Get_CNPJ: WideString;
    procedure Set_CNPJ(const Value: WideString);
    function Get_DiretorioEsquemas: WideString;
    procedure Set_DiretorioEsquemas(const Value: WideString);
    function Get_ValidarEsquemaAntesEnvio: WordBool;
    procedure Set_ValidarEsquemaAntesEnvio(Value: WordBool);
    function Get_EmailServidor: WideString;
    procedure Set_EmailServidor(const Value: WideString);
    function Get_EmailAutenticacao: WordBool;
    procedure Set_EmailAutenticacao(Value: WordBool);
    function Get_EmailRemetente: WideString;
    procedure Set_EmailRemetente(const Value: WideString);
    function Get_EmailDestinatario: WideString;
    procedure Set_EmailDestinatario(const Value: WideString);
    function Get_EmailAssunto: WideString;
    procedure Set_EmailAssunto(const Value: WideString);
    function Get_EmailMensagem: WideString;
    procedure Set_EmailMensagem(const Value: WideString);
    function Get_EmailUsuario: WideString;
    procedure Set_EmailUsuario(const Value: WideString);
    function Get_EmailSenha: WideString;
    procedure Set_EmailSenha(const Value: WideString);
    function Get_FraseContingencia: WideString;
    procedure Set_FraseContingencia(const Value: WideString);
    function Get_FraseHomologacao: WideString;
    procedure Set_FraseHomologacao(const Value: WideString);
    function Get_ModeloRetrato: WideString;
    procedure Set_ModeloRetrato(const Value: WideString);
    function Get_ModeloPaisagem: WideString;
    procedure Set_ModeloPaisagem(const Value: WideString);
    function Get_VersaoManual: WideString;
    procedure Set_VersaoManual(const Value: WideString);
    function Get_AnexarDanfePDF: WordBool;
    procedure Set_AnexarDanfePDF(Value: WordBool);
    function Get_QtdeCopias: Integer;
    procedure Set_QtdeCopias(Value: Integer);
    function Get_EmailPorta: Integer;
    procedure Set_EmailPorta(Value: Integer);
    function Get_LineDelimiter: WideString;
    procedure Set_LineDelimiter(const Value: WideString);
    function Get_IgnoreInvalidCertificates: WordBool;
    procedure Set_IgnoreInvalidCertificates(Value: WordBool);
    function Get_Versao: WideString;
    function Get_EmailTimeOut: Integer;
    procedure Set_EmailTimeOut(Value: Integer);
    function Get_PINCODE: WideString;
    procedure Set_PINCODE(const Value: WideString);
    function Get_InfCplMaxCol: Integer;
    procedure Set_InfCplMaxCol(Value: Integer);
    function Get_InfCplMaxRow: Integer;
    procedure Set_InfCplMaxRow(Value: Integer);
    function Get_EmailCC: WideString;
    procedure Set_EmailCC(const Value: WideString);
    function Get_EmailCCo: WideString;
    procedure Set_EmailCCo(const Value: WideString);
    function Get_TimeOut: Integer;
    procedure Set_TimeOut(Value: Integer);
    function Get_ModeloDanfeSimplificado: WideString;
    procedure Set_ModeloDanfeSimplificado(const Value: WideString);
    function Get_CaracteresRemoverAcentos: WideString;
    procedure Set_CaracteresRemoverAcentos(const Value: WideString);
    function Get_ImprimirVolume: WordBool;
    procedure Set_ImprimirVolume(Value: WordBool);
    function Get_ImprimirDuplicata: WordBool;
    procedure Set_ImprimirDuplicata(Value: WordBool);
    function Get_CaminhoCertificado: WideString;
    procedure Set_CaminhoCertificado(const Value: WideString);
    function Get_SenhaCertificado: WideString;
    procedure Set_SenhaCertificado(const Value: WideString);
    function Get_ImprimirUnidadeTributada: WordBool;
    procedure Set_ImprimirUnidadeTributada(Value: WordBool);
    function Get_DiretorioLogErro: WideString;
    procedure Set_DiretorioLogErro(const Value: WideString);
    function Get_DiretorioTemporario: WideString;
    procedure Set_DiretorioTemporario(const Value: WideString);
    function Get_UltimoLogCancelamento: WideString;
    procedure Set_UltimoLogCancelamento(const Value: WideString);
    function Get_ModoOperacao: ModoOperacaoNFe;
    procedure Set_ModoOperacao(Value: ModoOperacaoNFe);
    function Get_EmailConteudoHtml: WordBool;
    procedure Set_EmailConteudoHtml(Value: WordBool);
    function Get_MensagemPartilhaAutomatica: WordBool;
    procedure Set_MensagemPartilhaAutomatica(Value: WordBool);
    function Get_ImprimirObsCont: WordBool;
    procedure Set_ImprimirObsCont(Value: WordBool);
    function Get_MensagemFCP: WordBool;
    procedure Set_MensagemFCP(Value: WordBool);
    function Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
    procedure Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
    function Get_AtualizarArquivoServidores: WordBool;
    procedure Set_AtualizarArquivoServidores(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IspdNFeDPECX);
    procedure Disconnect; override;
    function ListarCertificados(const aDelimiter: WideString): WideString;
    function RemoverCertificado(const CertificateName: WideString): WordBool;
    procedure EmailAddCC(const Email: WideString);
    procedure EmailAddCCO(const Email: WideString);
    function GetVencimentoCertificado: WideString;
    procedure SaveConfig(const aConfigFile: WideString);
    function GetValidadeInicialCertificado: WideString;
    function AssinarDPEC(const aXMLDPEC: WideString): WideString;
    function EnviarDPEC(const aDPECAssinado: WideString): WideString;
    procedure LoadConfig(const aConfigFile: WideString);
    function ConsultarDPEC(aTpConsulta: ParamConsDPEC; const aParam: WideString): WideString;
    function MontarDPEC(const aLoteNormal: WideString): WideString;
    function VisualizarDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                             const aDataHoraDPEC: WideString; const aArquivoModelo: WideString): WideString;
    function ImprimirDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                           const aDataHoraDPEC: WideString; const aArquivoModelo: WideString; 
                           const aImpressora: WideString): WideString;
    function EditarModeloDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                               const aDataHoraDPEC: WideString; const aArquivoModelo: WideString): WideString;
    function ExportarDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                           const aDataHoraDPEC: WideString; const aArquivoModelo: WideString; 
                           aFormato: Integer; const aExportarParaArquivo: WideString): WideString;
    property DefaultInterface: IspdNFeDPECX read GetDefaultInterface;
    property Versao: WideString read Get_Versao;
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property NomeCertificado: WideString read Get_NomeCertificado write Set_NomeCertificado;
    property TipoCertificado: TipoCertificado read Get_TipoCertificado write Set_TipoCertificado;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property ConfigINI: WideString read Get_ConfigINI write Set_ConfigINI;
    property SectionINI: WideString read Get_SectionINI write Set_SectionINI;
    property Ambiente: Ambiente read Get_Ambiente write Set_Ambiente;
    property ArquivoServidoresHom: WideString read Get_ArquivoServidoresHom write Set_ArquivoServidoresHom;
    property ArquivoServidoresProd: WideString read Get_ArquivoServidoresProd write Set_ArquivoServidoresProd;
    property DiretorioLog: WideString read Get_DiretorioLog write Set_DiretorioLog;
    property ErrosValidador: WideString read Get_ErrosValidador write Set_ErrosValidador;
    property Senha: WideString read Get_Senha write Set_Senha;
    property LogotipoEmitente: WideString read Get_LogotipoEmitente write Set_LogotipoEmitente;
    property UF: WideString read Get_UF write Set_UF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property DiretorioEsquemas: WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    property ValidarEsquemaAntesEnvio: WordBool read Get_ValidarEsquemaAntesEnvio write Set_ValidarEsquemaAntesEnvio;
    property EmailServidor: WideString read Get_EmailServidor write Set_EmailServidor;
    property EmailAutenticacao: WordBool read Get_EmailAutenticacao write Set_EmailAutenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property EmailAssunto: WideString read Get_EmailAssunto write Set_EmailAssunto;
    property EmailMensagem: WideString read Get_EmailMensagem write Set_EmailMensagem;
    property EmailUsuario: WideString read Get_EmailUsuario write Set_EmailUsuario;
    property EmailSenha: WideString read Get_EmailSenha write Set_EmailSenha;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property VersaoManual: WideString read Get_VersaoManual write Set_VersaoManual;
    property AnexarDanfePDF: WordBool read Get_AnexarDanfePDF write Set_AnexarDanfePDF;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property EmailPorta: Integer read Get_EmailPorta write Set_EmailPorta;
    property LineDelimiter: WideString read Get_LineDelimiter write Set_LineDelimiter;
    property IgnoreInvalidCertificates: WordBool read Get_IgnoreInvalidCertificates write Set_IgnoreInvalidCertificates;
    property EmailTimeOut: Integer read Get_EmailTimeOut write Set_EmailTimeOut;
    property PINCODE: WideString read Get_PINCODE write Set_PINCODE;
    property InfCplMaxCol: Integer read Get_InfCplMaxCol write Set_InfCplMaxCol;
    property InfCplMaxRow: Integer read Get_InfCplMaxRow write Set_InfCplMaxRow;
    property EmailCC: WideString read Get_EmailCC write Set_EmailCC;
    property EmailCCo: WideString read Get_EmailCCo write Set_EmailCCo;
    property TimeOut: Integer read Get_TimeOut write Set_TimeOut;
    property ModeloDanfeSimplificado: WideString read Get_ModeloDanfeSimplificado write Set_ModeloDanfeSimplificado;
    property CaracteresRemoverAcentos: WideString read Get_CaracteresRemoverAcentos write Set_CaracteresRemoverAcentos;
    property ImprimirVolume: WordBool read Get_ImprimirVolume write Set_ImprimirVolume;
    property ImprimirDuplicata: WordBool read Get_ImprimirDuplicata write Set_ImprimirDuplicata;
    property CaminhoCertificado: WideString read Get_CaminhoCertificado write Set_CaminhoCertificado;
    property SenhaCertificado: WideString read Get_SenhaCertificado write Set_SenhaCertificado;
    property ImprimirUnidadeTributada: WordBool read Get_ImprimirUnidadeTributada write Set_ImprimirUnidadeTributada;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
    property DiretorioTemporario: WideString read Get_DiretorioTemporario write Set_DiretorioTemporario;
    property UltimoLogCancelamento: WideString read Get_UltimoLogCancelamento write Set_UltimoLogCancelamento;
    property ModoOperacao: ModoOperacaoNFe read Get_ModoOperacao write Set_ModoOperacao;
    property EmailConteudoHtml: WordBool read Get_EmailConteudoHtml write Set_EmailConteudoHtml;
    property MensagemPartilhaAutomatica: WordBool read Get_MensagemPartilhaAutomatica write Set_MensagemPartilhaAutomatica;
    property ImprimirObsCont: WordBool read Get_ImprimirObsCont write Set_ImprimirObsCont;
    property MensagemFCP: WordBool read Get_MensagemFCP write Set_MensagemFCP;
    property ImprimirFrenteVerso: ImprimirFrenteVerso read Get_ImprimirFrenteVerso write Set_ImprimirFrenteVerso;
    property AtualizarArquivoServidores: WordBool read Get_AtualizarArquivoServidores write Set_AtualizarArquivoServidores;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TspdNFeDPECXProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TspdNFeDPECX
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TspdNFeDPECXProperties = class(TPersistent)
  private
    FServer:    TspdNFeDPECX;
    function    GetDefaultInterface: IspdNFeDPECX;
    constructor Create(AServer: TspdNFeDPECX);
  protected
    function Get_DiretorioTemplates: WideString;
    procedure Set_DiretorioTemplates(const Value: WideString);
    function Get_NomeCertificado: WideString;
    procedure Set_NomeCertificado(const Value: WideString);
    function Get_TipoCertificado: TipoCertificado;
    procedure Set_TipoCertificado(Value: TipoCertificado);
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_Usuario: WideString;
    procedure Set_Usuario(const Value: WideString);
    function Get_ConfigINI: WideString;
    procedure Set_ConfigINI(const Value: WideString);
    function Get_SectionINI: WideString;
    procedure Set_SectionINI(const Value: WideString);
    function Get_Ambiente: Ambiente;
    procedure Set_Ambiente(Value: Ambiente);
    function Get_ArquivoServidoresHom: WideString;
    procedure Set_ArquivoServidoresHom(const Value: WideString);
    function Get_ArquivoServidoresProd: WideString;
    procedure Set_ArquivoServidoresProd(const Value: WideString);
    function Get_DiretorioLog: WideString;
    procedure Set_DiretorioLog(const Value: WideString);
    function Get_ErrosValidador: WideString;
    procedure Set_ErrosValidador(const Value: WideString);
    function Get_Senha: WideString;
    procedure Set_Senha(const Value: WideString);
    function Get_LogotipoEmitente: WideString;
    procedure Set_LogotipoEmitente(const Value: WideString);
    function Get_UF: WideString;
    procedure Set_UF(const Value: WideString);
    function Get_CNPJ: WideString;
    procedure Set_CNPJ(const Value: WideString);
    function Get_DiretorioEsquemas: WideString;
    procedure Set_DiretorioEsquemas(const Value: WideString);
    function Get_ValidarEsquemaAntesEnvio: WordBool;
    procedure Set_ValidarEsquemaAntesEnvio(Value: WordBool);
    function Get_EmailServidor: WideString;
    procedure Set_EmailServidor(const Value: WideString);
    function Get_EmailAutenticacao: WordBool;
    procedure Set_EmailAutenticacao(Value: WordBool);
    function Get_EmailRemetente: WideString;
    procedure Set_EmailRemetente(const Value: WideString);
    function Get_EmailDestinatario: WideString;
    procedure Set_EmailDestinatario(const Value: WideString);
    function Get_EmailAssunto: WideString;
    procedure Set_EmailAssunto(const Value: WideString);
    function Get_EmailMensagem: WideString;
    procedure Set_EmailMensagem(const Value: WideString);
    function Get_EmailUsuario: WideString;
    procedure Set_EmailUsuario(const Value: WideString);
    function Get_EmailSenha: WideString;
    procedure Set_EmailSenha(const Value: WideString);
    function Get_FraseContingencia: WideString;
    procedure Set_FraseContingencia(const Value: WideString);
    function Get_FraseHomologacao: WideString;
    procedure Set_FraseHomologacao(const Value: WideString);
    function Get_ModeloRetrato: WideString;
    procedure Set_ModeloRetrato(const Value: WideString);
    function Get_ModeloPaisagem: WideString;
    procedure Set_ModeloPaisagem(const Value: WideString);
    function Get_VersaoManual: WideString;
    procedure Set_VersaoManual(const Value: WideString);
    function Get_AnexarDanfePDF: WordBool;
    procedure Set_AnexarDanfePDF(Value: WordBool);
    function Get_QtdeCopias: Integer;
    procedure Set_QtdeCopias(Value: Integer);
    function Get_EmailPorta: Integer;
    procedure Set_EmailPorta(Value: Integer);
    function Get_LineDelimiter: WideString;
    procedure Set_LineDelimiter(const Value: WideString);
    function Get_IgnoreInvalidCertificates: WordBool;
    procedure Set_IgnoreInvalidCertificates(Value: WordBool);
    function Get_Versao: WideString;
    function Get_EmailTimeOut: Integer;
    procedure Set_EmailTimeOut(Value: Integer);
    function Get_PINCODE: WideString;
    procedure Set_PINCODE(const Value: WideString);
    function Get_InfCplMaxCol: Integer;
    procedure Set_InfCplMaxCol(Value: Integer);
    function Get_InfCplMaxRow: Integer;
    procedure Set_InfCplMaxRow(Value: Integer);
    function Get_EmailCC: WideString;
    procedure Set_EmailCC(const Value: WideString);
    function Get_EmailCCo: WideString;
    procedure Set_EmailCCo(const Value: WideString);
    function Get_TimeOut: Integer;
    procedure Set_TimeOut(Value: Integer);
    function Get_ModeloDanfeSimplificado: WideString;
    procedure Set_ModeloDanfeSimplificado(const Value: WideString);
    function Get_CaracteresRemoverAcentos: WideString;
    procedure Set_CaracteresRemoverAcentos(const Value: WideString);
    function Get_ImprimirVolume: WordBool;
    procedure Set_ImprimirVolume(Value: WordBool);
    function Get_ImprimirDuplicata: WordBool;
    procedure Set_ImprimirDuplicata(Value: WordBool);
    function Get_CaminhoCertificado: WideString;
    procedure Set_CaminhoCertificado(const Value: WideString);
    function Get_SenhaCertificado: WideString;
    procedure Set_SenhaCertificado(const Value: WideString);
    function Get_ImprimirUnidadeTributada: WordBool;
    procedure Set_ImprimirUnidadeTributada(Value: WordBool);
    function Get_DiretorioLogErro: WideString;
    procedure Set_DiretorioLogErro(const Value: WideString);
    function Get_DiretorioTemporario: WideString;
    procedure Set_DiretorioTemporario(const Value: WideString);
    function Get_UltimoLogCancelamento: WideString;
    procedure Set_UltimoLogCancelamento(const Value: WideString);
    function Get_ModoOperacao: ModoOperacaoNFe;
    procedure Set_ModoOperacao(Value: ModoOperacaoNFe);
    function Get_EmailConteudoHtml: WordBool;
    procedure Set_EmailConteudoHtml(Value: WordBool);
    function Get_MensagemPartilhaAutomatica: WordBool;
    procedure Set_MensagemPartilhaAutomatica(Value: WordBool);
    function Get_ImprimirObsCont: WordBool;
    procedure Set_ImprimirObsCont(Value: WordBool);
    function Get_MensagemFCP: WordBool;
    procedure Set_MensagemFCP(Value: WordBool);
    function Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
    procedure Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
    function Get_AtualizarArquivoServidores: WordBool;
    procedure Set_AtualizarArquivoServidores(Value: WordBool);
  public
    property DefaultInterface: IspdNFeDPECX read GetDefaultInterface;
  published
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property NomeCertificado: WideString read Get_NomeCertificado write Set_NomeCertificado;
    property TipoCertificado: TipoCertificado read Get_TipoCertificado write Set_TipoCertificado;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property ConfigINI: WideString read Get_ConfigINI write Set_ConfigINI;
    property SectionINI: WideString read Get_SectionINI write Set_SectionINI;
    property Ambiente: Ambiente read Get_Ambiente write Set_Ambiente;
    property ArquivoServidoresHom: WideString read Get_ArquivoServidoresHom write Set_ArquivoServidoresHom;
    property ArquivoServidoresProd: WideString read Get_ArquivoServidoresProd write Set_ArquivoServidoresProd;
    property DiretorioLog: WideString read Get_DiretorioLog write Set_DiretorioLog;
    property ErrosValidador: WideString read Get_ErrosValidador write Set_ErrosValidador;
    property Senha: WideString read Get_Senha write Set_Senha;
    property LogotipoEmitente: WideString read Get_LogotipoEmitente write Set_LogotipoEmitente;
    property UF: WideString read Get_UF write Set_UF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property DiretorioEsquemas: WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    property ValidarEsquemaAntesEnvio: WordBool read Get_ValidarEsquemaAntesEnvio write Set_ValidarEsquemaAntesEnvio;
    property EmailServidor: WideString read Get_EmailServidor write Set_EmailServidor;
    property EmailAutenticacao: WordBool read Get_EmailAutenticacao write Set_EmailAutenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property EmailAssunto: WideString read Get_EmailAssunto write Set_EmailAssunto;
    property EmailMensagem: WideString read Get_EmailMensagem write Set_EmailMensagem;
    property EmailUsuario: WideString read Get_EmailUsuario write Set_EmailUsuario;
    property EmailSenha: WideString read Get_EmailSenha write Set_EmailSenha;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property VersaoManual: WideString read Get_VersaoManual write Set_VersaoManual;
    property AnexarDanfePDF: WordBool read Get_AnexarDanfePDF write Set_AnexarDanfePDF;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property EmailPorta: Integer read Get_EmailPorta write Set_EmailPorta;
    property LineDelimiter: WideString read Get_LineDelimiter write Set_LineDelimiter;
    property IgnoreInvalidCertificates: WordBool read Get_IgnoreInvalidCertificates write Set_IgnoreInvalidCertificates;
    property EmailTimeOut: Integer read Get_EmailTimeOut write Set_EmailTimeOut;
    property PINCODE: WideString read Get_PINCODE write Set_PINCODE;
    property InfCplMaxCol: Integer read Get_InfCplMaxCol write Set_InfCplMaxCol;
    property InfCplMaxRow: Integer read Get_InfCplMaxRow write Set_InfCplMaxRow;
    property EmailCC: WideString read Get_EmailCC write Set_EmailCC;
    property EmailCCo: WideString read Get_EmailCCo write Set_EmailCCo;
    property TimeOut: Integer read Get_TimeOut write Set_TimeOut;
    property ModeloDanfeSimplificado: WideString read Get_ModeloDanfeSimplificado write Set_ModeloDanfeSimplificado;
    property CaracteresRemoverAcentos: WideString read Get_CaracteresRemoverAcentos write Set_CaracteresRemoverAcentos;
    property ImprimirVolume: WordBool read Get_ImprimirVolume write Set_ImprimirVolume;
    property ImprimirDuplicata: WordBool read Get_ImprimirDuplicata write Set_ImprimirDuplicata;
    property CaminhoCertificado: WideString read Get_CaminhoCertificado write Set_CaminhoCertificado;
    property SenhaCertificado: WideString read Get_SenhaCertificado write Set_SenhaCertificado;
    property ImprimirUnidadeTributada: WordBool read Get_ImprimirUnidadeTributada write Set_ImprimirUnidadeTributada;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
    property DiretorioTemporario: WideString read Get_DiretorioTemporario write Set_DiretorioTemporario;
    property UltimoLogCancelamento: WideString read Get_UltimoLogCancelamento write Set_UltimoLogCancelamento;
    property ModoOperacao: ModoOperacaoNFe read Get_ModoOperacao write Set_ModoOperacao;
    property EmailConteudoHtml: WordBool read Get_EmailConteudoHtml write Set_EmailConteudoHtml;
    property MensagemPartilhaAutomatica: WordBool read Get_MensagemPartilhaAutomatica write Set_MensagemPartilhaAutomatica;
    property ImprimirObsCont: WordBool read Get_ImprimirObsCont write Set_ImprimirObsCont;
    property MensagemFCP: WordBool read Get_MensagemFCP write Set_MensagemFCP;
    property ImprimirFrenteVerso: ImprimirFrenteVerso read Get_ImprimirFrenteVerso write Set_ImprimirFrenteVerso;
    property AtualizarArquivoServidores: WordBool read Get_AtualizarArquivoServidores write Set_AtualizarArquivoServidores;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CospdNFeX provides a Create and CreateRemote method to          
// create instances of the default interface IspdNFeX exposed by              
// the CoClass spdNFeX. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdNFeX = class
    class function Create: IspdNFeX;
    class function CreateRemote(const MachineName: string): IspdNFeX;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TspdNFeX
// Help String      : spdNFeX
// Default Interface: IspdNFeX
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TspdNFeXProperties= class;
{$ENDIF}
  TspdNFeX = class(TOleServer)
  private
    FIntf:        IspdNFeX;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TspdNFeXProperties;
    function      GetServerProperties: TspdNFeXProperties;
{$ENDIF}
    function      GetDefaultInterface: IspdNFeX;
  protected
    procedure InitServerData; override;
    function Get_DiretorioTemplates: WideString;
    procedure Set_DiretorioTemplates(const Value: WideString);
    function Get_NomeCertificado: WideString;
    procedure Set_NomeCertificado(const Value: WideString);
    function Get_TipoCertificado: TipoCertificado;
    procedure Set_TipoCertificado(Value: TipoCertificado);
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_Usuario: WideString;
    procedure Set_Usuario(const Value: WideString);
    function Get_ConfigINI: WideString;
    procedure Set_ConfigINI(const Value: WideString);
    function Get_SectionINI: WideString;
    procedure Set_SectionINI(const Value: WideString);
    function Get_Ambiente: Ambiente;
    procedure Set_Ambiente(Value: Ambiente);
    function Get_ArquivoServidoresHom: WideString;
    procedure Set_ArquivoServidoresHom(const Value: WideString);
    function Get_ArquivoServidoresProd: WideString;
    procedure Set_ArquivoServidoresProd(const Value: WideString);
    function Get_DiretorioLog: WideString;
    procedure Set_DiretorioLog(const Value: WideString);
    function Get_ErrosValidador: WideString;
    procedure Set_ErrosValidador(const Value: WideString);
    function Get_Senha: WideString;
    procedure Set_Senha(const Value: WideString);
    function Get_LogotipoEmitente: WideString;
    procedure Set_LogotipoEmitente(const Value: WideString);
    function Get_UF: WideString;
    procedure Set_UF(const Value: WideString);
    function Get_CNPJ: WideString;
    procedure Set_CNPJ(const Value: WideString);
    function Get_DiretorioEsquemas: WideString;
    procedure Set_DiretorioEsquemas(const Value: WideString);
    function Get_ValidarEsquemaAntesEnvio: WordBool;
    procedure Set_ValidarEsquemaAntesEnvio(Value: WordBool);
    function Get_EmailServidor: WideString;
    procedure Set_EmailServidor(const Value: WideString);
    function Get_EmailAutenticacao: WordBool;
    procedure Set_EmailAutenticacao(Value: WordBool);
    function Get_EmailRemetente: WideString;
    procedure Set_EmailRemetente(const Value: WideString);
    function Get_EmailDestinatario: WideString;
    procedure Set_EmailDestinatario(const Value: WideString);
    function Get_EmailAssunto: WideString;
    procedure Set_EmailAssunto(const Value: WideString);
    function Get_EmailMensagem: WideString;
    procedure Set_EmailMensagem(const Value: WideString);
    function Get_EmailUsuario: WideString;
    procedure Set_EmailUsuario(const Value: WideString);
    function Get_EmailSenha: WideString;
    procedure Set_EmailSenha(const Value: WideString);
    function Get_FraseContingencia: WideString;
    procedure Set_FraseContingencia(const Value: WideString);
    function Get_FraseHomologacao: WideString;
    procedure Set_FraseHomologacao(const Value: WideString);
    function Get_ModeloRetrato: WideString;
    procedure Set_ModeloRetrato(const Value: WideString);
    function Get_ModeloPaisagem: WideString;
    procedure Set_ModeloPaisagem(const Value: WideString);
    function Get_VersaoManual: WideString;
    procedure Set_VersaoManual(const Value: WideString);
    function Get_AnexarDanfePDF: WordBool;
    procedure Set_AnexarDanfePDF(Value: WordBool);
    function Get_QtdeCopias: Integer;
    procedure Set_QtdeCopias(Value: Integer);
    function Get_EmailPorta: Integer;
    procedure Set_EmailPorta(Value: Integer);
    function Get_LineDelimiter: WideString;
    procedure Set_LineDelimiter(const Value: WideString);
    function Get_IgnoreInvalidCertificates: WordBool;
    procedure Set_IgnoreInvalidCertificates(Value: WordBool);
    function Get_Versao: WideString;
    function Get_EmailTimeOut: Integer;
    procedure Set_EmailTimeOut(Value: Integer);
    function Get_PINCODE: WideString;
    procedure Set_PINCODE(const Value: WideString);
    function Get_InfCplMaxCol: Integer;
    procedure Set_InfCplMaxCol(Value: Integer);
    function Get_InfCplMaxRow: Integer;
    procedure Set_InfCplMaxRow(Value: Integer);
    function Get_EmailCC: WideString;
    procedure Set_EmailCC(const Value: WideString);
    function Get_EmailCCo: WideString;
    procedure Set_EmailCCo(const Value: WideString);
    function Get_TimeOut: Integer;
    procedure Set_TimeOut(Value: Integer);
    function Get_ModeloDanfeSimplificado: WideString;
    procedure Set_ModeloDanfeSimplificado(const Value: WideString);
    function Get_CaracteresRemoverAcentos: WideString;
    procedure Set_CaracteresRemoverAcentos(const Value: WideString);
    function Get_ImprimirVolume: WordBool;
    procedure Set_ImprimirVolume(Value: WordBool);
    function Get_ImprimirDuplicata: WordBool;
    procedure Set_ImprimirDuplicata(Value: WordBool);
    function Get_CaminhoCertificado: WideString;
    procedure Set_CaminhoCertificado(const Value: WideString);
    function Get_SenhaCertificado: WideString;
    procedure Set_SenhaCertificado(const Value: WideString);
    function Get_ImprimirUnidadeTributada: WordBool;
    procedure Set_ImprimirUnidadeTributada(Value: WordBool);
    function Get_DiretorioLogErro: WideString;
    procedure Set_DiretorioLogErro(const Value: WideString);
    function Get_DiretorioTemporario: WideString;
    procedure Set_DiretorioTemporario(const Value: WideString);
    function Get_UltimoLogCancelamento: WideString;
    procedure Set_UltimoLogCancelamento(const Value: WideString);
    function Get_ModoOperacao: ModoOperacaoNFe;
    procedure Set_ModoOperacao(Value: ModoOperacaoNFe);
    function Get_EmailConteudoHtml: WordBool;
    procedure Set_EmailConteudoHtml(Value: WordBool);
    function Get_MensagemPartilhaAutomatica: WordBool;
    procedure Set_MensagemPartilhaAutomatica(Value: WordBool);
    function Get_ImprimirObsCont: WordBool;
    procedure Set_ImprimirObsCont(Value: WordBool);
    function Get_MensagemFCP: WordBool;
    procedure Set_MensagemFCP(Value: WordBool);
    function Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
    procedure Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
    function Get_AtualizarArquivoServidores: WordBool;
    procedure Set_AtualizarArquivoServidores(Value: WordBool);
    function Get_UltimoLogEnvio: WideString;
    procedure Set_UltimoLogEnvio(const Value: WideString);
    function Get_UltimoLogConsRecibo: WideString;
    procedure Set_UltimoLogConsRecibo(const Value: WideString);
    function Get_DiretorioXmlDestinatario: WideString;
    procedure Set_DiretorioXmlDestinatario(const Value: WideString);
    function Get_MaxSizeLoteEnvio: Integer;
    procedure Set_MaxSizeLoteEnvio(Value: Integer);
    function Get_DanfeSimplificado: WordBool;
    procedure Set_DanfeSimplificado(Value: WordBool);
    function Get_DiretorioDownloads: WideString;
    procedure Set_DiretorioDownloads(const Value: WideString);
    function Get_UltimoLogRecibo: WideString;
    procedure Set_UltimoLogRecibo(const Value: WideString);
    function Get_UltimoLogReciboCancelamento: WideString;
    procedure Set_UltimoLogReciboCancelamento(const Value: WideString);
    function Get_ModeloRTMCCe: WideString;
    procedure Set_ModeloRTMCCe(const Value: WideString);
    function Get_EntregaXML: EntregaXML;
    procedure Set_EntregaXML(Value: EntregaXML);
    function Get_NotaSeguraToken: WideString;
    procedure Set_NotaSeguraToken(const Value: WideString);
    function Get_NotaSeguraLogin: WideString;
    procedure Set_NotaSeguraLogin(const Value: WideString);
    function Get_NotaSeguraSenha: WideString;
    procedure Set_NotaSeguraSenha(const Value: WideString);
    function Get_NotaSeguraServidor: WideString;
    procedure Set_NotaSeguraServidor(const Value: WideString);
    function Get_AuditorServidor: WideString;
    procedure Set_AuditorServidor(const Value: WideString);
    function Get_AuditorExibirRegrasValidacao: WordBool;
    procedure Set_AuditorExibirRegrasValidacao(Value: WordBool);
    function Get_AuditorCodigoProduto: Integer;
    procedure Set_AuditorCodigoProduto(Value: Integer);
    function Get_AuditorEstagio: Estagio;
    procedure Set_AuditorEstagio(Value: Estagio);
    function Get_AuditorTemplateHtml: WideString;
    procedure Set_AuditorTemplateHtml(const Value: WideString);
    function Get_AuditorHeigthHtml: Integer;
    procedure Set_AuditorHeigthHtml(Value: Integer);
    function Get_AuditorWidthHtml: Integer;
    procedure Set_AuditorWidthHtml(Value: Integer);
    function Get_AuditorHtmlBaseUrl: WideString;
    procedure Set_AuditorHtmlBaseUrl(const Value: WideString);
    function Get_AuditorTipoResposta: TipoResposta;
    procedure Set_AuditorTipoResposta(Value: TipoResposta);
    function Get_AuditorTotalRejeicao: WideString;
    procedure Set_AuditorTotalRejeicao(const Value: WideString);
    function Get_AuditorLinguagemResposta: LinguagemResposta;
    procedure Set_AuditorLinguagemResposta(Value: LinguagemResposta);
    function Get_AuditorModoOperacao: ModoOperacao;
    procedure Set_AuditorModoOperacao(Value: ModoOperacao);
    function Get_AuditorDiretorioEsquemas: WideString;
    procedure Set_AuditorDiretorioEsquemas(const Value: WideString);
    function Get_AuditorDiretorioTemplates: WideString;
    procedure Set_AuditorDiretorioTemplates(const Value: WideString);
    function Get_AuditorDiretorioRegras: WideString;
    procedure Set_AuditorDiretorioRegras(const Value: WideString);
    function Get_AuditorDiretorioLogErro: WideString;
    procedure Set_AuditorDiretorioLogErro(const Value: WideString);
    function Get_AuditorServidorProxy: WideString;
    procedure Set_AuditorServidorProxy(const Value: WideString);
    function Get_AuditorPortaProxy: Integer;
    procedure Set_AuditorPortaProxy(Value: Integer);
    function Get_AuditorUsuarioProxy: WideString;
    procedure Set_AuditorUsuarioProxy(const Value: WideString);
    function Get_AuditorSenhaProxy: WideString;
    procedure Set_AuditorSenhaProxy(const Value: WideString);
    function Get_ConexaoSegura: WordBool;
    procedure Set_ConexaoSegura(Value: WordBool);
    function Get_UltimoLogConsultarDFe: WideString;
    procedure Set_UltimoLogConsultarDFe(const Value: WideString);
    function Get_AuditorTimeOut: Integer;
    procedure Set_AuditorTimeOut(Value: Integer);
    function Get_UltimoLogReciboInutilizacao: WideString;
    procedure Set_UltimoLogReciboInutilizacao(const Value: WideString);
    function Get_ModeloRetratoCancelamento: WideString;
    procedure Set_ModeloRetratoCancelamento(const Value: WideString);
    function Get_UltimoLogInutilizacao: WideString;
    procedure Set_UltimoLogInutilizacao(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IspdNFeX);
    procedure Disconnect; override;
    function ListarCertificados(const aDelimiter: WideString): WideString;
    function RemoverCertificado(const CertificateName: WideString): WordBool;
    procedure EmailAddCC(const Email: WideString);
    procedure EmailAddCCO(const Email: WideString);
    function GetVencimentoCertificado: WideString;
    procedure SaveConfig(const aConfigFile: WideString);
    function GetValidadeInicialCertificado: WideString;
    function CalculaChaveNFe(const aDtEmissao: WideString; const aUF: WideString; 
                             const aCNPJ: WideString; const aModelo: WideString; 
                             const aSerie: WideString; const aNRNota: WideString; 
                             const aCodSistema: WideString; const aTpEmis: WideString): WideString;
    function AssinarNota(const aXML: WideString): WideString;
    function GerarNotasAleatorias(Qtde: Integer; const CNPJ: WideString): WideString;
    function ConverterLoteParaXML(const ArquivoLoteTxt: WideString; aLayoutConv: LayoutConv; 
                                  const aVersaoEsquema: WideString): WideString;
    function StatusDoServico: WideString;
    function CancelarNF(const aNotaID: WideString; const aNumProtocolo: WideString; 
                        const aJustificativa: WideString): WideString;
    function ConsultarNF(const aNotaID: WideString): WideString;
    function InutilizarNF(const aNotaID: WideString; const aAno: WideString; 
                          const aCNPJ: WideString; const aModelo: WideString; 
                          const aSerie: WideString; const aNFIni: WideString; 
                          const aNFFin: WideString; const aJustificativa: WideString): WideString;
    function EnviarNF(const aNumLote: WideString; const aLoteNotas: WideString; 
                      aCompactado: WordBool): WideString;
    function ConsultarRecibo(const aNumRecibo: WideString): WideString;
    function ConsultarCadastro(const aDocumento: WideString; const aTpDocumento: WideString; 
                               const aUF: WideString): WideString;
    function VisualizarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                             const aArquivoModelo: WideString): WideString;
    function ImprimirDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                           const aArquivoModelo: WideString; const aImpressora: WideString): WideString;
    function EditarModeloDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                               const aArquivoModelo: WideString): WideString;
    function ExportarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                           const aArquivoModelo: WideString; aFormato: Integer; 
                           const aExportarParaArquivo: WideString): WideString;
    function EnviarEmailDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                              const aArquivoModelo: WideString): WideString;
    function LerLog(const aPathArquivoLog: WideString): WideString;
    function VisualizarDanfeLog(const aPathArquivoLog: WideString): WideString;
    function GeraXMLEnvioDestinatario(const aIdNFe: WideString; const aLogEnvLote: WideString; 
                                      const aLogConsRecibo: WideString; 
                                      const aSalvarComo: WideString): WideString;
    function EnviarNotaDestinatario(const aIdNFe: WideString; const aLogEnvio: WideString; 
                                    const aLogRecibo: WideString): WideString;
    procedure LoadConfig(const aConfigFile: WideString);
    function ValidarLoteParaEnvio(const aNumLote: WideString; const aLoteXml: WideString): WideString;
    function GerarXmlCancelamentoDestinatario(const aIdNFe: WideString; 
                                              const aContentLogPedCanc: WideString; 
                                              const aContentLogRetCanc: WideString; 
                                              const aSalvarComo: WideString): WideString;
    function EnviarNotaCanceladaDestinatario(const aIdNFe: WideString; 
                                             const aLogPedCanc: WideString; 
                                             const aLogRetCanc: WideString; 
                                             const aEmailDestinatario: WideString): WideString;
    function PreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString): WideString;
    function EnviarNotaDestinatarioAnexos(const aArquivoPDF: WideString; 
                                          const aArquivoXML: WideString; const aOutros: WideString): WideString;
    function ValidarArquivoXmlDestinatario(const aXML: WideString; var aErrorList: WideString): WordBool;
    function EnviarManifestacaoDestinatario(aTpEvento: Integer; const aNotaID: WideString; 
                                            const aCNPJCPF: WideString; 
                                            const aJustificativa: WideString; 
                                            const aDataHoraEvento: WideString; 
                                            aSequenciaEvento: Integer; 
                                            const aFusoHorario: WideString; 
                                            const aCOrgao: WideString): WideString;
    function ConsultarNFDestinadas(aIndNFe: Integer; aIndEmi: Integer; const aUltNSU: WideString): WideString;
    function CancelarNFeEvento(const aNotaID: WideString; const aNumProtocolo: WideString; 
                               const aJustificativa: WideString; const aDataHoraEvento: WideString; 
                               aSequenciaEvento: Integer; const aFusoHorario: WideString): WideString;
    function DownloadNFe(const aChaves: WideString; const aCOrgao: WideString): WideString;
    function EnviarCCe(const aNotaID: WideString; const aTextoCorrecao: WideString; 
                       const aDataHoraEvento: WideString; const aOrgao: WideString; 
                       const aIdLote: WideString; aSequenciaEvento: Integer; 
                       const aFusoHorario: WideString): WideString;
    function GerarXMLCCeDestinatario(const aIDEvento: WideString; const aLogEvento: WideString; 
                                     const aLogRetEvento: WideString; const aSalvarComo: WideString): WideString;
    procedure EnviarCCeDestinatario(const aCCe: WideString);
    procedure ImprimirCCe(const aXmlCCe: WideString; const aImpressora: WideString);
    procedure VisualizarCCe(const aXmlCCe: WideString);
    procedure EditarModeloCCe(const aXmlCCe: WideString);
    procedure ExportarCCe(const aXmlCCe: WideString; const aSalvarComo: WideString);
    function CancelarNFeEventoIdLote(const aNotaID: WideString; const aNumProtocolo: WideString; 
                                     const aJustificativa: WideString; 
                                     const aDataHoraEvento: WideString; aSequenciaEvento: Integer; 
                                     const aFusoHorario: WideString; const aIdLote: WideString): WideString;
    function GerarXmlManifestoDestinatario(const aIDEvento: WideString; 
                                           const aLogEvento: WideString; 
                                           const aLogRetEvento: WideString; 
                                           const aSalvarComo: WideString): WideString;
    function ImprimirDanfeXmlDiretorio(const aDiretorioXml: WideString; 
                                       const aArquivoModelo: WideString; 
                                       const aExportarArquivoPara: WideString; 
                                       const aImpressora: WideString): WideString;
    function ConverterLoteParaXMLExportacao(const aArquivoLoteTxt: WideString; 
                                            aLayoutConv: LayoutConv; 
                                            const aVersaoEsquema: WideString; aExportacao: WordBool): WideString;
    function EnviarNFSincrono(const aNumLote: WideString; const aLoteNota: WideString; 
                              aCompactado: WordBool): WideString;
    function GerarIDCCe(const aChaveNFe: WideString; aSeqEvento: Integer): WideString;
    procedure ExportarPreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString; 
                                  const aLocalNomeArquivo: WideString);
    function AuditarXml(const aXML: WideString; const aDelimitador: WideString; 
                        const aServidor: WideString; aExibirRegra: WordBool; aExibirHtml: WordBool; 
                        const aParams: WideString): WideString;
    function AuditorValidarXml(const aXML: WideString; const aDelimitador: WideString): WideString;
    procedure AuditorShowHtml(const aJSON: WideString);
    procedure AuditorDownloadRegras;
    procedure AuditorLoadConfig(const aConfiINI: WideString);
    procedure AuditorSaveConfig(const aConfiINI: WideString);
    function NotaSeguraEnviarXml(const aXML: WideString): WideString;
    function EnviarEPEC(const aEPECAssinado: WideString): WideString;
    function AssinarEPEC(const aXMLEpec: WideString): WideString;
    function MontarEPEC(const aIdLote: WideString; const aXmlEnvio: WideString; 
                        const aDHEvento: WideString; const aFusoHorario: WideString): WideString;
    function GerarXMLEPECDestinatario(const aIDEvento: WideString; const aLogEvento: WideString; 
                                      const aLogRetEvento: WideString; const aSalvarComo: WideString): WideString;
    function ImprimirEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                          const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                          const aImpressora: WideString): WideString;
    function VisualizarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                            const aDataHoraEPEC: WideString; const aArquivoModelo: WideString): WideString;
    function ExportarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                          const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                          aFormato: Integer; const aExportarParaArquivo: WideString): WideString;
    function ConsultarDistribuicaoDFe(const aCodigoUF: WideString; const aCNPJCPF: WideString; 
                                      const aNSU: WideString; aTipoNSU: TipoNSU): WideString;
    function DescompactarXMLZip(const aXML: WideString): WideString;
    function EnviarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                     const aNumProtocolo: WideString; 
                                     const aDataHoraEvento: WideString; const aOrgao: WideString; 
                                     aTpEvento: TipoPedidoProrrogacao; aSequenciaEvento: SYSINT; 
                                     const aFusoHorario: WideString; const aDelimiter: WideString): WideString;
    function CancelarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                       const aNumProtocolo: WideString; 
                                       const aDataHoraEvento: WideString; 
                                       aTpEvento: TipoCancelamentoPedidoProrrogacao; 
                                       aSequenciaEvento: SYSINT; const aFusoHorario: WideString): WideString;
    procedure AdicionarItens(const aNumItens: WideString; const aQtdeItens: WideString);
    function ConsultarDistribuicaoDFeChave(const aCodigoUF: WideString; const aCNPJCPF: WideString; 
                                           const aChave: WideString): WideString;
    function CalculaSegCodBarra(const cUF: WideString; const tpEmis: WideString; 
                                const CNPJ: WideString; const vNF: WideString; 
                                const ICMSp: WideString; const ICMSs: WideString; 
                                const DD: WideString): WideString;
    function TestarEmailConfig: WideString;
    procedure ConfigurarSoftwareHouse(const aCNPJSH: WideString; const aKey: WideString);
    property DefaultInterface: IspdNFeX read GetDefaultInterface;
    property Versao: WideString read Get_Versao;
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property NomeCertificado: WideString read Get_NomeCertificado write Set_NomeCertificado;
    property TipoCertificado: TipoCertificado read Get_TipoCertificado write Set_TipoCertificado;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property ConfigINI: WideString read Get_ConfigINI write Set_ConfigINI;
    property SectionINI: WideString read Get_SectionINI write Set_SectionINI;
    property Ambiente: Ambiente read Get_Ambiente write Set_Ambiente;
    property ArquivoServidoresHom: WideString read Get_ArquivoServidoresHom write Set_ArquivoServidoresHom;
    property ArquivoServidoresProd: WideString read Get_ArquivoServidoresProd write Set_ArquivoServidoresProd;
    property DiretorioLog: WideString read Get_DiretorioLog write Set_DiretorioLog;
    property ErrosValidador: WideString read Get_ErrosValidador write Set_ErrosValidador;
    property Senha: WideString read Get_Senha write Set_Senha;
    property LogotipoEmitente: WideString read Get_LogotipoEmitente write Set_LogotipoEmitente;
    property UF: WideString read Get_UF write Set_UF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property DiretorioEsquemas: WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    property ValidarEsquemaAntesEnvio: WordBool read Get_ValidarEsquemaAntesEnvio write Set_ValidarEsquemaAntesEnvio;
    property EmailServidor: WideString read Get_EmailServidor write Set_EmailServidor;
    property EmailAutenticacao: WordBool read Get_EmailAutenticacao write Set_EmailAutenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property EmailAssunto: WideString read Get_EmailAssunto write Set_EmailAssunto;
    property EmailMensagem: WideString read Get_EmailMensagem write Set_EmailMensagem;
    property EmailUsuario: WideString read Get_EmailUsuario write Set_EmailUsuario;
    property EmailSenha: WideString read Get_EmailSenha write Set_EmailSenha;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property VersaoManual: WideString read Get_VersaoManual write Set_VersaoManual;
    property AnexarDanfePDF: WordBool read Get_AnexarDanfePDF write Set_AnexarDanfePDF;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property EmailPorta: Integer read Get_EmailPorta write Set_EmailPorta;
    property LineDelimiter: WideString read Get_LineDelimiter write Set_LineDelimiter;
    property IgnoreInvalidCertificates: WordBool read Get_IgnoreInvalidCertificates write Set_IgnoreInvalidCertificates;
    property EmailTimeOut: Integer read Get_EmailTimeOut write Set_EmailTimeOut;
    property PINCODE: WideString read Get_PINCODE write Set_PINCODE;
    property InfCplMaxCol: Integer read Get_InfCplMaxCol write Set_InfCplMaxCol;
    property InfCplMaxRow: Integer read Get_InfCplMaxRow write Set_InfCplMaxRow;
    property EmailCC: WideString read Get_EmailCC write Set_EmailCC;
    property EmailCCo: WideString read Get_EmailCCo write Set_EmailCCo;
    property TimeOut: Integer read Get_TimeOut write Set_TimeOut;
    property ModeloDanfeSimplificado: WideString read Get_ModeloDanfeSimplificado write Set_ModeloDanfeSimplificado;
    property CaracteresRemoverAcentos: WideString read Get_CaracteresRemoverAcentos write Set_CaracteresRemoverAcentos;
    property ImprimirVolume: WordBool read Get_ImprimirVolume write Set_ImprimirVolume;
    property ImprimirDuplicata: WordBool read Get_ImprimirDuplicata write Set_ImprimirDuplicata;
    property CaminhoCertificado: WideString read Get_CaminhoCertificado write Set_CaminhoCertificado;
    property SenhaCertificado: WideString read Get_SenhaCertificado write Set_SenhaCertificado;
    property ImprimirUnidadeTributada: WordBool read Get_ImprimirUnidadeTributada write Set_ImprimirUnidadeTributada;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
    property DiretorioTemporario: WideString read Get_DiretorioTemporario write Set_DiretorioTemporario;
    property UltimoLogCancelamento: WideString read Get_UltimoLogCancelamento write Set_UltimoLogCancelamento;
    property ModoOperacao: ModoOperacaoNFe read Get_ModoOperacao write Set_ModoOperacao;
    property EmailConteudoHtml: WordBool read Get_EmailConteudoHtml write Set_EmailConteudoHtml;
    property MensagemPartilhaAutomatica: WordBool read Get_MensagemPartilhaAutomatica write Set_MensagemPartilhaAutomatica;
    property ImprimirObsCont: WordBool read Get_ImprimirObsCont write Set_ImprimirObsCont;
    property MensagemFCP: WordBool read Get_MensagemFCP write Set_MensagemFCP;
    property ImprimirFrenteVerso: ImprimirFrenteVerso read Get_ImprimirFrenteVerso write Set_ImprimirFrenteVerso;
    property AtualizarArquivoServidores: WordBool read Get_AtualizarArquivoServidores write Set_AtualizarArquivoServidores;
    property UltimoLogEnvio: WideString read Get_UltimoLogEnvio write Set_UltimoLogEnvio;
    property UltimoLogConsRecibo: WideString read Get_UltimoLogConsRecibo write Set_UltimoLogConsRecibo;
    property DiretorioXmlDestinatario: WideString read Get_DiretorioXmlDestinatario write Set_DiretorioXmlDestinatario;
    property MaxSizeLoteEnvio: Integer read Get_MaxSizeLoteEnvio write Set_MaxSizeLoteEnvio;
    property DanfeSimplificado: WordBool read Get_DanfeSimplificado write Set_DanfeSimplificado;
    property DiretorioDownloads: WideString read Get_DiretorioDownloads write Set_DiretorioDownloads;
    property UltimoLogRecibo: WideString read Get_UltimoLogRecibo write Set_UltimoLogRecibo;
    property UltimoLogReciboCancelamento: WideString read Get_UltimoLogReciboCancelamento write Set_UltimoLogReciboCancelamento;
    property ModeloRTMCCe: WideString read Get_ModeloRTMCCe write Set_ModeloRTMCCe;
    property EntregaXML: EntregaXML read Get_EntregaXML write Set_EntregaXML;
    property NotaSeguraToken: WideString read Get_NotaSeguraToken write Set_NotaSeguraToken;
    property NotaSeguraLogin: WideString read Get_NotaSeguraLogin write Set_NotaSeguraLogin;
    property NotaSeguraSenha: WideString read Get_NotaSeguraSenha write Set_NotaSeguraSenha;
    property NotaSeguraServidor: WideString read Get_NotaSeguraServidor write Set_NotaSeguraServidor;
    property AuditorServidor: WideString read Get_AuditorServidor write Set_AuditorServidor;
    property AuditorExibirRegrasValidacao: WordBool read Get_AuditorExibirRegrasValidacao write Set_AuditorExibirRegrasValidacao;
    property AuditorCodigoProduto: Integer read Get_AuditorCodigoProduto write Set_AuditorCodigoProduto;
    property AuditorEstagio: Estagio read Get_AuditorEstagio write Set_AuditorEstagio;
    property AuditorTemplateHtml: WideString read Get_AuditorTemplateHtml write Set_AuditorTemplateHtml;
    property AuditorHeigthHtml: Integer read Get_AuditorHeigthHtml write Set_AuditorHeigthHtml;
    property AuditorWidthHtml: Integer read Get_AuditorWidthHtml write Set_AuditorWidthHtml;
    property AuditorHtmlBaseUrl: WideString read Get_AuditorHtmlBaseUrl write Set_AuditorHtmlBaseUrl;
    property AuditorTipoResposta: TipoResposta read Get_AuditorTipoResposta write Set_AuditorTipoResposta;
    property AuditorTotalRejeicao: WideString read Get_AuditorTotalRejeicao write Set_AuditorTotalRejeicao;
    property AuditorLinguagemResposta: LinguagemResposta read Get_AuditorLinguagemResposta write Set_AuditorLinguagemResposta;
    property AuditorModoOperacao: ModoOperacao read Get_AuditorModoOperacao write Set_AuditorModoOperacao;
    property AuditorDiretorioEsquemas: WideString read Get_AuditorDiretorioEsquemas write Set_AuditorDiretorioEsquemas;
    property AuditorDiretorioTemplates: WideString read Get_AuditorDiretorioTemplates write Set_AuditorDiretorioTemplates;
    property AuditorDiretorioRegras: WideString read Get_AuditorDiretorioRegras write Set_AuditorDiretorioRegras;
    property AuditorDiretorioLogErro: WideString read Get_AuditorDiretorioLogErro write Set_AuditorDiretorioLogErro;
    property AuditorServidorProxy: WideString read Get_AuditorServidorProxy write Set_AuditorServidorProxy;
    property AuditorPortaProxy: Integer read Get_AuditorPortaProxy write Set_AuditorPortaProxy;
    property AuditorUsuarioProxy: WideString read Get_AuditorUsuarioProxy write Set_AuditorUsuarioProxy;
    property AuditorSenhaProxy: WideString read Get_AuditorSenhaProxy write Set_AuditorSenhaProxy;
    property ConexaoSegura: WordBool read Get_ConexaoSegura write Set_ConexaoSegura;
    property UltimoLogConsultarDFe: WideString read Get_UltimoLogConsultarDFe write Set_UltimoLogConsultarDFe;
    property AuditorTimeOut: Integer read Get_AuditorTimeOut write Set_AuditorTimeOut;
    property UltimoLogReciboInutilizacao: WideString read Get_UltimoLogReciboInutilizacao write Set_UltimoLogReciboInutilizacao;
    property ModeloRetratoCancelamento: WideString read Get_ModeloRetratoCancelamento write Set_ModeloRetratoCancelamento;
    property UltimoLogInutilizacao: WideString read Get_UltimoLogInutilizacao write Set_UltimoLogInutilizacao;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TspdNFeXProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TspdNFeX
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TspdNFeXProperties = class(TPersistent)
  private
    FServer:    TspdNFeX;
    function    GetDefaultInterface: IspdNFeX;
    constructor Create(AServer: TspdNFeX);
  protected
    function Get_DiretorioTemplates: WideString;
    procedure Set_DiretorioTemplates(const Value: WideString);
    function Get_NomeCertificado: WideString;
    procedure Set_NomeCertificado(const Value: WideString);
    function Get_TipoCertificado: TipoCertificado;
    procedure Set_TipoCertificado(Value: TipoCertificado);
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_Usuario: WideString;
    procedure Set_Usuario(const Value: WideString);
    function Get_ConfigINI: WideString;
    procedure Set_ConfigINI(const Value: WideString);
    function Get_SectionINI: WideString;
    procedure Set_SectionINI(const Value: WideString);
    function Get_Ambiente: Ambiente;
    procedure Set_Ambiente(Value: Ambiente);
    function Get_ArquivoServidoresHom: WideString;
    procedure Set_ArquivoServidoresHom(const Value: WideString);
    function Get_ArquivoServidoresProd: WideString;
    procedure Set_ArquivoServidoresProd(const Value: WideString);
    function Get_DiretorioLog: WideString;
    procedure Set_DiretorioLog(const Value: WideString);
    function Get_ErrosValidador: WideString;
    procedure Set_ErrosValidador(const Value: WideString);
    function Get_Senha: WideString;
    procedure Set_Senha(const Value: WideString);
    function Get_LogotipoEmitente: WideString;
    procedure Set_LogotipoEmitente(const Value: WideString);
    function Get_UF: WideString;
    procedure Set_UF(const Value: WideString);
    function Get_CNPJ: WideString;
    procedure Set_CNPJ(const Value: WideString);
    function Get_DiretorioEsquemas: WideString;
    procedure Set_DiretorioEsquemas(const Value: WideString);
    function Get_ValidarEsquemaAntesEnvio: WordBool;
    procedure Set_ValidarEsquemaAntesEnvio(Value: WordBool);
    function Get_EmailServidor: WideString;
    procedure Set_EmailServidor(const Value: WideString);
    function Get_EmailAutenticacao: WordBool;
    procedure Set_EmailAutenticacao(Value: WordBool);
    function Get_EmailRemetente: WideString;
    procedure Set_EmailRemetente(const Value: WideString);
    function Get_EmailDestinatario: WideString;
    procedure Set_EmailDestinatario(const Value: WideString);
    function Get_EmailAssunto: WideString;
    procedure Set_EmailAssunto(const Value: WideString);
    function Get_EmailMensagem: WideString;
    procedure Set_EmailMensagem(const Value: WideString);
    function Get_EmailUsuario: WideString;
    procedure Set_EmailUsuario(const Value: WideString);
    function Get_EmailSenha: WideString;
    procedure Set_EmailSenha(const Value: WideString);
    function Get_FraseContingencia: WideString;
    procedure Set_FraseContingencia(const Value: WideString);
    function Get_FraseHomologacao: WideString;
    procedure Set_FraseHomologacao(const Value: WideString);
    function Get_ModeloRetrato: WideString;
    procedure Set_ModeloRetrato(const Value: WideString);
    function Get_ModeloPaisagem: WideString;
    procedure Set_ModeloPaisagem(const Value: WideString);
    function Get_VersaoManual: WideString;
    procedure Set_VersaoManual(const Value: WideString);
    function Get_AnexarDanfePDF: WordBool;
    procedure Set_AnexarDanfePDF(Value: WordBool);
    function Get_QtdeCopias: Integer;
    procedure Set_QtdeCopias(Value: Integer);
    function Get_EmailPorta: Integer;
    procedure Set_EmailPorta(Value: Integer);
    function Get_LineDelimiter: WideString;
    procedure Set_LineDelimiter(const Value: WideString);
    function Get_IgnoreInvalidCertificates: WordBool;
    procedure Set_IgnoreInvalidCertificates(Value: WordBool);
    function Get_Versao: WideString;
    function Get_EmailTimeOut: Integer;
    procedure Set_EmailTimeOut(Value: Integer);
    function Get_PINCODE: WideString;
    procedure Set_PINCODE(const Value: WideString);
    function Get_InfCplMaxCol: Integer;
    procedure Set_InfCplMaxCol(Value: Integer);
    function Get_InfCplMaxRow: Integer;
    procedure Set_InfCplMaxRow(Value: Integer);
    function Get_EmailCC: WideString;
    procedure Set_EmailCC(const Value: WideString);
    function Get_EmailCCo: WideString;
    procedure Set_EmailCCo(const Value: WideString);
    function Get_TimeOut: Integer;
    procedure Set_TimeOut(Value: Integer);
    function Get_ModeloDanfeSimplificado: WideString;
    procedure Set_ModeloDanfeSimplificado(const Value: WideString);
    function Get_CaracteresRemoverAcentos: WideString;
    procedure Set_CaracteresRemoverAcentos(const Value: WideString);
    function Get_ImprimirVolume: WordBool;
    procedure Set_ImprimirVolume(Value: WordBool);
    function Get_ImprimirDuplicata: WordBool;
    procedure Set_ImprimirDuplicata(Value: WordBool);
    function Get_CaminhoCertificado: WideString;
    procedure Set_CaminhoCertificado(const Value: WideString);
    function Get_SenhaCertificado: WideString;
    procedure Set_SenhaCertificado(const Value: WideString);
    function Get_ImprimirUnidadeTributada: WordBool;
    procedure Set_ImprimirUnidadeTributada(Value: WordBool);
    function Get_DiretorioLogErro: WideString;
    procedure Set_DiretorioLogErro(const Value: WideString);
    function Get_DiretorioTemporario: WideString;
    procedure Set_DiretorioTemporario(const Value: WideString);
    function Get_UltimoLogCancelamento: WideString;
    procedure Set_UltimoLogCancelamento(const Value: WideString);
    function Get_ModoOperacao: ModoOperacaoNFe;
    procedure Set_ModoOperacao(Value: ModoOperacaoNFe);
    function Get_EmailConteudoHtml: WordBool;
    procedure Set_EmailConteudoHtml(Value: WordBool);
    function Get_MensagemPartilhaAutomatica: WordBool;
    procedure Set_MensagemPartilhaAutomatica(Value: WordBool);
    function Get_ImprimirObsCont: WordBool;
    procedure Set_ImprimirObsCont(Value: WordBool);
    function Get_MensagemFCP: WordBool;
    procedure Set_MensagemFCP(Value: WordBool);
    function Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
    procedure Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
    function Get_AtualizarArquivoServidores: WordBool;
    procedure Set_AtualizarArquivoServidores(Value: WordBool);
    function Get_UltimoLogEnvio: WideString;
    procedure Set_UltimoLogEnvio(const Value: WideString);
    function Get_UltimoLogConsRecibo: WideString;
    procedure Set_UltimoLogConsRecibo(const Value: WideString);
    function Get_DiretorioXmlDestinatario: WideString;
    procedure Set_DiretorioXmlDestinatario(const Value: WideString);
    function Get_MaxSizeLoteEnvio: Integer;
    procedure Set_MaxSizeLoteEnvio(Value: Integer);
    function Get_DanfeSimplificado: WordBool;
    procedure Set_DanfeSimplificado(Value: WordBool);
    function Get_DiretorioDownloads: WideString;
    procedure Set_DiretorioDownloads(const Value: WideString);
    function Get_UltimoLogRecibo: WideString;
    procedure Set_UltimoLogRecibo(const Value: WideString);
    function Get_UltimoLogReciboCancelamento: WideString;
    procedure Set_UltimoLogReciboCancelamento(const Value: WideString);
    function Get_ModeloRTMCCe: WideString;
    procedure Set_ModeloRTMCCe(const Value: WideString);
    function Get_EntregaXML: EntregaXML;
    procedure Set_EntregaXML(Value: EntregaXML);
    function Get_NotaSeguraToken: WideString;
    procedure Set_NotaSeguraToken(const Value: WideString);
    function Get_NotaSeguraLogin: WideString;
    procedure Set_NotaSeguraLogin(const Value: WideString);
    function Get_NotaSeguraSenha: WideString;
    procedure Set_NotaSeguraSenha(const Value: WideString);
    function Get_NotaSeguraServidor: WideString;
    procedure Set_NotaSeguraServidor(const Value: WideString);
    function Get_AuditorServidor: WideString;
    procedure Set_AuditorServidor(const Value: WideString);
    function Get_AuditorExibirRegrasValidacao: WordBool;
    procedure Set_AuditorExibirRegrasValidacao(Value: WordBool);
    function Get_AuditorCodigoProduto: Integer;
    procedure Set_AuditorCodigoProduto(Value: Integer);
    function Get_AuditorEstagio: Estagio;
    procedure Set_AuditorEstagio(Value: Estagio);
    function Get_AuditorTemplateHtml: WideString;
    procedure Set_AuditorTemplateHtml(const Value: WideString);
    function Get_AuditorHeigthHtml: Integer;
    procedure Set_AuditorHeigthHtml(Value: Integer);
    function Get_AuditorWidthHtml: Integer;
    procedure Set_AuditorWidthHtml(Value: Integer);
    function Get_AuditorHtmlBaseUrl: WideString;
    procedure Set_AuditorHtmlBaseUrl(const Value: WideString);
    function Get_AuditorTipoResposta: TipoResposta;
    procedure Set_AuditorTipoResposta(Value: TipoResposta);
    function Get_AuditorTotalRejeicao: WideString;
    procedure Set_AuditorTotalRejeicao(const Value: WideString);
    function Get_AuditorLinguagemResposta: LinguagemResposta;
    procedure Set_AuditorLinguagemResposta(Value: LinguagemResposta);
    function Get_AuditorModoOperacao: ModoOperacao;
    procedure Set_AuditorModoOperacao(Value: ModoOperacao);
    function Get_AuditorDiretorioEsquemas: WideString;
    procedure Set_AuditorDiretorioEsquemas(const Value: WideString);
    function Get_AuditorDiretorioTemplates: WideString;
    procedure Set_AuditorDiretorioTemplates(const Value: WideString);
    function Get_AuditorDiretorioRegras: WideString;
    procedure Set_AuditorDiretorioRegras(const Value: WideString);
    function Get_AuditorDiretorioLogErro: WideString;
    procedure Set_AuditorDiretorioLogErro(const Value: WideString);
    function Get_AuditorServidorProxy: WideString;
    procedure Set_AuditorServidorProxy(const Value: WideString);
    function Get_AuditorPortaProxy: Integer;
    procedure Set_AuditorPortaProxy(Value: Integer);
    function Get_AuditorUsuarioProxy: WideString;
    procedure Set_AuditorUsuarioProxy(const Value: WideString);
    function Get_AuditorSenhaProxy: WideString;
    procedure Set_AuditorSenhaProxy(const Value: WideString);
    function Get_ConexaoSegura: WordBool;
    procedure Set_ConexaoSegura(Value: WordBool);
    function Get_UltimoLogConsultarDFe: WideString;
    procedure Set_UltimoLogConsultarDFe(const Value: WideString);
    function Get_AuditorTimeOut: Integer;
    procedure Set_AuditorTimeOut(Value: Integer);
    function Get_UltimoLogReciboInutilizacao: WideString;
    procedure Set_UltimoLogReciboInutilizacao(const Value: WideString);
    function Get_ModeloRetratoCancelamento: WideString;
    procedure Set_ModeloRetratoCancelamento(const Value: WideString);
    function Get_UltimoLogInutilizacao: WideString;
    procedure Set_UltimoLogInutilizacao(const Value: WideString);
  public
    property DefaultInterface: IspdNFeX read GetDefaultInterface;
  published
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property NomeCertificado: WideString read Get_NomeCertificado write Set_NomeCertificado;
    property TipoCertificado: TipoCertificado read Get_TipoCertificado write Set_TipoCertificado;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property ConfigINI: WideString read Get_ConfigINI write Set_ConfigINI;
    property SectionINI: WideString read Get_SectionINI write Set_SectionINI;
    property Ambiente: Ambiente read Get_Ambiente write Set_Ambiente;
    property ArquivoServidoresHom: WideString read Get_ArquivoServidoresHom write Set_ArquivoServidoresHom;
    property ArquivoServidoresProd: WideString read Get_ArquivoServidoresProd write Set_ArquivoServidoresProd;
    property DiretorioLog: WideString read Get_DiretorioLog write Set_DiretorioLog;
    property ErrosValidador: WideString read Get_ErrosValidador write Set_ErrosValidador;
    property Senha: WideString read Get_Senha write Set_Senha;
    property LogotipoEmitente: WideString read Get_LogotipoEmitente write Set_LogotipoEmitente;
    property UF: WideString read Get_UF write Set_UF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property DiretorioEsquemas: WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    property ValidarEsquemaAntesEnvio: WordBool read Get_ValidarEsquemaAntesEnvio write Set_ValidarEsquemaAntesEnvio;
    property EmailServidor: WideString read Get_EmailServidor write Set_EmailServidor;
    property EmailAutenticacao: WordBool read Get_EmailAutenticacao write Set_EmailAutenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property EmailAssunto: WideString read Get_EmailAssunto write Set_EmailAssunto;
    property EmailMensagem: WideString read Get_EmailMensagem write Set_EmailMensagem;
    property EmailUsuario: WideString read Get_EmailUsuario write Set_EmailUsuario;
    property EmailSenha: WideString read Get_EmailSenha write Set_EmailSenha;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property VersaoManual: WideString read Get_VersaoManual write Set_VersaoManual;
    property AnexarDanfePDF: WordBool read Get_AnexarDanfePDF write Set_AnexarDanfePDF;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property EmailPorta: Integer read Get_EmailPorta write Set_EmailPorta;
    property LineDelimiter: WideString read Get_LineDelimiter write Set_LineDelimiter;
    property IgnoreInvalidCertificates: WordBool read Get_IgnoreInvalidCertificates write Set_IgnoreInvalidCertificates;
    property EmailTimeOut: Integer read Get_EmailTimeOut write Set_EmailTimeOut;
    property PINCODE: WideString read Get_PINCODE write Set_PINCODE;
    property InfCplMaxCol: Integer read Get_InfCplMaxCol write Set_InfCplMaxCol;
    property InfCplMaxRow: Integer read Get_InfCplMaxRow write Set_InfCplMaxRow;
    property EmailCC: WideString read Get_EmailCC write Set_EmailCC;
    property EmailCCo: WideString read Get_EmailCCo write Set_EmailCCo;
    property TimeOut: Integer read Get_TimeOut write Set_TimeOut;
    property ModeloDanfeSimplificado: WideString read Get_ModeloDanfeSimplificado write Set_ModeloDanfeSimplificado;
    property CaracteresRemoverAcentos: WideString read Get_CaracteresRemoverAcentos write Set_CaracteresRemoverAcentos;
    property ImprimirVolume: WordBool read Get_ImprimirVolume write Set_ImprimirVolume;
    property ImprimirDuplicata: WordBool read Get_ImprimirDuplicata write Set_ImprimirDuplicata;
    property CaminhoCertificado: WideString read Get_CaminhoCertificado write Set_CaminhoCertificado;
    property SenhaCertificado: WideString read Get_SenhaCertificado write Set_SenhaCertificado;
    property ImprimirUnidadeTributada: WordBool read Get_ImprimirUnidadeTributada write Set_ImprimirUnidadeTributada;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
    property DiretorioTemporario: WideString read Get_DiretorioTemporario write Set_DiretorioTemporario;
    property UltimoLogCancelamento: WideString read Get_UltimoLogCancelamento write Set_UltimoLogCancelamento;
    property ModoOperacao: ModoOperacaoNFe read Get_ModoOperacao write Set_ModoOperacao;
    property EmailConteudoHtml: WordBool read Get_EmailConteudoHtml write Set_EmailConteudoHtml;
    property MensagemPartilhaAutomatica: WordBool read Get_MensagemPartilhaAutomatica write Set_MensagemPartilhaAutomatica;
    property ImprimirObsCont: WordBool read Get_ImprimirObsCont write Set_ImprimirObsCont;
    property MensagemFCP: WordBool read Get_MensagemFCP write Set_MensagemFCP;
    property ImprimirFrenteVerso: ImprimirFrenteVerso read Get_ImprimirFrenteVerso write Set_ImprimirFrenteVerso;
    property AtualizarArquivoServidores: WordBool read Get_AtualizarArquivoServidores write Set_AtualizarArquivoServidores;
    property UltimoLogEnvio: WideString read Get_UltimoLogEnvio write Set_UltimoLogEnvio;
    property UltimoLogConsRecibo: WideString read Get_UltimoLogConsRecibo write Set_UltimoLogConsRecibo;
    property DiretorioXmlDestinatario: WideString read Get_DiretorioXmlDestinatario write Set_DiretorioXmlDestinatario;
    property MaxSizeLoteEnvio: Integer read Get_MaxSizeLoteEnvio write Set_MaxSizeLoteEnvio;
    property DanfeSimplificado: WordBool read Get_DanfeSimplificado write Set_DanfeSimplificado;
    property DiretorioDownloads: WideString read Get_DiretorioDownloads write Set_DiretorioDownloads;
    property UltimoLogRecibo: WideString read Get_UltimoLogRecibo write Set_UltimoLogRecibo;
    property UltimoLogReciboCancelamento: WideString read Get_UltimoLogReciboCancelamento write Set_UltimoLogReciboCancelamento;
    property ModeloRTMCCe: WideString read Get_ModeloRTMCCe write Set_ModeloRTMCCe;
    property EntregaXML: EntregaXML read Get_EntregaXML write Set_EntregaXML;
    property NotaSeguraToken: WideString read Get_NotaSeguraToken write Set_NotaSeguraToken;
    property NotaSeguraLogin: WideString read Get_NotaSeguraLogin write Set_NotaSeguraLogin;
    property NotaSeguraSenha: WideString read Get_NotaSeguraSenha write Set_NotaSeguraSenha;
    property NotaSeguraServidor: WideString read Get_NotaSeguraServidor write Set_NotaSeguraServidor;
    property AuditorServidor: WideString read Get_AuditorServidor write Set_AuditorServidor;
    property AuditorExibirRegrasValidacao: WordBool read Get_AuditorExibirRegrasValidacao write Set_AuditorExibirRegrasValidacao;
    property AuditorCodigoProduto: Integer read Get_AuditorCodigoProduto write Set_AuditorCodigoProduto;
    property AuditorEstagio: Estagio read Get_AuditorEstagio write Set_AuditorEstagio;
    property AuditorTemplateHtml: WideString read Get_AuditorTemplateHtml write Set_AuditorTemplateHtml;
    property AuditorHeigthHtml: Integer read Get_AuditorHeigthHtml write Set_AuditorHeigthHtml;
    property AuditorWidthHtml: Integer read Get_AuditorWidthHtml write Set_AuditorWidthHtml;
    property AuditorHtmlBaseUrl: WideString read Get_AuditorHtmlBaseUrl write Set_AuditorHtmlBaseUrl;
    property AuditorTipoResposta: TipoResposta read Get_AuditorTipoResposta write Set_AuditorTipoResposta;
    property AuditorTotalRejeicao: WideString read Get_AuditorTotalRejeicao write Set_AuditorTotalRejeicao;
    property AuditorLinguagemResposta: LinguagemResposta read Get_AuditorLinguagemResposta write Set_AuditorLinguagemResposta;
    property AuditorModoOperacao: ModoOperacao read Get_AuditorModoOperacao write Set_AuditorModoOperacao;
    property AuditorDiretorioEsquemas: WideString read Get_AuditorDiretorioEsquemas write Set_AuditorDiretorioEsquemas;
    property AuditorDiretorioTemplates: WideString read Get_AuditorDiretorioTemplates write Set_AuditorDiretorioTemplates;
    property AuditorDiretorioRegras: WideString read Get_AuditorDiretorioRegras write Set_AuditorDiretorioRegras;
    property AuditorDiretorioLogErro: WideString read Get_AuditorDiretorioLogErro write Set_AuditorDiretorioLogErro;
    property AuditorServidorProxy: WideString read Get_AuditorServidorProxy write Set_AuditorServidorProxy;
    property AuditorPortaProxy: Integer read Get_AuditorPortaProxy write Set_AuditorPortaProxy;
    property AuditorUsuarioProxy: WideString read Get_AuditorUsuarioProxy write Set_AuditorUsuarioProxy;
    property AuditorSenhaProxy: WideString read Get_AuditorSenhaProxy write Set_AuditorSenhaProxy;
    property ConexaoSegura: WordBool read Get_ConexaoSegura write Set_ConexaoSegura;
    property UltimoLogConsultarDFe: WideString read Get_UltimoLogConsultarDFe write Set_UltimoLogConsultarDFe;
    property AuditorTimeOut: Integer read Get_AuditorTimeOut write Set_AuditorTimeOut;
    property UltimoLogReciboInutilizacao: WideString read Get_UltimoLogReciboInutilizacao write Set_UltimoLogReciboInutilizacao;
    property ModeloRetratoCancelamento: WideString read Get_ModeloRetratoCancelamento write Set_ModeloRetratoCancelamento;
    property UltimoLogInutilizacao: WideString read Get_UltimoLogInutilizacao write Set_UltimoLogInutilizacao;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CospdCustomNFe.Create: IspdCustomNFe;
begin
  Result := CreateComObject(CLASS_spdCustomNFe) as IspdCustomNFe;
end;

class function CospdCustomNFe.CreateRemote(const MachineName: string): IspdCustomNFe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdCustomNFe) as IspdCustomNFe;
end;

procedure TspdCustomNFe.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{88716594-B22D-4544-BB86-CB9E6520E1F7}';
    IntfIID:   '{5899CB42-1105-48E8-9F33-FD9A5765FC2B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TspdCustomNFe.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IspdCustomNFe;
  end;
end;

procedure TspdCustomNFe.ConnectTo(svrIntf: IspdCustomNFe);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TspdCustomNFe.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TspdCustomNFe.GetDefaultInterface: IspdCustomNFe;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TspdCustomNFe.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TspdCustomNFeProperties.Create(Self);
{$ENDIF}
end;

destructor TspdCustomNFe.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TspdCustomNFe.GetServerProperties: TspdCustomNFeProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TspdCustomNFe.Get_DiretorioTemplates: WideString;
begin
    Result := DefaultInterface.DiretorioTemplates;
end;

procedure TspdCustomNFe.Set_DiretorioTemplates(const Value: WideString);
  { Warning: The property DiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemplates := Value;
end;

function TspdCustomNFe.Get_NomeCertificado: WideString;
begin
    Result := DefaultInterface.NomeCertificado;
end;

procedure TspdCustomNFe.Set_NomeCertificado(const Value: WideString);
  { Warning: The property NomeCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NomeCertificado := Value;
end;

function TspdCustomNFe.Get_TipoCertificado: TipoCertificado;
begin
    Result := DefaultInterface.TipoCertificado;
end;

procedure TspdCustomNFe.Set_TipoCertificado(Value: TipoCertificado);
begin
  DefaultInterface.Set_TipoCertificado(Value);
end;

function TspdCustomNFe.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure TspdCustomNFe.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function TspdCustomNFe.Get_Usuario: WideString;
begin
    Result := DefaultInterface.Usuario;
end;

procedure TspdCustomNFe.Set_Usuario(const Value: WideString);
  { Warning: The property Usuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Usuario := Value;
end;

function TspdCustomNFe.Get_ConfigINI: WideString;
begin
    Result := DefaultInterface.ConfigINI;
end;

procedure TspdCustomNFe.Set_ConfigINI(const Value: WideString);
  { Warning: The property ConfigINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConfigINI := Value;
end;

function TspdCustomNFe.Get_SectionINI: WideString;
begin
    Result := DefaultInterface.SectionINI;
end;

procedure TspdCustomNFe.Set_SectionINI(const Value: WideString);
  { Warning: The property SectionINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SectionINI := Value;
end;

function TspdCustomNFe.Get_Ambiente: Ambiente;
begin
    Result := DefaultInterface.Ambiente;
end;

procedure TspdCustomNFe.Set_Ambiente(Value: Ambiente);
begin
  DefaultInterface.Set_Ambiente(Value);
end;

function TspdCustomNFe.Get_ArquivoServidoresHom: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresHom;
end;

procedure TspdCustomNFe.Set_ArquivoServidoresHom(const Value: WideString);
  { Warning: The property ArquivoServidoresHom has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresHom := Value;
end;

function TspdCustomNFe.Get_ArquivoServidoresProd: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresProd;
end;

procedure TspdCustomNFe.Set_ArquivoServidoresProd(const Value: WideString);
  { Warning: The property ArquivoServidoresProd has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresProd := Value;
end;

function TspdCustomNFe.Get_DiretorioLog: WideString;
begin
    Result := DefaultInterface.DiretorioLog;
end;

procedure TspdCustomNFe.Set_DiretorioLog(const Value: WideString);
  { Warning: The property DiretorioLog has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLog := Value;
end;

function TspdCustomNFe.Get_ErrosValidador: WideString;
begin
    Result := DefaultInterface.ErrosValidador;
end;

procedure TspdCustomNFe.Set_ErrosValidador(const Value: WideString);
  { Warning: The property ErrosValidador has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ErrosValidador := Value;
end;

function TspdCustomNFe.Get_Senha: WideString;
begin
    Result := DefaultInterface.Senha;
end;

procedure TspdCustomNFe.Set_Senha(const Value: WideString);
  { Warning: The property Senha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Senha := Value;
end;

function TspdCustomNFe.Get_LogotipoEmitente: WideString;
begin
    Result := DefaultInterface.LogotipoEmitente;
end;

procedure TspdCustomNFe.Set_LogotipoEmitente(const Value: WideString);
  { Warning: The property LogotipoEmitente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogotipoEmitente := Value;
end;

function TspdCustomNFe.Get_UF: WideString;
begin
    Result := DefaultInterface.UF;
end;

procedure TspdCustomNFe.Set_UF(const Value: WideString);
  { Warning: The property UF has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UF := Value;
end;

function TspdCustomNFe.Get_CNPJ: WideString;
begin
    Result := DefaultInterface.CNPJ;
end;

procedure TspdCustomNFe.Set_CNPJ(const Value: WideString);
  { Warning: The property CNPJ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CNPJ := Value;
end;

function TspdCustomNFe.Get_DiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.DiretorioEsquemas;
end;

procedure TspdCustomNFe.Set_DiretorioEsquemas(const Value: WideString);
  { Warning: The property DiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioEsquemas := Value;
end;

function TspdCustomNFe.Get_ValidarEsquemaAntesEnvio: WordBool;
begin
    Result := DefaultInterface.ValidarEsquemaAntesEnvio;
end;

procedure TspdCustomNFe.Set_ValidarEsquemaAntesEnvio(Value: WordBool);
begin
  DefaultInterface.Set_ValidarEsquemaAntesEnvio(Value);
end;

function TspdCustomNFe.Get_EmailServidor: WideString;
begin
    Result := DefaultInterface.EmailServidor;
end;

procedure TspdCustomNFe.Set_EmailServidor(const Value: WideString);
  { Warning: The property EmailServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailServidor := Value;
end;

function TspdCustomNFe.Get_EmailAutenticacao: WordBool;
begin
    Result := DefaultInterface.EmailAutenticacao;
end;

procedure TspdCustomNFe.Set_EmailAutenticacao(Value: WordBool);
begin
  DefaultInterface.Set_EmailAutenticacao(Value);
end;

function TspdCustomNFe.Get_EmailRemetente: WideString;
begin
    Result := DefaultInterface.EmailRemetente;
end;

procedure TspdCustomNFe.Set_EmailRemetente(const Value: WideString);
  { Warning: The property EmailRemetente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailRemetente := Value;
end;

function TspdCustomNFe.Get_EmailDestinatario: WideString;
begin
    Result := DefaultInterface.EmailDestinatario;
end;

procedure TspdCustomNFe.Set_EmailDestinatario(const Value: WideString);
  { Warning: The property EmailDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailDestinatario := Value;
end;

function TspdCustomNFe.Get_EmailAssunto: WideString;
begin
    Result := DefaultInterface.EmailAssunto;
end;

procedure TspdCustomNFe.Set_EmailAssunto(const Value: WideString);
  { Warning: The property EmailAssunto has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailAssunto := Value;
end;

function TspdCustomNFe.Get_EmailMensagem: WideString;
begin
    Result := DefaultInterface.EmailMensagem;
end;

procedure TspdCustomNFe.Set_EmailMensagem(const Value: WideString);
  { Warning: The property EmailMensagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailMensagem := Value;
end;

function TspdCustomNFe.Get_EmailUsuario: WideString;
begin
    Result := DefaultInterface.EmailUsuario;
end;

procedure TspdCustomNFe.Set_EmailUsuario(const Value: WideString);
  { Warning: The property EmailUsuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailUsuario := Value;
end;

function TspdCustomNFe.Get_EmailSenha: WideString;
begin
    Result := DefaultInterface.EmailSenha;
end;

procedure TspdCustomNFe.Set_EmailSenha(const Value: WideString);
  { Warning: The property EmailSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailSenha := Value;
end;

function TspdCustomNFe.Get_FraseContingencia: WideString;
begin
    Result := DefaultInterface.FraseContingencia;
end;

procedure TspdCustomNFe.Set_FraseContingencia(const Value: WideString);
  { Warning: The property FraseContingencia has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseContingencia := Value;
end;

function TspdCustomNFe.Get_FraseHomologacao: WideString;
begin
    Result := DefaultInterface.FraseHomologacao;
end;

procedure TspdCustomNFe.Set_FraseHomologacao(const Value: WideString);
  { Warning: The property FraseHomologacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseHomologacao := Value;
end;

function TspdCustomNFe.Get_ModeloRetrato: WideString;
begin
    Result := DefaultInterface.ModeloRetrato;
end;

procedure TspdCustomNFe.Set_ModeloRetrato(const Value: WideString);
  { Warning: The property ModeloRetrato has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetrato := Value;
end;

function TspdCustomNFe.Get_ModeloPaisagem: WideString;
begin
    Result := DefaultInterface.ModeloPaisagem;
end;

procedure TspdCustomNFe.Set_ModeloPaisagem(const Value: WideString);
  { Warning: The property ModeloPaisagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloPaisagem := Value;
end;

function TspdCustomNFe.Get_VersaoManual: WideString;
begin
    Result := DefaultInterface.VersaoManual;
end;

procedure TspdCustomNFe.Set_VersaoManual(const Value: WideString);
  { Warning: The property VersaoManual has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VersaoManual := Value;
end;

function TspdCustomNFe.Get_AnexarDanfePDF: WordBool;
begin
    Result := DefaultInterface.AnexarDanfePDF;
end;

procedure TspdCustomNFe.Set_AnexarDanfePDF(Value: WordBool);
begin
  DefaultInterface.Set_AnexarDanfePDF(Value);
end;

function TspdCustomNFe.Get_QtdeCopias: Integer;
begin
    Result := DefaultInterface.QtdeCopias;
end;

procedure TspdCustomNFe.Set_QtdeCopias(Value: Integer);
begin
  DefaultInterface.Set_QtdeCopias(Value);
end;

function TspdCustomNFe.Get_EmailPorta: Integer;
begin
    Result := DefaultInterface.EmailPorta;
end;

procedure TspdCustomNFe.Set_EmailPorta(Value: Integer);
begin
  DefaultInterface.Set_EmailPorta(Value);
end;

function TspdCustomNFe.Get_LineDelimiter: WideString;
begin
    Result := DefaultInterface.LineDelimiter;
end;

procedure TspdCustomNFe.Set_LineDelimiter(const Value: WideString);
  { Warning: The property LineDelimiter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LineDelimiter := Value;
end;

function TspdCustomNFe.Get_IgnoreInvalidCertificates: WordBool;
begin
    Result := DefaultInterface.IgnoreInvalidCertificates;
end;

procedure TspdCustomNFe.Set_IgnoreInvalidCertificates(Value: WordBool);
begin
  DefaultInterface.Set_IgnoreInvalidCertificates(Value);
end;

function TspdCustomNFe.Get_Versao: WideString;
begin
    Result := DefaultInterface.Versao;
end;

function TspdCustomNFe.Get_EmailTimeOut: Integer;
begin
    Result := DefaultInterface.EmailTimeOut;
end;

procedure TspdCustomNFe.Set_EmailTimeOut(Value: Integer);
begin
  DefaultInterface.Set_EmailTimeOut(Value);
end;

function TspdCustomNFe.Get_PINCODE: WideString;
begin
    Result := DefaultInterface.PINCODE;
end;

procedure TspdCustomNFe.Set_PINCODE(const Value: WideString);
  { Warning: The property PINCODE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PINCODE := Value;
end;

function TspdCustomNFe.Get_InfCplMaxCol: Integer;
begin
    Result := DefaultInterface.InfCplMaxCol;
end;

procedure TspdCustomNFe.Set_InfCplMaxCol(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxCol(Value);
end;

function TspdCustomNFe.Get_InfCplMaxRow: Integer;
begin
    Result := DefaultInterface.InfCplMaxRow;
end;

procedure TspdCustomNFe.Set_InfCplMaxRow(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxRow(Value);
end;

function TspdCustomNFe.Get_EmailCC: WideString;
begin
    Result := DefaultInterface.EmailCC;
end;

procedure TspdCustomNFe.Set_EmailCC(const Value: WideString);
  { Warning: The property EmailCC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCC := Value;
end;

function TspdCustomNFe.Get_EmailCCo: WideString;
begin
    Result := DefaultInterface.EmailCCo;
end;

procedure TspdCustomNFe.Set_EmailCCo(const Value: WideString);
  { Warning: The property EmailCCo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCCo := Value;
end;

function TspdCustomNFe.Get_TimeOut: Integer;
begin
    Result := DefaultInterface.TimeOut;
end;

procedure TspdCustomNFe.Set_TimeOut(Value: Integer);
begin
  DefaultInterface.Set_TimeOut(Value);
end;

function TspdCustomNFe.Get_ModeloDanfeSimplificado: WideString;
begin
    Result := DefaultInterface.ModeloDanfeSimplificado;
end;

procedure TspdCustomNFe.Set_ModeloDanfeSimplificado(const Value: WideString);
  { Warning: The property ModeloDanfeSimplificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloDanfeSimplificado := Value;
end;

function TspdCustomNFe.Get_CaracteresRemoverAcentos: WideString;
begin
    Result := DefaultInterface.CaracteresRemoverAcentos;
end;

procedure TspdCustomNFe.Set_CaracteresRemoverAcentos(const Value: WideString);
  { Warning: The property CaracteresRemoverAcentos has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaracteresRemoverAcentos := Value;
end;

function TspdCustomNFe.Get_ImprimirVolume: WordBool;
begin
    Result := DefaultInterface.ImprimirVolume;
end;

procedure TspdCustomNFe.Set_ImprimirVolume(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirVolume(Value);
end;

function TspdCustomNFe.Get_ImprimirDuplicata: WordBool;
begin
    Result := DefaultInterface.ImprimirDuplicata;
end;

procedure TspdCustomNFe.Set_ImprimirDuplicata(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirDuplicata(Value);
end;

function TspdCustomNFe.Get_CaminhoCertificado: WideString;
begin
    Result := DefaultInterface.CaminhoCertificado;
end;

procedure TspdCustomNFe.Set_CaminhoCertificado(const Value: WideString);
  { Warning: The property CaminhoCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaminhoCertificado := Value;
end;

function TspdCustomNFe.Get_SenhaCertificado: WideString;
begin
    Result := DefaultInterface.SenhaCertificado;
end;

procedure TspdCustomNFe.Set_SenhaCertificado(const Value: WideString);
  { Warning: The property SenhaCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SenhaCertificado := Value;
end;

function TspdCustomNFe.Get_ImprimirUnidadeTributada: WordBool;
begin
    Result := DefaultInterface.ImprimirUnidadeTributada;
end;

procedure TspdCustomNFe.Set_ImprimirUnidadeTributada(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirUnidadeTributada(Value);
end;

function TspdCustomNFe.Get_DiretorioLogErro: WideString;
begin
    Result := DefaultInterface.DiretorioLogErro;
end;

procedure TspdCustomNFe.Set_DiretorioLogErro(const Value: WideString);
  { Warning: The property DiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLogErro := Value;
end;

function TspdCustomNFe.Get_DiretorioTemporario: WideString;
begin
    Result := DefaultInterface.DiretorioTemporario;
end;

procedure TspdCustomNFe.Set_DiretorioTemporario(const Value: WideString);
  { Warning: The property DiretorioTemporario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemporario := Value;
end;

function TspdCustomNFe.Get_UltimoLogCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogCancelamento;
end;

procedure TspdCustomNFe.Set_UltimoLogCancelamento(const Value: WideString);
  { Warning: The property UltimoLogCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogCancelamento := Value;
end;

function TspdCustomNFe.Get_ModoOperacao: ModoOperacaoNFe;
begin
    Result := DefaultInterface.ModoOperacao;
end;

procedure TspdCustomNFe.Set_ModoOperacao(Value: ModoOperacaoNFe);
begin
  DefaultInterface.Set_ModoOperacao(Value);
end;

function TspdCustomNFe.Get_EmailConteudoHtml: WordBool;
begin
    Result := DefaultInterface.EmailConteudoHtml;
end;

procedure TspdCustomNFe.Set_EmailConteudoHtml(Value: WordBool);
begin
  DefaultInterface.Set_EmailConteudoHtml(Value);
end;

function TspdCustomNFe.Get_MensagemPartilhaAutomatica: WordBool;
begin
    Result := DefaultInterface.MensagemPartilhaAutomatica;
end;

procedure TspdCustomNFe.Set_MensagemPartilhaAutomatica(Value: WordBool);
begin
  DefaultInterface.Set_MensagemPartilhaAutomatica(Value);
end;

function TspdCustomNFe.Get_ImprimirObsCont: WordBool;
begin
    Result := DefaultInterface.ImprimirObsCont;
end;

procedure TspdCustomNFe.Set_ImprimirObsCont(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirObsCont(Value);
end;

function TspdCustomNFe.Get_MensagemFCP: WordBool;
begin
    Result := DefaultInterface.MensagemFCP;
end;

procedure TspdCustomNFe.Set_MensagemFCP(Value: WordBool);
begin
  DefaultInterface.Set_MensagemFCP(Value);
end;

function TspdCustomNFe.Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
begin
    Result := DefaultInterface.ImprimirFrenteVerso;
end;

procedure TspdCustomNFe.Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
begin
  DefaultInterface.Set_ImprimirFrenteVerso(Value);
end;

function TspdCustomNFe.Get_AtualizarArquivoServidores: WordBool;
begin
    Result := DefaultInterface.AtualizarArquivoServidores;
end;

procedure TspdCustomNFe.Set_AtualizarArquivoServidores(Value: WordBool);
begin
  DefaultInterface.Set_AtualizarArquivoServidores(Value);
end;

function TspdCustomNFe.ListarCertificados(const aDelimiter: WideString): WideString;
begin
  Result := DefaultInterface.ListarCertificados(aDelimiter);
end;

function TspdCustomNFe.RemoverCertificado(const CertificateName: WideString): WordBool;
begin
  Result := DefaultInterface.RemoverCertificado(CertificateName);
end;

procedure TspdCustomNFe.EmailAddCC(const Email: WideString);
begin
  DefaultInterface.EmailAddCC(Email);
end;

procedure TspdCustomNFe.EmailAddCCO(const Email: WideString);
begin
  DefaultInterface.EmailAddCCO(Email);
end;

function TspdCustomNFe.GetVencimentoCertificado: WideString;
begin
  Result := DefaultInterface.GetVencimentoCertificado;
end;

procedure TspdCustomNFe.SaveConfig(const aConfigFile: WideString);
begin
  DefaultInterface.SaveConfig(aConfigFile);
end;

function TspdCustomNFe.GetValidadeInicialCertificado: WideString;
begin
  Result := DefaultInterface.GetValidadeInicialCertificado;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TspdCustomNFeProperties.Create(AServer: TspdCustomNFe);
begin
  inherited Create;
  FServer := AServer;
end;

function TspdCustomNFeProperties.GetDefaultInterface: IspdCustomNFe;
begin
  Result := FServer.DefaultInterface;
end;

function TspdCustomNFeProperties.Get_DiretorioTemplates: WideString;
begin
    Result := DefaultInterface.DiretorioTemplates;
end;

procedure TspdCustomNFeProperties.Set_DiretorioTemplates(const Value: WideString);
  { Warning: The property DiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemplates := Value;
end;

function TspdCustomNFeProperties.Get_NomeCertificado: WideString;
begin
    Result := DefaultInterface.NomeCertificado;
end;

procedure TspdCustomNFeProperties.Set_NomeCertificado(const Value: WideString);
  { Warning: The property NomeCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NomeCertificado := Value;
end;

function TspdCustomNFeProperties.Get_TipoCertificado: TipoCertificado;
begin
    Result := DefaultInterface.TipoCertificado;
end;

procedure TspdCustomNFeProperties.Set_TipoCertificado(Value: TipoCertificado);
begin
  DefaultInterface.Set_TipoCertificado(Value);
end;

function TspdCustomNFeProperties.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure TspdCustomNFeProperties.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function TspdCustomNFeProperties.Get_Usuario: WideString;
begin
    Result := DefaultInterface.Usuario;
end;

procedure TspdCustomNFeProperties.Set_Usuario(const Value: WideString);
  { Warning: The property Usuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Usuario := Value;
end;

function TspdCustomNFeProperties.Get_ConfigINI: WideString;
begin
    Result := DefaultInterface.ConfigINI;
end;

procedure TspdCustomNFeProperties.Set_ConfigINI(const Value: WideString);
  { Warning: The property ConfigINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConfigINI := Value;
end;

function TspdCustomNFeProperties.Get_SectionINI: WideString;
begin
    Result := DefaultInterface.SectionINI;
end;

procedure TspdCustomNFeProperties.Set_SectionINI(const Value: WideString);
  { Warning: The property SectionINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SectionINI := Value;
end;

function TspdCustomNFeProperties.Get_Ambiente: Ambiente;
begin
    Result := DefaultInterface.Ambiente;
end;

procedure TspdCustomNFeProperties.Set_Ambiente(Value: Ambiente);
begin
  DefaultInterface.Set_Ambiente(Value);
end;

function TspdCustomNFeProperties.Get_ArquivoServidoresHom: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresHom;
end;

procedure TspdCustomNFeProperties.Set_ArquivoServidoresHom(const Value: WideString);
  { Warning: The property ArquivoServidoresHom has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresHom := Value;
end;

function TspdCustomNFeProperties.Get_ArquivoServidoresProd: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresProd;
end;

procedure TspdCustomNFeProperties.Set_ArquivoServidoresProd(const Value: WideString);
  { Warning: The property ArquivoServidoresProd has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresProd := Value;
end;

function TspdCustomNFeProperties.Get_DiretorioLog: WideString;
begin
    Result := DefaultInterface.DiretorioLog;
end;

procedure TspdCustomNFeProperties.Set_DiretorioLog(const Value: WideString);
  { Warning: The property DiretorioLog has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLog := Value;
end;

function TspdCustomNFeProperties.Get_ErrosValidador: WideString;
begin
    Result := DefaultInterface.ErrosValidador;
end;

procedure TspdCustomNFeProperties.Set_ErrosValidador(const Value: WideString);
  { Warning: The property ErrosValidador has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ErrosValidador := Value;
end;

function TspdCustomNFeProperties.Get_Senha: WideString;
begin
    Result := DefaultInterface.Senha;
end;

procedure TspdCustomNFeProperties.Set_Senha(const Value: WideString);
  { Warning: The property Senha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Senha := Value;
end;

function TspdCustomNFeProperties.Get_LogotipoEmitente: WideString;
begin
    Result := DefaultInterface.LogotipoEmitente;
end;

procedure TspdCustomNFeProperties.Set_LogotipoEmitente(const Value: WideString);
  { Warning: The property LogotipoEmitente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogotipoEmitente := Value;
end;

function TspdCustomNFeProperties.Get_UF: WideString;
begin
    Result := DefaultInterface.UF;
end;

procedure TspdCustomNFeProperties.Set_UF(const Value: WideString);
  { Warning: The property UF has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UF := Value;
end;

function TspdCustomNFeProperties.Get_CNPJ: WideString;
begin
    Result := DefaultInterface.CNPJ;
end;

procedure TspdCustomNFeProperties.Set_CNPJ(const Value: WideString);
  { Warning: The property CNPJ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CNPJ := Value;
end;

function TspdCustomNFeProperties.Get_DiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.DiretorioEsquemas;
end;

procedure TspdCustomNFeProperties.Set_DiretorioEsquemas(const Value: WideString);
  { Warning: The property DiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioEsquemas := Value;
end;

function TspdCustomNFeProperties.Get_ValidarEsquemaAntesEnvio: WordBool;
begin
    Result := DefaultInterface.ValidarEsquemaAntesEnvio;
end;

procedure TspdCustomNFeProperties.Set_ValidarEsquemaAntesEnvio(Value: WordBool);
begin
  DefaultInterface.Set_ValidarEsquemaAntesEnvio(Value);
end;

function TspdCustomNFeProperties.Get_EmailServidor: WideString;
begin
    Result := DefaultInterface.EmailServidor;
end;

procedure TspdCustomNFeProperties.Set_EmailServidor(const Value: WideString);
  { Warning: The property EmailServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailServidor := Value;
end;

function TspdCustomNFeProperties.Get_EmailAutenticacao: WordBool;
begin
    Result := DefaultInterface.EmailAutenticacao;
end;

procedure TspdCustomNFeProperties.Set_EmailAutenticacao(Value: WordBool);
begin
  DefaultInterface.Set_EmailAutenticacao(Value);
end;

function TspdCustomNFeProperties.Get_EmailRemetente: WideString;
begin
    Result := DefaultInterface.EmailRemetente;
end;

procedure TspdCustomNFeProperties.Set_EmailRemetente(const Value: WideString);
  { Warning: The property EmailRemetente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailRemetente := Value;
end;

function TspdCustomNFeProperties.Get_EmailDestinatario: WideString;
begin
    Result := DefaultInterface.EmailDestinatario;
end;

procedure TspdCustomNFeProperties.Set_EmailDestinatario(const Value: WideString);
  { Warning: The property EmailDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailDestinatario := Value;
end;

function TspdCustomNFeProperties.Get_EmailAssunto: WideString;
begin
    Result := DefaultInterface.EmailAssunto;
end;

procedure TspdCustomNFeProperties.Set_EmailAssunto(const Value: WideString);
  { Warning: The property EmailAssunto has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailAssunto := Value;
end;

function TspdCustomNFeProperties.Get_EmailMensagem: WideString;
begin
    Result := DefaultInterface.EmailMensagem;
end;

procedure TspdCustomNFeProperties.Set_EmailMensagem(const Value: WideString);
  { Warning: The property EmailMensagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailMensagem := Value;
end;

function TspdCustomNFeProperties.Get_EmailUsuario: WideString;
begin
    Result := DefaultInterface.EmailUsuario;
end;

procedure TspdCustomNFeProperties.Set_EmailUsuario(const Value: WideString);
  { Warning: The property EmailUsuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailUsuario := Value;
end;

function TspdCustomNFeProperties.Get_EmailSenha: WideString;
begin
    Result := DefaultInterface.EmailSenha;
end;

procedure TspdCustomNFeProperties.Set_EmailSenha(const Value: WideString);
  { Warning: The property EmailSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailSenha := Value;
end;

function TspdCustomNFeProperties.Get_FraseContingencia: WideString;
begin
    Result := DefaultInterface.FraseContingencia;
end;

procedure TspdCustomNFeProperties.Set_FraseContingencia(const Value: WideString);
  { Warning: The property FraseContingencia has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseContingencia := Value;
end;

function TspdCustomNFeProperties.Get_FraseHomologacao: WideString;
begin
    Result := DefaultInterface.FraseHomologacao;
end;

procedure TspdCustomNFeProperties.Set_FraseHomologacao(const Value: WideString);
  { Warning: The property FraseHomologacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseHomologacao := Value;
end;

function TspdCustomNFeProperties.Get_ModeloRetrato: WideString;
begin
    Result := DefaultInterface.ModeloRetrato;
end;

procedure TspdCustomNFeProperties.Set_ModeloRetrato(const Value: WideString);
  { Warning: The property ModeloRetrato has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetrato := Value;
end;

function TspdCustomNFeProperties.Get_ModeloPaisagem: WideString;
begin
    Result := DefaultInterface.ModeloPaisagem;
end;

procedure TspdCustomNFeProperties.Set_ModeloPaisagem(const Value: WideString);
  { Warning: The property ModeloPaisagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloPaisagem := Value;
end;

function TspdCustomNFeProperties.Get_VersaoManual: WideString;
begin
    Result := DefaultInterface.VersaoManual;
end;

procedure TspdCustomNFeProperties.Set_VersaoManual(const Value: WideString);
  { Warning: The property VersaoManual has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VersaoManual := Value;
end;

function TspdCustomNFeProperties.Get_AnexarDanfePDF: WordBool;
begin
    Result := DefaultInterface.AnexarDanfePDF;
end;

procedure TspdCustomNFeProperties.Set_AnexarDanfePDF(Value: WordBool);
begin
  DefaultInterface.Set_AnexarDanfePDF(Value);
end;

function TspdCustomNFeProperties.Get_QtdeCopias: Integer;
begin
    Result := DefaultInterface.QtdeCopias;
end;

procedure TspdCustomNFeProperties.Set_QtdeCopias(Value: Integer);
begin
  DefaultInterface.Set_QtdeCopias(Value);
end;

function TspdCustomNFeProperties.Get_EmailPorta: Integer;
begin
    Result := DefaultInterface.EmailPorta;
end;

procedure TspdCustomNFeProperties.Set_EmailPorta(Value: Integer);
begin
  DefaultInterface.Set_EmailPorta(Value);
end;

function TspdCustomNFeProperties.Get_LineDelimiter: WideString;
begin
    Result := DefaultInterface.LineDelimiter;
end;

procedure TspdCustomNFeProperties.Set_LineDelimiter(const Value: WideString);
  { Warning: The property LineDelimiter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LineDelimiter := Value;
end;

function TspdCustomNFeProperties.Get_IgnoreInvalidCertificates: WordBool;
begin
    Result := DefaultInterface.IgnoreInvalidCertificates;
end;

procedure TspdCustomNFeProperties.Set_IgnoreInvalidCertificates(Value: WordBool);
begin
  DefaultInterface.Set_IgnoreInvalidCertificates(Value);
end;

function TspdCustomNFeProperties.Get_Versao: WideString;
begin
    Result := DefaultInterface.Versao;
end;

function TspdCustomNFeProperties.Get_EmailTimeOut: Integer;
begin
    Result := DefaultInterface.EmailTimeOut;
end;

procedure TspdCustomNFeProperties.Set_EmailTimeOut(Value: Integer);
begin
  DefaultInterface.Set_EmailTimeOut(Value);
end;

function TspdCustomNFeProperties.Get_PINCODE: WideString;
begin
    Result := DefaultInterface.PINCODE;
end;

procedure TspdCustomNFeProperties.Set_PINCODE(const Value: WideString);
  { Warning: The property PINCODE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PINCODE := Value;
end;

function TspdCustomNFeProperties.Get_InfCplMaxCol: Integer;
begin
    Result := DefaultInterface.InfCplMaxCol;
end;

procedure TspdCustomNFeProperties.Set_InfCplMaxCol(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxCol(Value);
end;

function TspdCustomNFeProperties.Get_InfCplMaxRow: Integer;
begin
    Result := DefaultInterface.InfCplMaxRow;
end;

procedure TspdCustomNFeProperties.Set_InfCplMaxRow(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxRow(Value);
end;

function TspdCustomNFeProperties.Get_EmailCC: WideString;
begin
    Result := DefaultInterface.EmailCC;
end;

procedure TspdCustomNFeProperties.Set_EmailCC(const Value: WideString);
  { Warning: The property EmailCC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCC := Value;
end;

function TspdCustomNFeProperties.Get_EmailCCo: WideString;
begin
    Result := DefaultInterface.EmailCCo;
end;

procedure TspdCustomNFeProperties.Set_EmailCCo(const Value: WideString);
  { Warning: The property EmailCCo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCCo := Value;
end;

function TspdCustomNFeProperties.Get_TimeOut: Integer;
begin
    Result := DefaultInterface.TimeOut;
end;

procedure TspdCustomNFeProperties.Set_TimeOut(Value: Integer);
begin
  DefaultInterface.Set_TimeOut(Value);
end;

function TspdCustomNFeProperties.Get_ModeloDanfeSimplificado: WideString;
begin
    Result := DefaultInterface.ModeloDanfeSimplificado;
end;

procedure TspdCustomNFeProperties.Set_ModeloDanfeSimplificado(const Value: WideString);
  { Warning: The property ModeloDanfeSimplificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloDanfeSimplificado := Value;
end;

function TspdCustomNFeProperties.Get_CaracteresRemoverAcentos: WideString;
begin
    Result := DefaultInterface.CaracteresRemoverAcentos;
end;

procedure TspdCustomNFeProperties.Set_CaracteresRemoverAcentos(const Value: WideString);
  { Warning: The property CaracteresRemoverAcentos has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaracteresRemoverAcentos := Value;
end;

function TspdCustomNFeProperties.Get_ImprimirVolume: WordBool;
begin
    Result := DefaultInterface.ImprimirVolume;
end;

procedure TspdCustomNFeProperties.Set_ImprimirVolume(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirVolume(Value);
end;

function TspdCustomNFeProperties.Get_ImprimirDuplicata: WordBool;
begin
    Result := DefaultInterface.ImprimirDuplicata;
end;

procedure TspdCustomNFeProperties.Set_ImprimirDuplicata(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirDuplicata(Value);
end;

function TspdCustomNFeProperties.Get_CaminhoCertificado: WideString;
begin
    Result := DefaultInterface.CaminhoCertificado;
end;

procedure TspdCustomNFeProperties.Set_CaminhoCertificado(const Value: WideString);
  { Warning: The property CaminhoCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaminhoCertificado := Value;
end;

function TspdCustomNFeProperties.Get_SenhaCertificado: WideString;
begin
    Result := DefaultInterface.SenhaCertificado;
end;

procedure TspdCustomNFeProperties.Set_SenhaCertificado(const Value: WideString);
  { Warning: The property SenhaCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SenhaCertificado := Value;
end;

function TspdCustomNFeProperties.Get_ImprimirUnidadeTributada: WordBool;
begin
    Result := DefaultInterface.ImprimirUnidadeTributada;
end;

procedure TspdCustomNFeProperties.Set_ImprimirUnidadeTributada(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirUnidadeTributada(Value);
end;

function TspdCustomNFeProperties.Get_DiretorioLogErro: WideString;
begin
    Result := DefaultInterface.DiretorioLogErro;
end;

procedure TspdCustomNFeProperties.Set_DiretorioLogErro(const Value: WideString);
  { Warning: The property DiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLogErro := Value;
end;

function TspdCustomNFeProperties.Get_DiretorioTemporario: WideString;
begin
    Result := DefaultInterface.DiretorioTemporario;
end;

procedure TspdCustomNFeProperties.Set_DiretorioTemporario(const Value: WideString);
  { Warning: The property DiretorioTemporario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemporario := Value;
end;

function TspdCustomNFeProperties.Get_UltimoLogCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogCancelamento;
end;

procedure TspdCustomNFeProperties.Set_UltimoLogCancelamento(const Value: WideString);
  { Warning: The property UltimoLogCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogCancelamento := Value;
end;

function TspdCustomNFeProperties.Get_ModoOperacao: ModoOperacaoNFe;
begin
    Result := DefaultInterface.ModoOperacao;
end;

procedure TspdCustomNFeProperties.Set_ModoOperacao(Value: ModoOperacaoNFe);
begin
  DefaultInterface.Set_ModoOperacao(Value);
end;

function TspdCustomNFeProperties.Get_EmailConteudoHtml: WordBool;
begin
    Result := DefaultInterface.EmailConteudoHtml;
end;

procedure TspdCustomNFeProperties.Set_EmailConteudoHtml(Value: WordBool);
begin
  DefaultInterface.Set_EmailConteudoHtml(Value);
end;

function TspdCustomNFeProperties.Get_MensagemPartilhaAutomatica: WordBool;
begin
    Result := DefaultInterface.MensagemPartilhaAutomatica;
end;

procedure TspdCustomNFeProperties.Set_MensagemPartilhaAutomatica(Value: WordBool);
begin
  DefaultInterface.Set_MensagemPartilhaAutomatica(Value);
end;

function TspdCustomNFeProperties.Get_ImprimirObsCont: WordBool;
begin
    Result := DefaultInterface.ImprimirObsCont;
end;

procedure TspdCustomNFeProperties.Set_ImprimirObsCont(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirObsCont(Value);
end;

function TspdCustomNFeProperties.Get_MensagemFCP: WordBool;
begin
    Result := DefaultInterface.MensagemFCP;
end;

procedure TspdCustomNFeProperties.Set_MensagemFCP(Value: WordBool);
begin
  DefaultInterface.Set_MensagemFCP(Value);
end;

function TspdCustomNFeProperties.Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
begin
    Result := DefaultInterface.ImprimirFrenteVerso;
end;

procedure TspdCustomNFeProperties.Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
begin
  DefaultInterface.Set_ImprimirFrenteVerso(Value);
end;

function TspdCustomNFeProperties.Get_AtualizarArquivoServidores: WordBool;
begin
    Result := DefaultInterface.AtualizarArquivoServidores;
end;

procedure TspdCustomNFeProperties.Set_AtualizarArquivoServidores(Value: WordBool);
begin
  DefaultInterface.Set_AtualizarArquivoServidores(Value);
end;

{$ENDIF}

class function CospdNFeSCAN.Create: IspdNFeSCAN;
begin
  Result := CreateComObject(CLASS_spdNFeSCAN) as IspdNFeSCAN;
end;

class function CospdNFeSCAN.CreateRemote(const MachineName: string): IspdNFeSCAN;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdNFeSCAN) as IspdNFeSCAN;
end;

procedure TspdNFeSCAN.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EF5F9D8B-C80D-4ACC-8B04-A5A00BA26C6D}';
    IntfIID:   '{7B1CF680-E7AA-4BEC-99E5-C776E43386CA}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TspdNFeSCAN.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IspdNFeSCAN;
  end;
end;

procedure TspdNFeSCAN.ConnectTo(svrIntf: IspdNFeSCAN);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TspdNFeSCAN.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TspdNFeSCAN.GetDefaultInterface: IspdNFeSCAN;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TspdNFeSCAN.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TspdNFeSCANProperties.Create(Self);
{$ENDIF}
end;

destructor TspdNFeSCAN.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TspdNFeSCAN.GetServerProperties: TspdNFeSCANProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TspdNFeSCAN.Get_DiretorioTemplates: WideString;
begin
    Result := DefaultInterface.DiretorioTemplates;
end;

procedure TspdNFeSCAN.Set_DiretorioTemplates(const Value: WideString);
  { Warning: The property DiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemplates := Value;
end;

function TspdNFeSCAN.Get_NomeCertificado: WideString;
begin
    Result := DefaultInterface.NomeCertificado;
end;

procedure TspdNFeSCAN.Set_NomeCertificado(const Value: WideString);
  { Warning: The property NomeCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NomeCertificado := Value;
end;

function TspdNFeSCAN.Get_TipoCertificado: TipoCertificado;
begin
    Result := DefaultInterface.TipoCertificado;
end;

procedure TspdNFeSCAN.Set_TipoCertificado(Value: TipoCertificado);
begin
  DefaultInterface.Set_TipoCertificado(Value);
end;

function TspdNFeSCAN.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure TspdNFeSCAN.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function TspdNFeSCAN.Get_Usuario: WideString;
begin
    Result := DefaultInterface.Usuario;
end;

procedure TspdNFeSCAN.Set_Usuario(const Value: WideString);
  { Warning: The property Usuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Usuario := Value;
end;

function TspdNFeSCAN.Get_ConfigINI: WideString;
begin
    Result := DefaultInterface.ConfigINI;
end;

procedure TspdNFeSCAN.Set_ConfigINI(const Value: WideString);
  { Warning: The property ConfigINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConfigINI := Value;
end;

function TspdNFeSCAN.Get_SectionINI: WideString;
begin
    Result := DefaultInterface.SectionINI;
end;

procedure TspdNFeSCAN.Set_SectionINI(const Value: WideString);
  { Warning: The property SectionINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SectionINI := Value;
end;

function TspdNFeSCAN.Get_Ambiente: Ambiente;
begin
    Result := DefaultInterface.Ambiente;
end;

procedure TspdNFeSCAN.Set_Ambiente(Value: Ambiente);
begin
  DefaultInterface.Set_Ambiente(Value);
end;

function TspdNFeSCAN.Get_ArquivoServidoresHom: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresHom;
end;

procedure TspdNFeSCAN.Set_ArquivoServidoresHom(const Value: WideString);
  { Warning: The property ArquivoServidoresHom has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresHom := Value;
end;

function TspdNFeSCAN.Get_ArquivoServidoresProd: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresProd;
end;

procedure TspdNFeSCAN.Set_ArquivoServidoresProd(const Value: WideString);
  { Warning: The property ArquivoServidoresProd has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresProd := Value;
end;

function TspdNFeSCAN.Get_DiretorioLog: WideString;
begin
    Result := DefaultInterface.DiretorioLog;
end;

procedure TspdNFeSCAN.Set_DiretorioLog(const Value: WideString);
  { Warning: The property DiretorioLog has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLog := Value;
end;

function TspdNFeSCAN.Get_ErrosValidador: WideString;
begin
    Result := DefaultInterface.ErrosValidador;
end;

procedure TspdNFeSCAN.Set_ErrosValidador(const Value: WideString);
  { Warning: The property ErrosValidador has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ErrosValidador := Value;
end;

function TspdNFeSCAN.Get_Senha: WideString;
begin
    Result := DefaultInterface.Senha;
end;

procedure TspdNFeSCAN.Set_Senha(const Value: WideString);
  { Warning: The property Senha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Senha := Value;
end;

function TspdNFeSCAN.Get_LogotipoEmitente: WideString;
begin
    Result := DefaultInterface.LogotipoEmitente;
end;

procedure TspdNFeSCAN.Set_LogotipoEmitente(const Value: WideString);
  { Warning: The property LogotipoEmitente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogotipoEmitente := Value;
end;

function TspdNFeSCAN.Get_UF: WideString;
begin
    Result := DefaultInterface.UF;
end;

procedure TspdNFeSCAN.Set_UF(const Value: WideString);
  { Warning: The property UF has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UF := Value;
end;

function TspdNFeSCAN.Get_CNPJ: WideString;
begin
    Result := DefaultInterface.CNPJ;
end;

procedure TspdNFeSCAN.Set_CNPJ(const Value: WideString);
  { Warning: The property CNPJ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CNPJ := Value;
end;

function TspdNFeSCAN.Get_DiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.DiretorioEsquemas;
end;

procedure TspdNFeSCAN.Set_DiretorioEsquemas(const Value: WideString);
  { Warning: The property DiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioEsquemas := Value;
end;

function TspdNFeSCAN.Get_ValidarEsquemaAntesEnvio: WordBool;
begin
    Result := DefaultInterface.ValidarEsquemaAntesEnvio;
end;

procedure TspdNFeSCAN.Set_ValidarEsquemaAntesEnvio(Value: WordBool);
begin
  DefaultInterface.Set_ValidarEsquemaAntesEnvio(Value);
end;

function TspdNFeSCAN.Get_EmailServidor: WideString;
begin
    Result := DefaultInterface.EmailServidor;
end;

procedure TspdNFeSCAN.Set_EmailServidor(const Value: WideString);
  { Warning: The property EmailServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailServidor := Value;
end;

function TspdNFeSCAN.Get_EmailAutenticacao: WordBool;
begin
    Result := DefaultInterface.EmailAutenticacao;
end;

procedure TspdNFeSCAN.Set_EmailAutenticacao(Value: WordBool);
begin
  DefaultInterface.Set_EmailAutenticacao(Value);
end;

function TspdNFeSCAN.Get_EmailRemetente: WideString;
begin
    Result := DefaultInterface.EmailRemetente;
end;

procedure TspdNFeSCAN.Set_EmailRemetente(const Value: WideString);
  { Warning: The property EmailRemetente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailRemetente := Value;
end;

function TspdNFeSCAN.Get_EmailDestinatario: WideString;
begin
    Result := DefaultInterface.EmailDestinatario;
end;

procedure TspdNFeSCAN.Set_EmailDestinatario(const Value: WideString);
  { Warning: The property EmailDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailDestinatario := Value;
end;

function TspdNFeSCAN.Get_EmailAssunto: WideString;
begin
    Result := DefaultInterface.EmailAssunto;
end;

procedure TspdNFeSCAN.Set_EmailAssunto(const Value: WideString);
  { Warning: The property EmailAssunto has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailAssunto := Value;
end;

function TspdNFeSCAN.Get_EmailMensagem: WideString;
begin
    Result := DefaultInterface.EmailMensagem;
end;

procedure TspdNFeSCAN.Set_EmailMensagem(const Value: WideString);
  { Warning: The property EmailMensagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailMensagem := Value;
end;

function TspdNFeSCAN.Get_EmailUsuario: WideString;
begin
    Result := DefaultInterface.EmailUsuario;
end;

procedure TspdNFeSCAN.Set_EmailUsuario(const Value: WideString);
  { Warning: The property EmailUsuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailUsuario := Value;
end;

function TspdNFeSCAN.Get_EmailSenha: WideString;
begin
    Result := DefaultInterface.EmailSenha;
end;

procedure TspdNFeSCAN.Set_EmailSenha(const Value: WideString);
  { Warning: The property EmailSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailSenha := Value;
end;

function TspdNFeSCAN.Get_FraseContingencia: WideString;
begin
    Result := DefaultInterface.FraseContingencia;
end;

procedure TspdNFeSCAN.Set_FraseContingencia(const Value: WideString);
  { Warning: The property FraseContingencia has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseContingencia := Value;
end;

function TspdNFeSCAN.Get_FraseHomologacao: WideString;
begin
    Result := DefaultInterface.FraseHomologacao;
end;

procedure TspdNFeSCAN.Set_FraseHomologacao(const Value: WideString);
  { Warning: The property FraseHomologacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseHomologacao := Value;
end;

function TspdNFeSCAN.Get_ModeloRetrato: WideString;
begin
    Result := DefaultInterface.ModeloRetrato;
end;

procedure TspdNFeSCAN.Set_ModeloRetrato(const Value: WideString);
  { Warning: The property ModeloRetrato has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetrato := Value;
end;

function TspdNFeSCAN.Get_ModeloPaisagem: WideString;
begin
    Result := DefaultInterface.ModeloPaisagem;
end;

procedure TspdNFeSCAN.Set_ModeloPaisagem(const Value: WideString);
  { Warning: The property ModeloPaisagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloPaisagem := Value;
end;

function TspdNFeSCAN.Get_VersaoManual: WideString;
begin
    Result := DefaultInterface.VersaoManual;
end;

procedure TspdNFeSCAN.Set_VersaoManual(const Value: WideString);
  { Warning: The property VersaoManual has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VersaoManual := Value;
end;

function TspdNFeSCAN.Get_AnexarDanfePDF: WordBool;
begin
    Result := DefaultInterface.AnexarDanfePDF;
end;

procedure TspdNFeSCAN.Set_AnexarDanfePDF(Value: WordBool);
begin
  DefaultInterface.Set_AnexarDanfePDF(Value);
end;

function TspdNFeSCAN.Get_QtdeCopias: Integer;
begin
    Result := DefaultInterface.QtdeCopias;
end;

procedure TspdNFeSCAN.Set_QtdeCopias(Value: Integer);
begin
  DefaultInterface.Set_QtdeCopias(Value);
end;

function TspdNFeSCAN.Get_EmailPorta: Integer;
begin
    Result := DefaultInterface.EmailPorta;
end;

procedure TspdNFeSCAN.Set_EmailPorta(Value: Integer);
begin
  DefaultInterface.Set_EmailPorta(Value);
end;

function TspdNFeSCAN.Get_LineDelimiter: WideString;
begin
    Result := DefaultInterface.LineDelimiter;
end;

procedure TspdNFeSCAN.Set_LineDelimiter(const Value: WideString);
  { Warning: The property LineDelimiter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LineDelimiter := Value;
end;

function TspdNFeSCAN.Get_IgnoreInvalidCertificates: WordBool;
begin
    Result := DefaultInterface.IgnoreInvalidCertificates;
end;

procedure TspdNFeSCAN.Set_IgnoreInvalidCertificates(Value: WordBool);
begin
  DefaultInterface.Set_IgnoreInvalidCertificates(Value);
end;

function TspdNFeSCAN.Get_Versao: WideString;
begin
    Result := DefaultInterface.Versao;
end;

function TspdNFeSCAN.Get_EmailTimeOut: Integer;
begin
    Result := DefaultInterface.EmailTimeOut;
end;

procedure TspdNFeSCAN.Set_EmailTimeOut(Value: Integer);
begin
  DefaultInterface.Set_EmailTimeOut(Value);
end;

function TspdNFeSCAN.Get_PINCODE: WideString;
begin
    Result := DefaultInterface.PINCODE;
end;

procedure TspdNFeSCAN.Set_PINCODE(const Value: WideString);
  { Warning: The property PINCODE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PINCODE := Value;
end;

function TspdNFeSCAN.Get_InfCplMaxCol: Integer;
begin
    Result := DefaultInterface.InfCplMaxCol;
end;

procedure TspdNFeSCAN.Set_InfCplMaxCol(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxCol(Value);
end;

function TspdNFeSCAN.Get_InfCplMaxRow: Integer;
begin
    Result := DefaultInterface.InfCplMaxRow;
end;

procedure TspdNFeSCAN.Set_InfCplMaxRow(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxRow(Value);
end;

function TspdNFeSCAN.Get_EmailCC: WideString;
begin
    Result := DefaultInterface.EmailCC;
end;

procedure TspdNFeSCAN.Set_EmailCC(const Value: WideString);
  { Warning: The property EmailCC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCC := Value;
end;

function TspdNFeSCAN.Get_EmailCCo: WideString;
begin
    Result := DefaultInterface.EmailCCo;
end;

procedure TspdNFeSCAN.Set_EmailCCo(const Value: WideString);
  { Warning: The property EmailCCo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCCo := Value;
end;

function TspdNFeSCAN.Get_TimeOut: Integer;
begin
    Result := DefaultInterface.TimeOut;
end;

procedure TspdNFeSCAN.Set_TimeOut(Value: Integer);
begin
  DefaultInterface.Set_TimeOut(Value);
end;

function TspdNFeSCAN.Get_ModeloDanfeSimplificado: WideString;
begin
    Result := DefaultInterface.ModeloDanfeSimplificado;
end;

procedure TspdNFeSCAN.Set_ModeloDanfeSimplificado(const Value: WideString);
  { Warning: The property ModeloDanfeSimplificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloDanfeSimplificado := Value;
end;

function TspdNFeSCAN.Get_CaracteresRemoverAcentos: WideString;
begin
    Result := DefaultInterface.CaracteresRemoverAcentos;
end;

procedure TspdNFeSCAN.Set_CaracteresRemoverAcentos(const Value: WideString);
  { Warning: The property CaracteresRemoverAcentos has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaracteresRemoverAcentos := Value;
end;

function TspdNFeSCAN.Get_ImprimirVolume: WordBool;
begin
    Result := DefaultInterface.ImprimirVolume;
end;

procedure TspdNFeSCAN.Set_ImprimirVolume(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirVolume(Value);
end;

function TspdNFeSCAN.Get_ImprimirDuplicata: WordBool;
begin
    Result := DefaultInterface.ImprimirDuplicata;
end;

procedure TspdNFeSCAN.Set_ImprimirDuplicata(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirDuplicata(Value);
end;

function TspdNFeSCAN.Get_CaminhoCertificado: WideString;
begin
    Result := DefaultInterface.CaminhoCertificado;
end;

procedure TspdNFeSCAN.Set_CaminhoCertificado(const Value: WideString);
  { Warning: The property CaminhoCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaminhoCertificado := Value;
end;

function TspdNFeSCAN.Get_SenhaCertificado: WideString;
begin
    Result := DefaultInterface.SenhaCertificado;
end;

procedure TspdNFeSCAN.Set_SenhaCertificado(const Value: WideString);
  { Warning: The property SenhaCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SenhaCertificado := Value;
end;

function TspdNFeSCAN.Get_ImprimirUnidadeTributada: WordBool;
begin
    Result := DefaultInterface.ImprimirUnidadeTributada;
end;

procedure TspdNFeSCAN.Set_ImprimirUnidadeTributada(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirUnidadeTributada(Value);
end;

function TspdNFeSCAN.Get_DiretorioLogErro: WideString;
begin
    Result := DefaultInterface.DiretorioLogErro;
end;

procedure TspdNFeSCAN.Set_DiretorioLogErro(const Value: WideString);
  { Warning: The property DiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLogErro := Value;
end;

function TspdNFeSCAN.Get_DiretorioTemporario: WideString;
begin
    Result := DefaultInterface.DiretorioTemporario;
end;

procedure TspdNFeSCAN.Set_DiretorioTemporario(const Value: WideString);
  { Warning: The property DiretorioTemporario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemporario := Value;
end;

function TspdNFeSCAN.Get_UltimoLogCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogCancelamento;
end;

procedure TspdNFeSCAN.Set_UltimoLogCancelamento(const Value: WideString);
  { Warning: The property UltimoLogCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogCancelamento := Value;
end;

function TspdNFeSCAN.Get_ModoOperacao: ModoOperacaoNFe;
begin
    Result := DefaultInterface.ModoOperacao;
end;

procedure TspdNFeSCAN.Set_ModoOperacao(Value: ModoOperacaoNFe);
begin
  DefaultInterface.Set_ModoOperacao(Value);
end;

function TspdNFeSCAN.Get_EmailConteudoHtml: WordBool;
begin
    Result := DefaultInterface.EmailConteudoHtml;
end;

procedure TspdNFeSCAN.Set_EmailConteudoHtml(Value: WordBool);
begin
  DefaultInterface.Set_EmailConteudoHtml(Value);
end;

function TspdNFeSCAN.Get_MensagemPartilhaAutomatica: WordBool;
begin
    Result := DefaultInterface.MensagemPartilhaAutomatica;
end;

procedure TspdNFeSCAN.Set_MensagemPartilhaAutomatica(Value: WordBool);
begin
  DefaultInterface.Set_MensagemPartilhaAutomatica(Value);
end;

function TspdNFeSCAN.Get_ImprimirObsCont: WordBool;
begin
    Result := DefaultInterface.ImprimirObsCont;
end;

procedure TspdNFeSCAN.Set_ImprimirObsCont(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirObsCont(Value);
end;

function TspdNFeSCAN.Get_MensagemFCP: WordBool;
begin
    Result := DefaultInterface.MensagemFCP;
end;

procedure TspdNFeSCAN.Set_MensagemFCP(Value: WordBool);
begin
  DefaultInterface.Set_MensagemFCP(Value);
end;

function TspdNFeSCAN.Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
begin
    Result := DefaultInterface.ImprimirFrenteVerso;
end;

procedure TspdNFeSCAN.Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
begin
  DefaultInterface.Set_ImprimirFrenteVerso(Value);
end;

function TspdNFeSCAN.Get_AtualizarArquivoServidores: WordBool;
begin
    Result := DefaultInterface.AtualizarArquivoServidores;
end;

procedure TspdNFeSCAN.Set_AtualizarArquivoServidores(Value: WordBool);
begin
  DefaultInterface.Set_AtualizarArquivoServidores(Value);
end;

function TspdNFeSCAN.Get_UltimoLogEnvio: WideString;
begin
    Result := DefaultInterface.UltimoLogEnvio;
end;

procedure TspdNFeSCAN.Set_UltimoLogEnvio(const Value: WideString);
  { Warning: The property UltimoLogEnvio has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogEnvio := Value;
end;

function TspdNFeSCAN.Get_UltimoLogConsRecibo: WideString;
begin
    Result := DefaultInterface.UltimoLogConsRecibo;
end;

procedure TspdNFeSCAN.Set_UltimoLogConsRecibo(const Value: WideString);
  { Warning: The property UltimoLogConsRecibo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogConsRecibo := Value;
end;

function TspdNFeSCAN.Get_DiretorioXmlDestinatario: WideString;
begin
    Result := DefaultInterface.DiretorioXmlDestinatario;
end;

procedure TspdNFeSCAN.Set_DiretorioXmlDestinatario(const Value: WideString);
  { Warning: The property DiretorioXmlDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioXmlDestinatario := Value;
end;

function TspdNFeSCAN.Get_MaxSizeLoteEnvio: Integer;
begin
    Result := DefaultInterface.MaxSizeLoteEnvio;
end;

procedure TspdNFeSCAN.Set_MaxSizeLoteEnvio(Value: Integer);
begin
  DefaultInterface.Set_MaxSizeLoteEnvio(Value);
end;

function TspdNFeSCAN.Get_DanfeSimplificado: WordBool;
begin
    Result := DefaultInterface.DanfeSimplificado;
end;

procedure TspdNFeSCAN.Set_DanfeSimplificado(Value: WordBool);
begin
  DefaultInterface.Set_DanfeSimplificado(Value);
end;

function TspdNFeSCAN.Get_DiretorioDownloads: WideString;
begin
    Result := DefaultInterface.DiretorioDownloads;
end;

procedure TspdNFeSCAN.Set_DiretorioDownloads(const Value: WideString);
  { Warning: The property DiretorioDownloads has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioDownloads := Value;
end;

function TspdNFeSCAN.Get_UltimoLogRecibo: WideString;
begin
    Result := DefaultInterface.UltimoLogRecibo;
end;

procedure TspdNFeSCAN.Set_UltimoLogRecibo(const Value: WideString);
  { Warning: The property UltimoLogRecibo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogRecibo := Value;
end;

function TspdNFeSCAN.Get_UltimoLogReciboCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogReciboCancelamento;
end;

procedure TspdNFeSCAN.Set_UltimoLogReciboCancelamento(const Value: WideString);
  { Warning: The property UltimoLogReciboCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogReciboCancelamento := Value;
end;

function TspdNFeSCAN.Get_ModeloRTMCCe: WideString;
begin
    Result := DefaultInterface.ModeloRTMCCe;
end;

procedure TspdNFeSCAN.Set_ModeloRTMCCe(const Value: WideString);
  { Warning: The property ModeloRTMCCe has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRTMCCe := Value;
end;

function TspdNFeSCAN.Get_EntregaXML: EntregaXML;
begin
    Result := DefaultInterface.EntregaXML;
end;

procedure TspdNFeSCAN.Set_EntregaXML(Value: EntregaXML);
begin
  DefaultInterface.Set_EntregaXML(Value);
end;

function TspdNFeSCAN.Get_NotaSeguraToken: WideString;
begin
    Result := DefaultInterface.NotaSeguraToken;
end;

procedure TspdNFeSCAN.Set_NotaSeguraToken(const Value: WideString);
  { Warning: The property NotaSeguraToken has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraToken := Value;
end;

function TspdNFeSCAN.Get_NotaSeguraLogin: WideString;
begin
    Result := DefaultInterface.NotaSeguraLogin;
end;

procedure TspdNFeSCAN.Set_NotaSeguraLogin(const Value: WideString);
  { Warning: The property NotaSeguraLogin has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraLogin := Value;
end;

function TspdNFeSCAN.Get_NotaSeguraSenha: WideString;
begin
    Result := DefaultInterface.NotaSeguraSenha;
end;

procedure TspdNFeSCAN.Set_NotaSeguraSenha(const Value: WideString);
  { Warning: The property NotaSeguraSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraSenha := Value;
end;

function TspdNFeSCAN.Get_NotaSeguraServidor: WideString;
begin
    Result := DefaultInterface.NotaSeguraServidor;
end;

procedure TspdNFeSCAN.Set_NotaSeguraServidor(const Value: WideString);
  { Warning: The property NotaSeguraServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraServidor := Value;
end;

function TspdNFeSCAN.Get_AuditorServidor: WideString;
begin
    Result := DefaultInterface.AuditorServidor;
end;

procedure TspdNFeSCAN.Set_AuditorServidor(const Value: WideString);
  { Warning: The property AuditorServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorServidor := Value;
end;

function TspdNFeSCAN.Get_AuditorExibirRegrasValidacao: WordBool;
begin
    Result := DefaultInterface.AuditorExibirRegrasValidacao;
end;

procedure TspdNFeSCAN.Set_AuditorExibirRegrasValidacao(Value: WordBool);
begin
  DefaultInterface.Set_AuditorExibirRegrasValidacao(Value);
end;

function TspdNFeSCAN.Get_AuditorCodigoProduto: Integer;
begin
    Result := DefaultInterface.AuditorCodigoProduto;
end;

procedure TspdNFeSCAN.Set_AuditorCodigoProduto(Value: Integer);
begin
  DefaultInterface.Set_AuditorCodigoProduto(Value);
end;

function TspdNFeSCAN.Get_AuditorEstagio: Estagio;
begin
    Result := DefaultInterface.AuditorEstagio;
end;

procedure TspdNFeSCAN.Set_AuditorEstagio(Value: Estagio);
begin
  DefaultInterface.Set_AuditorEstagio(Value);
end;

function TspdNFeSCAN.Get_AuditorTemplateHtml: WideString;
begin
    Result := DefaultInterface.AuditorTemplateHtml;
end;

procedure TspdNFeSCAN.Set_AuditorTemplateHtml(const Value: WideString);
  { Warning: The property AuditorTemplateHtml has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorTemplateHtml := Value;
end;

function TspdNFeSCAN.Get_AuditorHeigthHtml: Integer;
begin
    Result := DefaultInterface.AuditorHeigthHtml;
end;

procedure TspdNFeSCAN.Set_AuditorHeigthHtml(Value: Integer);
begin
  DefaultInterface.Set_AuditorHeigthHtml(Value);
end;

function TspdNFeSCAN.Get_AuditorWidthHtml: Integer;
begin
    Result := DefaultInterface.AuditorWidthHtml;
end;

procedure TspdNFeSCAN.Set_AuditorWidthHtml(Value: Integer);
begin
  DefaultInterface.Set_AuditorWidthHtml(Value);
end;

function TspdNFeSCAN.Get_AuditorHtmlBaseUrl: WideString;
begin
    Result := DefaultInterface.AuditorHtmlBaseUrl;
end;

procedure TspdNFeSCAN.Set_AuditorHtmlBaseUrl(const Value: WideString);
  { Warning: The property AuditorHtmlBaseUrl has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorHtmlBaseUrl := Value;
end;

function TspdNFeSCAN.Get_AuditorTipoResposta: TipoResposta;
begin
    Result := DefaultInterface.AuditorTipoResposta;
end;

procedure TspdNFeSCAN.Set_AuditorTipoResposta(Value: TipoResposta);
begin
  DefaultInterface.Set_AuditorTipoResposta(Value);
end;

function TspdNFeSCAN.Get_AuditorTotalRejeicao: WideString;
begin
    Result := DefaultInterface.AuditorTotalRejeicao;
end;

procedure TspdNFeSCAN.Set_AuditorTotalRejeicao(const Value: WideString);
  { Warning: The property AuditorTotalRejeicao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorTotalRejeicao := Value;
end;

function TspdNFeSCAN.Get_AuditorLinguagemResposta: LinguagemResposta;
begin
    Result := DefaultInterface.AuditorLinguagemResposta;
end;

procedure TspdNFeSCAN.Set_AuditorLinguagemResposta(Value: LinguagemResposta);
begin
  DefaultInterface.Set_AuditorLinguagemResposta(Value);
end;

function TspdNFeSCAN.Get_AuditorModoOperacao: ModoOperacao;
begin
    Result := DefaultInterface.AuditorModoOperacao;
end;

procedure TspdNFeSCAN.Set_AuditorModoOperacao(Value: ModoOperacao);
begin
  DefaultInterface.Set_AuditorModoOperacao(Value);
end;

function TspdNFeSCAN.Get_AuditorDiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioEsquemas;
end;

procedure TspdNFeSCAN.Set_AuditorDiretorioEsquemas(const Value: WideString);
  { Warning: The property AuditorDiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioEsquemas := Value;
end;

function TspdNFeSCAN.Get_AuditorDiretorioTemplates: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioTemplates;
end;

procedure TspdNFeSCAN.Set_AuditorDiretorioTemplates(const Value: WideString);
  { Warning: The property AuditorDiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioTemplates := Value;
end;

function TspdNFeSCAN.Get_AuditorDiretorioRegras: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioRegras;
end;

procedure TspdNFeSCAN.Set_AuditorDiretorioRegras(const Value: WideString);
  { Warning: The property AuditorDiretorioRegras has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioRegras := Value;
end;

function TspdNFeSCAN.Get_AuditorDiretorioLogErro: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioLogErro;
end;

procedure TspdNFeSCAN.Set_AuditorDiretorioLogErro(const Value: WideString);
  { Warning: The property AuditorDiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioLogErro := Value;
end;

function TspdNFeSCAN.Get_AuditorServidorProxy: WideString;
begin
    Result := DefaultInterface.AuditorServidorProxy;
end;

procedure TspdNFeSCAN.Set_AuditorServidorProxy(const Value: WideString);
  { Warning: The property AuditorServidorProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorServidorProxy := Value;
end;

function TspdNFeSCAN.Get_AuditorPortaProxy: Integer;
begin
    Result := DefaultInterface.AuditorPortaProxy;
end;

procedure TspdNFeSCAN.Set_AuditorPortaProxy(Value: Integer);
begin
  DefaultInterface.Set_AuditorPortaProxy(Value);
end;

function TspdNFeSCAN.Get_AuditorUsuarioProxy: WideString;
begin
    Result := DefaultInterface.AuditorUsuarioProxy;
end;

procedure TspdNFeSCAN.Set_AuditorUsuarioProxy(const Value: WideString);
  { Warning: The property AuditorUsuarioProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorUsuarioProxy := Value;
end;

function TspdNFeSCAN.Get_AuditorSenhaProxy: WideString;
begin
    Result := DefaultInterface.AuditorSenhaProxy;
end;

procedure TspdNFeSCAN.Set_AuditorSenhaProxy(const Value: WideString);
  { Warning: The property AuditorSenhaProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorSenhaProxy := Value;
end;

function TspdNFeSCAN.Get_ConexaoSegura: WordBool;
begin
    Result := DefaultInterface.ConexaoSegura;
end;

procedure TspdNFeSCAN.Set_ConexaoSegura(Value: WordBool);
begin
  DefaultInterface.Set_ConexaoSegura(Value);
end;

function TspdNFeSCAN.Get_UltimoLogConsultarDFe: WideString;
begin
    Result := DefaultInterface.UltimoLogConsultarDFe;
end;

procedure TspdNFeSCAN.Set_UltimoLogConsultarDFe(const Value: WideString);
  { Warning: The property UltimoLogConsultarDFe has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogConsultarDFe := Value;
end;

function TspdNFeSCAN.Get_AuditorTimeOut: Integer;
begin
    Result := DefaultInterface.AuditorTimeOut;
end;

procedure TspdNFeSCAN.Set_AuditorTimeOut(Value: Integer);
begin
  DefaultInterface.Set_AuditorTimeOut(Value);
end;

function TspdNFeSCAN.Get_UltimoLogReciboInutilizacao: WideString;
begin
    Result := DefaultInterface.UltimoLogReciboInutilizacao;
end;

procedure TspdNFeSCAN.Set_UltimoLogReciboInutilizacao(const Value: WideString);
  { Warning: The property UltimoLogReciboInutilizacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogReciboInutilizacao := Value;
end;

function TspdNFeSCAN.Get_ModeloRetratoCancelamento: WideString;
begin
    Result := DefaultInterface.ModeloRetratoCancelamento;
end;

procedure TspdNFeSCAN.Set_ModeloRetratoCancelamento(const Value: WideString);
  { Warning: The property ModeloRetratoCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetratoCancelamento := Value;
end;

function TspdNFeSCAN.Get_UltimoLogInutilizacao: WideString;
begin
    Result := DefaultInterface.UltimoLogInutilizacao;
end;

procedure TspdNFeSCAN.Set_UltimoLogInutilizacao(const Value: WideString);
  { Warning: The property UltimoLogInutilizacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogInutilizacao := Value;
end;

function TspdNFeSCAN.Get_Serie: WideString;
begin
    Result := DefaultInterface.Serie;
end;

procedure TspdNFeSCAN.Set_Serie(const Value: WideString);
  { Warning: The property Serie has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Serie := Value;
end;

function TspdNFeSCAN.Get_tpEmis: WideString;
begin
    Result := DefaultInterface.tpEmis;
end;

procedure TspdNFeSCAN.Set_tpEmis(const Value: WideString);
  { Warning: The property tpEmis has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.tpEmis := Value;
end;

function TspdNFeSCAN.ListarCertificados(const aDelimiter: WideString): WideString;
begin
  Result := DefaultInterface.ListarCertificados(aDelimiter);
end;

function TspdNFeSCAN.RemoverCertificado(const CertificateName: WideString): WordBool;
begin
  Result := DefaultInterface.RemoverCertificado(CertificateName);
end;

procedure TspdNFeSCAN.EmailAddCC(const Email: WideString);
begin
  DefaultInterface.EmailAddCC(Email);
end;

procedure TspdNFeSCAN.EmailAddCCO(const Email: WideString);
begin
  DefaultInterface.EmailAddCCO(Email);
end;

function TspdNFeSCAN.GetVencimentoCertificado: WideString;
begin
  Result := DefaultInterface.GetVencimentoCertificado;
end;

procedure TspdNFeSCAN.SaveConfig(const aConfigFile: WideString);
begin
  DefaultInterface.SaveConfig(aConfigFile);
end;

function TspdNFeSCAN.GetValidadeInicialCertificado: WideString;
begin
  Result := DefaultInterface.GetValidadeInicialCertificado;
end;

function TspdNFeSCAN.CalculaChaveNFe(const aDtEmissao: WideString; const aUF: WideString; 
                                     const aCNPJ: WideString; const aModelo: WideString; 
                                     const aSerie: WideString; const aNRNota: WideString; 
                                     const aCodSistema: WideString; const aTpEmis: WideString): WideString;
begin
  Result := DefaultInterface.CalculaChaveNFe(aDtEmissao, aUF, aCNPJ, aModelo, aSerie, aNRNota, 
                                             aCodSistema, aTpEmis);
end;

function TspdNFeSCAN.AssinarNota(const aXML: WideString): WideString;
begin
  Result := DefaultInterface.AssinarNota(aXML);
end;

function TspdNFeSCAN.GerarNotasAleatorias(Qtde: Integer; const CNPJ: WideString): WideString;
begin
  Result := DefaultInterface.GerarNotasAleatorias(Qtde, CNPJ);
end;

function TspdNFeSCAN.ConverterLoteParaXML(const ArquivoLoteTxt: WideString; 
                                          aLayoutConv: LayoutConv; const aVersaoEsquema: WideString): WideString;
begin
  Result := DefaultInterface.ConverterLoteParaXML(ArquivoLoteTxt, aLayoutConv, aVersaoEsquema);
end;

function TspdNFeSCAN.StatusDoServico: WideString;
begin
  Result := DefaultInterface.StatusDoServico;
end;

function TspdNFeSCAN.CancelarNF(const aNotaID: WideString; const aNumProtocolo: WideString; 
                                const aJustificativa: WideString): WideString;
begin
  Result := DefaultInterface.CancelarNF(aNotaID, aNumProtocolo, aJustificativa);
end;

function TspdNFeSCAN.ConsultarNF(const aNotaID: WideString): WideString;
begin
  Result := DefaultInterface.ConsultarNF(aNotaID);
end;

function TspdNFeSCAN.InutilizarNF(const aNotaID: WideString; const aAno: WideString; 
                                  const aCNPJ: WideString; const aModelo: WideString; 
                                  const aSerie: WideString; const aNFIni: WideString; 
                                  const aNFFin: WideString; const aJustificativa: WideString): WideString;
begin
  Result := DefaultInterface.InutilizarNF(aNotaID, aAno, aCNPJ, aModelo, aSerie, aNFIni, aNFFin, 
                                          aJustificativa);
end;

function TspdNFeSCAN.EnviarNF(const aNumLote: WideString; const aLoteNotas: WideString; 
                              aCompactado: WordBool): WideString;
begin
  Result := DefaultInterface.EnviarNF(aNumLote, aLoteNotas, aCompactado);
end;

function TspdNFeSCAN.ConsultarRecibo(const aNumRecibo: WideString): WideString;
begin
  Result := DefaultInterface.ConsultarRecibo(aNumRecibo);
end;

function TspdNFeSCAN.ConsultarCadastro(const aDocumento: WideString; 
                                       const aTpDocumento: WideString; const aUF: WideString): WideString;
begin
  Result := DefaultInterface.ConsultarCadastro(aDocumento, aTpDocumento, aUF);
end;

function TspdNFeSCAN.VisualizarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                                     const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.VisualizarDanfe(aNumLote, aLoteNotas, aArquivoModelo);
end;

function TspdNFeSCAN.ImprimirDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                                   const aArquivoModelo: WideString; const aImpressora: WideString): WideString;
begin
  Result := DefaultInterface.ImprimirDanfe(aNumLote, aLoteNotas, aArquivoModelo, aImpressora);
end;

function TspdNFeSCAN.EditarModeloDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                                       const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.EditarModeloDanfe(aNumLote, aLoteNotas, aArquivoModelo);
end;

function TspdNFeSCAN.ExportarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                                   const aArquivoModelo: WideString; aFormato: Integer; 
                                   const aExportarParaArquivo: WideString): WideString;
begin
  Result := DefaultInterface.ExportarDanfe(aNumLote, aLoteNotas, aArquivoModelo, aFormato, 
                                           aExportarParaArquivo);
end;

function TspdNFeSCAN.EnviarEmailDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                                      const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.EnviarEmailDanfe(aNumLote, aLoteNotas, aArquivoModelo);
end;

function TspdNFeSCAN.LerLog(const aPathArquivoLog: WideString): WideString;
begin
  Result := DefaultInterface.LerLog(aPathArquivoLog);
end;

function TspdNFeSCAN.VisualizarDanfeLog(const aPathArquivoLog: WideString): WideString;
begin
  Result := DefaultInterface.VisualizarDanfeLog(aPathArquivoLog);
end;

function TspdNFeSCAN.GeraXMLEnvioDestinatario(const aIdNFe: WideString; 
                                              const aLogEnvLote: WideString; 
                                              const aLogConsRecibo: WideString; 
                                              const aSalvarComo: WideString): WideString;
begin
  Result := DefaultInterface.GeraXMLEnvioDestinatario(aIdNFe, aLogEnvLote, aLogConsRecibo, 
                                                      aSalvarComo);
end;

function TspdNFeSCAN.EnviarNotaDestinatario(const aIdNFe: WideString; const aLogEnvio: WideString; 
                                            const aLogRecibo: WideString): WideString;
begin
  Result := DefaultInterface.EnviarNotaDestinatario(aIdNFe, aLogEnvio, aLogRecibo);
end;

procedure TspdNFeSCAN.LoadConfig(const aConfigFile: WideString);
begin
  DefaultInterface.LoadConfig(aConfigFile);
end;

function TspdNFeSCAN.ValidarLoteParaEnvio(const aNumLote: WideString; const aLoteXml: WideString): WideString;
begin
  Result := DefaultInterface.ValidarLoteParaEnvio(aNumLote, aLoteXml);
end;

function TspdNFeSCAN.GerarXmlCancelamentoDestinatario(const aIdNFe: WideString; 
                                                      const aContentLogPedCanc: WideString; 
                                                      const aContentLogRetCanc: WideString; 
                                                      const aSalvarComo: WideString): WideString;
begin
  Result := DefaultInterface.GerarXmlCancelamentoDestinatario(aIdNFe, aContentLogPedCanc, 
                                                              aContentLogRetCanc, aSalvarComo);
end;

function TspdNFeSCAN.EnviarNotaCanceladaDestinatario(const aIdNFe: WideString; 
                                                     const aLogPedCanc: WideString; 
                                                     const aLogRetCanc: WideString; 
                                                     const aEmailDestinatario: WideString): WideString;
begin
  Result := DefaultInterface.EnviarNotaCanceladaDestinatario(aIdNFe, aLogPedCanc, aLogRetCanc, 
                                                             aEmailDestinatario);
end;

function TspdNFeSCAN.PreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.PreverDanfe(aLoteNotas, aArquivoModelo);
end;

function TspdNFeSCAN.EnviarNotaDestinatarioAnexos(const aArquivoPDF: WideString; 
                                                  const aArquivoXML: WideString; 
                                                  const aOutros: WideString): WideString;
begin
  Result := DefaultInterface.EnviarNotaDestinatarioAnexos(aArquivoPDF, aArquivoXML, aOutros);
end;

function TspdNFeSCAN.ValidarArquivoXmlDestinatario(const aXML: WideString; 
                                                   var aErrorList: WideString): WordBool;
begin
  Result := DefaultInterface.ValidarArquivoXmlDestinatario(aXML, aErrorList);
end;

function TspdNFeSCAN.EnviarManifestacaoDestinatario(aTpEvento: Integer; const aNotaID: WideString; 
                                                    const aCNPJCPF: WideString; 
                                                    const aJustificativa: WideString; 
                                                    const aDataHoraEvento: WideString; 
                                                    aSequenciaEvento: Integer; 
                                                    const aFusoHorario: WideString; 
                                                    const aCOrgao: WideString): WideString;
begin
  Result := DefaultInterface.EnviarManifestacaoDestinatario(aTpEvento, aNotaID, aCNPJCPF, 
                                                            aJustificativa, aDataHoraEvento, 
                                                            aSequenciaEvento, aFusoHorario, aCOrgao);
end;

function TspdNFeSCAN.ConsultarNFDestinadas(aIndNFe: Integer; aIndEmi: Integer; 
                                           const aUltNSU: WideString): WideString;
begin
  Result := DefaultInterface.ConsultarNFDestinadas(aIndNFe, aIndEmi, aUltNSU);
end;

function TspdNFeSCAN.CancelarNFeEvento(const aNotaID: WideString; const aNumProtocolo: WideString; 
                                       const aJustificativa: WideString; 
                                       const aDataHoraEvento: WideString; 
                                       aSequenciaEvento: Integer; const aFusoHorario: WideString): WideString;
begin
  Result := DefaultInterface.CancelarNFeEvento(aNotaID, aNumProtocolo, aJustificativa, 
                                               aDataHoraEvento, aSequenciaEvento, aFusoHorario);
end;

function TspdNFeSCAN.DownloadNFe(const aChaves: WideString; const aCOrgao: WideString): WideString;
begin
  Result := DefaultInterface.DownloadNFe(aChaves, aCOrgao);
end;

function TspdNFeSCAN.EnviarCCe(const aNotaID: WideString; const aTextoCorrecao: WideString; 
                               const aDataHoraEvento: WideString; const aOrgao: WideString; 
                               const aIdLote: WideString; aSequenciaEvento: Integer; 
                               const aFusoHorario: WideString): WideString;
begin
  Result := DefaultInterface.EnviarCCe(aNotaID, aTextoCorrecao, aDataHoraEvento, aOrgao, aIdLote, 
                                       aSequenciaEvento, aFusoHorario);
end;

function TspdNFeSCAN.GerarXMLCCeDestinatario(const aIDEvento: WideString; 
                                             const aLogEvento: WideString; 
                                             const aLogRetEvento: WideString; 
                                             const aSalvarComo: WideString): WideString;
begin
  Result := DefaultInterface.GerarXMLCCeDestinatario(aIDEvento, aLogEvento, aLogRetEvento, 
                                                     aSalvarComo);
end;

procedure TspdNFeSCAN.EnviarCCeDestinatario(const aCCe: WideString);
begin
  DefaultInterface.EnviarCCeDestinatario(aCCe);
end;

procedure TspdNFeSCAN.ImprimirCCe(const aXmlCCe: WideString; const aImpressora: WideString);
begin
  DefaultInterface.ImprimirCCe(aXmlCCe, aImpressora);
end;

procedure TspdNFeSCAN.VisualizarCCe(const aXmlCCe: WideString);
begin
  DefaultInterface.VisualizarCCe(aXmlCCe);
end;

procedure TspdNFeSCAN.EditarModeloCCe(const aXmlCCe: WideString);
begin
  DefaultInterface.EditarModeloCCe(aXmlCCe);
end;

procedure TspdNFeSCAN.ExportarCCe(const aXmlCCe: WideString; const aSalvarComo: WideString);
begin
  DefaultInterface.ExportarCCe(aXmlCCe, aSalvarComo);
end;

function TspdNFeSCAN.CancelarNFeEventoIdLote(const aNotaID: WideString; 
                                             const aNumProtocolo: WideString; 
                                             const aJustificativa: WideString; 
                                             const aDataHoraEvento: WideString; 
                                             aSequenciaEvento: Integer; 
                                             const aFusoHorario: WideString; 
                                             const aIdLote: WideString): WideString;
begin
  Result := DefaultInterface.CancelarNFeEventoIdLote(aNotaID, aNumProtocolo, aJustificativa, 
                                                     aDataHoraEvento, aSequenciaEvento, 
                                                     aFusoHorario, aIdLote);
end;

function TspdNFeSCAN.GerarXmlManifestoDestinatario(const aIDEvento: WideString; 
                                                   const aLogEvento: WideString; 
                                                   const aLogRetEvento: WideString; 
                                                   const aSalvarComo: WideString): WideString;
begin
  Result := DefaultInterface.GerarXmlManifestoDestinatario(aIDEvento, aLogEvento, aLogRetEvento, 
                                                           aSalvarComo);
end;

function TspdNFeSCAN.ImprimirDanfeXmlDiretorio(const aDiretorioXml: WideString; 
                                               const aArquivoModelo: WideString; 
                                               const aExportarArquivoPara: WideString; 
                                               const aImpressora: WideString): WideString;
begin
  Result := DefaultInterface.ImprimirDanfeXmlDiretorio(aDiretorioXml, aArquivoModelo, 
                                                       aExportarArquivoPara, aImpressora);
end;

function TspdNFeSCAN.ConverterLoteParaXMLExportacao(const aArquivoLoteTxt: WideString; 
                                                    aLayoutConv: LayoutConv; 
                                                    const aVersaoEsquema: WideString; 
                                                    aExportacao: WordBool): WideString;
begin
  Result := DefaultInterface.ConverterLoteParaXMLExportacao(aArquivoLoteTxt, aLayoutConv, 
                                                            aVersaoEsquema, aExportacao);
end;

function TspdNFeSCAN.EnviarNFSincrono(const aNumLote: WideString; const aLoteNota: WideString; 
                                      aCompactado: WordBool): WideString;
begin
  Result := DefaultInterface.EnviarNFSincrono(aNumLote, aLoteNota, aCompactado);
end;

function TspdNFeSCAN.GerarIDCCe(const aChaveNFe: WideString; aSeqEvento: Integer): WideString;
begin
  Result := DefaultInterface.GerarIDCCe(aChaveNFe, aSeqEvento);
end;

procedure TspdNFeSCAN.ExportarPreverDanfe(const aLoteNotas: WideString; 
                                          const aArquivoModelo: WideString; 
                                          const aLocalNomeArquivo: WideString);
begin
  DefaultInterface.ExportarPreverDanfe(aLoteNotas, aArquivoModelo, aLocalNomeArquivo);
end;

function TspdNFeSCAN.AuditarXml(const aXML: WideString; const aDelimitador: WideString; 
                                const aServidor: WideString; aExibirRegra: WordBool; 
                                aExibirHtml: WordBool; const aParams: WideString): WideString;
begin
  Result := DefaultInterface.AuditarXml(aXML, aDelimitador, aServidor, aExibirRegra, aExibirHtml, 
                                        aParams);
end;

function TspdNFeSCAN.AuditorValidarXml(const aXML: WideString; const aDelimitador: WideString): WideString;
begin
  Result := DefaultInterface.AuditorValidarXml(aXML, aDelimitador);
end;

procedure TspdNFeSCAN.AuditorShowHtml(const aJSON: WideString);
begin
  DefaultInterface.AuditorShowHtml(aJSON);
end;

procedure TspdNFeSCAN.AuditorDownloadRegras;
begin
  DefaultInterface.AuditorDownloadRegras;
end;

procedure TspdNFeSCAN.AuditorLoadConfig(const aConfiINI: WideString);
begin
  DefaultInterface.AuditorLoadConfig(aConfiINI);
end;

procedure TspdNFeSCAN.AuditorSaveConfig(const aConfiINI: WideString);
begin
  DefaultInterface.AuditorSaveConfig(aConfiINI);
end;

function TspdNFeSCAN.NotaSeguraEnviarXml(const aXML: WideString): WideString;
begin
  Result := DefaultInterface.NotaSeguraEnviarXml(aXML);
end;

function TspdNFeSCAN.EnviarEPEC(const aEPECAssinado: WideString): WideString;
begin
  Result := DefaultInterface.EnviarEPEC(aEPECAssinado);
end;

function TspdNFeSCAN.AssinarEPEC(const aXMLEpec: WideString): WideString;
begin
  Result := DefaultInterface.AssinarEPEC(aXMLEpec);
end;

function TspdNFeSCAN.MontarEPEC(const aIdLote: WideString; const aXmlEnvio: WideString; 
                                const aDHEvento: WideString; const aFusoHorario: WideString): WideString;
begin
  Result := DefaultInterface.MontarEPEC(aIdLote, aXmlEnvio, aDHEvento, aFusoHorario);
end;

function TspdNFeSCAN.GerarXMLEPECDestinatario(const aIDEvento: WideString; 
                                              const aLogEvento: WideString; 
                                              const aLogRetEvento: WideString; 
                                              const aSalvarComo: WideString): WideString;
begin
  Result := DefaultInterface.GerarXMLEPECDestinatario(aIDEvento, aLogEvento, aLogRetEvento, 
                                                      aSalvarComo);
end;

function TspdNFeSCAN.ImprimirEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                                  const aDataHoraEPEC: WideString; 
                                  const aArquivoModelo: WideString; const aImpressora: WideString): WideString;
begin
  Result := DefaultInterface.ImprimirEPEC(aLoteNotas, aProtEPEC, aDataHoraEPEC, aArquivoModelo, 
                                          aImpressora);
end;

function TspdNFeSCAN.VisualizarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                                    const aDataHoraEPEC: WideString; 
                                    const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.VisualizarEPEC(aLoteNotas, aProtEPEC, aDataHoraEPEC, aArquivoModelo);
end;

function TspdNFeSCAN.ExportarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                                  const aDataHoraEPEC: WideString; 
                                  const aArquivoModelo: WideString; aFormato: Integer; 
                                  const aExportarParaArquivo: WideString): WideString;
begin
  Result := DefaultInterface.ExportarEPEC(aLoteNotas, aProtEPEC, aDataHoraEPEC, aArquivoModelo, 
                                          aFormato, aExportarParaArquivo);
end;

function TspdNFeSCAN.ConsultarDistribuicaoDFe(const aCodigoUF: WideString; 
                                              const aCNPJCPF: WideString; const aNSU: WideString; 
                                              aTipoNSU: TipoNSU): WideString;
begin
  Result := DefaultInterface.ConsultarDistribuicaoDFe(aCodigoUF, aCNPJCPF, aNSU, aTipoNSU);
end;

function TspdNFeSCAN.DescompactarXMLZip(const aXML: WideString): WideString;
begin
  Result := DefaultInterface.DescompactarXMLZip(aXML);
end;

function TspdNFeSCAN.EnviarPedidoProrrogacao(const aIdLote: WideString; 
                                             const aChaveNFe: WideString; 
                                             const aNumProtocolo: WideString; 
                                             const aDataHoraEvento: WideString; 
                                             const aOrgao: WideString; 
                                             aTpEvento: TipoPedidoProrrogacao; 
                                             aSequenciaEvento: SYSINT; 
                                             const aFusoHorario: WideString; 
                                             const aDelimiter: WideString): WideString;
begin
  Result := DefaultInterface.EnviarPedidoProrrogacao(aIdLote, aChaveNFe, aNumProtocolo, 
                                                     aDataHoraEvento, aOrgao, aTpEvento, 
                                                     aSequenciaEvento, aFusoHorario, aDelimiter);
end;

function TspdNFeSCAN.CancelarPedidoProrrogacao(const aIdLote: WideString; 
                                               const aChaveNFe: WideString; 
                                               const aNumProtocolo: WideString; 
                                               const aDataHoraEvento: WideString; 
                                               aTpEvento: TipoCancelamentoPedidoProrrogacao; 
                                               aSequenciaEvento: SYSINT; 
                                               const aFusoHorario: WideString): WideString;
begin
  Result := DefaultInterface.CancelarPedidoProrrogacao(aIdLote, aChaveNFe, aNumProtocolo, 
                                                       aDataHoraEvento, aTpEvento, 
                                                       aSequenciaEvento, aFusoHorario);
end;

procedure TspdNFeSCAN.AdicionarItens(const aNumItens: WideString; const aQtdeItens: WideString);
begin
  DefaultInterface.AdicionarItens(aNumItens, aQtdeItens);
end;

function TspdNFeSCAN.ConsultarDistribuicaoDFeChave(const aCodigoUF: WideString; 
                                                   const aCNPJCPF: WideString; 
                                                   const aChave: WideString): WideString;
begin
  Result := DefaultInterface.ConsultarDistribuicaoDFeChave(aCodigoUF, aCNPJCPF, aChave);
end;

function TspdNFeSCAN.CalculaSegCodBarra(const cUF: WideString; const tpEmis: WideString; 
                                        const CNPJ: WideString; const vNF: WideString; 
                                        const ICMSp: WideString; const ICMSs: WideString; 
                                        const DD: WideString): WideString;
begin
  Result := DefaultInterface.CalculaSegCodBarra(cUF, tpEmis, CNPJ, vNF, ICMSp, ICMSs, DD);
end;

function TspdNFeSCAN.TestarEmailConfig: WideString;
begin
  Result := DefaultInterface.TestarEmailConfig;
end;

procedure TspdNFeSCAN.ConfigurarSoftwareHouse(const aCNPJSH: WideString; const aKey: WideString);
begin
  DefaultInterface.ConfigurarSoftwareHouse(aCNPJSH, aKey);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TspdNFeSCANProperties.Create(AServer: TspdNFeSCAN);
begin
  inherited Create;
  FServer := AServer;
end;

function TspdNFeSCANProperties.GetDefaultInterface: IspdNFeSCAN;
begin
  Result := FServer.DefaultInterface;
end;

function TspdNFeSCANProperties.Get_DiretorioTemplates: WideString;
begin
    Result := DefaultInterface.DiretorioTemplates;
end;

procedure TspdNFeSCANProperties.Set_DiretorioTemplates(const Value: WideString);
  { Warning: The property DiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemplates := Value;
end;

function TspdNFeSCANProperties.Get_NomeCertificado: WideString;
begin
    Result := DefaultInterface.NomeCertificado;
end;

procedure TspdNFeSCANProperties.Set_NomeCertificado(const Value: WideString);
  { Warning: The property NomeCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NomeCertificado := Value;
end;

function TspdNFeSCANProperties.Get_TipoCertificado: TipoCertificado;
begin
    Result := DefaultInterface.TipoCertificado;
end;

procedure TspdNFeSCANProperties.Set_TipoCertificado(Value: TipoCertificado);
begin
  DefaultInterface.Set_TipoCertificado(Value);
end;

function TspdNFeSCANProperties.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure TspdNFeSCANProperties.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function TspdNFeSCANProperties.Get_Usuario: WideString;
begin
    Result := DefaultInterface.Usuario;
end;

procedure TspdNFeSCANProperties.Set_Usuario(const Value: WideString);
  { Warning: The property Usuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Usuario := Value;
end;

function TspdNFeSCANProperties.Get_ConfigINI: WideString;
begin
    Result := DefaultInterface.ConfigINI;
end;

procedure TspdNFeSCANProperties.Set_ConfigINI(const Value: WideString);
  { Warning: The property ConfigINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConfigINI := Value;
end;

function TspdNFeSCANProperties.Get_SectionINI: WideString;
begin
    Result := DefaultInterface.SectionINI;
end;

procedure TspdNFeSCANProperties.Set_SectionINI(const Value: WideString);
  { Warning: The property SectionINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SectionINI := Value;
end;

function TspdNFeSCANProperties.Get_Ambiente: Ambiente;
begin
    Result := DefaultInterface.Ambiente;
end;

procedure TspdNFeSCANProperties.Set_Ambiente(Value: Ambiente);
begin
  DefaultInterface.Set_Ambiente(Value);
end;

function TspdNFeSCANProperties.Get_ArquivoServidoresHom: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresHom;
end;

procedure TspdNFeSCANProperties.Set_ArquivoServidoresHom(const Value: WideString);
  { Warning: The property ArquivoServidoresHom has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresHom := Value;
end;

function TspdNFeSCANProperties.Get_ArquivoServidoresProd: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresProd;
end;

procedure TspdNFeSCANProperties.Set_ArquivoServidoresProd(const Value: WideString);
  { Warning: The property ArquivoServidoresProd has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresProd := Value;
end;

function TspdNFeSCANProperties.Get_DiretorioLog: WideString;
begin
    Result := DefaultInterface.DiretorioLog;
end;

procedure TspdNFeSCANProperties.Set_DiretorioLog(const Value: WideString);
  { Warning: The property DiretorioLog has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLog := Value;
end;

function TspdNFeSCANProperties.Get_ErrosValidador: WideString;
begin
    Result := DefaultInterface.ErrosValidador;
end;

procedure TspdNFeSCANProperties.Set_ErrosValidador(const Value: WideString);
  { Warning: The property ErrosValidador has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ErrosValidador := Value;
end;

function TspdNFeSCANProperties.Get_Senha: WideString;
begin
    Result := DefaultInterface.Senha;
end;

procedure TspdNFeSCANProperties.Set_Senha(const Value: WideString);
  { Warning: The property Senha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Senha := Value;
end;

function TspdNFeSCANProperties.Get_LogotipoEmitente: WideString;
begin
    Result := DefaultInterface.LogotipoEmitente;
end;

procedure TspdNFeSCANProperties.Set_LogotipoEmitente(const Value: WideString);
  { Warning: The property LogotipoEmitente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogotipoEmitente := Value;
end;

function TspdNFeSCANProperties.Get_UF: WideString;
begin
    Result := DefaultInterface.UF;
end;

procedure TspdNFeSCANProperties.Set_UF(const Value: WideString);
  { Warning: The property UF has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UF := Value;
end;

function TspdNFeSCANProperties.Get_CNPJ: WideString;
begin
    Result := DefaultInterface.CNPJ;
end;

procedure TspdNFeSCANProperties.Set_CNPJ(const Value: WideString);
  { Warning: The property CNPJ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CNPJ := Value;
end;

function TspdNFeSCANProperties.Get_DiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.DiretorioEsquemas;
end;

procedure TspdNFeSCANProperties.Set_DiretorioEsquemas(const Value: WideString);
  { Warning: The property DiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioEsquemas := Value;
end;

function TspdNFeSCANProperties.Get_ValidarEsquemaAntesEnvio: WordBool;
begin
    Result := DefaultInterface.ValidarEsquemaAntesEnvio;
end;

procedure TspdNFeSCANProperties.Set_ValidarEsquemaAntesEnvio(Value: WordBool);
begin
  DefaultInterface.Set_ValidarEsquemaAntesEnvio(Value);
end;

function TspdNFeSCANProperties.Get_EmailServidor: WideString;
begin
    Result := DefaultInterface.EmailServidor;
end;

procedure TspdNFeSCANProperties.Set_EmailServidor(const Value: WideString);
  { Warning: The property EmailServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailServidor := Value;
end;

function TspdNFeSCANProperties.Get_EmailAutenticacao: WordBool;
begin
    Result := DefaultInterface.EmailAutenticacao;
end;

procedure TspdNFeSCANProperties.Set_EmailAutenticacao(Value: WordBool);
begin
  DefaultInterface.Set_EmailAutenticacao(Value);
end;

function TspdNFeSCANProperties.Get_EmailRemetente: WideString;
begin
    Result := DefaultInterface.EmailRemetente;
end;

procedure TspdNFeSCANProperties.Set_EmailRemetente(const Value: WideString);
  { Warning: The property EmailRemetente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailRemetente := Value;
end;

function TspdNFeSCANProperties.Get_EmailDestinatario: WideString;
begin
    Result := DefaultInterface.EmailDestinatario;
end;

procedure TspdNFeSCANProperties.Set_EmailDestinatario(const Value: WideString);
  { Warning: The property EmailDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailDestinatario := Value;
end;

function TspdNFeSCANProperties.Get_EmailAssunto: WideString;
begin
    Result := DefaultInterface.EmailAssunto;
end;

procedure TspdNFeSCANProperties.Set_EmailAssunto(const Value: WideString);
  { Warning: The property EmailAssunto has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailAssunto := Value;
end;

function TspdNFeSCANProperties.Get_EmailMensagem: WideString;
begin
    Result := DefaultInterface.EmailMensagem;
end;

procedure TspdNFeSCANProperties.Set_EmailMensagem(const Value: WideString);
  { Warning: The property EmailMensagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailMensagem := Value;
end;

function TspdNFeSCANProperties.Get_EmailUsuario: WideString;
begin
    Result := DefaultInterface.EmailUsuario;
end;

procedure TspdNFeSCANProperties.Set_EmailUsuario(const Value: WideString);
  { Warning: The property EmailUsuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailUsuario := Value;
end;

function TspdNFeSCANProperties.Get_EmailSenha: WideString;
begin
    Result := DefaultInterface.EmailSenha;
end;

procedure TspdNFeSCANProperties.Set_EmailSenha(const Value: WideString);
  { Warning: The property EmailSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailSenha := Value;
end;

function TspdNFeSCANProperties.Get_FraseContingencia: WideString;
begin
    Result := DefaultInterface.FraseContingencia;
end;

procedure TspdNFeSCANProperties.Set_FraseContingencia(const Value: WideString);
  { Warning: The property FraseContingencia has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseContingencia := Value;
end;

function TspdNFeSCANProperties.Get_FraseHomologacao: WideString;
begin
    Result := DefaultInterface.FraseHomologacao;
end;

procedure TspdNFeSCANProperties.Set_FraseHomologacao(const Value: WideString);
  { Warning: The property FraseHomologacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseHomologacao := Value;
end;

function TspdNFeSCANProperties.Get_ModeloRetrato: WideString;
begin
    Result := DefaultInterface.ModeloRetrato;
end;

procedure TspdNFeSCANProperties.Set_ModeloRetrato(const Value: WideString);
  { Warning: The property ModeloRetrato has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetrato := Value;
end;

function TspdNFeSCANProperties.Get_ModeloPaisagem: WideString;
begin
    Result := DefaultInterface.ModeloPaisagem;
end;

procedure TspdNFeSCANProperties.Set_ModeloPaisagem(const Value: WideString);
  { Warning: The property ModeloPaisagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloPaisagem := Value;
end;

function TspdNFeSCANProperties.Get_VersaoManual: WideString;
begin
    Result := DefaultInterface.VersaoManual;
end;

procedure TspdNFeSCANProperties.Set_VersaoManual(const Value: WideString);
  { Warning: The property VersaoManual has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VersaoManual := Value;
end;

function TspdNFeSCANProperties.Get_AnexarDanfePDF: WordBool;
begin
    Result := DefaultInterface.AnexarDanfePDF;
end;

procedure TspdNFeSCANProperties.Set_AnexarDanfePDF(Value: WordBool);
begin
  DefaultInterface.Set_AnexarDanfePDF(Value);
end;

function TspdNFeSCANProperties.Get_QtdeCopias: Integer;
begin
    Result := DefaultInterface.QtdeCopias;
end;

procedure TspdNFeSCANProperties.Set_QtdeCopias(Value: Integer);
begin
  DefaultInterface.Set_QtdeCopias(Value);
end;

function TspdNFeSCANProperties.Get_EmailPorta: Integer;
begin
    Result := DefaultInterface.EmailPorta;
end;

procedure TspdNFeSCANProperties.Set_EmailPorta(Value: Integer);
begin
  DefaultInterface.Set_EmailPorta(Value);
end;

function TspdNFeSCANProperties.Get_LineDelimiter: WideString;
begin
    Result := DefaultInterface.LineDelimiter;
end;

procedure TspdNFeSCANProperties.Set_LineDelimiter(const Value: WideString);
  { Warning: The property LineDelimiter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LineDelimiter := Value;
end;

function TspdNFeSCANProperties.Get_IgnoreInvalidCertificates: WordBool;
begin
    Result := DefaultInterface.IgnoreInvalidCertificates;
end;

procedure TspdNFeSCANProperties.Set_IgnoreInvalidCertificates(Value: WordBool);
begin
  DefaultInterface.Set_IgnoreInvalidCertificates(Value);
end;

function TspdNFeSCANProperties.Get_Versao: WideString;
begin
    Result := DefaultInterface.Versao;
end;

function TspdNFeSCANProperties.Get_EmailTimeOut: Integer;
begin
    Result := DefaultInterface.EmailTimeOut;
end;

procedure TspdNFeSCANProperties.Set_EmailTimeOut(Value: Integer);
begin
  DefaultInterface.Set_EmailTimeOut(Value);
end;

function TspdNFeSCANProperties.Get_PINCODE: WideString;
begin
    Result := DefaultInterface.PINCODE;
end;

procedure TspdNFeSCANProperties.Set_PINCODE(const Value: WideString);
  { Warning: The property PINCODE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PINCODE := Value;
end;

function TspdNFeSCANProperties.Get_InfCplMaxCol: Integer;
begin
    Result := DefaultInterface.InfCplMaxCol;
end;

procedure TspdNFeSCANProperties.Set_InfCplMaxCol(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxCol(Value);
end;

function TspdNFeSCANProperties.Get_InfCplMaxRow: Integer;
begin
    Result := DefaultInterface.InfCplMaxRow;
end;

procedure TspdNFeSCANProperties.Set_InfCplMaxRow(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxRow(Value);
end;

function TspdNFeSCANProperties.Get_EmailCC: WideString;
begin
    Result := DefaultInterface.EmailCC;
end;

procedure TspdNFeSCANProperties.Set_EmailCC(const Value: WideString);
  { Warning: The property EmailCC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCC := Value;
end;

function TspdNFeSCANProperties.Get_EmailCCo: WideString;
begin
    Result := DefaultInterface.EmailCCo;
end;

procedure TspdNFeSCANProperties.Set_EmailCCo(const Value: WideString);
  { Warning: The property EmailCCo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCCo := Value;
end;

function TspdNFeSCANProperties.Get_TimeOut: Integer;
begin
    Result := DefaultInterface.TimeOut;
end;

procedure TspdNFeSCANProperties.Set_TimeOut(Value: Integer);
begin
  DefaultInterface.Set_TimeOut(Value);
end;

function TspdNFeSCANProperties.Get_ModeloDanfeSimplificado: WideString;
begin
    Result := DefaultInterface.ModeloDanfeSimplificado;
end;

procedure TspdNFeSCANProperties.Set_ModeloDanfeSimplificado(const Value: WideString);
  { Warning: The property ModeloDanfeSimplificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloDanfeSimplificado := Value;
end;

function TspdNFeSCANProperties.Get_CaracteresRemoverAcentos: WideString;
begin
    Result := DefaultInterface.CaracteresRemoverAcentos;
end;

procedure TspdNFeSCANProperties.Set_CaracteresRemoverAcentos(const Value: WideString);
  { Warning: The property CaracteresRemoverAcentos has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaracteresRemoverAcentos := Value;
end;

function TspdNFeSCANProperties.Get_ImprimirVolume: WordBool;
begin
    Result := DefaultInterface.ImprimirVolume;
end;

procedure TspdNFeSCANProperties.Set_ImprimirVolume(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirVolume(Value);
end;

function TspdNFeSCANProperties.Get_ImprimirDuplicata: WordBool;
begin
    Result := DefaultInterface.ImprimirDuplicata;
end;

procedure TspdNFeSCANProperties.Set_ImprimirDuplicata(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirDuplicata(Value);
end;

function TspdNFeSCANProperties.Get_CaminhoCertificado: WideString;
begin
    Result := DefaultInterface.CaminhoCertificado;
end;

procedure TspdNFeSCANProperties.Set_CaminhoCertificado(const Value: WideString);
  { Warning: The property CaminhoCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaminhoCertificado := Value;
end;

function TspdNFeSCANProperties.Get_SenhaCertificado: WideString;
begin
    Result := DefaultInterface.SenhaCertificado;
end;

procedure TspdNFeSCANProperties.Set_SenhaCertificado(const Value: WideString);
  { Warning: The property SenhaCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SenhaCertificado := Value;
end;

function TspdNFeSCANProperties.Get_ImprimirUnidadeTributada: WordBool;
begin
    Result := DefaultInterface.ImprimirUnidadeTributada;
end;

procedure TspdNFeSCANProperties.Set_ImprimirUnidadeTributada(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirUnidadeTributada(Value);
end;

function TspdNFeSCANProperties.Get_DiretorioLogErro: WideString;
begin
    Result := DefaultInterface.DiretorioLogErro;
end;

procedure TspdNFeSCANProperties.Set_DiretorioLogErro(const Value: WideString);
  { Warning: The property DiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLogErro := Value;
end;

function TspdNFeSCANProperties.Get_DiretorioTemporario: WideString;
begin
    Result := DefaultInterface.DiretorioTemporario;
end;

procedure TspdNFeSCANProperties.Set_DiretorioTemporario(const Value: WideString);
  { Warning: The property DiretorioTemporario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemporario := Value;
end;

function TspdNFeSCANProperties.Get_UltimoLogCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogCancelamento;
end;

procedure TspdNFeSCANProperties.Set_UltimoLogCancelamento(const Value: WideString);
  { Warning: The property UltimoLogCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogCancelamento := Value;
end;

function TspdNFeSCANProperties.Get_ModoOperacao: ModoOperacaoNFe;
begin
    Result := DefaultInterface.ModoOperacao;
end;

procedure TspdNFeSCANProperties.Set_ModoOperacao(Value: ModoOperacaoNFe);
begin
  DefaultInterface.Set_ModoOperacao(Value);
end;

function TspdNFeSCANProperties.Get_EmailConteudoHtml: WordBool;
begin
    Result := DefaultInterface.EmailConteudoHtml;
end;

procedure TspdNFeSCANProperties.Set_EmailConteudoHtml(Value: WordBool);
begin
  DefaultInterface.Set_EmailConteudoHtml(Value);
end;

function TspdNFeSCANProperties.Get_MensagemPartilhaAutomatica: WordBool;
begin
    Result := DefaultInterface.MensagemPartilhaAutomatica;
end;

procedure TspdNFeSCANProperties.Set_MensagemPartilhaAutomatica(Value: WordBool);
begin
  DefaultInterface.Set_MensagemPartilhaAutomatica(Value);
end;

function TspdNFeSCANProperties.Get_ImprimirObsCont: WordBool;
begin
    Result := DefaultInterface.ImprimirObsCont;
end;

procedure TspdNFeSCANProperties.Set_ImprimirObsCont(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirObsCont(Value);
end;

function TspdNFeSCANProperties.Get_MensagemFCP: WordBool;
begin
    Result := DefaultInterface.MensagemFCP;
end;

procedure TspdNFeSCANProperties.Set_MensagemFCP(Value: WordBool);
begin
  DefaultInterface.Set_MensagemFCP(Value);
end;

function TspdNFeSCANProperties.Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
begin
    Result := DefaultInterface.ImprimirFrenteVerso;
end;

procedure TspdNFeSCANProperties.Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
begin
  DefaultInterface.Set_ImprimirFrenteVerso(Value);
end;

function TspdNFeSCANProperties.Get_AtualizarArquivoServidores: WordBool;
begin
    Result := DefaultInterface.AtualizarArquivoServidores;
end;

procedure TspdNFeSCANProperties.Set_AtualizarArquivoServidores(Value: WordBool);
begin
  DefaultInterface.Set_AtualizarArquivoServidores(Value);
end;

function TspdNFeSCANProperties.Get_UltimoLogEnvio: WideString;
begin
    Result := DefaultInterface.UltimoLogEnvio;
end;

procedure TspdNFeSCANProperties.Set_UltimoLogEnvio(const Value: WideString);
  { Warning: The property UltimoLogEnvio has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogEnvio := Value;
end;

function TspdNFeSCANProperties.Get_UltimoLogConsRecibo: WideString;
begin
    Result := DefaultInterface.UltimoLogConsRecibo;
end;

procedure TspdNFeSCANProperties.Set_UltimoLogConsRecibo(const Value: WideString);
  { Warning: The property UltimoLogConsRecibo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogConsRecibo := Value;
end;

function TspdNFeSCANProperties.Get_DiretorioXmlDestinatario: WideString;
begin
    Result := DefaultInterface.DiretorioXmlDestinatario;
end;

procedure TspdNFeSCANProperties.Set_DiretorioXmlDestinatario(const Value: WideString);
  { Warning: The property DiretorioXmlDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioXmlDestinatario := Value;
end;

function TspdNFeSCANProperties.Get_MaxSizeLoteEnvio: Integer;
begin
    Result := DefaultInterface.MaxSizeLoteEnvio;
end;

procedure TspdNFeSCANProperties.Set_MaxSizeLoteEnvio(Value: Integer);
begin
  DefaultInterface.Set_MaxSizeLoteEnvio(Value);
end;

function TspdNFeSCANProperties.Get_DanfeSimplificado: WordBool;
begin
    Result := DefaultInterface.DanfeSimplificado;
end;

procedure TspdNFeSCANProperties.Set_DanfeSimplificado(Value: WordBool);
begin
  DefaultInterface.Set_DanfeSimplificado(Value);
end;

function TspdNFeSCANProperties.Get_DiretorioDownloads: WideString;
begin
    Result := DefaultInterface.DiretorioDownloads;
end;

procedure TspdNFeSCANProperties.Set_DiretorioDownloads(const Value: WideString);
  { Warning: The property DiretorioDownloads has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioDownloads := Value;
end;

function TspdNFeSCANProperties.Get_UltimoLogRecibo: WideString;
begin
    Result := DefaultInterface.UltimoLogRecibo;
end;

procedure TspdNFeSCANProperties.Set_UltimoLogRecibo(const Value: WideString);
  { Warning: The property UltimoLogRecibo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogRecibo := Value;
end;

function TspdNFeSCANProperties.Get_UltimoLogReciboCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogReciboCancelamento;
end;

procedure TspdNFeSCANProperties.Set_UltimoLogReciboCancelamento(const Value: WideString);
  { Warning: The property UltimoLogReciboCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogReciboCancelamento := Value;
end;

function TspdNFeSCANProperties.Get_ModeloRTMCCe: WideString;
begin
    Result := DefaultInterface.ModeloRTMCCe;
end;

procedure TspdNFeSCANProperties.Set_ModeloRTMCCe(const Value: WideString);
  { Warning: The property ModeloRTMCCe has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRTMCCe := Value;
end;

function TspdNFeSCANProperties.Get_EntregaXML: EntregaXML;
begin
    Result := DefaultInterface.EntregaXML;
end;

procedure TspdNFeSCANProperties.Set_EntregaXML(Value: EntregaXML);
begin
  DefaultInterface.Set_EntregaXML(Value);
end;

function TspdNFeSCANProperties.Get_NotaSeguraToken: WideString;
begin
    Result := DefaultInterface.NotaSeguraToken;
end;

procedure TspdNFeSCANProperties.Set_NotaSeguraToken(const Value: WideString);
  { Warning: The property NotaSeguraToken has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraToken := Value;
end;

function TspdNFeSCANProperties.Get_NotaSeguraLogin: WideString;
begin
    Result := DefaultInterface.NotaSeguraLogin;
end;

procedure TspdNFeSCANProperties.Set_NotaSeguraLogin(const Value: WideString);
  { Warning: The property NotaSeguraLogin has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraLogin := Value;
end;

function TspdNFeSCANProperties.Get_NotaSeguraSenha: WideString;
begin
    Result := DefaultInterface.NotaSeguraSenha;
end;

procedure TspdNFeSCANProperties.Set_NotaSeguraSenha(const Value: WideString);
  { Warning: The property NotaSeguraSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraSenha := Value;
end;

function TspdNFeSCANProperties.Get_NotaSeguraServidor: WideString;
begin
    Result := DefaultInterface.NotaSeguraServidor;
end;

procedure TspdNFeSCANProperties.Set_NotaSeguraServidor(const Value: WideString);
  { Warning: The property NotaSeguraServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraServidor := Value;
end;

function TspdNFeSCANProperties.Get_AuditorServidor: WideString;
begin
    Result := DefaultInterface.AuditorServidor;
end;

procedure TspdNFeSCANProperties.Set_AuditorServidor(const Value: WideString);
  { Warning: The property AuditorServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorServidor := Value;
end;

function TspdNFeSCANProperties.Get_AuditorExibirRegrasValidacao: WordBool;
begin
    Result := DefaultInterface.AuditorExibirRegrasValidacao;
end;

procedure TspdNFeSCANProperties.Set_AuditorExibirRegrasValidacao(Value: WordBool);
begin
  DefaultInterface.Set_AuditorExibirRegrasValidacao(Value);
end;

function TspdNFeSCANProperties.Get_AuditorCodigoProduto: Integer;
begin
    Result := DefaultInterface.AuditorCodigoProduto;
end;

procedure TspdNFeSCANProperties.Set_AuditorCodigoProduto(Value: Integer);
begin
  DefaultInterface.Set_AuditorCodigoProduto(Value);
end;

function TspdNFeSCANProperties.Get_AuditorEstagio: Estagio;
begin
    Result := DefaultInterface.AuditorEstagio;
end;

procedure TspdNFeSCANProperties.Set_AuditorEstagio(Value: Estagio);
begin
  DefaultInterface.Set_AuditorEstagio(Value);
end;

function TspdNFeSCANProperties.Get_AuditorTemplateHtml: WideString;
begin
    Result := DefaultInterface.AuditorTemplateHtml;
end;

procedure TspdNFeSCANProperties.Set_AuditorTemplateHtml(const Value: WideString);
  { Warning: The property AuditorTemplateHtml has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorTemplateHtml := Value;
end;

function TspdNFeSCANProperties.Get_AuditorHeigthHtml: Integer;
begin
    Result := DefaultInterface.AuditorHeigthHtml;
end;

procedure TspdNFeSCANProperties.Set_AuditorHeigthHtml(Value: Integer);
begin
  DefaultInterface.Set_AuditorHeigthHtml(Value);
end;

function TspdNFeSCANProperties.Get_AuditorWidthHtml: Integer;
begin
    Result := DefaultInterface.AuditorWidthHtml;
end;

procedure TspdNFeSCANProperties.Set_AuditorWidthHtml(Value: Integer);
begin
  DefaultInterface.Set_AuditorWidthHtml(Value);
end;

function TspdNFeSCANProperties.Get_AuditorHtmlBaseUrl: WideString;
begin
    Result := DefaultInterface.AuditorHtmlBaseUrl;
end;

procedure TspdNFeSCANProperties.Set_AuditorHtmlBaseUrl(const Value: WideString);
  { Warning: The property AuditorHtmlBaseUrl has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorHtmlBaseUrl := Value;
end;

function TspdNFeSCANProperties.Get_AuditorTipoResposta: TipoResposta;
begin
    Result := DefaultInterface.AuditorTipoResposta;
end;

procedure TspdNFeSCANProperties.Set_AuditorTipoResposta(Value: TipoResposta);
begin
  DefaultInterface.Set_AuditorTipoResposta(Value);
end;

function TspdNFeSCANProperties.Get_AuditorTotalRejeicao: WideString;
begin
    Result := DefaultInterface.AuditorTotalRejeicao;
end;

procedure TspdNFeSCANProperties.Set_AuditorTotalRejeicao(const Value: WideString);
  { Warning: The property AuditorTotalRejeicao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorTotalRejeicao := Value;
end;

function TspdNFeSCANProperties.Get_AuditorLinguagemResposta: LinguagemResposta;
begin
    Result := DefaultInterface.AuditorLinguagemResposta;
end;

procedure TspdNFeSCANProperties.Set_AuditorLinguagemResposta(Value: LinguagemResposta);
begin
  DefaultInterface.Set_AuditorLinguagemResposta(Value);
end;

function TspdNFeSCANProperties.Get_AuditorModoOperacao: ModoOperacao;
begin
    Result := DefaultInterface.AuditorModoOperacao;
end;

procedure TspdNFeSCANProperties.Set_AuditorModoOperacao(Value: ModoOperacao);
begin
  DefaultInterface.Set_AuditorModoOperacao(Value);
end;

function TspdNFeSCANProperties.Get_AuditorDiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioEsquemas;
end;

procedure TspdNFeSCANProperties.Set_AuditorDiretorioEsquemas(const Value: WideString);
  { Warning: The property AuditorDiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioEsquemas := Value;
end;

function TspdNFeSCANProperties.Get_AuditorDiretorioTemplates: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioTemplates;
end;

procedure TspdNFeSCANProperties.Set_AuditorDiretorioTemplates(const Value: WideString);
  { Warning: The property AuditorDiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioTemplates := Value;
end;

function TspdNFeSCANProperties.Get_AuditorDiretorioRegras: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioRegras;
end;

procedure TspdNFeSCANProperties.Set_AuditorDiretorioRegras(const Value: WideString);
  { Warning: The property AuditorDiretorioRegras has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioRegras := Value;
end;

function TspdNFeSCANProperties.Get_AuditorDiretorioLogErro: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioLogErro;
end;

procedure TspdNFeSCANProperties.Set_AuditorDiretorioLogErro(const Value: WideString);
  { Warning: The property AuditorDiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioLogErro := Value;
end;

function TspdNFeSCANProperties.Get_AuditorServidorProxy: WideString;
begin
    Result := DefaultInterface.AuditorServidorProxy;
end;

procedure TspdNFeSCANProperties.Set_AuditorServidorProxy(const Value: WideString);
  { Warning: The property AuditorServidorProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorServidorProxy := Value;
end;

function TspdNFeSCANProperties.Get_AuditorPortaProxy: Integer;
begin
    Result := DefaultInterface.AuditorPortaProxy;
end;

procedure TspdNFeSCANProperties.Set_AuditorPortaProxy(Value: Integer);
begin
  DefaultInterface.Set_AuditorPortaProxy(Value);
end;

function TspdNFeSCANProperties.Get_AuditorUsuarioProxy: WideString;
begin
    Result := DefaultInterface.AuditorUsuarioProxy;
end;

procedure TspdNFeSCANProperties.Set_AuditorUsuarioProxy(const Value: WideString);
  { Warning: The property AuditorUsuarioProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorUsuarioProxy := Value;
end;

function TspdNFeSCANProperties.Get_AuditorSenhaProxy: WideString;
begin
    Result := DefaultInterface.AuditorSenhaProxy;
end;

procedure TspdNFeSCANProperties.Set_AuditorSenhaProxy(const Value: WideString);
  { Warning: The property AuditorSenhaProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorSenhaProxy := Value;
end;

function TspdNFeSCANProperties.Get_ConexaoSegura: WordBool;
begin
    Result := DefaultInterface.ConexaoSegura;
end;

procedure TspdNFeSCANProperties.Set_ConexaoSegura(Value: WordBool);
begin
  DefaultInterface.Set_ConexaoSegura(Value);
end;

function TspdNFeSCANProperties.Get_UltimoLogConsultarDFe: WideString;
begin
    Result := DefaultInterface.UltimoLogConsultarDFe;
end;

procedure TspdNFeSCANProperties.Set_UltimoLogConsultarDFe(const Value: WideString);
  { Warning: The property UltimoLogConsultarDFe has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogConsultarDFe := Value;
end;

function TspdNFeSCANProperties.Get_AuditorTimeOut: Integer;
begin
    Result := DefaultInterface.AuditorTimeOut;
end;

procedure TspdNFeSCANProperties.Set_AuditorTimeOut(Value: Integer);
begin
  DefaultInterface.Set_AuditorTimeOut(Value);
end;

function TspdNFeSCANProperties.Get_UltimoLogReciboInutilizacao: WideString;
begin
    Result := DefaultInterface.UltimoLogReciboInutilizacao;
end;

procedure TspdNFeSCANProperties.Set_UltimoLogReciboInutilizacao(const Value: WideString);
  { Warning: The property UltimoLogReciboInutilizacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogReciboInutilizacao := Value;
end;

function TspdNFeSCANProperties.Get_ModeloRetratoCancelamento: WideString;
begin
    Result := DefaultInterface.ModeloRetratoCancelamento;
end;

procedure TspdNFeSCANProperties.Set_ModeloRetratoCancelamento(const Value: WideString);
  { Warning: The property ModeloRetratoCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetratoCancelamento := Value;
end;

function TspdNFeSCANProperties.Get_UltimoLogInutilizacao: WideString;
begin
    Result := DefaultInterface.UltimoLogInutilizacao;
end;

procedure TspdNFeSCANProperties.Set_UltimoLogInutilizacao(const Value: WideString);
  { Warning: The property UltimoLogInutilizacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogInutilizacao := Value;
end;

function TspdNFeSCANProperties.Get_Serie: WideString;
begin
    Result := DefaultInterface.Serie;
end;

procedure TspdNFeSCANProperties.Set_Serie(const Value: WideString);
  { Warning: The property Serie has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Serie := Value;
end;

function TspdNFeSCANProperties.Get_tpEmis: WideString;
begin
    Result := DefaultInterface.tpEmis;
end;

procedure TspdNFeSCANProperties.Set_tpEmis(const Value: WideString);
  { Warning: The property tpEmis has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.tpEmis := Value;
end;

{$ENDIF}

class function CospdNFeDPECX.Create: IspdNFeDPECX;
begin
  Result := CreateComObject(CLASS_spdNFeDPECX) as IspdNFeDPECX;
end;

class function CospdNFeDPECX.CreateRemote(const MachineName: string): IspdNFeDPECX;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdNFeDPECX) as IspdNFeDPECX;
end;

procedure TspdNFeDPECX.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{95D879BC-F103-4F33-B4DE-B1E6BCC0A4B5}';
    IntfIID:   '{54BAA9D8-BA38-404C-A766-F5BBC68D25DD}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TspdNFeDPECX.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IspdNFeDPECX;
  end;
end;

procedure TspdNFeDPECX.ConnectTo(svrIntf: IspdNFeDPECX);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TspdNFeDPECX.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TspdNFeDPECX.GetDefaultInterface: IspdNFeDPECX;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TspdNFeDPECX.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TspdNFeDPECXProperties.Create(Self);
{$ENDIF}
end;

destructor TspdNFeDPECX.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TspdNFeDPECX.GetServerProperties: TspdNFeDPECXProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TspdNFeDPECX.Get_DiretorioTemplates: WideString;
begin
    Result := DefaultInterface.DiretorioTemplates;
end;

procedure TspdNFeDPECX.Set_DiretorioTemplates(const Value: WideString);
  { Warning: The property DiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemplates := Value;
end;

function TspdNFeDPECX.Get_NomeCertificado: WideString;
begin
    Result := DefaultInterface.NomeCertificado;
end;

procedure TspdNFeDPECX.Set_NomeCertificado(const Value: WideString);
  { Warning: The property NomeCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NomeCertificado := Value;
end;

function TspdNFeDPECX.Get_TipoCertificado: TipoCertificado;
begin
    Result := DefaultInterface.TipoCertificado;
end;

procedure TspdNFeDPECX.Set_TipoCertificado(Value: TipoCertificado);
begin
  DefaultInterface.Set_TipoCertificado(Value);
end;

function TspdNFeDPECX.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure TspdNFeDPECX.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function TspdNFeDPECX.Get_Usuario: WideString;
begin
    Result := DefaultInterface.Usuario;
end;

procedure TspdNFeDPECX.Set_Usuario(const Value: WideString);
  { Warning: The property Usuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Usuario := Value;
end;

function TspdNFeDPECX.Get_ConfigINI: WideString;
begin
    Result := DefaultInterface.ConfigINI;
end;

procedure TspdNFeDPECX.Set_ConfigINI(const Value: WideString);
  { Warning: The property ConfigINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConfigINI := Value;
end;

function TspdNFeDPECX.Get_SectionINI: WideString;
begin
    Result := DefaultInterface.SectionINI;
end;

procedure TspdNFeDPECX.Set_SectionINI(const Value: WideString);
  { Warning: The property SectionINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SectionINI := Value;
end;

function TspdNFeDPECX.Get_Ambiente: Ambiente;
begin
    Result := DefaultInterface.Ambiente;
end;

procedure TspdNFeDPECX.Set_Ambiente(Value: Ambiente);
begin
  DefaultInterface.Set_Ambiente(Value);
end;

function TspdNFeDPECX.Get_ArquivoServidoresHom: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresHom;
end;

procedure TspdNFeDPECX.Set_ArquivoServidoresHom(const Value: WideString);
  { Warning: The property ArquivoServidoresHom has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresHom := Value;
end;

function TspdNFeDPECX.Get_ArquivoServidoresProd: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresProd;
end;

procedure TspdNFeDPECX.Set_ArquivoServidoresProd(const Value: WideString);
  { Warning: The property ArquivoServidoresProd has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresProd := Value;
end;

function TspdNFeDPECX.Get_DiretorioLog: WideString;
begin
    Result := DefaultInterface.DiretorioLog;
end;

procedure TspdNFeDPECX.Set_DiretorioLog(const Value: WideString);
  { Warning: The property DiretorioLog has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLog := Value;
end;

function TspdNFeDPECX.Get_ErrosValidador: WideString;
begin
    Result := DefaultInterface.ErrosValidador;
end;

procedure TspdNFeDPECX.Set_ErrosValidador(const Value: WideString);
  { Warning: The property ErrosValidador has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ErrosValidador := Value;
end;

function TspdNFeDPECX.Get_Senha: WideString;
begin
    Result := DefaultInterface.Senha;
end;

procedure TspdNFeDPECX.Set_Senha(const Value: WideString);
  { Warning: The property Senha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Senha := Value;
end;

function TspdNFeDPECX.Get_LogotipoEmitente: WideString;
begin
    Result := DefaultInterface.LogotipoEmitente;
end;

procedure TspdNFeDPECX.Set_LogotipoEmitente(const Value: WideString);
  { Warning: The property LogotipoEmitente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogotipoEmitente := Value;
end;

function TspdNFeDPECX.Get_UF: WideString;
begin
    Result := DefaultInterface.UF;
end;

procedure TspdNFeDPECX.Set_UF(const Value: WideString);
  { Warning: The property UF has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UF := Value;
end;

function TspdNFeDPECX.Get_CNPJ: WideString;
begin
    Result := DefaultInterface.CNPJ;
end;

procedure TspdNFeDPECX.Set_CNPJ(const Value: WideString);
  { Warning: The property CNPJ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CNPJ := Value;
end;

function TspdNFeDPECX.Get_DiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.DiretorioEsquemas;
end;

procedure TspdNFeDPECX.Set_DiretorioEsquemas(const Value: WideString);
  { Warning: The property DiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioEsquemas := Value;
end;

function TspdNFeDPECX.Get_ValidarEsquemaAntesEnvio: WordBool;
begin
    Result := DefaultInterface.ValidarEsquemaAntesEnvio;
end;

procedure TspdNFeDPECX.Set_ValidarEsquemaAntesEnvio(Value: WordBool);
begin
  DefaultInterface.Set_ValidarEsquemaAntesEnvio(Value);
end;

function TspdNFeDPECX.Get_EmailServidor: WideString;
begin
    Result := DefaultInterface.EmailServidor;
end;

procedure TspdNFeDPECX.Set_EmailServidor(const Value: WideString);
  { Warning: The property EmailServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailServidor := Value;
end;

function TspdNFeDPECX.Get_EmailAutenticacao: WordBool;
begin
    Result := DefaultInterface.EmailAutenticacao;
end;

procedure TspdNFeDPECX.Set_EmailAutenticacao(Value: WordBool);
begin
  DefaultInterface.Set_EmailAutenticacao(Value);
end;

function TspdNFeDPECX.Get_EmailRemetente: WideString;
begin
    Result := DefaultInterface.EmailRemetente;
end;

procedure TspdNFeDPECX.Set_EmailRemetente(const Value: WideString);
  { Warning: The property EmailRemetente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailRemetente := Value;
end;

function TspdNFeDPECX.Get_EmailDestinatario: WideString;
begin
    Result := DefaultInterface.EmailDestinatario;
end;

procedure TspdNFeDPECX.Set_EmailDestinatario(const Value: WideString);
  { Warning: The property EmailDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailDestinatario := Value;
end;

function TspdNFeDPECX.Get_EmailAssunto: WideString;
begin
    Result := DefaultInterface.EmailAssunto;
end;

procedure TspdNFeDPECX.Set_EmailAssunto(const Value: WideString);
  { Warning: The property EmailAssunto has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailAssunto := Value;
end;

function TspdNFeDPECX.Get_EmailMensagem: WideString;
begin
    Result := DefaultInterface.EmailMensagem;
end;

procedure TspdNFeDPECX.Set_EmailMensagem(const Value: WideString);
  { Warning: The property EmailMensagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailMensagem := Value;
end;

function TspdNFeDPECX.Get_EmailUsuario: WideString;
begin
    Result := DefaultInterface.EmailUsuario;
end;

procedure TspdNFeDPECX.Set_EmailUsuario(const Value: WideString);
  { Warning: The property EmailUsuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailUsuario := Value;
end;

function TspdNFeDPECX.Get_EmailSenha: WideString;
begin
    Result := DefaultInterface.EmailSenha;
end;

procedure TspdNFeDPECX.Set_EmailSenha(const Value: WideString);
  { Warning: The property EmailSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailSenha := Value;
end;

function TspdNFeDPECX.Get_FraseContingencia: WideString;
begin
    Result := DefaultInterface.FraseContingencia;
end;

procedure TspdNFeDPECX.Set_FraseContingencia(const Value: WideString);
  { Warning: The property FraseContingencia has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseContingencia := Value;
end;

function TspdNFeDPECX.Get_FraseHomologacao: WideString;
begin
    Result := DefaultInterface.FraseHomologacao;
end;

procedure TspdNFeDPECX.Set_FraseHomologacao(const Value: WideString);
  { Warning: The property FraseHomologacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseHomologacao := Value;
end;

function TspdNFeDPECX.Get_ModeloRetrato: WideString;
begin
    Result := DefaultInterface.ModeloRetrato;
end;

procedure TspdNFeDPECX.Set_ModeloRetrato(const Value: WideString);
  { Warning: The property ModeloRetrato has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetrato := Value;
end;

function TspdNFeDPECX.Get_ModeloPaisagem: WideString;
begin
    Result := DefaultInterface.ModeloPaisagem;
end;

procedure TspdNFeDPECX.Set_ModeloPaisagem(const Value: WideString);
  { Warning: The property ModeloPaisagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloPaisagem := Value;
end;

function TspdNFeDPECX.Get_VersaoManual: WideString;
begin
    Result := DefaultInterface.VersaoManual;
end;

procedure TspdNFeDPECX.Set_VersaoManual(const Value: WideString);
  { Warning: The property VersaoManual has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VersaoManual := Value;
end;

function TspdNFeDPECX.Get_AnexarDanfePDF: WordBool;
begin
    Result := DefaultInterface.AnexarDanfePDF;
end;

procedure TspdNFeDPECX.Set_AnexarDanfePDF(Value: WordBool);
begin
  DefaultInterface.Set_AnexarDanfePDF(Value);
end;

function TspdNFeDPECX.Get_QtdeCopias: Integer;
begin
    Result := DefaultInterface.QtdeCopias;
end;

procedure TspdNFeDPECX.Set_QtdeCopias(Value: Integer);
begin
  DefaultInterface.Set_QtdeCopias(Value);
end;

function TspdNFeDPECX.Get_EmailPorta: Integer;
begin
    Result := DefaultInterface.EmailPorta;
end;

procedure TspdNFeDPECX.Set_EmailPorta(Value: Integer);
begin
  DefaultInterface.Set_EmailPorta(Value);
end;

function TspdNFeDPECX.Get_LineDelimiter: WideString;
begin
    Result := DefaultInterface.LineDelimiter;
end;

procedure TspdNFeDPECX.Set_LineDelimiter(const Value: WideString);
  { Warning: The property LineDelimiter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LineDelimiter := Value;
end;

function TspdNFeDPECX.Get_IgnoreInvalidCertificates: WordBool;
begin
    Result := DefaultInterface.IgnoreInvalidCertificates;
end;

procedure TspdNFeDPECX.Set_IgnoreInvalidCertificates(Value: WordBool);
begin
  DefaultInterface.Set_IgnoreInvalidCertificates(Value);
end;

function TspdNFeDPECX.Get_Versao: WideString;
begin
    Result := DefaultInterface.Versao;
end;

function TspdNFeDPECX.Get_EmailTimeOut: Integer;
begin
    Result := DefaultInterface.EmailTimeOut;
end;

procedure TspdNFeDPECX.Set_EmailTimeOut(Value: Integer);
begin
  DefaultInterface.Set_EmailTimeOut(Value);
end;

function TspdNFeDPECX.Get_PINCODE: WideString;
begin
    Result := DefaultInterface.PINCODE;
end;

procedure TspdNFeDPECX.Set_PINCODE(const Value: WideString);
  { Warning: The property PINCODE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PINCODE := Value;
end;

function TspdNFeDPECX.Get_InfCplMaxCol: Integer;
begin
    Result := DefaultInterface.InfCplMaxCol;
end;

procedure TspdNFeDPECX.Set_InfCplMaxCol(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxCol(Value);
end;

function TspdNFeDPECX.Get_InfCplMaxRow: Integer;
begin
    Result := DefaultInterface.InfCplMaxRow;
end;

procedure TspdNFeDPECX.Set_InfCplMaxRow(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxRow(Value);
end;

function TspdNFeDPECX.Get_EmailCC: WideString;
begin
    Result := DefaultInterface.EmailCC;
end;

procedure TspdNFeDPECX.Set_EmailCC(const Value: WideString);
  { Warning: The property EmailCC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCC := Value;
end;

function TspdNFeDPECX.Get_EmailCCo: WideString;
begin
    Result := DefaultInterface.EmailCCo;
end;

procedure TspdNFeDPECX.Set_EmailCCo(const Value: WideString);
  { Warning: The property EmailCCo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCCo := Value;
end;

function TspdNFeDPECX.Get_TimeOut: Integer;
begin
    Result := DefaultInterface.TimeOut;
end;

procedure TspdNFeDPECX.Set_TimeOut(Value: Integer);
begin
  DefaultInterface.Set_TimeOut(Value);
end;

function TspdNFeDPECX.Get_ModeloDanfeSimplificado: WideString;
begin
    Result := DefaultInterface.ModeloDanfeSimplificado;
end;

procedure TspdNFeDPECX.Set_ModeloDanfeSimplificado(const Value: WideString);
  { Warning: The property ModeloDanfeSimplificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloDanfeSimplificado := Value;
end;

function TspdNFeDPECX.Get_CaracteresRemoverAcentos: WideString;
begin
    Result := DefaultInterface.CaracteresRemoverAcentos;
end;

procedure TspdNFeDPECX.Set_CaracteresRemoverAcentos(const Value: WideString);
  { Warning: The property CaracteresRemoverAcentos has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaracteresRemoverAcentos := Value;
end;

function TspdNFeDPECX.Get_ImprimirVolume: WordBool;
begin
    Result := DefaultInterface.ImprimirVolume;
end;

procedure TspdNFeDPECX.Set_ImprimirVolume(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirVolume(Value);
end;

function TspdNFeDPECX.Get_ImprimirDuplicata: WordBool;
begin
    Result := DefaultInterface.ImprimirDuplicata;
end;

procedure TspdNFeDPECX.Set_ImprimirDuplicata(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirDuplicata(Value);
end;

function TspdNFeDPECX.Get_CaminhoCertificado: WideString;
begin
    Result := DefaultInterface.CaminhoCertificado;
end;

procedure TspdNFeDPECX.Set_CaminhoCertificado(const Value: WideString);
  { Warning: The property CaminhoCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaminhoCertificado := Value;
end;

function TspdNFeDPECX.Get_SenhaCertificado: WideString;
begin
    Result := DefaultInterface.SenhaCertificado;
end;

procedure TspdNFeDPECX.Set_SenhaCertificado(const Value: WideString);
  { Warning: The property SenhaCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SenhaCertificado := Value;
end;

function TspdNFeDPECX.Get_ImprimirUnidadeTributada: WordBool;
begin
    Result := DefaultInterface.ImprimirUnidadeTributada;
end;

procedure TspdNFeDPECX.Set_ImprimirUnidadeTributada(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirUnidadeTributada(Value);
end;

function TspdNFeDPECX.Get_DiretorioLogErro: WideString;
begin
    Result := DefaultInterface.DiretorioLogErro;
end;

procedure TspdNFeDPECX.Set_DiretorioLogErro(const Value: WideString);
  { Warning: The property DiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLogErro := Value;
end;

function TspdNFeDPECX.Get_DiretorioTemporario: WideString;
begin
    Result := DefaultInterface.DiretorioTemporario;
end;

procedure TspdNFeDPECX.Set_DiretorioTemporario(const Value: WideString);
  { Warning: The property DiretorioTemporario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemporario := Value;
end;

function TspdNFeDPECX.Get_UltimoLogCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogCancelamento;
end;

procedure TspdNFeDPECX.Set_UltimoLogCancelamento(const Value: WideString);
  { Warning: The property UltimoLogCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogCancelamento := Value;
end;

function TspdNFeDPECX.Get_ModoOperacao: ModoOperacaoNFe;
begin
    Result := DefaultInterface.ModoOperacao;
end;

procedure TspdNFeDPECX.Set_ModoOperacao(Value: ModoOperacaoNFe);
begin
  DefaultInterface.Set_ModoOperacao(Value);
end;

function TspdNFeDPECX.Get_EmailConteudoHtml: WordBool;
begin
    Result := DefaultInterface.EmailConteudoHtml;
end;

procedure TspdNFeDPECX.Set_EmailConteudoHtml(Value: WordBool);
begin
  DefaultInterface.Set_EmailConteudoHtml(Value);
end;

function TspdNFeDPECX.Get_MensagemPartilhaAutomatica: WordBool;
begin
    Result := DefaultInterface.MensagemPartilhaAutomatica;
end;

procedure TspdNFeDPECX.Set_MensagemPartilhaAutomatica(Value: WordBool);
begin
  DefaultInterface.Set_MensagemPartilhaAutomatica(Value);
end;

function TspdNFeDPECX.Get_ImprimirObsCont: WordBool;
begin
    Result := DefaultInterface.ImprimirObsCont;
end;

procedure TspdNFeDPECX.Set_ImprimirObsCont(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirObsCont(Value);
end;

function TspdNFeDPECX.Get_MensagemFCP: WordBool;
begin
    Result := DefaultInterface.MensagemFCP;
end;

procedure TspdNFeDPECX.Set_MensagemFCP(Value: WordBool);
begin
  DefaultInterface.Set_MensagemFCP(Value);
end;

function TspdNFeDPECX.Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
begin
    Result := DefaultInterface.ImprimirFrenteVerso;
end;

procedure TspdNFeDPECX.Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
begin
  DefaultInterface.Set_ImprimirFrenteVerso(Value);
end;

function TspdNFeDPECX.Get_AtualizarArquivoServidores: WordBool;
begin
    Result := DefaultInterface.AtualizarArquivoServidores;
end;

procedure TspdNFeDPECX.Set_AtualizarArquivoServidores(Value: WordBool);
begin
  DefaultInterface.Set_AtualizarArquivoServidores(Value);
end;

function TspdNFeDPECX.ListarCertificados(const aDelimiter: WideString): WideString;
begin
  Result := DefaultInterface.ListarCertificados(aDelimiter);
end;

function TspdNFeDPECX.RemoverCertificado(const CertificateName: WideString): WordBool;
begin
  Result := DefaultInterface.RemoverCertificado(CertificateName);
end;

procedure TspdNFeDPECX.EmailAddCC(const Email: WideString);
begin
  DefaultInterface.EmailAddCC(Email);
end;

procedure TspdNFeDPECX.EmailAddCCO(const Email: WideString);
begin
  DefaultInterface.EmailAddCCO(Email);
end;

function TspdNFeDPECX.GetVencimentoCertificado: WideString;
begin
  Result := DefaultInterface.GetVencimentoCertificado;
end;

procedure TspdNFeDPECX.SaveConfig(const aConfigFile: WideString);
begin
  DefaultInterface.SaveConfig(aConfigFile);
end;

function TspdNFeDPECX.GetValidadeInicialCertificado: WideString;
begin
  Result := DefaultInterface.GetValidadeInicialCertificado;
end;

function TspdNFeDPECX.AssinarDPEC(const aXMLDPEC: WideString): WideString;
begin
  Result := DefaultInterface.AssinarDPEC(aXMLDPEC);
end;

function TspdNFeDPECX.EnviarDPEC(const aDPECAssinado: WideString): WideString;
begin
  Result := DefaultInterface.EnviarDPEC(aDPECAssinado);
end;

procedure TspdNFeDPECX.LoadConfig(const aConfigFile: WideString);
begin
  DefaultInterface.LoadConfig(aConfigFile);
end;

function TspdNFeDPECX.ConsultarDPEC(aTpConsulta: ParamConsDPEC; const aParam: WideString): WideString;
begin
  Result := DefaultInterface.ConsultarDPEC(aTpConsulta, aParam);
end;

function TspdNFeDPECX.MontarDPEC(const aLoteNormal: WideString): WideString;
begin
  Result := DefaultInterface.MontarDPEC(aLoteNormal);
end;

function TspdNFeDPECX.VisualizarDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                                      const aDataHoraDPEC: WideString; 
                                      const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.VisualizarDanfe(aLoteNotas, aProtDPEC, aDataHoraDPEC, aArquivoModelo);
end;

function TspdNFeDPECX.ImprimirDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                                    const aDataHoraDPEC: WideString; 
                                    const aArquivoModelo: WideString; const aImpressora: WideString): WideString;
begin
  Result := DefaultInterface.ImprimirDanfe(aLoteNotas, aProtDPEC, aDataHoraDPEC, aArquivoModelo, 
                                           aImpressora);
end;

function TspdNFeDPECX.EditarModeloDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                                        const aDataHoraDPEC: WideString; 
                                        const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.EditarModeloDanfe(aLoteNotas, aProtDPEC, aDataHoraDPEC, aArquivoModelo);
end;

function TspdNFeDPECX.ExportarDanfe(const aLoteNotas: WideString; const aProtDPEC: WideString; 
                                    const aDataHoraDPEC: WideString; 
                                    const aArquivoModelo: WideString; aFormato: Integer; 
                                    const aExportarParaArquivo: WideString): WideString;
begin
  Result := DefaultInterface.ExportarDanfe(aLoteNotas, aProtDPEC, aDataHoraDPEC, aArquivoModelo, 
                                           aFormato, aExportarParaArquivo);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TspdNFeDPECXProperties.Create(AServer: TspdNFeDPECX);
begin
  inherited Create;
  FServer := AServer;
end;

function TspdNFeDPECXProperties.GetDefaultInterface: IspdNFeDPECX;
begin
  Result := FServer.DefaultInterface;
end;

function TspdNFeDPECXProperties.Get_DiretorioTemplates: WideString;
begin
    Result := DefaultInterface.DiretorioTemplates;
end;

procedure TspdNFeDPECXProperties.Set_DiretorioTemplates(const Value: WideString);
  { Warning: The property DiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemplates := Value;
end;

function TspdNFeDPECXProperties.Get_NomeCertificado: WideString;
begin
    Result := DefaultInterface.NomeCertificado;
end;

procedure TspdNFeDPECXProperties.Set_NomeCertificado(const Value: WideString);
  { Warning: The property NomeCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NomeCertificado := Value;
end;

function TspdNFeDPECXProperties.Get_TipoCertificado: TipoCertificado;
begin
    Result := DefaultInterface.TipoCertificado;
end;

procedure TspdNFeDPECXProperties.Set_TipoCertificado(Value: TipoCertificado);
begin
  DefaultInterface.Set_TipoCertificado(Value);
end;

function TspdNFeDPECXProperties.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure TspdNFeDPECXProperties.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function TspdNFeDPECXProperties.Get_Usuario: WideString;
begin
    Result := DefaultInterface.Usuario;
end;

procedure TspdNFeDPECXProperties.Set_Usuario(const Value: WideString);
  { Warning: The property Usuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Usuario := Value;
end;

function TspdNFeDPECXProperties.Get_ConfigINI: WideString;
begin
    Result := DefaultInterface.ConfigINI;
end;

procedure TspdNFeDPECXProperties.Set_ConfigINI(const Value: WideString);
  { Warning: The property ConfigINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConfigINI := Value;
end;

function TspdNFeDPECXProperties.Get_SectionINI: WideString;
begin
    Result := DefaultInterface.SectionINI;
end;

procedure TspdNFeDPECXProperties.Set_SectionINI(const Value: WideString);
  { Warning: The property SectionINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SectionINI := Value;
end;

function TspdNFeDPECXProperties.Get_Ambiente: Ambiente;
begin
    Result := DefaultInterface.Ambiente;
end;

procedure TspdNFeDPECXProperties.Set_Ambiente(Value: Ambiente);
begin
  DefaultInterface.Set_Ambiente(Value);
end;

function TspdNFeDPECXProperties.Get_ArquivoServidoresHom: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresHom;
end;

procedure TspdNFeDPECXProperties.Set_ArquivoServidoresHom(const Value: WideString);
  { Warning: The property ArquivoServidoresHom has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresHom := Value;
end;

function TspdNFeDPECXProperties.Get_ArquivoServidoresProd: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresProd;
end;

procedure TspdNFeDPECXProperties.Set_ArquivoServidoresProd(const Value: WideString);
  { Warning: The property ArquivoServidoresProd has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresProd := Value;
end;

function TspdNFeDPECXProperties.Get_DiretorioLog: WideString;
begin
    Result := DefaultInterface.DiretorioLog;
end;

procedure TspdNFeDPECXProperties.Set_DiretorioLog(const Value: WideString);
  { Warning: The property DiretorioLog has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLog := Value;
end;

function TspdNFeDPECXProperties.Get_ErrosValidador: WideString;
begin
    Result := DefaultInterface.ErrosValidador;
end;

procedure TspdNFeDPECXProperties.Set_ErrosValidador(const Value: WideString);
  { Warning: The property ErrosValidador has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ErrosValidador := Value;
end;

function TspdNFeDPECXProperties.Get_Senha: WideString;
begin
    Result := DefaultInterface.Senha;
end;

procedure TspdNFeDPECXProperties.Set_Senha(const Value: WideString);
  { Warning: The property Senha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Senha := Value;
end;

function TspdNFeDPECXProperties.Get_LogotipoEmitente: WideString;
begin
    Result := DefaultInterface.LogotipoEmitente;
end;

procedure TspdNFeDPECXProperties.Set_LogotipoEmitente(const Value: WideString);
  { Warning: The property LogotipoEmitente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogotipoEmitente := Value;
end;

function TspdNFeDPECXProperties.Get_UF: WideString;
begin
    Result := DefaultInterface.UF;
end;

procedure TspdNFeDPECXProperties.Set_UF(const Value: WideString);
  { Warning: The property UF has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UF := Value;
end;

function TspdNFeDPECXProperties.Get_CNPJ: WideString;
begin
    Result := DefaultInterface.CNPJ;
end;

procedure TspdNFeDPECXProperties.Set_CNPJ(const Value: WideString);
  { Warning: The property CNPJ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CNPJ := Value;
end;

function TspdNFeDPECXProperties.Get_DiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.DiretorioEsquemas;
end;

procedure TspdNFeDPECXProperties.Set_DiretorioEsquemas(const Value: WideString);
  { Warning: The property DiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioEsquemas := Value;
end;

function TspdNFeDPECXProperties.Get_ValidarEsquemaAntesEnvio: WordBool;
begin
    Result := DefaultInterface.ValidarEsquemaAntesEnvio;
end;

procedure TspdNFeDPECXProperties.Set_ValidarEsquemaAntesEnvio(Value: WordBool);
begin
  DefaultInterface.Set_ValidarEsquemaAntesEnvio(Value);
end;

function TspdNFeDPECXProperties.Get_EmailServidor: WideString;
begin
    Result := DefaultInterface.EmailServidor;
end;

procedure TspdNFeDPECXProperties.Set_EmailServidor(const Value: WideString);
  { Warning: The property EmailServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailServidor := Value;
end;

function TspdNFeDPECXProperties.Get_EmailAutenticacao: WordBool;
begin
    Result := DefaultInterface.EmailAutenticacao;
end;

procedure TspdNFeDPECXProperties.Set_EmailAutenticacao(Value: WordBool);
begin
  DefaultInterface.Set_EmailAutenticacao(Value);
end;

function TspdNFeDPECXProperties.Get_EmailRemetente: WideString;
begin
    Result := DefaultInterface.EmailRemetente;
end;

procedure TspdNFeDPECXProperties.Set_EmailRemetente(const Value: WideString);
  { Warning: The property EmailRemetente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailRemetente := Value;
end;

function TspdNFeDPECXProperties.Get_EmailDestinatario: WideString;
begin
    Result := DefaultInterface.EmailDestinatario;
end;

procedure TspdNFeDPECXProperties.Set_EmailDestinatario(const Value: WideString);
  { Warning: The property EmailDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailDestinatario := Value;
end;

function TspdNFeDPECXProperties.Get_EmailAssunto: WideString;
begin
    Result := DefaultInterface.EmailAssunto;
end;

procedure TspdNFeDPECXProperties.Set_EmailAssunto(const Value: WideString);
  { Warning: The property EmailAssunto has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailAssunto := Value;
end;

function TspdNFeDPECXProperties.Get_EmailMensagem: WideString;
begin
    Result := DefaultInterface.EmailMensagem;
end;

procedure TspdNFeDPECXProperties.Set_EmailMensagem(const Value: WideString);
  { Warning: The property EmailMensagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailMensagem := Value;
end;

function TspdNFeDPECXProperties.Get_EmailUsuario: WideString;
begin
    Result := DefaultInterface.EmailUsuario;
end;

procedure TspdNFeDPECXProperties.Set_EmailUsuario(const Value: WideString);
  { Warning: The property EmailUsuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailUsuario := Value;
end;

function TspdNFeDPECXProperties.Get_EmailSenha: WideString;
begin
    Result := DefaultInterface.EmailSenha;
end;

procedure TspdNFeDPECXProperties.Set_EmailSenha(const Value: WideString);
  { Warning: The property EmailSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailSenha := Value;
end;

function TspdNFeDPECXProperties.Get_FraseContingencia: WideString;
begin
    Result := DefaultInterface.FraseContingencia;
end;

procedure TspdNFeDPECXProperties.Set_FraseContingencia(const Value: WideString);
  { Warning: The property FraseContingencia has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseContingencia := Value;
end;

function TspdNFeDPECXProperties.Get_FraseHomologacao: WideString;
begin
    Result := DefaultInterface.FraseHomologacao;
end;

procedure TspdNFeDPECXProperties.Set_FraseHomologacao(const Value: WideString);
  { Warning: The property FraseHomologacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseHomologacao := Value;
end;

function TspdNFeDPECXProperties.Get_ModeloRetrato: WideString;
begin
    Result := DefaultInterface.ModeloRetrato;
end;

procedure TspdNFeDPECXProperties.Set_ModeloRetrato(const Value: WideString);
  { Warning: The property ModeloRetrato has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetrato := Value;
end;

function TspdNFeDPECXProperties.Get_ModeloPaisagem: WideString;
begin
    Result := DefaultInterface.ModeloPaisagem;
end;

procedure TspdNFeDPECXProperties.Set_ModeloPaisagem(const Value: WideString);
  { Warning: The property ModeloPaisagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloPaisagem := Value;
end;

function TspdNFeDPECXProperties.Get_VersaoManual: WideString;
begin
    Result := DefaultInterface.VersaoManual;
end;

procedure TspdNFeDPECXProperties.Set_VersaoManual(const Value: WideString);
  { Warning: The property VersaoManual has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VersaoManual := Value;
end;

function TspdNFeDPECXProperties.Get_AnexarDanfePDF: WordBool;
begin
    Result := DefaultInterface.AnexarDanfePDF;
end;

procedure TspdNFeDPECXProperties.Set_AnexarDanfePDF(Value: WordBool);
begin
  DefaultInterface.Set_AnexarDanfePDF(Value);
end;

function TspdNFeDPECXProperties.Get_QtdeCopias: Integer;
begin
    Result := DefaultInterface.QtdeCopias;
end;

procedure TspdNFeDPECXProperties.Set_QtdeCopias(Value: Integer);
begin
  DefaultInterface.Set_QtdeCopias(Value);
end;

function TspdNFeDPECXProperties.Get_EmailPorta: Integer;
begin
    Result := DefaultInterface.EmailPorta;
end;

procedure TspdNFeDPECXProperties.Set_EmailPorta(Value: Integer);
begin
  DefaultInterface.Set_EmailPorta(Value);
end;

function TspdNFeDPECXProperties.Get_LineDelimiter: WideString;
begin
    Result := DefaultInterface.LineDelimiter;
end;

procedure TspdNFeDPECXProperties.Set_LineDelimiter(const Value: WideString);
  { Warning: The property LineDelimiter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LineDelimiter := Value;
end;

function TspdNFeDPECXProperties.Get_IgnoreInvalidCertificates: WordBool;
begin
    Result := DefaultInterface.IgnoreInvalidCertificates;
end;

procedure TspdNFeDPECXProperties.Set_IgnoreInvalidCertificates(Value: WordBool);
begin
  DefaultInterface.Set_IgnoreInvalidCertificates(Value);
end;

function TspdNFeDPECXProperties.Get_Versao: WideString;
begin
    Result := DefaultInterface.Versao;
end;

function TspdNFeDPECXProperties.Get_EmailTimeOut: Integer;
begin
    Result := DefaultInterface.EmailTimeOut;
end;

procedure TspdNFeDPECXProperties.Set_EmailTimeOut(Value: Integer);
begin
  DefaultInterface.Set_EmailTimeOut(Value);
end;

function TspdNFeDPECXProperties.Get_PINCODE: WideString;
begin
    Result := DefaultInterface.PINCODE;
end;

procedure TspdNFeDPECXProperties.Set_PINCODE(const Value: WideString);
  { Warning: The property PINCODE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PINCODE := Value;
end;

function TspdNFeDPECXProperties.Get_InfCplMaxCol: Integer;
begin
    Result := DefaultInterface.InfCplMaxCol;
end;

procedure TspdNFeDPECXProperties.Set_InfCplMaxCol(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxCol(Value);
end;

function TspdNFeDPECXProperties.Get_InfCplMaxRow: Integer;
begin
    Result := DefaultInterface.InfCplMaxRow;
end;

procedure TspdNFeDPECXProperties.Set_InfCplMaxRow(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxRow(Value);
end;

function TspdNFeDPECXProperties.Get_EmailCC: WideString;
begin
    Result := DefaultInterface.EmailCC;
end;

procedure TspdNFeDPECXProperties.Set_EmailCC(const Value: WideString);
  { Warning: The property EmailCC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCC := Value;
end;

function TspdNFeDPECXProperties.Get_EmailCCo: WideString;
begin
    Result := DefaultInterface.EmailCCo;
end;

procedure TspdNFeDPECXProperties.Set_EmailCCo(const Value: WideString);
  { Warning: The property EmailCCo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCCo := Value;
end;

function TspdNFeDPECXProperties.Get_TimeOut: Integer;
begin
    Result := DefaultInterface.TimeOut;
end;

procedure TspdNFeDPECXProperties.Set_TimeOut(Value: Integer);
begin
  DefaultInterface.Set_TimeOut(Value);
end;

function TspdNFeDPECXProperties.Get_ModeloDanfeSimplificado: WideString;
begin
    Result := DefaultInterface.ModeloDanfeSimplificado;
end;

procedure TspdNFeDPECXProperties.Set_ModeloDanfeSimplificado(const Value: WideString);
  { Warning: The property ModeloDanfeSimplificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloDanfeSimplificado := Value;
end;

function TspdNFeDPECXProperties.Get_CaracteresRemoverAcentos: WideString;
begin
    Result := DefaultInterface.CaracteresRemoverAcentos;
end;

procedure TspdNFeDPECXProperties.Set_CaracteresRemoverAcentos(const Value: WideString);
  { Warning: The property CaracteresRemoverAcentos has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaracteresRemoverAcentos := Value;
end;

function TspdNFeDPECXProperties.Get_ImprimirVolume: WordBool;
begin
    Result := DefaultInterface.ImprimirVolume;
end;

procedure TspdNFeDPECXProperties.Set_ImprimirVolume(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirVolume(Value);
end;

function TspdNFeDPECXProperties.Get_ImprimirDuplicata: WordBool;
begin
    Result := DefaultInterface.ImprimirDuplicata;
end;

procedure TspdNFeDPECXProperties.Set_ImprimirDuplicata(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirDuplicata(Value);
end;

function TspdNFeDPECXProperties.Get_CaminhoCertificado: WideString;
begin
    Result := DefaultInterface.CaminhoCertificado;
end;

procedure TspdNFeDPECXProperties.Set_CaminhoCertificado(const Value: WideString);
  { Warning: The property CaminhoCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaminhoCertificado := Value;
end;

function TspdNFeDPECXProperties.Get_SenhaCertificado: WideString;
begin
    Result := DefaultInterface.SenhaCertificado;
end;

procedure TspdNFeDPECXProperties.Set_SenhaCertificado(const Value: WideString);
  { Warning: The property SenhaCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SenhaCertificado := Value;
end;

function TspdNFeDPECXProperties.Get_ImprimirUnidadeTributada: WordBool;
begin
    Result := DefaultInterface.ImprimirUnidadeTributada;
end;

procedure TspdNFeDPECXProperties.Set_ImprimirUnidadeTributada(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirUnidadeTributada(Value);
end;

function TspdNFeDPECXProperties.Get_DiretorioLogErro: WideString;
begin
    Result := DefaultInterface.DiretorioLogErro;
end;

procedure TspdNFeDPECXProperties.Set_DiretorioLogErro(const Value: WideString);
  { Warning: The property DiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLogErro := Value;
end;

function TspdNFeDPECXProperties.Get_DiretorioTemporario: WideString;
begin
    Result := DefaultInterface.DiretorioTemporario;
end;

procedure TspdNFeDPECXProperties.Set_DiretorioTemporario(const Value: WideString);
  { Warning: The property DiretorioTemporario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemporario := Value;
end;

function TspdNFeDPECXProperties.Get_UltimoLogCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogCancelamento;
end;

procedure TspdNFeDPECXProperties.Set_UltimoLogCancelamento(const Value: WideString);
  { Warning: The property UltimoLogCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogCancelamento := Value;
end;

function TspdNFeDPECXProperties.Get_ModoOperacao: ModoOperacaoNFe;
begin
    Result := DefaultInterface.ModoOperacao;
end;

procedure TspdNFeDPECXProperties.Set_ModoOperacao(Value: ModoOperacaoNFe);
begin
  DefaultInterface.Set_ModoOperacao(Value);
end;

function TspdNFeDPECXProperties.Get_EmailConteudoHtml: WordBool;
begin
    Result := DefaultInterface.EmailConteudoHtml;
end;

procedure TspdNFeDPECXProperties.Set_EmailConteudoHtml(Value: WordBool);
begin
  DefaultInterface.Set_EmailConteudoHtml(Value);
end;

function TspdNFeDPECXProperties.Get_MensagemPartilhaAutomatica: WordBool;
begin
    Result := DefaultInterface.MensagemPartilhaAutomatica;
end;

procedure TspdNFeDPECXProperties.Set_MensagemPartilhaAutomatica(Value: WordBool);
begin
  DefaultInterface.Set_MensagemPartilhaAutomatica(Value);
end;

function TspdNFeDPECXProperties.Get_ImprimirObsCont: WordBool;
begin
    Result := DefaultInterface.ImprimirObsCont;
end;

procedure TspdNFeDPECXProperties.Set_ImprimirObsCont(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirObsCont(Value);
end;

function TspdNFeDPECXProperties.Get_MensagemFCP: WordBool;
begin
    Result := DefaultInterface.MensagemFCP;
end;

procedure TspdNFeDPECXProperties.Set_MensagemFCP(Value: WordBool);
begin
  DefaultInterface.Set_MensagemFCP(Value);
end;

function TspdNFeDPECXProperties.Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
begin
    Result := DefaultInterface.ImprimirFrenteVerso;
end;

procedure TspdNFeDPECXProperties.Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
begin
  DefaultInterface.Set_ImprimirFrenteVerso(Value);
end;

function TspdNFeDPECXProperties.Get_AtualizarArquivoServidores: WordBool;
begin
    Result := DefaultInterface.AtualizarArquivoServidores;
end;

procedure TspdNFeDPECXProperties.Set_AtualizarArquivoServidores(Value: WordBool);
begin
  DefaultInterface.Set_AtualizarArquivoServidores(Value);
end;

{$ENDIF}

class function CospdNFeX.Create: IspdNFeX;
begin
  Result := CreateComObject(CLASS_spdNFeX) as IspdNFeX;
end;

class function CospdNFeX.CreateRemote(const MachineName: string): IspdNFeX;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdNFeX) as IspdNFeX;
end;

procedure TspdNFeX.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{443DDDD3-7E78-44C6-865C-7984C9D2B08A}';
    IntfIID:   '{7B83E236-4BC7-457D-92E7-B9CD2A5E6815}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TspdNFeX.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IspdNFeX;
  end;
end;

procedure TspdNFeX.ConnectTo(svrIntf: IspdNFeX);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TspdNFeX.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TspdNFeX.GetDefaultInterface: IspdNFeX;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TspdNFeX.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TspdNFeXProperties.Create(Self);
{$ENDIF}
end;

destructor TspdNFeX.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TspdNFeX.GetServerProperties: TspdNFeXProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TspdNFeX.Get_DiretorioTemplates: WideString;
begin
    Result := DefaultInterface.DiretorioTemplates;
end;

procedure TspdNFeX.Set_DiretorioTemplates(const Value: WideString);
  { Warning: The property DiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemplates := Value;
end;

function TspdNFeX.Get_NomeCertificado: WideString;
begin
    Result := DefaultInterface.NomeCertificado;
end;

procedure TspdNFeX.Set_NomeCertificado(const Value: WideString);
  { Warning: The property NomeCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NomeCertificado := Value;
end;

function TspdNFeX.Get_TipoCertificado: TipoCertificado;
begin
    Result := DefaultInterface.TipoCertificado;
end;

procedure TspdNFeX.Set_TipoCertificado(Value: TipoCertificado);
begin
  DefaultInterface.Set_TipoCertificado(Value);
end;

function TspdNFeX.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure TspdNFeX.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function TspdNFeX.Get_Usuario: WideString;
begin
    Result := DefaultInterface.Usuario;
end;

procedure TspdNFeX.Set_Usuario(const Value: WideString);
  { Warning: The property Usuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Usuario := Value;
end;

function TspdNFeX.Get_ConfigINI: WideString;
begin
    Result := DefaultInterface.ConfigINI;
end;

procedure TspdNFeX.Set_ConfigINI(const Value: WideString);
  { Warning: The property ConfigINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConfigINI := Value;
end;

function TspdNFeX.Get_SectionINI: WideString;
begin
    Result := DefaultInterface.SectionINI;
end;

procedure TspdNFeX.Set_SectionINI(const Value: WideString);
  { Warning: The property SectionINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SectionINI := Value;
end;

function TspdNFeX.Get_Ambiente: Ambiente;
begin
    Result := DefaultInterface.Ambiente;
end;

procedure TspdNFeX.Set_Ambiente(Value: Ambiente);
begin
  DefaultInterface.Set_Ambiente(Value);
end;

function TspdNFeX.Get_ArquivoServidoresHom: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresHom;
end;

procedure TspdNFeX.Set_ArquivoServidoresHom(const Value: WideString);
  { Warning: The property ArquivoServidoresHom has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresHom := Value;
end;

function TspdNFeX.Get_ArquivoServidoresProd: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresProd;
end;

procedure TspdNFeX.Set_ArquivoServidoresProd(const Value: WideString);
  { Warning: The property ArquivoServidoresProd has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresProd := Value;
end;

function TspdNFeX.Get_DiretorioLog: WideString;
begin
    Result := DefaultInterface.DiretorioLog;
end;

procedure TspdNFeX.Set_DiretorioLog(const Value: WideString);
  { Warning: The property DiretorioLog has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLog := Value;
end;

function TspdNFeX.Get_ErrosValidador: WideString;
begin
    Result := DefaultInterface.ErrosValidador;
end;

procedure TspdNFeX.Set_ErrosValidador(const Value: WideString);
  { Warning: The property ErrosValidador has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ErrosValidador := Value;
end;

function TspdNFeX.Get_Senha: WideString;
begin
    Result := DefaultInterface.Senha;
end;

procedure TspdNFeX.Set_Senha(const Value: WideString);
  { Warning: The property Senha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Senha := Value;
end;

function TspdNFeX.Get_LogotipoEmitente: WideString;
begin
    Result := DefaultInterface.LogotipoEmitente;
end;

procedure TspdNFeX.Set_LogotipoEmitente(const Value: WideString);
  { Warning: The property LogotipoEmitente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogotipoEmitente := Value;
end;

function TspdNFeX.Get_UF: WideString;
begin
    Result := DefaultInterface.UF;
end;

procedure TspdNFeX.Set_UF(const Value: WideString);
  { Warning: The property UF has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UF := Value;
end;

function TspdNFeX.Get_CNPJ: WideString;
begin
    Result := DefaultInterface.CNPJ;
end;

procedure TspdNFeX.Set_CNPJ(const Value: WideString);
  { Warning: The property CNPJ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CNPJ := Value;
end;

function TspdNFeX.Get_DiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.DiretorioEsquemas;
end;

procedure TspdNFeX.Set_DiretorioEsquemas(const Value: WideString);
  { Warning: The property DiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioEsquemas := Value;
end;

function TspdNFeX.Get_ValidarEsquemaAntesEnvio: WordBool;
begin
    Result := DefaultInterface.ValidarEsquemaAntesEnvio;
end;

procedure TspdNFeX.Set_ValidarEsquemaAntesEnvio(Value: WordBool);
begin
  DefaultInterface.Set_ValidarEsquemaAntesEnvio(Value);
end;

function TspdNFeX.Get_EmailServidor: WideString;
begin
    Result := DefaultInterface.EmailServidor;
end;

procedure TspdNFeX.Set_EmailServidor(const Value: WideString);
  { Warning: The property EmailServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailServidor := Value;
end;

function TspdNFeX.Get_EmailAutenticacao: WordBool;
begin
    Result := DefaultInterface.EmailAutenticacao;
end;

procedure TspdNFeX.Set_EmailAutenticacao(Value: WordBool);
begin
  DefaultInterface.Set_EmailAutenticacao(Value);
end;

function TspdNFeX.Get_EmailRemetente: WideString;
begin
    Result := DefaultInterface.EmailRemetente;
end;

procedure TspdNFeX.Set_EmailRemetente(const Value: WideString);
  { Warning: The property EmailRemetente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailRemetente := Value;
end;

function TspdNFeX.Get_EmailDestinatario: WideString;
begin
    Result := DefaultInterface.EmailDestinatario;
end;

procedure TspdNFeX.Set_EmailDestinatario(const Value: WideString);
  { Warning: The property EmailDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailDestinatario := Value;
end;

function TspdNFeX.Get_EmailAssunto: WideString;
begin
    Result := DefaultInterface.EmailAssunto;
end;

procedure TspdNFeX.Set_EmailAssunto(const Value: WideString);
  { Warning: The property EmailAssunto has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailAssunto := Value;
end;

function TspdNFeX.Get_EmailMensagem: WideString;
begin
    Result := DefaultInterface.EmailMensagem;
end;

procedure TspdNFeX.Set_EmailMensagem(const Value: WideString);
  { Warning: The property EmailMensagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailMensagem := Value;
end;

function TspdNFeX.Get_EmailUsuario: WideString;
begin
    Result := DefaultInterface.EmailUsuario;
end;

procedure TspdNFeX.Set_EmailUsuario(const Value: WideString);
  { Warning: The property EmailUsuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailUsuario := Value;
end;

function TspdNFeX.Get_EmailSenha: WideString;
begin
    Result := DefaultInterface.EmailSenha;
end;

procedure TspdNFeX.Set_EmailSenha(const Value: WideString);
  { Warning: The property EmailSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailSenha := Value;
end;

function TspdNFeX.Get_FraseContingencia: WideString;
begin
    Result := DefaultInterface.FraseContingencia;
end;

procedure TspdNFeX.Set_FraseContingencia(const Value: WideString);
  { Warning: The property FraseContingencia has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseContingencia := Value;
end;

function TspdNFeX.Get_FraseHomologacao: WideString;
begin
    Result := DefaultInterface.FraseHomologacao;
end;

procedure TspdNFeX.Set_FraseHomologacao(const Value: WideString);
  { Warning: The property FraseHomologacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseHomologacao := Value;
end;

function TspdNFeX.Get_ModeloRetrato: WideString;
begin
    Result := DefaultInterface.ModeloRetrato;
end;

procedure TspdNFeX.Set_ModeloRetrato(const Value: WideString);
  { Warning: The property ModeloRetrato has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetrato := Value;
end;

function TspdNFeX.Get_ModeloPaisagem: WideString;
begin
    Result := DefaultInterface.ModeloPaisagem;
end;

procedure TspdNFeX.Set_ModeloPaisagem(const Value: WideString);
  { Warning: The property ModeloPaisagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloPaisagem := Value;
end;

function TspdNFeX.Get_VersaoManual: WideString;
begin
    Result := DefaultInterface.VersaoManual;
end;

procedure TspdNFeX.Set_VersaoManual(const Value: WideString);
  { Warning: The property VersaoManual has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VersaoManual := Value;
end;

function TspdNFeX.Get_AnexarDanfePDF: WordBool;
begin
    Result := DefaultInterface.AnexarDanfePDF;
end;

procedure TspdNFeX.Set_AnexarDanfePDF(Value: WordBool);
begin
  DefaultInterface.Set_AnexarDanfePDF(Value);
end;

function TspdNFeX.Get_QtdeCopias: Integer;
begin
    Result := DefaultInterface.QtdeCopias;
end;

procedure TspdNFeX.Set_QtdeCopias(Value: Integer);
begin
  DefaultInterface.Set_QtdeCopias(Value);
end;

function TspdNFeX.Get_EmailPorta: Integer;
begin
    Result := DefaultInterface.EmailPorta;
end;

procedure TspdNFeX.Set_EmailPorta(Value: Integer);
begin
  DefaultInterface.Set_EmailPorta(Value);
end;

function TspdNFeX.Get_LineDelimiter: WideString;
begin
    Result := DefaultInterface.LineDelimiter;
end;

procedure TspdNFeX.Set_LineDelimiter(const Value: WideString);
  { Warning: The property LineDelimiter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LineDelimiter := Value;
end;

function TspdNFeX.Get_IgnoreInvalidCertificates: WordBool;
begin
    Result := DefaultInterface.IgnoreInvalidCertificates;
end;

procedure TspdNFeX.Set_IgnoreInvalidCertificates(Value: WordBool);
begin
  DefaultInterface.Set_IgnoreInvalidCertificates(Value);
end;

function TspdNFeX.Get_Versao: WideString;
begin
    Result := DefaultInterface.Versao;
end;

function TspdNFeX.Get_EmailTimeOut: Integer;
begin
    Result := DefaultInterface.EmailTimeOut;
end;

procedure TspdNFeX.Set_EmailTimeOut(Value: Integer);
begin
  DefaultInterface.Set_EmailTimeOut(Value);
end;

function TspdNFeX.Get_PINCODE: WideString;
begin
    Result := DefaultInterface.PINCODE;
end;

procedure TspdNFeX.Set_PINCODE(const Value: WideString);
  { Warning: The property PINCODE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PINCODE := Value;
end;

function TspdNFeX.Get_InfCplMaxCol: Integer;
begin
    Result := DefaultInterface.InfCplMaxCol;
end;

procedure TspdNFeX.Set_InfCplMaxCol(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxCol(Value);
end;

function TspdNFeX.Get_InfCplMaxRow: Integer;
begin
    Result := DefaultInterface.InfCplMaxRow;
end;

procedure TspdNFeX.Set_InfCplMaxRow(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxRow(Value);
end;

function TspdNFeX.Get_EmailCC: WideString;
begin
    Result := DefaultInterface.EmailCC;
end;

procedure TspdNFeX.Set_EmailCC(const Value: WideString);
  { Warning: The property EmailCC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCC := Value;
end;

function TspdNFeX.Get_EmailCCo: WideString;
begin
    Result := DefaultInterface.EmailCCo;
end;

procedure TspdNFeX.Set_EmailCCo(const Value: WideString);
  { Warning: The property EmailCCo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCCo := Value;
end;

function TspdNFeX.Get_TimeOut: Integer;
begin
    Result := DefaultInterface.TimeOut;
end;

procedure TspdNFeX.Set_TimeOut(Value: Integer);
begin
  DefaultInterface.Set_TimeOut(Value);
end;

function TspdNFeX.Get_ModeloDanfeSimplificado: WideString;
begin
    Result := DefaultInterface.ModeloDanfeSimplificado;
end;

procedure TspdNFeX.Set_ModeloDanfeSimplificado(const Value: WideString);
  { Warning: The property ModeloDanfeSimplificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloDanfeSimplificado := Value;
end;

function TspdNFeX.Get_CaracteresRemoverAcentos: WideString;
begin
    Result := DefaultInterface.CaracteresRemoverAcentos;
end;

procedure TspdNFeX.Set_CaracteresRemoverAcentos(const Value: WideString);
  { Warning: The property CaracteresRemoverAcentos has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaracteresRemoverAcentos := Value;
end;

function TspdNFeX.Get_ImprimirVolume: WordBool;
begin
    Result := DefaultInterface.ImprimirVolume;
end;

procedure TspdNFeX.Set_ImprimirVolume(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirVolume(Value);
end;

function TspdNFeX.Get_ImprimirDuplicata: WordBool;
begin
    Result := DefaultInterface.ImprimirDuplicata;
end;

procedure TspdNFeX.Set_ImprimirDuplicata(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirDuplicata(Value);
end;

function TspdNFeX.Get_CaminhoCertificado: WideString;
begin
    Result := DefaultInterface.CaminhoCertificado;
end;

procedure TspdNFeX.Set_CaminhoCertificado(const Value: WideString);
  { Warning: The property CaminhoCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaminhoCertificado := Value;
end;

function TspdNFeX.Get_SenhaCertificado: WideString;
begin
    Result := DefaultInterface.SenhaCertificado;
end;

procedure TspdNFeX.Set_SenhaCertificado(const Value: WideString);
  { Warning: The property SenhaCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SenhaCertificado := Value;
end;

function TspdNFeX.Get_ImprimirUnidadeTributada: WordBool;
begin
    Result := DefaultInterface.ImprimirUnidadeTributada;
end;

procedure TspdNFeX.Set_ImprimirUnidadeTributada(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirUnidadeTributada(Value);
end;

function TspdNFeX.Get_DiretorioLogErro: WideString;
begin
    Result := DefaultInterface.DiretorioLogErro;
end;

procedure TspdNFeX.Set_DiretorioLogErro(const Value: WideString);
  { Warning: The property DiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLogErro := Value;
end;

function TspdNFeX.Get_DiretorioTemporario: WideString;
begin
    Result := DefaultInterface.DiretorioTemporario;
end;

procedure TspdNFeX.Set_DiretorioTemporario(const Value: WideString);
  { Warning: The property DiretorioTemporario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemporario := Value;
end;

function TspdNFeX.Get_UltimoLogCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogCancelamento;
end;

procedure TspdNFeX.Set_UltimoLogCancelamento(const Value: WideString);
  { Warning: The property UltimoLogCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogCancelamento := Value;
end;

function TspdNFeX.Get_ModoOperacao: ModoOperacaoNFe;
begin
    Result := DefaultInterface.ModoOperacao;
end;

procedure TspdNFeX.Set_ModoOperacao(Value: ModoOperacaoNFe);
begin
  DefaultInterface.Set_ModoOperacao(Value);
end;

function TspdNFeX.Get_EmailConteudoHtml: WordBool;
begin
    Result := DefaultInterface.EmailConteudoHtml;
end;

procedure TspdNFeX.Set_EmailConteudoHtml(Value: WordBool);
begin
  DefaultInterface.Set_EmailConteudoHtml(Value);
end;

function TspdNFeX.Get_MensagemPartilhaAutomatica: WordBool;
begin
    Result := DefaultInterface.MensagemPartilhaAutomatica;
end;

procedure TspdNFeX.Set_MensagemPartilhaAutomatica(Value: WordBool);
begin
  DefaultInterface.Set_MensagemPartilhaAutomatica(Value);
end;

function TspdNFeX.Get_ImprimirObsCont: WordBool;
begin
    Result := DefaultInterface.ImprimirObsCont;
end;

procedure TspdNFeX.Set_ImprimirObsCont(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirObsCont(Value);
end;

function TspdNFeX.Get_MensagemFCP: WordBool;
begin
    Result := DefaultInterface.MensagemFCP;
end;

procedure TspdNFeX.Set_MensagemFCP(Value: WordBool);
begin
  DefaultInterface.Set_MensagemFCP(Value);
end;

function TspdNFeX.Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
begin
    Result := DefaultInterface.ImprimirFrenteVerso;
end;

procedure TspdNFeX.Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
begin
  DefaultInterface.Set_ImprimirFrenteVerso(Value);
end;

function TspdNFeX.Get_AtualizarArquivoServidores: WordBool;
begin
    Result := DefaultInterface.AtualizarArquivoServidores;
end;

procedure TspdNFeX.Set_AtualizarArquivoServidores(Value: WordBool);
begin
  DefaultInterface.Set_AtualizarArquivoServidores(Value);
end;

function TspdNFeX.Get_UltimoLogEnvio: WideString;
begin
    Result := DefaultInterface.UltimoLogEnvio;
end;

procedure TspdNFeX.Set_UltimoLogEnvio(const Value: WideString);
  { Warning: The property UltimoLogEnvio has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogEnvio := Value;
end;

function TspdNFeX.Get_UltimoLogConsRecibo: WideString;
begin
    Result := DefaultInterface.UltimoLogConsRecibo;
end;

procedure TspdNFeX.Set_UltimoLogConsRecibo(const Value: WideString);
  { Warning: The property UltimoLogConsRecibo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogConsRecibo := Value;
end;

function TspdNFeX.Get_DiretorioXmlDestinatario: WideString;
begin
    Result := DefaultInterface.DiretorioXmlDestinatario;
end;

procedure TspdNFeX.Set_DiretorioXmlDestinatario(const Value: WideString);
  { Warning: The property DiretorioXmlDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioXmlDestinatario := Value;
end;

function TspdNFeX.Get_MaxSizeLoteEnvio: Integer;
begin
    Result := DefaultInterface.MaxSizeLoteEnvio;
end;

procedure TspdNFeX.Set_MaxSizeLoteEnvio(Value: Integer);
begin
  DefaultInterface.Set_MaxSizeLoteEnvio(Value);
end;

function TspdNFeX.Get_DanfeSimplificado: WordBool;
begin
    Result := DefaultInterface.DanfeSimplificado;
end;

procedure TspdNFeX.Set_DanfeSimplificado(Value: WordBool);
begin
  DefaultInterface.Set_DanfeSimplificado(Value);
end;

function TspdNFeX.Get_DiretorioDownloads: WideString;
begin
    Result := DefaultInterface.DiretorioDownloads;
end;

procedure TspdNFeX.Set_DiretorioDownloads(const Value: WideString);
  { Warning: The property DiretorioDownloads has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioDownloads := Value;
end;

function TspdNFeX.Get_UltimoLogRecibo: WideString;
begin
    Result := DefaultInterface.UltimoLogRecibo;
end;

procedure TspdNFeX.Set_UltimoLogRecibo(const Value: WideString);
  { Warning: The property UltimoLogRecibo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogRecibo := Value;
end;

function TspdNFeX.Get_UltimoLogReciboCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogReciboCancelamento;
end;

procedure TspdNFeX.Set_UltimoLogReciboCancelamento(const Value: WideString);
  { Warning: The property UltimoLogReciboCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogReciboCancelamento := Value;
end;

function TspdNFeX.Get_ModeloRTMCCe: WideString;
begin
    Result := DefaultInterface.ModeloRTMCCe;
end;

procedure TspdNFeX.Set_ModeloRTMCCe(const Value: WideString);
  { Warning: The property ModeloRTMCCe has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRTMCCe := Value;
end;

function TspdNFeX.Get_EntregaXML: EntregaXML;
begin
    Result := DefaultInterface.EntregaXML;
end;

procedure TspdNFeX.Set_EntregaXML(Value: EntregaXML);
begin
  DefaultInterface.Set_EntregaXML(Value);
end;

function TspdNFeX.Get_NotaSeguraToken: WideString;
begin
    Result := DefaultInterface.NotaSeguraToken;
end;

procedure TspdNFeX.Set_NotaSeguraToken(const Value: WideString);
  { Warning: The property NotaSeguraToken has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraToken := Value;
end;

function TspdNFeX.Get_NotaSeguraLogin: WideString;
begin
    Result := DefaultInterface.NotaSeguraLogin;
end;

procedure TspdNFeX.Set_NotaSeguraLogin(const Value: WideString);
  { Warning: The property NotaSeguraLogin has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraLogin := Value;
end;

function TspdNFeX.Get_NotaSeguraSenha: WideString;
begin
    Result := DefaultInterface.NotaSeguraSenha;
end;

procedure TspdNFeX.Set_NotaSeguraSenha(const Value: WideString);
  { Warning: The property NotaSeguraSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraSenha := Value;
end;

function TspdNFeX.Get_NotaSeguraServidor: WideString;
begin
    Result := DefaultInterface.NotaSeguraServidor;
end;

procedure TspdNFeX.Set_NotaSeguraServidor(const Value: WideString);
  { Warning: The property NotaSeguraServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraServidor := Value;
end;

function TspdNFeX.Get_AuditorServidor: WideString;
begin
    Result := DefaultInterface.AuditorServidor;
end;

procedure TspdNFeX.Set_AuditorServidor(const Value: WideString);
  { Warning: The property AuditorServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorServidor := Value;
end;

function TspdNFeX.Get_AuditorExibirRegrasValidacao: WordBool;
begin
    Result := DefaultInterface.AuditorExibirRegrasValidacao;
end;

procedure TspdNFeX.Set_AuditorExibirRegrasValidacao(Value: WordBool);
begin
  DefaultInterface.Set_AuditorExibirRegrasValidacao(Value);
end;

function TspdNFeX.Get_AuditorCodigoProduto: Integer;
begin
    Result := DefaultInterface.AuditorCodigoProduto;
end;

procedure TspdNFeX.Set_AuditorCodigoProduto(Value: Integer);
begin
  DefaultInterface.Set_AuditorCodigoProduto(Value);
end;

function TspdNFeX.Get_AuditorEstagio: Estagio;
begin
    Result := DefaultInterface.AuditorEstagio;
end;

procedure TspdNFeX.Set_AuditorEstagio(Value: Estagio);
begin
  DefaultInterface.Set_AuditorEstagio(Value);
end;

function TspdNFeX.Get_AuditorTemplateHtml: WideString;
begin
    Result := DefaultInterface.AuditorTemplateHtml;
end;

procedure TspdNFeX.Set_AuditorTemplateHtml(const Value: WideString);
  { Warning: The property AuditorTemplateHtml has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorTemplateHtml := Value;
end;

function TspdNFeX.Get_AuditorHeigthHtml: Integer;
begin
    Result := DefaultInterface.AuditorHeigthHtml;
end;

procedure TspdNFeX.Set_AuditorHeigthHtml(Value: Integer);
begin
  DefaultInterface.Set_AuditorHeigthHtml(Value);
end;

function TspdNFeX.Get_AuditorWidthHtml: Integer;
begin
    Result := DefaultInterface.AuditorWidthHtml;
end;

procedure TspdNFeX.Set_AuditorWidthHtml(Value: Integer);
begin
  DefaultInterface.Set_AuditorWidthHtml(Value);
end;

function TspdNFeX.Get_AuditorHtmlBaseUrl: WideString;
begin
    Result := DefaultInterface.AuditorHtmlBaseUrl;
end;

procedure TspdNFeX.Set_AuditorHtmlBaseUrl(const Value: WideString);
  { Warning: The property AuditorHtmlBaseUrl has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorHtmlBaseUrl := Value;
end;

function TspdNFeX.Get_AuditorTipoResposta: TipoResposta;
begin
    Result := DefaultInterface.AuditorTipoResposta;
end;

procedure TspdNFeX.Set_AuditorTipoResposta(Value: TipoResposta);
begin
  DefaultInterface.Set_AuditorTipoResposta(Value);
end;

function TspdNFeX.Get_AuditorTotalRejeicao: WideString;
begin
    Result := DefaultInterface.AuditorTotalRejeicao;
end;

procedure TspdNFeX.Set_AuditorTotalRejeicao(const Value: WideString);
  { Warning: The property AuditorTotalRejeicao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorTotalRejeicao := Value;
end;

function TspdNFeX.Get_AuditorLinguagemResposta: LinguagemResposta;
begin
    Result := DefaultInterface.AuditorLinguagemResposta;
end;

procedure TspdNFeX.Set_AuditorLinguagemResposta(Value: LinguagemResposta);
begin
  DefaultInterface.Set_AuditorLinguagemResposta(Value);
end;

function TspdNFeX.Get_AuditorModoOperacao: ModoOperacao;
begin
    Result := DefaultInterface.AuditorModoOperacao;
end;

procedure TspdNFeX.Set_AuditorModoOperacao(Value: ModoOperacao);
begin
  DefaultInterface.Set_AuditorModoOperacao(Value);
end;

function TspdNFeX.Get_AuditorDiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioEsquemas;
end;

procedure TspdNFeX.Set_AuditorDiretorioEsquemas(const Value: WideString);
  { Warning: The property AuditorDiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioEsquemas := Value;
end;

function TspdNFeX.Get_AuditorDiretorioTemplates: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioTemplates;
end;

procedure TspdNFeX.Set_AuditorDiretorioTemplates(const Value: WideString);
  { Warning: The property AuditorDiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioTemplates := Value;
end;

function TspdNFeX.Get_AuditorDiretorioRegras: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioRegras;
end;

procedure TspdNFeX.Set_AuditorDiretorioRegras(const Value: WideString);
  { Warning: The property AuditorDiretorioRegras has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioRegras := Value;
end;

function TspdNFeX.Get_AuditorDiretorioLogErro: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioLogErro;
end;

procedure TspdNFeX.Set_AuditorDiretorioLogErro(const Value: WideString);
  { Warning: The property AuditorDiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioLogErro := Value;
end;

function TspdNFeX.Get_AuditorServidorProxy: WideString;
begin
    Result := DefaultInterface.AuditorServidorProxy;
end;

procedure TspdNFeX.Set_AuditorServidorProxy(const Value: WideString);
  { Warning: The property AuditorServidorProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorServidorProxy := Value;
end;

function TspdNFeX.Get_AuditorPortaProxy: Integer;
begin
    Result := DefaultInterface.AuditorPortaProxy;
end;

procedure TspdNFeX.Set_AuditorPortaProxy(Value: Integer);
begin
  DefaultInterface.Set_AuditorPortaProxy(Value);
end;

function TspdNFeX.Get_AuditorUsuarioProxy: WideString;
begin
    Result := DefaultInterface.AuditorUsuarioProxy;
end;

procedure TspdNFeX.Set_AuditorUsuarioProxy(const Value: WideString);
  { Warning: The property AuditorUsuarioProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorUsuarioProxy := Value;
end;

function TspdNFeX.Get_AuditorSenhaProxy: WideString;
begin
    Result := DefaultInterface.AuditorSenhaProxy;
end;

procedure TspdNFeX.Set_AuditorSenhaProxy(const Value: WideString);
  { Warning: The property AuditorSenhaProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorSenhaProxy := Value;
end;

function TspdNFeX.Get_ConexaoSegura: WordBool;
begin
    Result := DefaultInterface.ConexaoSegura;
end;

procedure TspdNFeX.Set_ConexaoSegura(Value: WordBool);
begin
  DefaultInterface.Set_ConexaoSegura(Value);
end;

function TspdNFeX.Get_UltimoLogConsultarDFe: WideString;
begin
    Result := DefaultInterface.UltimoLogConsultarDFe;
end;

procedure TspdNFeX.Set_UltimoLogConsultarDFe(const Value: WideString);
  { Warning: The property UltimoLogConsultarDFe has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogConsultarDFe := Value;
end;

function TspdNFeX.Get_AuditorTimeOut: Integer;
begin
    Result := DefaultInterface.AuditorTimeOut;
end;

procedure TspdNFeX.Set_AuditorTimeOut(Value: Integer);
begin
  DefaultInterface.Set_AuditorTimeOut(Value);
end;

function TspdNFeX.Get_UltimoLogReciboInutilizacao: WideString;
begin
    Result := DefaultInterface.UltimoLogReciboInutilizacao;
end;

procedure TspdNFeX.Set_UltimoLogReciboInutilizacao(const Value: WideString);
  { Warning: The property UltimoLogReciboInutilizacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogReciboInutilizacao := Value;
end;

function TspdNFeX.Get_ModeloRetratoCancelamento: WideString;
begin
    Result := DefaultInterface.ModeloRetratoCancelamento;
end;

procedure TspdNFeX.Set_ModeloRetratoCancelamento(const Value: WideString);
  { Warning: The property ModeloRetratoCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetratoCancelamento := Value;
end;

function TspdNFeX.Get_UltimoLogInutilizacao: WideString;
begin
    Result := DefaultInterface.UltimoLogInutilizacao;
end;

procedure TspdNFeX.Set_UltimoLogInutilizacao(const Value: WideString);
  { Warning: The property UltimoLogInutilizacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogInutilizacao := Value;
end;

function TspdNFeX.ListarCertificados(const aDelimiter: WideString): WideString;
begin
  Result := DefaultInterface.ListarCertificados(aDelimiter);
end;

function TspdNFeX.RemoverCertificado(const CertificateName: WideString): WordBool;
begin
  Result := DefaultInterface.RemoverCertificado(CertificateName);
end;

procedure TspdNFeX.EmailAddCC(const Email: WideString);
begin
  DefaultInterface.EmailAddCC(Email);
end;

procedure TspdNFeX.EmailAddCCO(const Email: WideString);
begin
  DefaultInterface.EmailAddCCO(Email);
end;

function TspdNFeX.GetVencimentoCertificado: WideString;
begin
  Result := DefaultInterface.GetVencimentoCertificado;
end;

procedure TspdNFeX.SaveConfig(const aConfigFile: WideString);
begin
  DefaultInterface.SaveConfig(aConfigFile);
end;

function TspdNFeX.GetValidadeInicialCertificado: WideString;
begin
  Result := DefaultInterface.GetValidadeInicialCertificado;
end;

function TspdNFeX.CalculaChaveNFe(const aDtEmissao: WideString; const aUF: WideString; 
                                  const aCNPJ: WideString; const aModelo: WideString; 
                                  const aSerie: WideString; const aNRNota: WideString; 
                                  const aCodSistema: WideString; const aTpEmis: WideString): WideString;
begin
  Result := DefaultInterface.CalculaChaveNFe(aDtEmissao, aUF, aCNPJ, aModelo, aSerie, aNRNota, 
                                             aCodSistema, aTpEmis);
end;

function TspdNFeX.AssinarNota(const aXML: WideString): WideString;
begin
  Result := DefaultInterface.AssinarNota(aXML);
end;

function TspdNFeX.GerarNotasAleatorias(Qtde: Integer; const CNPJ: WideString): WideString;
begin
  Result := DefaultInterface.GerarNotasAleatorias(Qtde, CNPJ);
end;

function TspdNFeX.ConverterLoteParaXML(const ArquivoLoteTxt: WideString; aLayoutConv: LayoutConv; 
                                       const aVersaoEsquema: WideString): WideString;
begin
  Result := DefaultInterface.ConverterLoteParaXML(ArquivoLoteTxt, aLayoutConv, aVersaoEsquema);
end;

function TspdNFeX.StatusDoServico: WideString;
begin
  Result := DefaultInterface.StatusDoServico;
end;

function TspdNFeX.CancelarNF(const aNotaID: WideString; const aNumProtocolo: WideString; 
                             const aJustificativa: WideString): WideString;
begin
  Result := DefaultInterface.CancelarNF(aNotaID, aNumProtocolo, aJustificativa);
end;

function TspdNFeX.ConsultarNF(const aNotaID: WideString): WideString;
begin
  Result := DefaultInterface.ConsultarNF(aNotaID);
end;

function TspdNFeX.InutilizarNF(const aNotaID: WideString; const aAno: WideString; 
                               const aCNPJ: WideString; const aModelo: WideString; 
                               const aSerie: WideString; const aNFIni: WideString; 
                               const aNFFin: WideString; const aJustificativa: WideString): WideString;
begin
  Result := DefaultInterface.InutilizarNF(aNotaID, aAno, aCNPJ, aModelo, aSerie, aNFIni, aNFFin, 
                                          aJustificativa);
end;

function TspdNFeX.EnviarNF(const aNumLote: WideString; const aLoteNotas: WideString; 
                           aCompactado: WordBool): WideString;
begin
  Result := DefaultInterface.EnviarNF(aNumLote, aLoteNotas, aCompactado);
end;

function TspdNFeX.ConsultarRecibo(const aNumRecibo: WideString): WideString;
begin
  Result := DefaultInterface.ConsultarRecibo(aNumRecibo);
end;

function TspdNFeX.ConsultarCadastro(const aDocumento: WideString; const aTpDocumento: WideString; 
                                    const aUF: WideString): WideString;
begin
  Result := DefaultInterface.ConsultarCadastro(aDocumento, aTpDocumento, aUF);
end;

function TspdNFeX.VisualizarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                                  const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.VisualizarDanfe(aNumLote, aLoteNotas, aArquivoModelo);
end;

function TspdNFeX.ImprimirDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                                const aArquivoModelo: WideString; const aImpressora: WideString): WideString;
begin
  Result := DefaultInterface.ImprimirDanfe(aNumLote, aLoteNotas, aArquivoModelo, aImpressora);
end;

function TspdNFeX.EditarModeloDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                                    const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.EditarModeloDanfe(aNumLote, aLoteNotas, aArquivoModelo);
end;

function TspdNFeX.ExportarDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                                const aArquivoModelo: WideString; aFormato: Integer; 
                                const aExportarParaArquivo: WideString): WideString;
begin
  Result := DefaultInterface.ExportarDanfe(aNumLote, aLoteNotas, aArquivoModelo, aFormato, 
                                           aExportarParaArquivo);
end;

function TspdNFeX.EnviarEmailDanfe(const aNumLote: WideString; const aLoteNotas: WideString; 
                                   const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.EnviarEmailDanfe(aNumLote, aLoteNotas, aArquivoModelo);
end;

function TspdNFeX.LerLog(const aPathArquivoLog: WideString): WideString;
begin
  Result := DefaultInterface.LerLog(aPathArquivoLog);
end;

function TspdNFeX.VisualizarDanfeLog(const aPathArquivoLog: WideString): WideString;
begin
  Result := DefaultInterface.VisualizarDanfeLog(aPathArquivoLog);
end;

function TspdNFeX.GeraXMLEnvioDestinatario(const aIdNFe: WideString; const aLogEnvLote: WideString; 
                                           const aLogConsRecibo: WideString; 
                                           const aSalvarComo: WideString): WideString;
begin
  Result := DefaultInterface.GeraXMLEnvioDestinatario(aIdNFe, aLogEnvLote, aLogConsRecibo, 
                                                      aSalvarComo);
end;

function TspdNFeX.EnviarNotaDestinatario(const aIdNFe: WideString; const aLogEnvio: WideString; 
                                         const aLogRecibo: WideString): WideString;
begin
  Result := DefaultInterface.EnviarNotaDestinatario(aIdNFe, aLogEnvio, aLogRecibo);
end;

procedure TspdNFeX.LoadConfig(const aConfigFile: WideString);
begin
  DefaultInterface.LoadConfig(aConfigFile);
end;

function TspdNFeX.ValidarLoteParaEnvio(const aNumLote: WideString; const aLoteXml: WideString): WideString;
begin
  Result := DefaultInterface.ValidarLoteParaEnvio(aNumLote, aLoteXml);
end;

function TspdNFeX.GerarXmlCancelamentoDestinatario(const aIdNFe: WideString; 
                                                   const aContentLogPedCanc: WideString; 
                                                   const aContentLogRetCanc: WideString; 
                                                   const aSalvarComo: WideString): WideString;
begin
  Result := DefaultInterface.GerarXmlCancelamentoDestinatario(aIdNFe, aContentLogPedCanc, 
                                                              aContentLogRetCanc, aSalvarComo);
end;

function TspdNFeX.EnviarNotaCanceladaDestinatario(const aIdNFe: WideString; 
                                                  const aLogPedCanc: WideString; 
                                                  const aLogRetCanc: WideString; 
                                                  const aEmailDestinatario: WideString): WideString;
begin
  Result := DefaultInterface.EnviarNotaCanceladaDestinatario(aIdNFe, aLogPedCanc, aLogRetCanc, 
                                                             aEmailDestinatario);
end;

function TspdNFeX.PreverDanfe(const aLoteNotas: WideString; const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.PreverDanfe(aLoteNotas, aArquivoModelo);
end;

function TspdNFeX.EnviarNotaDestinatarioAnexos(const aArquivoPDF: WideString; 
                                               const aArquivoXML: WideString; 
                                               const aOutros: WideString): WideString;
begin
  Result := DefaultInterface.EnviarNotaDestinatarioAnexos(aArquivoPDF, aArquivoXML, aOutros);
end;

function TspdNFeX.ValidarArquivoXmlDestinatario(const aXML: WideString; var aErrorList: WideString): WordBool;
begin
  Result := DefaultInterface.ValidarArquivoXmlDestinatario(aXML, aErrorList);
end;

function TspdNFeX.EnviarManifestacaoDestinatario(aTpEvento: Integer; const aNotaID: WideString; 
                                                 const aCNPJCPF: WideString; 
                                                 const aJustificativa: WideString; 
                                                 const aDataHoraEvento: WideString; 
                                                 aSequenciaEvento: Integer; 
                                                 const aFusoHorario: WideString; 
                                                 const aCOrgao: WideString): WideString;
begin
  Result := DefaultInterface.EnviarManifestacaoDestinatario(aTpEvento, aNotaID, aCNPJCPF, 
                                                            aJustificativa, aDataHoraEvento, 
                                                            aSequenciaEvento, aFusoHorario, aCOrgao);
end;

function TspdNFeX.ConsultarNFDestinadas(aIndNFe: Integer; aIndEmi: Integer; 
                                        const aUltNSU: WideString): WideString;
begin
  Result := DefaultInterface.ConsultarNFDestinadas(aIndNFe, aIndEmi, aUltNSU);
end;

function TspdNFeX.CancelarNFeEvento(const aNotaID: WideString; const aNumProtocolo: WideString; 
                                    const aJustificativa: WideString; 
                                    const aDataHoraEvento: WideString; aSequenciaEvento: Integer; 
                                    const aFusoHorario: WideString): WideString;
begin
  Result := DefaultInterface.CancelarNFeEvento(aNotaID, aNumProtocolo, aJustificativa, 
                                               aDataHoraEvento, aSequenciaEvento, aFusoHorario);
end;

function TspdNFeX.DownloadNFe(const aChaves: WideString; const aCOrgao: WideString): WideString;
begin
  Result := DefaultInterface.DownloadNFe(aChaves, aCOrgao);
end;

function TspdNFeX.EnviarCCe(const aNotaID: WideString; const aTextoCorrecao: WideString; 
                            const aDataHoraEvento: WideString; const aOrgao: WideString; 
                            const aIdLote: WideString; aSequenciaEvento: Integer; 
                            const aFusoHorario: WideString): WideString;
begin
  Result := DefaultInterface.EnviarCCe(aNotaID, aTextoCorrecao, aDataHoraEvento, aOrgao, aIdLote, 
                                       aSequenciaEvento, aFusoHorario);
end;

function TspdNFeX.GerarXMLCCeDestinatario(const aIDEvento: WideString; 
                                          const aLogEvento: WideString; 
                                          const aLogRetEvento: WideString; 
                                          const aSalvarComo: WideString): WideString;
begin
  Result := DefaultInterface.GerarXMLCCeDestinatario(aIDEvento, aLogEvento, aLogRetEvento, 
                                                     aSalvarComo);
end;

procedure TspdNFeX.EnviarCCeDestinatario(const aCCe: WideString);
begin
  DefaultInterface.EnviarCCeDestinatario(aCCe);
end;

procedure TspdNFeX.ImprimirCCe(const aXmlCCe: WideString; const aImpressora: WideString);
begin
  DefaultInterface.ImprimirCCe(aXmlCCe, aImpressora);
end;

procedure TspdNFeX.VisualizarCCe(const aXmlCCe: WideString);
begin
  DefaultInterface.VisualizarCCe(aXmlCCe);
end;

procedure TspdNFeX.EditarModeloCCe(const aXmlCCe: WideString);
begin
  DefaultInterface.EditarModeloCCe(aXmlCCe);
end;

procedure TspdNFeX.ExportarCCe(const aXmlCCe: WideString; const aSalvarComo: WideString);
begin
  DefaultInterface.ExportarCCe(aXmlCCe, aSalvarComo);
end;

function TspdNFeX.CancelarNFeEventoIdLote(const aNotaID: WideString; 
                                          const aNumProtocolo: WideString; 
                                          const aJustificativa: WideString; 
                                          const aDataHoraEvento: WideString; 
                                          aSequenciaEvento: Integer; 
                                          const aFusoHorario: WideString; const aIdLote: WideString): WideString;
begin
  Result := DefaultInterface.CancelarNFeEventoIdLote(aNotaID, aNumProtocolo, aJustificativa, 
                                                     aDataHoraEvento, aSequenciaEvento, 
                                                     aFusoHorario, aIdLote);
end;

function TspdNFeX.GerarXmlManifestoDestinatario(const aIDEvento: WideString; 
                                                const aLogEvento: WideString; 
                                                const aLogRetEvento: WideString; 
                                                const aSalvarComo: WideString): WideString;
begin
  Result := DefaultInterface.GerarXmlManifestoDestinatario(aIDEvento, aLogEvento, aLogRetEvento, 
                                                           aSalvarComo);
end;

function TspdNFeX.ImprimirDanfeXmlDiretorio(const aDiretorioXml: WideString; 
                                            const aArquivoModelo: WideString; 
                                            const aExportarArquivoPara: WideString; 
                                            const aImpressora: WideString): WideString;
begin
  Result := DefaultInterface.ImprimirDanfeXmlDiretorio(aDiretorioXml, aArquivoModelo, 
                                                       aExportarArquivoPara, aImpressora);
end;

function TspdNFeX.ConverterLoteParaXMLExportacao(const aArquivoLoteTxt: WideString; 
                                                 aLayoutConv: LayoutConv; 
                                                 const aVersaoEsquema: WideString; 
                                                 aExportacao: WordBool): WideString;
begin
  Result := DefaultInterface.ConverterLoteParaXMLExportacao(aArquivoLoteTxt, aLayoutConv, 
                                                            aVersaoEsquema, aExportacao);
end;

function TspdNFeX.EnviarNFSincrono(const aNumLote: WideString; const aLoteNota: WideString; 
                                   aCompactado: WordBool): WideString;
begin
  Result := DefaultInterface.EnviarNFSincrono(aNumLote, aLoteNota, aCompactado);
end;

function TspdNFeX.GerarIDCCe(const aChaveNFe: WideString; aSeqEvento: Integer): WideString;
begin
  Result := DefaultInterface.GerarIDCCe(aChaveNFe, aSeqEvento);
end;

procedure TspdNFeX.ExportarPreverDanfe(const aLoteNotas: WideString; 
                                       const aArquivoModelo: WideString; 
                                       const aLocalNomeArquivo: WideString);
begin
  DefaultInterface.ExportarPreverDanfe(aLoteNotas, aArquivoModelo, aLocalNomeArquivo);
end;

function TspdNFeX.AuditarXml(const aXML: WideString; const aDelimitador: WideString; 
                             const aServidor: WideString; aExibirRegra: WordBool; 
                             aExibirHtml: WordBool; const aParams: WideString): WideString;
begin
  Result := DefaultInterface.AuditarXml(aXML, aDelimitador, aServidor, aExibirRegra, aExibirHtml, 
                                        aParams);
end;

function TspdNFeX.AuditorValidarXml(const aXML: WideString; const aDelimitador: WideString): WideString;
begin
  Result := DefaultInterface.AuditorValidarXml(aXML, aDelimitador);
end;

procedure TspdNFeX.AuditorShowHtml(const aJSON: WideString);
begin
  DefaultInterface.AuditorShowHtml(aJSON);
end;

procedure TspdNFeX.AuditorDownloadRegras;
begin
  DefaultInterface.AuditorDownloadRegras;
end;

procedure TspdNFeX.AuditorLoadConfig(const aConfiINI: WideString);
begin
  DefaultInterface.AuditorLoadConfig(aConfiINI);
end;

procedure TspdNFeX.AuditorSaveConfig(const aConfiINI: WideString);
begin
  DefaultInterface.AuditorSaveConfig(aConfiINI);
end;

function TspdNFeX.NotaSeguraEnviarXml(const aXML: WideString): WideString;
begin
  Result := DefaultInterface.NotaSeguraEnviarXml(aXML);
end;

function TspdNFeX.EnviarEPEC(const aEPECAssinado: WideString): WideString;
begin
  Result := DefaultInterface.EnviarEPEC(aEPECAssinado);
end;

function TspdNFeX.AssinarEPEC(const aXMLEpec: WideString): WideString;
begin
  Result := DefaultInterface.AssinarEPEC(aXMLEpec);
end;

function TspdNFeX.MontarEPEC(const aIdLote: WideString; const aXmlEnvio: WideString; 
                             const aDHEvento: WideString; const aFusoHorario: WideString): WideString;
begin
  Result := DefaultInterface.MontarEPEC(aIdLote, aXmlEnvio, aDHEvento, aFusoHorario);
end;

function TspdNFeX.GerarXMLEPECDestinatario(const aIDEvento: WideString; 
                                           const aLogEvento: WideString; 
                                           const aLogRetEvento: WideString; 
                                           const aSalvarComo: WideString): WideString;
begin
  Result := DefaultInterface.GerarXMLEPECDestinatario(aIDEvento, aLogEvento, aLogRetEvento, 
                                                      aSalvarComo);
end;

function TspdNFeX.ImprimirEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                               const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                               const aImpressora: WideString): WideString;
begin
  Result := DefaultInterface.ImprimirEPEC(aLoteNotas, aProtEPEC, aDataHoraEPEC, aArquivoModelo, 
                                          aImpressora);
end;

function TspdNFeX.VisualizarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                                 const aDataHoraEPEC: WideString; const aArquivoModelo: WideString): WideString;
begin
  Result := DefaultInterface.VisualizarEPEC(aLoteNotas, aProtEPEC, aDataHoraEPEC, aArquivoModelo);
end;

function TspdNFeX.ExportarEPEC(const aLoteNotas: WideString; const aProtEPEC: WideString; 
                               const aDataHoraEPEC: WideString; const aArquivoModelo: WideString; 
                               aFormato: Integer; const aExportarParaArquivo: WideString): WideString;
begin
  Result := DefaultInterface.ExportarEPEC(aLoteNotas, aProtEPEC, aDataHoraEPEC, aArquivoModelo, 
                                          aFormato, aExportarParaArquivo);
end;

function TspdNFeX.ConsultarDistribuicaoDFe(const aCodigoUF: WideString; const aCNPJCPF: WideString; 
                                           const aNSU: WideString; aTipoNSU: TipoNSU): WideString;
begin
  Result := DefaultInterface.ConsultarDistribuicaoDFe(aCodigoUF, aCNPJCPF, aNSU, aTipoNSU);
end;

function TspdNFeX.DescompactarXMLZip(const aXML: WideString): WideString;
begin
  Result := DefaultInterface.DescompactarXMLZip(aXML);
end;

function TspdNFeX.EnviarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                          const aNumProtocolo: WideString; 
                                          const aDataHoraEvento: WideString; 
                                          const aOrgao: WideString; 
                                          aTpEvento: TipoPedidoProrrogacao; 
                                          aSequenciaEvento: SYSINT; const aFusoHorario: WideString; 
                                          const aDelimiter: WideString): WideString;
begin
  Result := DefaultInterface.EnviarPedidoProrrogacao(aIdLote, aChaveNFe, aNumProtocolo, 
                                                     aDataHoraEvento, aOrgao, aTpEvento, 
                                                     aSequenciaEvento, aFusoHorario, aDelimiter);
end;

function TspdNFeX.CancelarPedidoProrrogacao(const aIdLote: WideString; const aChaveNFe: WideString; 
                                            const aNumProtocolo: WideString; 
                                            const aDataHoraEvento: WideString; 
                                            aTpEvento: TipoCancelamentoPedidoProrrogacao; 
                                            aSequenciaEvento: SYSINT; const aFusoHorario: WideString): WideString;
begin
  Result := DefaultInterface.CancelarPedidoProrrogacao(aIdLote, aChaveNFe, aNumProtocolo, 
                                                       aDataHoraEvento, aTpEvento, 
                                                       aSequenciaEvento, aFusoHorario);
end;

procedure TspdNFeX.AdicionarItens(const aNumItens: WideString; const aQtdeItens: WideString);
begin
  DefaultInterface.AdicionarItens(aNumItens, aQtdeItens);
end;

function TspdNFeX.ConsultarDistribuicaoDFeChave(const aCodigoUF: WideString; 
                                                const aCNPJCPF: WideString; const aChave: WideString): WideString;
begin
  Result := DefaultInterface.ConsultarDistribuicaoDFeChave(aCodigoUF, aCNPJCPF, aChave);
end;

function TspdNFeX.CalculaSegCodBarra(const cUF: WideString; const tpEmis: WideString; 
                                     const CNPJ: WideString; const vNF: WideString; 
                                     const ICMSp: WideString; const ICMSs: WideString; 
                                     const DD: WideString): WideString;
begin
  Result := DefaultInterface.CalculaSegCodBarra(cUF, tpEmis, CNPJ, vNF, ICMSp, ICMSs, DD);
end;

function TspdNFeX.TestarEmailConfig: WideString;
begin
  Result := DefaultInterface.TestarEmailConfig;
end;

procedure TspdNFeX.ConfigurarSoftwareHouse(const aCNPJSH: WideString; const aKey: WideString);
begin
  DefaultInterface.ConfigurarSoftwareHouse(aCNPJSH, aKey);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TspdNFeXProperties.Create(AServer: TspdNFeX);
begin
  inherited Create;
  FServer := AServer;
end;

function TspdNFeXProperties.GetDefaultInterface: IspdNFeX;
begin
  Result := FServer.DefaultInterface;
end;

function TspdNFeXProperties.Get_DiretorioTemplates: WideString;
begin
    Result := DefaultInterface.DiretorioTemplates;
end;

procedure TspdNFeXProperties.Set_DiretorioTemplates(const Value: WideString);
  { Warning: The property DiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemplates := Value;
end;

function TspdNFeXProperties.Get_NomeCertificado: WideString;
begin
    Result := DefaultInterface.NomeCertificado;
end;

procedure TspdNFeXProperties.Set_NomeCertificado(const Value: WideString);
  { Warning: The property NomeCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NomeCertificado := Value;
end;

function TspdNFeXProperties.Get_TipoCertificado: TipoCertificado;
begin
    Result := DefaultInterface.TipoCertificado;
end;

procedure TspdNFeXProperties.Set_TipoCertificado(Value: TipoCertificado);
begin
  DefaultInterface.Set_TipoCertificado(Value);
end;

function TspdNFeXProperties.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure TspdNFeXProperties.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function TspdNFeXProperties.Get_Usuario: WideString;
begin
    Result := DefaultInterface.Usuario;
end;

procedure TspdNFeXProperties.Set_Usuario(const Value: WideString);
  { Warning: The property Usuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Usuario := Value;
end;

function TspdNFeXProperties.Get_ConfigINI: WideString;
begin
    Result := DefaultInterface.ConfigINI;
end;

procedure TspdNFeXProperties.Set_ConfigINI(const Value: WideString);
  { Warning: The property ConfigINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConfigINI := Value;
end;

function TspdNFeXProperties.Get_SectionINI: WideString;
begin
    Result := DefaultInterface.SectionINI;
end;

procedure TspdNFeXProperties.Set_SectionINI(const Value: WideString);
  { Warning: The property SectionINI has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SectionINI := Value;
end;

function TspdNFeXProperties.Get_Ambiente: Ambiente;
begin
    Result := DefaultInterface.Ambiente;
end;

procedure TspdNFeXProperties.Set_Ambiente(Value: Ambiente);
begin
  DefaultInterface.Set_Ambiente(Value);
end;

function TspdNFeXProperties.Get_ArquivoServidoresHom: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresHom;
end;

procedure TspdNFeXProperties.Set_ArquivoServidoresHom(const Value: WideString);
  { Warning: The property ArquivoServidoresHom has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresHom := Value;
end;

function TspdNFeXProperties.Get_ArquivoServidoresProd: WideString;
begin
    Result := DefaultInterface.ArquivoServidoresProd;
end;

procedure TspdNFeXProperties.Set_ArquivoServidoresProd(const Value: WideString);
  { Warning: The property ArquivoServidoresProd has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ArquivoServidoresProd := Value;
end;

function TspdNFeXProperties.Get_DiretorioLog: WideString;
begin
    Result := DefaultInterface.DiretorioLog;
end;

procedure TspdNFeXProperties.Set_DiretorioLog(const Value: WideString);
  { Warning: The property DiretorioLog has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLog := Value;
end;

function TspdNFeXProperties.Get_ErrosValidador: WideString;
begin
    Result := DefaultInterface.ErrosValidador;
end;

procedure TspdNFeXProperties.Set_ErrosValidador(const Value: WideString);
  { Warning: The property ErrosValidador has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ErrosValidador := Value;
end;

function TspdNFeXProperties.Get_Senha: WideString;
begin
    Result := DefaultInterface.Senha;
end;

procedure TspdNFeXProperties.Set_Senha(const Value: WideString);
  { Warning: The property Senha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Senha := Value;
end;

function TspdNFeXProperties.Get_LogotipoEmitente: WideString;
begin
    Result := DefaultInterface.LogotipoEmitente;
end;

procedure TspdNFeXProperties.Set_LogotipoEmitente(const Value: WideString);
  { Warning: The property LogotipoEmitente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogotipoEmitente := Value;
end;

function TspdNFeXProperties.Get_UF: WideString;
begin
    Result := DefaultInterface.UF;
end;

procedure TspdNFeXProperties.Set_UF(const Value: WideString);
  { Warning: The property UF has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UF := Value;
end;

function TspdNFeXProperties.Get_CNPJ: WideString;
begin
    Result := DefaultInterface.CNPJ;
end;

procedure TspdNFeXProperties.Set_CNPJ(const Value: WideString);
  { Warning: The property CNPJ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CNPJ := Value;
end;

function TspdNFeXProperties.Get_DiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.DiretorioEsquemas;
end;

procedure TspdNFeXProperties.Set_DiretorioEsquemas(const Value: WideString);
  { Warning: The property DiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioEsquemas := Value;
end;

function TspdNFeXProperties.Get_ValidarEsquemaAntesEnvio: WordBool;
begin
    Result := DefaultInterface.ValidarEsquemaAntesEnvio;
end;

procedure TspdNFeXProperties.Set_ValidarEsquemaAntesEnvio(Value: WordBool);
begin
  DefaultInterface.Set_ValidarEsquemaAntesEnvio(Value);
end;

function TspdNFeXProperties.Get_EmailServidor: WideString;
begin
    Result := DefaultInterface.EmailServidor;
end;

procedure TspdNFeXProperties.Set_EmailServidor(const Value: WideString);
  { Warning: The property EmailServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailServidor := Value;
end;

function TspdNFeXProperties.Get_EmailAutenticacao: WordBool;
begin
    Result := DefaultInterface.EmailAutenticacao;
end;

procedure TspdNFeXProperties.Set_EmailAutenticacao(Value: WordBool);
begin
  DefaultInterface.Set_EmailAutenticacao(Value);
end;

function TspdNFeXProperties.Get_EmailRemetente: WideString;
begin
    Result := DefaultInterface.EmailRemetente;
end;

procedure TspdNFeXProperties.Set_EmailRemetente(const Value: WideString);
  { Warning: The property EmailRemetente has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailRemetente := Value;
end;

function TspdNFeXProperties.Get_EmailDestinatario: WideString;
begin
    Result := DefaultInterface.EmailDestinatario;
end;

procedure TspdNFeXProperties.Set_EmailDestinatario(const Value: WideString);
  { Warning: The property EmailDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailDestinatario := Value;
end;

function TspdNFeXProperties.Get_EmailAssunto: WideString;
begin
    Result := DefaultInterface.EmailAssunto;
end;

procedure TspdNFeXProperties.Set_EmailAssunto(const Value: WideString);
  { Warning: The property EmailAssunto has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailAssunto := Value;
end;

function TspdNFeXProperties.Get_EmailMensagem: WideString;
begin
    Result := DefaultInterface.EmailMensagem;
end;

procedure TspdNFeXProperties.Set_EmailMensagem(const Value: WideString);
  { Warning: The property EmailMensagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailMensagem := Value;
end;

function TspdNFeXProperties.Get_EmailUsuario: WideString;
begin
    Result := DefaultInterface.EmailUsuario;
end;

procedure TspdNFeXProperties.Set_EmailUsuario(const Value: WideString);
  { Warning: The property EmailUsuario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailUsuario := Value;
end;

function TspdNFeXProperties.Get_EmailSenha: WideString;
begin
    Result := DefaultInterface.EmailSenha;
end;

procedure TspdNFeXProperties.Set_EmailSenha(const Value: WideString);
  { Warning: The property EmailSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailSenha := Value;
end;

function TspdNFeXProperties.Get_FraseContingencia: WideString;
begin
    Result := DefaultInterface.FraseContingencia;
end;

procedure TspdNFeXProperties.Set_FraseContingencia(const Value: WideString);
  { Warning: The property FraseContingencia has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseContingencia := Value;
end;

function TspdNFeXProperties.Get_FraseHomologacao: WideString;
begin
    Result := DefaultInterface.FraseHomologacao;
end;

procedure TspdNFeXProperties.Set_FraseHomologacao(const Value: WideString);
  { Warning: The property FraseHomologacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseHomologacao := Value;
end;

function TspdNFeXProperties.Get_ModeloRetrato: WideString;
begin
    Result := DefaultInterface.ModeloRetrato;
end;

procedure TspdNFeXProperties.Set_ModeloRetrato(const Value: WideString);
  { Warning: The property ModeloRetrato has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetrato := Value;
end;

function TspdNFeXProperties.Get_ModeloPaisagem: WideString;
begin
    Result := DefaultInterface.ModeloPaisagem;
end;

procedure TspdNFeXProperties.Set_ModeloPaisagem(const Value: WideString);
  { Warning: The property ModeloPaisagem has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloPaisagem := Value;
end;

function TspdNFeXProperties.Get_VersaoManual: WideString;
begin
    Result := DefaultInterface.VersaoManual;
end;

procedure TspdNFeXProperties.Set_VersaoManual(const Value: WideString);
  { Warning: The property VersaoManual has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VersaoManual := Value;
end;

function TspdNFeXProperties.Get_AnexarDanfePDF: WordBool;
begin
    Result := DefaultInterface.AnexarDanfePDF;
end;

procedure TspdNFeXProperties.Set_AnexarDanfePDF(Value: WordBool);
begin
  DefaultInterface.Set_AnexarDanfePDF(Value);
end;

function TspdNFeXProperties.Get_QtdeCopias: Integer;
begin
    Result := DefaultInterface.QtdeCopias;
end;

procedure TspdNFeXProperties.Set_QtdeCopias(Value: Integer);
begin
  DefaultInterface.Set_QtdeCopias(Value);
end;

function TspdNFeXProperties.Get_EmailPorta: Integer;
begin
    Result := DefaultInterface.EmailPorta;
end;

procedure TspdNFeXProperties.Set_EmailPorta(Value: Integer);
begin
  DefaultInterface.Set_EmailPorta(Value);
end;

function TspdNFeXProperties.Get_LineDelimiter: WideString;
begin
    Result := DefaultInterface.LineDelimiter;
end;

procedure TspdNFeXProperties.Set_LineDelimiter(const Value: WideString);
  { Warning: The property LineDelimiter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LineDelimiter := Value;
end;

function TspdNFeXProperties.Get_IgnoreInvalidCertificates: WordBool;
begin
    Result := DefaultInterface.IgnoreInvalidCertificates;
end;

procedure TspdNFeXProperties.Set_IgnoreInvalidCertificates(Value: WordBool);
begin
  DefaultInterface.Set_IgnoreInvalidCertificates(Value);
end;

function TspdNFeXProperties.Get_Versao: WideString;
begin
    Result := DefaultInterface.Versao;
end;

function TspdNFeXProperties.Get_EmailTimeOut: Integer;
begin
    Result := DefaultInterface.EmailTimeOut;
end;

procedure TspdNFeXProperties.Set_EmailTimeOut(Value: Integer);
begin
  DefaultInterface.Set_EmailTimeOut(Value);
end;

function TspdNFeXProperties.Get_PINCODE: WideString;
begin
    Result := DefaultInterface.PINCODE;
end;

procedure TspdNFeXProperties.Set_PINCODE(const Value: WideString);
  { Warning: The property PINCODE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PINCODE := Value;
end;

function TspdNFeXProperties.Get_InfCplMaxCol: Integer;
begin
    Result := DefaultInterface.InfCplMaxCol;
end;

procedure TspdNFeXProperties.Set_InfCplMaxCol(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxCol(Value);
end;

function TspdNFeXProperties.Get_InfCplMaxRow: Integer;
begin
    Result := DefaultInterface.InfCplMaxRow;
end;

procedure TspdNFeXProperties.Set_InfCplMaxRow(Value: Integer);
begin
  DefaultInterface.Set_InfCplMaxRow(Value);
end;

function TspdNFeXProperties.Get_EmailCC: WideString;
begin
    Result := DefaultInterface.EmailCC;
end;

procedure TspdNFeXProperties.Set_EmailCC(const Value: WideString);
  { Warning: The property EmailCC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCC := Value;
end;

function TspdNFeXProperties.Get_EmailCCo: WideString;
begin
    Result := DefaultInterface.EmailCCo;
end;

procedure TspdNFeXProperties.Set_EmailCCo(const Value: WideString);
  { Warning: The property EmailCCo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailCCo := Value;
end;

function TspdNFeXProperties.Get_TimeOut: Integer;
begin
    Result := DefaultInterface.TimeOut;
end;

procedure TspdNFeXProperties.Set_TimeOut(Value: Integer);
begin
  DefaultInterface.Set_TimeOut(Value);
end;

function TspdNFeXProperties.Get_ModeloDanfeSimplificado: WideString;
begin
    Result := DefaultInterface.ModeloDanfeSimplificado;
end;

procedure TspdNFeXProperties.Set_ModeloDanfeSimplificado(const Value: WideString);
  { Warning: The property ModeloDanfeSimplificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloDanfeSimplificado := Value;
end;

function TspdNFeXProperties.Get_CaracteresRemoverAcentos: WideString;
begin
    Result := DefaultInterface.CaracteresRemoverAcentos;
end;

procedure TspdNFeXProperties.Set_CaracteresRemoverAcentos(const Value: WideString);
  { Warning: The property CaracteresRemoverAcentos has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaracteresRemoverAcentos := Value;
end;

function TspdNFeXProperties.Get_ImprimirVolume: WordBool;
begin
    Result := DefaultInterface.ImprimirVolume;
end;

procedure TspdNFeXProperties.Set_ImprimirVolume(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirVolume(Value);
end;

function TspdNFeXProperties.Get_ImprimirDuplicata: WordBool;
begin
    Result := DefaultInterface.ImprimirDuplicata;
end;

procedure TspdNFeXProperties.Set_ImprimirDuplicata(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirDuplicata(Value);
end;

function TspdNFeXProperties.Get_CaminhoCertificado: WideString;
begin
    Result := DefaultInterface.CaminhoCertificado;
end;

procedure TspdNFeXProperties.Set_CaminhoCertificado(const Value: WideString);
  { Warning: The property CaminhoCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CaminhoCertificado := Value;
end;

function TspdNFeXProperties.Get_SenhaCertificado: WideString;
begin
    Result := DefaultInterface.SenhaCertificado;
end;

procedure TspdNFeXProperties.Set_SenhaCertificado(const Value: WideString);
  { Warning: The property SenhaCertificado has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SenhaCertificado := Value;
end;

function TspdNFeXProperties.Get_ImprimirUnidadeTributada: WordBool;
begin
    Result := DefaultInterface.ImprimirUnidadeTributada;
end;

procedure TspdNFeXProperties.Set_ImprimirUnidadeTributada(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirUnidadeTributada(Value);
end;

function TspdNFeXProperties.Get_DiretorioLogErro: WideString;
begin
    Result := DefaultInterface.DiretorioLogErro;
end;

procedure TspdNFeXProperties.Set_DiretorioLogErro(const Value: WideString);
  { Warning: The property DiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLogErro := Value;
end;

function TspdNFeXProperties.Get_DiretorioTemporario: WideString;
begin
    Result := DefaultInterface.DiretorioTemporario;
end;

procedure TspdNFeXProperties.Set_DiretorioTemporario(const Value: WideString);
  { Warning: The property DiretorioTemporario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemporario := Value;
end;

function TspdNFeXProperties.Get_UltimoLogCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogCancelamento;
end;

procedure TspdNFeXProperties.Set_UltimoLogCancelamento(const Value: WideString);
  { Warning: The property UltimoLogCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogCancelamento := Value;
end;

function TspdNFeXProperties.Get_ModoOperacao: ModoOperacaoNFe;
begin
    Result := DefaultInterface.ModoOperacao;
end;

procedure TspdNFeXProperties.Set_ModoOperacao(Value: ModoOperacaoNFe);
begin
  DefaultInterface.Set_ModoOperacao(Value);
end;

function TspdNFeXProperties.Get_EmailConteudoHtml: WordBool;
begin
    Result := DefaultInterface.EmailConteudoHtml;
end;

procedure TspdNFeXProperties.Set_EmailConteudoHtml(Value: WordBool);
begin
  DefaultInterface.Set_EmailConteudoHtml(Value);
end;

function TspdNFeXProperties.Get_MensagemPartilhaAutomatica: WordBool;
begin
    Result := DefaultInterface.MensagemPartilhaAutomatica;
end;

procedure TspdNFeXProperties.Set_MensagemPartilhaAutomatica(Value: WordBool);
begin
  DefaultInterface.Set_MensagemPartilhaAutomatica(Value);
end;

function TspdNFeXProperties.Get_ImprimirObsCont: WordBool;
begin
    Result := DefaultInterface.ImprimirObsCont;
end;

procedure TspdNFeXProperties.Set_ImprimirObsCont(Value: WordBool);
begin
  DefaultInterface.Set_ImprimirObsCont(Value);
end;

function TspdNFeXProperties.Get_MensagemFCP: WordBool;
begin
    Result := DefaultInterface.MensagemFCP;
end;

procedure TspdNFeXProperties.Set_MensagemFCP(Value: WordBool);
begin
  DefaultInterface.Set_MensagemFCP(Value);
end;

function TspdNFeXProperties.Get_ImprimirFrenteVerso: ImprimirFrenteVerso;
begin
    Result := DefaultInterface.ImprimirFrenteVerso;
end;

procedure TspdNFeXProperties.Set_ImprimirFrenteVerso(Value: ImprimirFrenteVerso);
begin
  DefaultInterface.Set_ImprimirFrenteVerso(Value);
end;

function TspdNFeXProperties.Get_AtualizarArquivoServidores: WordBool;
begin
    Result := DefaultInterface.AtualizarArquivoServidores;
end;

procedure TspdNFeXProperties.Set_AtualizarArquivoServidores(Value: WordBool);
begin
  DefaultInterface.Set_AtualizarArquivoServidores(Value);
end;

function TspdNFeXProperties.Get_UltimoLogEnvio: WideString;
begin
    Result := DefaultInterface.UltimoLogEnvio;
end;

procedure TspdNFeXProperties.Set_UltimoLogEnvio(const Value: WideString);
  { Warning: The property UltimoLogEnvio has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogEnvio := Value;
end;

function TspdNFeXProperties.Get_UltimoLogConsRecibo: WideString;
begin
    Result := DefaultInterface.UltimoLogConsRecibo;
end;

procedure TspdNFeXProperties.Set_UltimoLogConsRecibo(const Value: WideString);
  { Warning: The property UltimoLogConsRecibo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogConsRecibo := Value;
end;

function TspdNFeXProperties.Get_DiretorioXmlDestinatario: WideString;
begin
    Result := DefaultInterface.DiretorioXmlDestinatario;
end;

procedure TspdNFeXProperties.Set_DiretorioXmlDestinatario(const Value: WideString);
  { Warning: The property DiretorioXmlDestinatario has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioXmlDestinatario := Value;
end;

function TspdNFeXProperties.Get_MaxSizeLoteEnvio: Integer;
begin
    Result := DefaultInterface.MaxSizeLoteEnvio;
end;

procedure TspdNFeXProperties.Set_MaxSizeLoteEnvio(Value: Integer);
begin
  DefaultInterface.Set_MaxSizeLoteEnvio(Value);
end;

function TspdNFeXProperties.Get_DanfeSimplificado: WordBool;
begin
    Result := DefaultInterface.DanfeSimplificado;
end;

procedure TspdNFeXProperties.Set_DanfeSimplificado(Value: WordBool);
begin
  DefaultInterface.Set_DanfeSimplificado(Value);
end;

function TspdNFeXProperties.Get_DiretorioDownloads: WideString;
begin
    Result := DefaultInterface.DiretorioDownloads;
end;

procedure TspdNFeXProperties.Set_DiretorioDownloads(const Value: WideString);
  { Warning: The property DiretorioDownloads has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioDownloads := Value;
end;

function TspdNFeXProperties.Get_UltimoLogRecibo: WideString;
begin
    Result := DefaultInterface.UltimoLogRecibo;
end;

procedure TspdNFeXProperties.Set_UltimoLogRecibo(const Value: WideString);
  { Warning: The property UltimoLogRecibo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogRecibo := Value;
end;

function TspdNFeXProperties.Get_UltimoLogReciboCancelamento: WideString;
begin
    Result := DefaultInterface.UltimoLogReciboCancelamento;
end;

procedure TspdNFeXProperties.Set_UltimoLogReciboCancelamento(const Value: WideString);
  { Warning: The property UltimoLogReciboCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogReciboCancelamento := Value;
end;

function TspdNFeXProperties.Get_ModeloRTMCCe: WideString;
begin
    Result := DefaultInterface.ModeloRTMCCe;
end;

procedure TspdNFeXProperties.Set_ModeloRTMCCe(const Value: WideString);
  { Warning: The property ModeloRTMCCe has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRTMCCe := Value;
end;

function TspdNFeXProperties.Get_EntregaXML: EntregaXML;
begin
    Result := DefaultInterface.EntregaXML;
end;

procedure TspdNFeXProperties.Set_EntregaXML(Value: EntregaXML);
begin
  DefaultInterface.Set_EntregaXML(Value);
end;

function TspdNFeXProperties.Get_NotaSeguraToken: WideString;
begin
    Result := DefaultInterface.NotaSeguraToken;
end;

procedure TspdNFeXProperties.Set_NotaSeguraToken(const Value: WideString);
  { Warning: The property NotaSeguraToken has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraToken := Value;
end;

function TspdNFeXProperties.Get_NotaSeguraLogin: WideString;
begin
    Result := DefaultInterface.NotaSeguraLogin;
end;

procedure TspdNFeXProperties.Set_NotaSeguraLogin(const Value: WideString);
  { Warning: The property NotaSeguraLogin has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraLogin := Value;
end;

function TspdNFeXProperties.Get_NotaSeguraSenha: WideString;
begin
    Result := DefaultInterface.NotaSeguraSenha;
end;

procedure TspdNFeXProperties.Set_NotaSeguraSenha(const Value: WideString);
  { Warning: The property NotaSeguraSenha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraSenha := Value;
end;

function TspdNFeXProperties.Get_NotaSeguraServidor: WideString;
begin
    Result := DefaultInterface.NotaSeguraServidor;
end;

procedure TspdNFeXProperties.Set_NotaSeguraServidor(const Value: WideString);
  { Warning: The property NotaSeguraServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NotaSeguraServidor := Value;
end;

function TspdNFeXProperties.Get_AuditorServidor: WideString;
begin
    Result := DefaultInterface.AuditorServidor;
end;

procedure TspdNFeXProperties.Set_AuditorServidor(const Value: WideString);
  { Warning: The property AuditorServidor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorServidor := Value;
end;

function TspdNFeXProperties.Get_AuditorExibirRegrasValidacao: WordBool;
begin
    Result := DefaultInterface.AuditorExibirRegrasValidacao;
end;

procedure TspdNFeXProperties.Set_AuditorExibirRegrasValidacao(Value: WordBool);
begin
  DefaultInterface.Set_AuditorExibirRegrasValidacao(Value);
end;

function TspdNFeXProperties.Get_AuditorCodigoProduto: Integer;
begin
    Result := DefaultInterface.AuditorCodigoProduto;
end;

procedure TspdNFeXProperties.Set_AuditorCodigoProduto(Value: Integer);
begin
  DefaultInterface.Set_AuditorCodigoProduto(Value);
end;

function TspdNFeXProperties.Get_AuditorEstagio: Estagio;
begin
    Result := DefaultInterface.AuditorEstagio;
end;

procedure TspdNFeXProperties.Set_AuditorEstagio(Value: Estagio);
begin
  DefaultInterface.Set_AuditorEstagio(Value);
end;

function TspdNFeXProperties.Get_AuditorTemplateHtml: WideString;
begin
    Result := DefaultInterface.AuditorTemplateHtml;
end;

procedure TspdNFeXProperties.Set_AuditorTemplateHtml(const Value: WideString);
  { Warning: The property AuditorTemplateHtml has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorTemplateHtml := Value;
end;

function TspdNFeXProperties.Get_AuditorHeigthHtml: Integer;
begin
    Result := DefaultInterface.AuditorHeigthHtml;
end;

procedure TspdNFeXProperties.Set_AuditorHeigthHtml(Value: Integer);
begin
  DefaultInterface.Set_AuditorHeigthHtml(Value);
end;

function TspdNFeXProperties.Get_AuditorWidthHtml: Integer;
begin
    Result := DefaultInterface.AuditorWidthHtml;
end;

procedure TspdNFeXProperties.Set_AuditorWidthHtml(Value: Integer);
begin
  DefaultInterface.Set_AuditorWidthHtml(Value);
end;

function TspdNFeXProperties.Get_AuditorHtmlBaseUrl: WideString;
begin
    Result := DefaultInterface.AuditorHtmlBaseUrl;
end;

procedure TspdNFeXProperties.Set_AuditorHtmlBaseUrl(const Value: WideString);
  { Warning: The property AuditorHtmlBaseUrl has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorHtmlBaseUrl := Value;
end;

function TspdNFeXProperties.Get_AuditorTipoResposta: TipoResposta;
begin
    Result := DefaultInterface.AuditorTipoResposta;
end;

procedure TspdNFeXProperties.Set_AuditorTipoResposta(Value: TipoResposta);
begin
  DefaultInterface.Set_AuditorTipoResposta(Value);
end;

function TspdNFeXProperties.Get_AuditorTotalRejeicao: WideString;
begin
    Result := DefaultInterface.AuditorTotalRejeicao;
end;

procedure TspdNFeXProperties.Set_AuditorTotalRejeicao(const Value: WideString);
  { Warning: The property AuditorTotalRejeicao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorTotalRejeicao := Value;
end;

function TspdNFeXProperties.Get_AuditorLinguagemResposta: LinguagemResposta;
begin
    Result := DefaultInterface.AuditorLinguagemResposta;
end;

procedure TspdNFeXProperties.Set_AuditorLinguagemResposta(Value: LinguagemResposta);
begin
  DefaultInterface.Set_AuditorLinguagemResposta(Value);
end;

function TspdNFeXProperties.Get_AuditorModoOperacao: ModoOperacao;
begin
    Result := DefaultInterface.AuditorModoOperacao;
end;

procedure TspdNFeXProperties.Set_AuditorModoOperacao(Value: ModoOperacao);
begin
  DefaultInterface.Set_AuditorModoOperacao(Value);
end;

function TspdNFeXProperties.Get_AuditorDiretorioEsquemas: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioEsquemas;
end;

procedure TspdNFeXProperties.Set_AuditorDiretorioEsquemas(const Value: WideString);
  { Warning: The property AuditorDiretorioEsquemas has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioEsquemas := Value;
end;

function TspdNFeXProperties.Get_AuditorDiretorioTemplates: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioTemplates;
end;

procedure TspdNFeXProperties.Set_AuditorDiretorioTemplates(const Value: WideString);
  { Warning: The property AuditorDiretorioTemplates has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioTemplates := Value;
end;

function TspdNFeXProperties.Get_AuditorDiretorioRegras: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioRegras;
end;

procedure TspdNFeXProperties.Set_AuditorDiretorioRegras(const Value: WideString);
  { Warning: The property AuditorDiretorioRegras has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioRegras := Value;
end;

function TspdNFeXProperties.Get_AuditorDiretorioLogErro: WideString;
begin
    Result := DefaultInterface.AuditorDiretorioLogErro;
end;

procedure TspdNFeXProperties.Set_AuditorDiretorioLogErro(const Value: WideString);
  { Warning: The property AuditorDiretorioLogErro has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorDiretorioLogErro := Value;
end;

function TspdNFeXProperties.Get_AuditorServidorProxy: WideString;
begin
    Result := DefaultInterface.AuditorServidorProxy;
end;

procedure TspdNFeXProperties.Set_AuditorServidorProxy(const Value: WideString);
  { Warning: The property AuditorServidorProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorServidorProxy := Value;
end;

function TspdNFeXProperties.Get_AuditorPortaProxy: Integer;
begin
    Result := DefaultInterface.AuditorPortaProxy;
end;

procedure TspdNFeXProperties.Set_AuditorPortaProxy(Value: Integer);
begin
  DefaultInterface.Set_AuditorPortaProxy(Value);
end;

function TspdNFeXProperties.Get_AuditorUsuarioProxy: WideString;
begin
    Result := DefaultInterface.AuditorUsuarioProxy;
end;

procedure TspdNFeXProperties.Set_AuditorUsuarioProxy(const Value: WideString);
  { Warning: The property AuditorUsuarioProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorUsuarioProxy := Value;
end;

function TspdNFeXProperties.Get_AuditorSenhaProxy: WideString;
begin
    Result := DefaultInterface.AuditorSenhaProxy;
end;

procedure TspdNFeXProperties.Set_AuditorSenhaProxy(const Value: WideString);
  { Warning: The property AuditorSenhaProxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuditorSenhaProxy := Value;
end;

function TspdNFeXProperties.Get_ConexaoSegura: WordBool;
begin
    Result := DefaultInterface.ConexaoSegura;
end;

procedure TspdNFeXProperties.Set_ConexaoSegura(Value: WordBool);
begin
  DefaultInterface.Set_ConexaoSegura(Value);
end;

function TspdNFeXProperties.Get_UltimoLogConsultarDFe: WideString;
begin
    Result := DefaultInterface.UltimoLogConsultarDFe;
end;

procedure TspdNFeXProperties.Set_UltimoLogConsultarDFe(const Value: WideString);
  { Warning: The property UltimoLogConsultarDFe has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogConsultarDFe := Value;
end;

function TspdNFeXProperties.Get_AuditorTimeOut: Integer;
begin
    Result := DefaultInterface.AuditorTimeOut;
end;

procedure TspdNFeXProperties.Set_AuditorTimeOut(Value: Integer);
begin
  DefaultInterface.Set_AuditorTimeOut(Value);
end;

function TspdNFeXProperties.Get_UltimoLogReciboInutilizacao: WideString;
begin
    Result := DefaultInterface.UltimoLogReciboInutilizacao;
end;

procedure TspdNFeXProperties.Set_UltimoLogReciboInutilizacao(const Value: WideString);
  { Warning: The property UltimoLogReciboInutilizacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogReciboInutilizacao := Value;
end;

function TspdNFeXProperties.Get_ModeloRetratoCancelamento: WideString;
begin
    Result := DefaultInterface.ModeloRetratoCancelamento;
end;

procedure TspdNFeXProperties.Set_ModeloRetratoCancelamento(const Value: WideString);
  { Warning: The property ModeloRetratoCancelamento has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetratoCancelamento := Value;
end;

function TspdNFeXProperties.Get_UltimoLogInutilizacao: WideString;
begin
    Result := DefaultInterface.UltimoLogInutilizacao;
end;

procedure TspdNFeXProperties.Set_UltimoLogInutilizacao(const Value: WideString);
  { Warning: The property UltimoLogInutilizacao has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UltimoLogInutilizacao := Value;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TspdCustomNFe, TspdNFeSCAN, TspdNFeDPECX, TspdNFeX]);
end;

end.
