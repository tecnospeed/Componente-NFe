Unit NFeX_1_0_TLB;

//  Imported NFeX on 22/02/2020 20:24:19 from C:\Windows\SysWow64\NFeX.dll

{$mode delphi}{$H+}

interface

// Dependency: stdole v2 (stdole2.pas)
//  Warning: 'GUID' not automatable in IspdCustomNFedisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdCustomNFedisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdCustomNFedisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IspdCustomNFedisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IspdCustomNFedisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IspdCustomNFedisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IspdCustomNFedisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IspdCustomNFedisp.Invoke
//  Warning: 'GUID' not automatable in IspdNFeXdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdNFeXdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdNFeXdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IspdNFeXdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IspdNFeXdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IspdNFeXdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IspdNFeXdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IspdNFeXdisp.Invoke
//  Warning: 'GUID' not automatable in IspdNFeSCANdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdNFeSCANdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdNFeSCANdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IspdNFeSCANdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IspdNFeSCANdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IspdNFeSCANdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IspdNFeSCANdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IspdNFeSCANdisp.Invoke
//  Warning: 'GUID' not automatable in IspdNFeDPECXdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdNFeDPECXdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdNFeDPECXdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IspdNFeDPECXdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IspdNFeDPECXdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IspdNFeDPECXdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IspdNFeDPECXdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IspdNFeDPECXdisp.Invoke
Uses
  Windows,ActiveX,Classes,Variants,stdole2;
Const
  NFeXMajorVersion = 1;
  NFeXMinorVersion = 0;
  NFeXLCID = 0;
  LIBID_NFeX : TGUID = '{D7C99CD2-F300-4EF5-A416-0302B9DD1F0C}';

  IID_IspdCustomNFe : TGUID = '{5899CB42-1105-48E8-9F33-FD9A5765FC2B}';
  CLASS_spdCustomNFe : TGUID = '{88716594-B22D-4544-BB86-CB9E6520E1F7}';
  IID_IspdNFeX : TGUID = '{7B83E236-4BC7-457D-92E7-B9CD2A5E6815}';
  IID_IspdNFeSCAN : TGUID = '{7B1CF680-E7AA-4BEC-99E5-C776E43386CA}';
  CLASS_spdNFeSCAN : TGUID = '{EF5F9D8B-C80D-4ACC-8B04-A5A00BA26C6D}';
  IID_IspdNFeDPECX : TGUID = '{54BAA9D8-BA38-404C-A766-F5BBC68D25DD}';
  CLASS_spdNFeDPECX : TGUID = '{95D879BC-F103-4F33-B4DE-B1E6BCC0A4B5}';
  CLASS_spdNFeX : TGUID = '{443DDDD3-7E78-44C6-865C-7984C9D2B08A}';

//Enums

Type
  Ambiente =LongWord;
Const
  akHomologacao = $0000000000000002;
  akProducao = $0000000000000001;
Type
  TipoCertificado =LongWord;
Const
  ckFile = $0000000000000000;
  ckSmartCard = $0000000000000001;
  ckMemory = $0000000000000002;
  ckLocalMashine = $0000000000000003;
  ckActiveDirectory = $0000000000000004;
Type
  ParamConsDPEC =LongWord;
Const
  pcChaveNFe = $0000000000000000;
  pcRegDPEC = $0000000000000001;
Type
  LayoutConv =LongWord;
Const
  lkDic = $0000000000000000;
  lkTx2 = $0000000000000001;
  lkRec = $0000000000000002;
Type
  EntregaXML =LongWord;
Const
  exEmail = $0000000000000000;
  exNotaSegura = $0000000000000001;
Type
  Estagio =LongWord;
Const
  esProducao = $0000000000000001;
  esTeste = $0000000000000002;
Type
  TipoResposta =LongWord;
Const
  trJSON = $0000000000000001;
  trTexto = $0000000000000000;
Type
  LinguagemResposta =LongWord;
Const
  tlHtml = $0000000000000000;
  tlJavaScript = $0000000000000001;
Type
  ModoOperacao =LongWord;
Const
  moLocal = $0000000000000000;
  moCliente = $0000000000000001;
Type
  TipoNSU =LongWord;
Const
  nkUltimo = $0000000000000000;
  nkEspecifico = $0000000000000001;
Type
  TipoPedidoProrrogacao =LongWord;
Const
  tEPP1 = $0000000000000000;
  tEPP2 = $0000000000000001;
Type
  TipoCancelamentoPedidoProrrogacao =LongWord;
Const
  tECPP1 = $0000000000000000;
  tECPP2 = $0000000000000001;
Type
  ModoOperacaoNFe =LongWord;
Const
  moNormal = $0000000000000000;
  moSVCAN = $0000000000000001;
  moSVCRS = $0000000000000002;
  moEPEC = $0000000000000003;
Type
  ImprimirFrenteVerso =LongWord;
Const
  fvDesabilitado = $0000000000000000;
  fvVertical = $0000000000000001;
  fvHorizontal = $0000000000000002;
//Forward declarations

Type
 IspdCustomNFe = interface;
 IspdCustomNFeDisp = dispinterface;
 IspdNFeX = interface;
 IspdNFeXDisp = dispinterface;
 IspdNFeSCAN = interface;
 IspdNFeSCANDisp = dispinterface;
 IspdNFeDPECX = interface;
 IspdNFeDPECXDisp = dispinterface;

//Map CoClass to its default interface

 spdCustomNFe = IspdCustomNFe;
 spdNFeSCAN = IspdNFeSCAN;
 spdNFeDPECX = IspdNFeDPECX;
 spdNFeX = IspdNFeX;

//records, unions, aliases


//interface declarations

// IspdCustomNFe : Interface for spdCustomNFe Object

 IspdCustomNFe = interface(IDispatch)
   ['{5899CB42-1105-48E8-9F33-FD9A5765FC2B}']
   function Get_DiretorioTemplates : WideString; safecall;
   procedure Set_DiretorioTemplates(const Value:WideString); safecall;
   function Get_NomeCertificado : WideString; safecall;
   procedure Set_NomeCertificado(const Value:WideString); safecall;
   function Get_TipoCertificado : TipoCertificado; safecall;
   procedure Set_TipoCertificado(const Value:TipoCertificado); safecall;
   function Get_Proxy : WideString; safecall;
   procedure Set_Proxy(const Value:WideString); safecall;
   function Get_Usuario : WideString; safecall;
   procedure Set_Usuario(const Value:WideString); safecall;
   function Get_ConfigINI : WideString; safecall;
   procedure Set_ConfigINI(const Value:WideString); safecall;
   function Get_SectionINI : WideString; safecall;
   procedure Set_SectionINI(const Value:WideString); safecall;
   function Get_Ambiente : Ambiente; safecall;
   procedure Set_Ambiente(const Value:Ambiente); safecall;
   function Get_ArquivoServidoresHom : WideString; safecall;
   procedure Set_ArquivoServidoresHom(const Value:WideString); safecall;
   function Get_ArquivoServidoresProd : WideString; safecall;
   procedure Set_ArquivoServidoresProd(const Value:WideString); safecall;
   function Get_DiretorioLog : WideString; safecall;
   procedure Set_DiretorioLog(const Value:WideString); safecall;
    // ListarCertificados :  
   function ListarCertificados(aDelimiter:WideString):WideString;safecall;
    // RemoverCertificado :  
   function RemoverCertificado(CertificateName:WideString):WordBool;safecall;
   function Get_ErrosValidador : WideString; safecall;
   procedure Set_ErrosValidador(const Value:WideString); safecall;
   function Get_Senha : WideString; safecall;
   procedure Set_Senha(const Value:WideString); safecall;
   function Get_LogotipoEmitente : WideString; safecall;
   procedure Set_LogotipoEmitente(const Value:WideString); safecall;
   function Get_UF : WideString; safecall;
   procedure Set_UF(const Value:WideString); safecall;
   function Get_CNPJ : WideString; safecall;
   procedure Set_CNPJ(const Value:WideString); safecall;
   function Get_DiretorioEsquemas : WideString; safecall;
   procedure Set_DiretorioEsquemas(const Value:WideString); safecall;
   function Get_ValidarEsquemaAntesEnvio : WordBool; safecall;
   procedure Set_ValidarEsquemaAntesEnvio(const Value:WordBool); safecall;
   function Get_EmailServidor : WideString; safecall;
   procedure Set_EmailServidor(const Value:WideString); safecall;
   function Get_EmailAutenticacao : WordBool; safecall;
   procedure Set_EmailAutenticacao(const Value:WordBool); safecall;
   function Get_EmailRemetente : WideString; safecall;
   procedure Set_EmailRemetente(const Value:WideString); safecall;
   function Get_EmailDestinatario : WideString; safecall;
   procedure Set_EmailDestinatario(const Value:WideString); safecall;
   function Get_EmailAssunto : WideString; safecall;
   procedure Set_EmailAssunto(const Value:WideString); safecall;
   function Get_EmailMensagem : WideString; safecall;
   procedure Set_EmailMensagem(const Value:WideString); safecall;
   function Get_EmailUsuario : WideString; safecall;
   procedure Set_EmailUsuario(const Value:WideString); safecall;
   function Get_EmailSenha : WideString; safecall;
   procedure Set_EmailSenha(const Value:WideString); safecall;
   function Get_FraseContingencia : WideString; safecall;
   procedure Set_FraseContingencia(const Value:WideString); safecall;
   function Get_FraseHomologacao : WideString; safecall;
   procedure Set_FraseHomologacao(const Value:WideString); safecall;
   function Get_ModeloRetrato : WideString; safecall;
   procedure Set_ModeloRetrato(const Value:WideString); safecall;
   function Get_ModeloPaisagem : WideString; safecall;
   procedure Set_ModeloPaisagem(const Value:WideString); safecall;
   function Get_VersaoManual : WideString; safecall;
   procedure Set_VersaoManual(const Value:WideString); safecall;
   function Get_AnexarDanfePDF : WordBool; safecall;
   procedure Set_AnexarDanfePDF(const Value:WordBool); safecall;
   function Get_QtdeCopias : Integer; safecall;
   procedure Set_QtdeCopias(const Value:Integer); safecall;
    // EmailAddCC :  
   procedure EmailAddCC(Email:WideString);safecall;
    // EmailAddCCO :  
   procedure EmailAddCCO(Email:WideString);safecall;
    // GetVencimentoCertificado :  
   function GetVencimentoCertificado:WideString;safecall;
   function Get_EmailPorta : Integer; safecall;
   procedure Set_EmailPorta(const Value:Integer); safecall;
   function Get_LineDelimiter : WideString; safecall;
   procedure Set_LineDelimiter(const Value:WideString); safecall;
   function Get_IgnoreInvalidCertificates : WordBool; safecall;
   procedure Set_IgnoreInvalidCertificates(const Value:WordBool); safecall;
    // SaveConfig :  
   procedure SaveConfig(aConfigFile:WideString);safecall;
   function Get_Versao : WideString; safecall;
   function Get_EmailTimeOut : Integer; safecall;
   procedure Set_EmailTimeOut(const Value:Integer); safecall;
   function Get_PINCODE : WideString; safecall;
   procedure Set_PINCODE(const Value:WideString); safecall;
   function Get_InfCplMaxCol : Integer; safecall;
   procedure Set_InfCplMaxCol(const Value:Integer); safecall;
   function Get_InfCplMaxRow : Integer; safecall;
   procedure Set_InfCplMaxRow(const Value:Integer); safecall;
   function Get_EmailCC : WideString; safecall;
   procedure Set_EmailCC(const Value:WideString); safecall;
   function Get_EmailCCo : WideString; safecall;
   procedure Set_EmailCCo(const Value:WideString); safecall;
   function Get_TimeOut : Integer; safecall;
   procedure Set_TimeOut(const Value:Integer); safecall;
   function Get_ModeloDanfeSimplificado : WideString; safecall;
   procedure Set_ModeloDanfeSimplificado(const Value:WideString); safecall;
   function Get_CaracteresRemoverAcentos : WideString; safecall;
   procedure Set_CaracteresRemoverAcentos(const Value:WideString); safecall;
   function Get_ImprimirVolume : WordBool; safecall;
   procedure Set_ImprimirVolume(const Value:WordBool); safecall;
   function Get_ImprimirDuplicata : WordBool; safecall;
   procedure Set_ImprimirDuplicata(const Value:WordBool); safecall;
   function Get_CaminhoCertificado : WideString; safecall;
   procedure Set_CaminhoCertificado(const Value:WideString); safecall;
   function Get_SenhaCertificado : WideString; safecall;
   procedure Set_SenhaCertificado(const Value:WideString); safecall;
   function Get_ImprimirUnidadeTributada : WordBool; safecall;
   procedure Set_ImprimirUnidadeTributada(const Value:WordBool); safecall;
   function Get_DiretorioLogErro : WideString; safecall;
   procedure Set_DiretorioLogErro(const Value:WideString); safecall;
   function Get_DiretorioTemporario : WideString; safecall;
   procedure Set_DiretorioTemporario(const Value:WideString); safecall;
   function Get_UltimoLogCancelamento : WideString; safecall;
   procedure Set_UltimoLogCancelamento(const Value:WideString); safecall;
   function Get_ModoOperacao : ModoOperacaoNFe; safecall;
   procedure Set_ModoOperacao(const Value:ModoOperacaoNFe); safecall;
   function Get_EmailConteudoHtml : WordBool; safecall;
   procedure Set_EmailConteudoHtml(const Value:WordBool); safecall;
   function Get_MensagemPartilhaAutomatica : WordBool; safecall;
   procedure Set_MensagemPartilhaAutomatica(const Value:WordBool); safecall;
   function Get_ImprimirObsCont : WordBool; safecall;
   procedure Set_ImprimirObsCont(const Value:WordBool); safecall;
   function Get_MensagemFCP : WordBool; safecall;
   procedure Set_MensagemFCP(const Value:WordBool); safecall;
    // GetValidadeInicialCertificado :  
   function GetValidadeInicialCertificado:WideString;safecall;
   function Get_ImprimirFrenteVerso : ImprimirFrenteVerso; safecall;
   procedure Set_ImprimirFrenteVerso(const Value:ImprimirFrenteVerso); safecall;
   function Get_AtualizarArquivoServidores : WordBool; safecall;
   procedure Set_AtualizarArquivoServidores(const Value:WordBool); safecall;
   function Get_IdCSRT : WideString; safecall;
   procedure Set_IdCSRT(const Value:WideString); safecall;
   function Get_CSRT : WideString; safecall;
   procedure Set_CSRT(const Value:WideString); safecall;
   function Get_ImprimirLocalRetiradaEntrega : WordBool; safecall;
   procedure Set_ImprimirLocalRetiradaEntrega(const Value:WordBool); safecall;
    // GetVencimentoCertificadoDataHora :  
   function GetVencimentoCertificadoDataHora:WideString;safecall;
    // DiretorioTemplates :  
   property DiretorioTemplates:WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    // NomeCertificado :  
   property NomeCertificado:WideString read Get_NomeCertificado write Set_NomeCertificado;
    // TipoCertificado :  
   property TipoCertificado:TipoCertificado read Get_TipoCertificado write Set_TipoCertificado;
    // Proxy :  
   property Proxy:WideString read Get_Proxy write Set_Proxy;
    // Usuario :  
   property Usuario:WideString read Get_Usuario write Set_Usuario;
    // ConfigINI :  
   property ConfigINI:WideString read Get_ConfigINI write Set_ConfigINI;
    // SectionINI :  
   property SectionINI:WideString read Get_SectionINI write Set_SectionINI;
    // Ambiente :  
   property Ambiente:Ambiente read Get_Ambiente write Set_Ambiente;
    // ArquivoServidoresHom :  
   property ArquivoServidoresHom:WideString read Get_ArquivoServidoresHom write Set_ArquivoServidoresHom;
    // ArquivoServidoresProd :  
   property ArquivoServidoresProd:WideString read Get_ArquivoServidoresProd write Set_ArquivoServidoresProd;
    // DiretorioLog :  
   property DiretorioLog:WideString read Get_DiretorioLog write Set_DiretorioLog;
    // ErrosValidador :  
   property ErrosValidador:WideString read Get_ErrosValidador write Set_ErrosValidador;
    // Senha :  
   property Senha:WideString read Get_Senha write Set_Senha;
    // LogotipoEmitente :  
   property LogotipoEmitente:WideString read Get_LogotipoEmitente write Set_LogotipoEmitente;
    // UF :  
   property UF:WideString read Get_UF write Set_UF;
    // CNPJ :  
   property CNPJ:WideString read Get_CNPJ write Set_CNPJ;
    // DiretorioEsquemas :  
   property DiretorioEsquemas:WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    // ValidarEsquemaAntesEnvio :  
   property ValidarEsquemaAntesEnvio:WordBool read Get_ValidarEsquemaAntesEnvio write Set_ValidarEsquemaAntesEnvio;
    // EmailServidor :  
   property EmailServidor:WideString read Get_EmailServidor write Set_EmailServidor;
    // EmailAutenticacao :  
   property EmailAutenticacao:WordBool read Get_EmailAutenticacao write Set_EmailAutenticacao;
    // EmailRemetente :  
   property EmailRemetente:WideString read Get_EmailRemetente write Set_EmailRemetente;
    // EmailDestinatario :  
   property EmailDestinatario:WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    // EmailAssunto :  
   property EmailAssunto:WideString read Get_EmailAssunto write Set_EmailAssunto;
    // EmailMensagem :  
   property EmailMensagem:WideString read Get_EmailMensagem write Set_EmailMensagem;
    // EmailUsuario :  
   property EmailUsuario:WideString read Get_EmailUsuario write Set_EmailUsuario;
    // EmailSenha :  
   property EmailSenha:WideString read Get_EmailSenha write Set_EmailSenha;
    // FraseContingencia :  
   property FraseContingencia:WideString read Get_FraseContingencia write Set_FraseContingencia;
    // FraseHomologacao :  
   property FraseHomologacao:WideString read Get_FraseHomologacao write Set_FraseHomologacao;
    // ModeloRetrato :  
   property ModeloRetrato:WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    // ModeloPaisagem :  
   property ModeloPaisagem:WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    // VersaoManual :  
   property VersaoManual:WideString read Get_VersaoManual write Set_VersaoManual;
    // AnexarDanfePDF :  
   property AnexarDanfePDF:WordBool read Get_AnexarDanfePDF write Set_AnexarDanfePDF;
    // QtdeCopias :  
   property QtdeCopias:Integer read Get_QtdeCopias write Set_QtdeCopias;
    // EmailPorta :  
   property EmailPorta:Integer read Get_EmailPorta write Set_EmailPorta;
    // LineDelimiter :  
   property LineDelimiter:WideString read Get_LineDelimiter write Set_LineDelimiter;
    // IgnoreInvalidCertificates :  
   property IgnoreInvalidCertificates:WordBool read Get_IgnoreInvalidCertificates write Set_IgnoreInvalidCertificates;
    // Versao :  
   property Versao:WideString read Get_Versao;
    // EmailTimeOut :  
   property EmailTimeOut:Integer read Get_EmailTimeOut write Set_EmailTimeOut;
    // PINCODE :  
   property PINCODE:WideString read Get_PINCODE write Set_PINCODE;
    // InfCplMaxCol :  
   property InfCplMaxCol:Integer read Get_InfCplMaxCol write Set_InfCplMaxCol;
    // InfCplMaxRow :  
   property InfCplMaxRow:Integer read Get_InfCplMaxRow write Set_InfCplMaxRow;
    // EmailCC :  
   property EmailCC:WideString read Get_EmailCC write Set_EmailCC;
    // EmailCCo :  
   property EmailCCo:WideString read Get_EmailCCo write Set_EmailCCo;
    // TimeOut :  
   property TimeOut:Integer read Get_TimeOut write Set_TimeOut;
    // ModeloDanfeSimplificado :  
   property ModeloDanfeSimplificado:WideString read Get_ModeloDanfeSimplificado write Set_ModeloDanfeSimplificado;
    // CaracteresRemoverAcentos :  
   property CaracteresRemoverAcentos:WideString read Get_CaracteresRemoverAcentos write Set_CaracteresRemoverAcentos;
    // ImprimirVolume :  
   property ImprimirVolume:WordBool read Get_ImprimirVolume write Set_ImprimirVolume;
    // ImprimirDuplicata :  
   property ImprimirDuplicata:WordBool read Get_ImprimirDuplicata write Set_ImprimirDuplicata;
    // CaminhoCertificado :  
   property CaminhoCertificado:WideString read Get_CaminhoCertificado write Set_CaminhoCertificado;
    // SenhaCertificado :  
   property SenhaCertificado:WideString read Get_SenhaCertificado write Set_SenhaCertificado;
    // ImprimirUnidadeTributada :  
   property ImprimirUnidadeTributada:WordBool read Get_ImprimirUnidadeTributada write Set_ImprimirUnidadeTributada;
    // DiretorioLogErro :  
   property DiretorioLogErro:WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
    // DiretorioTemporario :  
   property DiretorioTemporario:WideString read Get_DiretorioTemporario write Set_DiretorioTemporario;
    // UltimoLogCancelamento :  
   property UltimoLogCancelamento:WideString read Get_UltimoLogCancelamento write Set_UltimoLogCancelamento;
    // ModoOperacao :  
   property ModoOperacao:ModoOperacaoNFe read Get_ModoOperacao write Set_ModoOperacao;
    // EmailConteudoHtml :  
   property EmailConteudoHtml:WordBool read Get_EmailConteudoHtml write Set_EmailConteudoHtml;
    // MensagemPartilhaAutomatica :  
   property MensagemPartilhaAutomatica:WordBool read Get_MensagemPartilhaAutomatica write Set_MensagemPartilhaAutomatica;
    // ImprimirObsCont :  
   property ImprimirObsCont:WordBool read Get_ImprimirObsCont write Set_ImprimirObsCont;
    // MensagemFCP :  
   property MensagemFCP:WordBool read Get_MensagemFCP write Set_MensagemFCP;
    // ImprimirFrenteVerso :  
   property ImprimirFrenteVerso:ImprimirFrenteVerso read Get_ImprimirFrenteVerso write Set_ImprimirFrenteVerso;
    // AtualizarArquivoServidores :  
   property AtualizarArquivoServidores:WordBool read Get_AtualizarArquivoServidores write Set_AtualizarArquivoServidores;
    // IdCSRT :  
   property IdCSRT:WideString read Get_IdCSRT write Set_IdCSRT;
    // CSRT :  
   property CSRT:WideString read Get_CSRT write Set_CSRT;
    // ImprimirLocalRetiradaEntrega :  
   property ImprimirLocalRetiradaEntrega:WordBool read Get_ImprimirLocalRetiradaEntrega write Set_ImprimirLocalRetiradaEntrega;
  end;


// IspdCustomNFe : Interface for spdCustomNFe Object

 IspdCustomNFeDisp = dispinterface
   ['{5899CB42-1105-48E8-9F33-FD9A5765FC2B}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // ListarCertificados :  
   function ListarCertificados(aDelimiter:WideString):WideString;dispid 112;
    // RemoverCertificado :  
   function RemoverCertificado(CertificateName:WideString):WordBool;dispid 113;
    // EmailAddCC :  
   procedure EmailAddCC(Email:WideString);dispid 720;
    // EmailAddCCO :  
   procedure EmailAddCCO(Email:WideString);dispid 721;
    // GetVencimentoCertificado :  
   function GetVencimentoCertificado:WideString;dispid 900;
    // SaveConfig :  
   procedure SaveConfig(aConfigFile:WideString);dispid 909;
    // GetValidadeInicialCertificado :  
   function GetValidadeInicialCertificado:WideString;dispid 933;
    // GetVencimentoCertificadoDataHora :  
   function GetVencimentoCertificadoDataHora:WideString;dispid 938;
    // DiretorioTemplates :  
   property DiretorioTemplates:WideString dispid 101;
    // NomeCertificado :  
   property NomeCertificado:WideString dispid 102;
    // TipoCertificado :  
   property TipoCertificado:TipoCertificado dispid 103;
    // Proxy :  
   property Proxy:WideString dispid 104;
    // Usuario :  
   property Usuario:WideString dispid 105;
    // ConfigINI :  
   property ConfigINI:WideString dispid 106;
    // SectionINI :  
   property SectionINI:WideString dispid 107;
    // Ambiente :  
   property Ambiente:Ambiente dispid 108;
    // ArquivoServidoresHom :  
   property ArquivoServidoresHom:WideString dispid 109;
    // ArquivoServidoresProd :  
   property ArquivoServidoresProd:WideString dispid 110;
    // DiretorioLog :  
   property DiretorioLog:WideString dispid 111;
    // ErrosValidador :  
   property ErrosValidador:WideString dispid 500;
    // Senha :  
   property Senha:WideString dispid 580;
    // LogotipoEmitente :  
   property LogotipoEmitente:WideString dispid 700;
    // UF :  
   property UF:WideString dispid 701;
    // CNPJ :  
   property CNPJ:WideString dispid 702;
    // DiretorioEsquemas :  
   property DiretorioEsquemas:WideString dispid 703;
    // ValidarEsquemaAntesEnvio :  
   property ValidarEsquemaAntesEnvio:WordBool dispid 704;
    // EmailServidor :  
   property EmailServidor:WideString dispid 705;
    // EmailAutenticacao :  
   property EmailAutenticacao:WordBool dispid 706;
    // EmailRemetente :  
   property EmailRemetente:WideString dispid 707;
    // EmailDestinatario :  
   property EmailDestinatario:WideString dispid 708;
    // EmailAssunto :  
   property EmailAssunto:WideString dispid 709;
    // EmailMensagem :  
   property EmailMensagem:WideString dispid 710;
    // EmailUsuario :  
   property EmailUsuario:WideString dispid 711;
    // EmailSenha :  
   property EmailSenha:WideString dispid 712;
    // FraseContingencia :  
   property FraseContingencia:WideString dispid 713;
    // FraseHomologacao :  
   property FraseHomologacao:WideString dispid 714;
    // ModeloRetrato :  
   property ModeloRetrato:WideString dispid 715;
    // ModeloPaisagem :  
   property ModeloPaisagem:WideString dispid 716;
    // VersaoManual :  
   property VersaoManual:WideString dispid 717;
    // AnexarDanfePDF :  
   property AnexarDanfePDF:WordBool dispid 718;
    // QtdeCopias :  
   property QtdeCopias:Integer dispid 719;
    // EmailPorta :  
   property EmailPorta:Integer dispid 901;
    // LineDelimiter :  
   property LineDelimiter:WideString dispid 904;
    // IgnoreInvalidCertificates :  
   property IgnoreInvalidCertificates:WordBool dispid 907;
    // Versao :  
   property Versao:WideString  readonly dispid 911;
    // EmailTimeOut :  
   property EmailTimeOut:Integer dispid 912;
    // PINCODE :  
   property PINCODE:WideString dispid 913;
    // InfCplMaxCol :  
   property InfCplMaxCol:Integer dispid 914;
    // InfCplMaxRow :  
   property InfCplMaxRow:Integer dispid 915;
    // EmailCC :  
   property EmailCC:WideString dispid 916;
    // EmailCCo :  
   property EmailCCo:WideString dispid 917;
    // TimeOut :  
   property TimeOut:Integer dispid 918;
    // ModeloDanfeSimplificado :  
   property ModeloDanfeSimplificado:WideString dispid 920;
    // CaracteresRemoverAcentos :  
   property CaracteresRemoverAcentos:WideString dispid 921;
    // ImprimirVolume :  
   property ImprimirVolume:WordBool dispid 922;
    // ImprimirDuplicata :  
   property ImprimirDuplicata:WordBool dispid 923;
    // CaminhoCertificado :  
   property CaminhoCertificado:WideString dispid 924;
    // SenhaCertificado :  
   property SenhaCertificado:WideString dispid 925;
    // ImprimirUnidadeTributada :  
   property ImprimirUnidadeTributada:WordBool dispid 926;
    // DiretorioLogErro :  
   property DiretorioLogErro:WideString dispid 927;
    // DiretorioTemporario :  
   property DiretorioTemporario:WideString dispid 928;
    // UltimoLogCancelamento :  
   property UltimoLogCancelamento:WideString dispid 929;
    // ModoOperacao :  
   property ModoOperacao:ModoOperacaoNFe dispid 666;
    // EmailConteudoHtml :  
   property EmailConteudoHtml:WordBool dispid 345;
    // MensagemPartilhaAutomatica :  
   property MensagemPartilhaAutomatica:WordBool dispid 930;
    // ImprimirObsCont :  
   property ImprimirObsCont:WordBool dispid 931;
    // MensagemFCP :  
   property MensagemFCP:WordBool dispid 932;
    // ImprimirFrenteVerso :  
   property ImprimirFrenteVerso:ImprimirFrenteVerso dispid 934;
    // AtualizarArquivoServidores :  
   property AtualizarArquivoServidores:WordBool dispid 935;
    // IdCSRT :  
   property IdCSRT:WideString dispid 936;
    // CSRT :  
   property CSRT:WideString dispid 937;
    // ImprimirLocalRetiradaEntrega :  
   property ImprimirLocalRetiradaEntrega:WordBool dispid 376;
  end;


// IspdNFeX : Interface for spdNFeX Object

 IspdNFeX = interface(IspdCustomNFe)
   ['{7B83E236-4BC7-457D-92E7-B9CD2A5E6815}']
    // CalculaChaveNFe :  
   function CalculaChaveNFe(aDtEmissao:WideString;aUF:WideString;aCNPJ:WideString;aModelo:WideString;aSerie:WideString;aNRNota:WideString;aCodSistema:WideString;aTpEmis:WideString):WideString;safecall;
    // AssinarNota :  
   function AssinarNota(aXML:WideString):WideString;safecall;
    // GerarNotasAleatorias :  
   function GerarNotasAleatorias(Qtde:Integer;CNPJ:WideString):WideString;safecall;
    // ConverterLoteParaXML :  
   function ConverterLoteParaXML(ArquivoLoteTxt:WideString;aLayoutConv:LayoutConv;aVersaoEsquema:WideString):WideString;safecall;
    // StatusDoServico :  
   function StatusDoServico:WideString;safecall;
    // CancelarNF :  
   function CancelarNF(aNotaID:WideString;aNumProtocolo:WideString;aJustificativa:WideString):WideString;safecall;
    // ConsultarNF :  
   function ConsultarNF(aNotaID:WideString):WideString;safecall;
    // InutilizarNF :  
   function InutilizarNF(aNotaID:WideString;aAno:WideString;aCNPJ:WideString;aModelo:WideString;aSerie:WideString;aNFIni:WideString;aNFFin:WideString;aJustificativa:WideString):WideString;safecall;
    // EnviarNF :  
   function EnviarNF(aNumLote:WideString;aLoteNotas:WideString;aCompactado:WordBool):WideString;safecall;
    // ConsultarRecibo :  
   function ConsultarRecibo(aNumRecibo:WideString):WideString;safecall;
    // ConsultarCadastro :  
   function ConsultarCadastro(aDocumento:WideString;aTpDocumento:WideString;aUF:WideString):WideString;safecall;
    // VisualizarDanfe :  
   function VisualizarDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString):WideString;safecall;
    // ImprimirDanfe :  
   function ImprimirDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString;aImpressora:WideString):WideString;safecall;
    // EditarModeloDanfe :  
   function EditarModeloDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString):WideString;safecall;
    // ExportarDanfe :  
   function ExportarDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString;aFormato:Integer;aExportarParaArquivo:WideString):WideString;safecall;
    // EnviarEmailDanfe :  
   function EnviarEmailDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString):WideString;safecall;
    // LerLog :  
   function LerLog(aPathArquivoLog:WideString):WideString;safecall;
    // VisualizarDanfeLog :  
   function VisualizarDanfeLog(aPathArquivoLog:WideString):WideString;safecall;
    // GeraXMLEnvioDestinatario :  
   function GeraXMLEnvioDestinatario(aIdNFe:WideString;aLogEnvLote:WideString;aLogConsRecibo:WideString;aSalvarComo:WideString):WideString;safecall;
    // EnviarNotaDestinatario :  
   function EnviarNotaDestinatario(aIdNFe:WideString;aLogEnvio:WideString;aLogRecibo:WideString):WideString;safecall;
    // LoadConfig :  
   procedure LoadConfig(aConfigFile:WideString);safecall;
   function Get_UltimoLogEnvio : WideString; safecall;
   procedure Set_UltimoLogEnvio(const Value:WideString); safecall;
   function Get_UltimoLogConsRecibo : WideString; safecall;
   procedure Set_UltimoLogConsRecibo(const Value:WideString); safecall;
   function Get_DiretorioXmlDestinatario : WideString; safecall;
   procedure Set_DiretorioXmlDestinatario(const Value:WideString); safecall;
    // ValidarLoteParaEnvio :  
   function ValidarLoteParaEnvio(aNumLote:WideString;aLoteXml:WideString):WideString;safecall;
    // GerarXmlCancelamentoDestinatario :  
   function GerarXmlCancelamentoDestinatario(aIdNFe:WideString;aContentLogPedCanc:WideString;aContentLogRetCanc:WideString;aSalvarComo:WideString):WideString;safecall;
    // EnviarNotaCanceladaDestinatario :  
   function EnviarNotaCanceladaDestinatario(aIdNFe:WideString;aLogPedCanc:WideString;aLogRetCanc:WideString;aEmailDestinatario:WideString):WideString;safecall;
    // PreverDanfe :  
   function PreverDanfe(aLoteNotas:WideString;aArquivoModelo:WideString):WideString;safecall;
   function Get_MaxSizeLoteEnvio : Integer; safecall;
   procedure Set_MaxSizeLoteEnvio(const Value:Integer); safecall;
    // EnviarNotaDestinatarioAnexos :  
   function EnviarNotaDestinatarioAnexos(aArquivoPDF:WideString;aArquivoXML:WideString;aOutros:WideString):WideString;safecall;
    // ValidarArquivoXmlDestinatario :  
   function ValidarArquivoXmlDestinatario(aXML:WideString;var aErrorList:WideString):WordBool;safecall;
   function Get_DanfeSimplificado : WordBool; safecall;
   procedure Set_DanfeSimplificado(const Value:WordBool); safecall;
    // EnviarManifestacaoDestinatario :  
   function EnviarManifestacaoDestinatario(aTpEvento:Integer;aNotaID:WideString;aCNPJCPF:WideString;aJustificativa:WideString;aDataHoraEvento:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString;aCOrgao:WideString):WideString;safecall;
    // ConsultarNFDestinadas :  
   function ConsultarNFDestinadas(aIndNFe:Integer;aIndEmi:Integer;aUltNSU:WideString):WideString;safecall;
    // CancelarNFeEvento :  
   function CancelarNFeEvento(aNotaID:WideString;aNumProtocolo:WideString;aJustificativa:WideString;aDataHoraEvento:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString):WideString;safecall;
    // DownloadNFe :  
   function DownloadNFe(aChaves:WideString;aCOrgao:WideString):WideString;safecall;
   function Get_DiretorioDownloads : WideString; safecall;
   procedure Set_DiretorioDownloads(const Value:WideString); safecall;
    // EnviarCCe :  
   function EnviarCCe(aNotaID:WideString;aTextoCorrecao:WideString;aDataHoraEvento:WideString;aOrgao:WideString;aIdLote:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString):WideString;safecall;
    // GerarXMLCCeDestinatario :  
   function GerarXMLCCeDestinatario(aIDEvento:WideString;aLogEvento:WideString;aLogRetEvento:WideString;aSalvarComo:WideString):WideString;safecall;
    // EnviarCCeDestinatario :  
   procedure EnviarCCeDestinatario(aCCe:WideString);safecall;
    // ImprimirCCe :  
   procedure ImprimirCCe(aXmlCCe:WideString;aImpressora:WideString);safecall;
    // VisualizarCCe :  
   procedure VisualizarCCe(aXmlCCe:WideString);safecall;
    // EditarModeloCCe :  
   procedure EditarModeloCCe(aXmlCCe:WideString);safecall;
    // ExportarCCe :  
   procedure ExportarCCe(aXmlCCe:WideString;aSalvarComo:WideString);safecall;
    // CancelarNFeEventoIdLote :  
   function CancelarNFeEventoIdLote(aNotaID:WideString;aNumProtocolo:WideString;aJustificativa:WideString;aDataHoraEvento:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString;aIdLote:WideString):WideString;safecall;
    // GerarXmlManifestoDestinatario :  
   function GerarXmlManifestoDestinatario(aIDEvento:WideString;aLogEvento:WideString;aLogRetEvento:WideString;aSalvarComo:WideString):WideString;safecall;
    // ImprimirDanfeXmlDiretorio :  
   function ImprimirDanfeXmlDiretorio(aDiretorioXml:WideString;aArquivoModelo:WideString;aExportarArquivoPara:WideString;aImpressora:WideString):WideString;safecall;
   function Get_UltimoLogRecibo : WideString; safecall;
   procedure Set_UltimoLogRecibo(const Value:WideString); safecall;
    // ConverterLoteParaXMLExportacao :  
   function ConverterLoteParaXMLExportacao(aArquivoLoteTxt:WideString;aLayoutConv:LayoutConv;aVersaoEsquema:WideString;aExportacao:WordBool):WideString;safecall;
   function Get_UltimoLogReciboCancelamento : WideString; safecall;
   procedure Set_UltimoLogReciboCancelamento(const Value:WideString); safecall;
    // EnviarNFSincrono :  
   function EnviarNFSincrono(aNumLote:WideString;aLoteNota:WideString;aCompactado:WordBool):WideString;safecall;
    // GerarIDCCe :  
   function GerarIDCCe(aChaveNFe:WideString;aSeqEvento:Integer):WideString;safecall;
    // ExportarPreverDanfe :  
   procedure ExportarPreverDanfe(aLoteNotas:WideString;aArquivoModelo:WideString;aLocalNomeArquivo:WideString);safecall;
   function Get_ModeloRTMCCe : WideString; safecall;
   procedure Set_ModeloRTMCCe(const Value:WideString); safecall;
   function Get_EntregaXML : EntregaXML; safecall;
   procedure Set_EntregaXML(const Value:EntregaXML); safecall;
    // AuditarXml :  
   function AuditarXml(aXML:WideString;aDelimitador:WideString;aServidor:WideString;aExibirRegra:WordBool;aExibirHtml:WordBool;aParams:WideString):WideString;safecall;
   function Get_NotaSeguraToken : WideString; safecall;
   procedure Set_NotaSeguraToken(const Value:WideString); safecall;
   function Get_NotaSeguraLogin : WideString; safecall;
   procedure Set_NotaSeguraLogin(const Value:WideString); safecall;
   function Get_NotaSeguraSenha : WideString; safecall;
   procedure Set_NotaSeguraSenha(const Value:WideString); safecall;
   function Get_NotaSeguraServidor : WideString; safecall;
   procedure Set_NotaSeguraServidor(const Value:WideString); safecall;
   function Get_AuditorServidor : WideString; safecall;
   procedure Set_AuditorServidor(const Value:WideString); safecall;
   function Get_AuditorExibirRegrasValidacao : WordBool; safecall;
   procedure Set_AuditorExibirRegrasValidacao(const Value:WordBool); safecall;
   function Get_AuditorCodigoProduto : Integer; safecall;
   procedure Set_AuditorCodigoProduto(const Value:Integer); safecall;
   function Get_AuditorEstagio : Estagio; safecall;
   procedure Set_AuditorEstagio(const Value:Estagio); safecall;
   function Get_AuditorTemplateHtml : WideString; safecall;
   procedure Set_AuditorTemplateHtml(const Value:WideString); safecall;
   function Get_AuditorHeigthHtml : Integer; safecall;
   procedure Set_AuditorHeigthHtml(const Value:Integer); safecall;
   function Get_AuditorWidthHtml : Integer; safecall;
   procedure Set_AuditorWidthHtml(const Value:Integer); safecall;
   function Get_AuditorHtmlBaseUrl : WideString; safecall;
   procedure Set_AuditorHtmlBaseUrl(const Value:WideString); safecall;
   function Get_AuditorTipoResposta : TipoResposta; safecall;
   procedure Set_AuditorTipoResposta(const Value:TipoResposta); safecall;
   function Get_AuditorTotalRejeicao : WideString; safecall;
   procedure Set_AuditorTotalRejeicao(const Value:WideString); safecall;
   function Get_AuditorLinguagemResposta : LinguagemResposta; safecall;
   procedure Set_AuditorLinguagemResposta(const Value:LinguagemResposta); safecall;
   function Get_AuditorModoOperacao : ModoOperacao; safecall;
   procedure Set_AuditorModoOperacao(const Value:ModoOperacao); safecall;
   function Get_AuditorDiretorioEsquemas : WideString; safecall;
   procedure Set_AuditorDiretorioEsquemas(const Value:WideString); safecall;
   function Get_AuditorDiretorioTemplates : WideString; safecall;
   procedure Set_AuditorDiretorioTemplates(const Value:WideString); safecall;
   function Get_AuditorDiretorioRegras : WideString; safecall;
   procedure Set_AuditorDiretorioRegras(const Value:WideString); safecall;
   function Get_AuditorDiretorioLogErro : WideString; safecall;
   procedure Set_AuditorDiretorioLogErro(const Value:WideString); safecall;
    // AuditorValidarXml :  
   function AuditorValidarXml(aXML:WideString;aDelimitador:WideString):WideString;safecall;
    // AuditorShowHtml :  
   procedure AuditorShowHtml(aJSON:WideString);safecall;
    // AuditorDownloadRegras :  
   procedure AuditorDownloadRegras;safecall;
    // AuditorLoadConfig :  
   procedure AuditorLoadConfig(aConfiINI:WideString);safecall;
    // AuditorSaveConfig :  
   procedure AuditorSaveConfig(aConfiINI:WideString);safecall;
    // NotaSeguraEnviarXml :  
   function NotaSeguraEnviarXml(aXML:WideString):WideString;safecall;
    // EnviarEPEC :  
   function EnviarEPEC(aEPECAssinado:WideString):WideString;safecall;
    // AssinarEPEC :  
   function AssinarEPEC(aXMLEpec:WideString):WideString;safecall;
    // MontarEPEC :  
   function MontarEPEC(aIdLote:WideString;aXmlEnvio:WideString;aDHEvento:WideString;aFusoHorario:WideString):WideString;safecall;
   function Get_AuditorServidorProxy : WideString; safecall;
   procedure Set_AuditorServidorProxy(const Value:WideString); safecall;
   function Get_AuditorPortaProxy : Integer; safecall;
   procedure Set_AuditorPortaProxy(const Value:Integer); safecall;
   function Get_AuditorUsuarioProxy : WideString; safecall;
   procedure Set_AuditorUsuarioProxy(const Value:WideString); safecall;
   function Get_AuditorSenhaProxy : WideString; safecall;
   procedure Set_AuditorSenhaProxy(const Value:WideString); safecall;
    // GerarXMLEPECDestinatario :  
   function GerarXMLEPECDestinatario(aIDEvento:WideString;aLogEvento:WideString;aLogRetEvento:WideString;aSalvarComo:WideString):WideString;safecall;
    // ImprimirEPEC :  
   function ImprimirEPEC(aLoteNotas:WideString;aProtEPEC:WideString;aDataHoraEPEC:WideString;aArquivoModelo:WideString;aImpressora:WideString):WideString;safecall;
    // VisualizarEPEC :  
   function VisualizarEPEC(aLoteNotas:WideString;aProtEPEC:WideString;aDataHoraEPEC:WideString;aArquivoModelo:WideString):WideString;safecall;
    // ExportarEPEC :  
   function ExportarEPEC(aLoteNotas:WideString;aProtEPEC:WideString;aDataHoraEPEC:WideString;aArquivoModelo:WideString;aFormato:Integer;aExportarParaArquivo:WideString):WideString;safecall;
    // ConsultarDistribuicaoDFe :  
   function ConsultarDistribuicaoDFe(aCodigoUF:WideString;aCNPJCPF:WideString;aNSU:WideString;aTipoNSU:TipoNSU):WideString;safecall;
    // DescompactarXMLZip :  
   function DescompactarXMLZip(aXML:WideString):WideString;safecall;
   function Get_ConexaoSegura : WordBool; safecall;
   procedure Set_ConexaoSegura(const Value:WordBool); safecall;
   function Get_UltimoLogConsultarDFe : WideString; safecall;
   procedure Set_UltimoLogConsultarDFe(const Value:WideString); safecall;
    // EnviarPedidoProrrogacao :  
   function EnviarPedidoProrrogacao(aIdLote:WideString;aChaveNFe:WideString;aNumProtocolo:WideString;aDataHoraEvento:WideString;aOrgao:WideString;aTpEvento:TipoPedidoProrrogacao;aSequenciaEvento:SYSINT;aFusoHorario:WideString;aDelimiter:WideString):WideString;safecall;
    // CancelarPedidoProrrogacao :  
   function CancelarPedidoProrrogacao(aIdLote:WideString;aChaveNFe:WideString;aNumProtocolo:WideString;aDataHoraEvento:WideString;aTpEvento:TipoCancelamentoPedidoProrrogacao;aSequenciaEvento:SYSINT;aFusoHorario:WideString):WideString;safecall;
    // AdicionarItens :  
   procedure AdicionarItens(aNumItens:WideString;aQtdeItens:WideString);safecall;
   function Get_AuditorTimeOut : Integer; safecall;
   procedure Set_AuditorTimeOut(const Value:Integer); safecall;
    // ConsultarDistribuicaoDFeChave :  
   function ConsultarDistribuicaoDFeChave(aCodigoUF:WideString;aCNPJCPF:WideString;aChave:WideString):WideString;safecall;
   function Get_UltimoLogReciboInutilizacao : WideString; safecall;
   procedure Set_UltimoLogReciboInutilizacao(const Value:WideString); safecall;
   function Get_ModeloRetratoCancelamento : WideString; safecall;
   procedure Set_ModeloRetratoCancelamento(const Value:WideString); safecall;
   function Get_UltimoLogInutilizacao : WideString; safecall;
   procedure Set_UltimoLogInutilizacao(const Value:WideString); safecall;
    // CalculaSegCodBarra :  
   function CalculaSegCodBarra(cUF:WideString;tpEmis:WideString;CNPJ:WideString;vNF:WideString;ICMSp:WideString;ICMSs:WideString;DD:WideString):WideString;safecall;
    // TestarEmailConfig :  
   function TestarEmailConfig:WideString;safecall;
    // ConfigurarSoftwareHouse :  
   procedure ConfigurarSoftwareHouse(aCNPJSH:WideString;aKey:WideString);safecall;
    // CalculaChaveInutilizacao :  
   function CalculaChaveInutilizacao(aAno:WideString;aCNPJCPF:WideString;aModelo:WideString;aSerie:WideString;aNFIni:WideString;aNFFin:WideString):WideString;safecall;
   function Get_UltimoLogEnvioMde : WideString; safecall;
   procedure Set_UltimoLogEnvioMde(const Value:WideString); safecall;
   function Get_UltimoLogRetornoMde : WideString; safecall;
   procedure Set_UltimoLogRetornoMde(const Value:WideString); safecall;
   function Get_DiagnosticMode : WordBool; safecall;
   procedure Set_DiagnosticMode(const Value:WordBool); safecall;
    // ObterCodigoUF :  
   function ObterCodigoUF(aUF:WideString):Integer;safecall;
   function Get_HttpLibs : WideString; safecall;
   procedure Set_HttpLibs(const Value:WideString); safecall;
    // UltimoLogEnvio :  
   property UltimoLogEnvio:WideString read Get_UltimoLogEnvio write Set_UltimoLogEnvio;
    // UltimoLogConsRecibo :  
   property UltimoLogConsRecibo:WideString read Get_UltimoLogConsRecibo write Set_UltimoLogConsRecibo;
    // DiretorioXmlDestinatario :  
   property DiretorioXmlDestinatario:WideString read Get_DiretorioXmlDestinatario write Set_DiretorioXmlDestinatario;
    // MaxSizeLoteEnvio :  
   property MaxSizeLoteEnvio:Integer read Get_MaxSizeLoteEnvio write Set_MaxSizeLoteEnvio;
    // DanfeSimplificado :  
   property DanfeSimplificado:WordBool read Get_DanfeSimplificado write Set_DanfeSimplificado;
    // DiretorioDownloads :  
   property DiretorioDownloads:WideString read Get_DiretorioDownloads write Set_DiretorioDownloads;
    // UltimoLogRecibo :  
   property UltimoLogRecibo:WideString read Get_UltimoLogRecibo write Set_UltimoLogRecibo;
    // UltimoLogReciboCancelamento :  
   property UltimoLogReciboCancelamento:WideString read Get_UltimoLogReciboCancelamento write Set_UltimoLogReciboCancelamento;
    // ModeloRTMCCe :  
   property ModeloRTMCCe:WideString read Get_ModeloRTMCCe write Set_ModeloRTMCCe;
    // EntregaXML :  
   property EntregaXML:EntregaXML read Get_EntregaXML write Set_EntregaXML;
    // NotaSeguraToken :  
   property NotaSeguraToken:WideString read Get_NotaSeguraToken write Set_NotaSeguraToken;
    // NotaSeguraLogin :  
   property NotaSeguraLogin:WideString read Get_NotaSeguraLogin write Set_NotaSeguraLogin;
    // NotaSeguraSenha :  
   property NotaSeguraSenha:WideString read Get_NotaSeguraSenha write Set_NotaSeguraSenha;
    // NotaSeguraServidor :  
   property NotaSeguraServidor:WideString read Get_NotaSeguraServidor write Set_NotaSeguraServidor;
    // AuditorServidor :  
   property AuditorServidor:WideString read Get_AuditorServidor write Set_AuditorServidor;
    // AuditorExibirRegrasValidacao :  
   property AuditorExibirRegrasValidacao:WordBool read Get_AuditorExibirRegrasValidacao write Set_AuditorExibirRegrasValidacao;
    // AuditorCodigoProduto :  
   property AuditorCodigoProduto:Integer read Get_AuditorCodigoProduto write Set_AuditorCodigoProduto;
    // AuditorEstagio :  
   property AuditorEstagio:Estagio read Get_AuditorEstagio write Set_AuditorEstagio;
    // AuditorTemplateHtml :  
   property AuditorTemplateHtml:WideString read Get_AuditorTemplateHtml write Set_AuditorTemplateHtml;
    // AuditorHeigthHtml :  
   property AuditorHeigthHtml:Integer read Get_AuditorHeigthHtml write Set_AuditorHeigthHtml;
    // AuditorWidthHtml :  
   property AuditorWidthHtml:Integer read Get_AuditorWidthHtml write Set_AuditorWidthHtml;
    // AuditorHtmlBaseUrl :  
   property AuditorHtmlBaseUrl:WideString read Get_AuditorHtmlBaseUrl write Set_AuditorHtmlBaseUrl;
    // AuditorTipoResposta :  
   property AuditorTipoResposta:TipoResposta read Get_AuditorTipoResposta write Set_AuditorTipoResposta;
    // AuditorTotalRejeicao :  
   property AuditorTotalRejeicao:WideString read Get_AuditorTotalRejeicao write Set_AuditorTotalRejeicao;
    // AuditorLinguagemResposta :  
   property AuditorLinguagemResposta:LinguagemResposta read Get_AuditorLinguagemResposta write Set_AuditorLinguagemResposta;
    // AuditorModoOperacao :  
   property AuditorModoOperacao:ModoOperacao read Get_AuditorModoOperacao write Set_AuditorModoOperacao;
    // AuditorDiretorioEsquemas :  
   property AuditorDiretorioEsquemas:WideString read Get_AuditorDiretorioEsquemas write Set_AuditorDiretorioEsquemas;
    // AuditorDiretorioTemplates :  
   property AuditorDiretorioTemplates:WideString read Get_AuditorDiretorioTemplates write Set_AuditorDiretorioTemplates;
    // AuditorDiretorioRegras :  
   property AuditorDiretorioRegras:WideString read Get_AuditorDiretorioRegras write Set_AuditorDiretorioRegras;
    // AuditorDiretorioLogErro :  
   property AuditorDiretorioLogErro:WideString read Get_AuditorDiretorioLogErro write Set_AuditorDiretorioLogErro;
    // AuditorServidorProxy :  
   property AuditorServidorProxy:WideString read Get_AuditorServidorProxy write Set_AuditorServidorProxy;
    // AuditorPortaProxy :  
   property AuditorPortaProxy:Integer read Get_AuditorPortaProxy write Set_AuditorPortaProxy;
    // AuditorUsuarioProxy :  
   property AuditorUsuarioProxy:WideString read Get_AuditorUsuarioProxy write Set_AuditorUsuarioProxy;
    // AuditorSenhaProxy :  
   property AuditorSenhaProxy:WideString read Get_AuditorSenhaProxy write Set_AuditorSenhaProxy;
    // ConexaoSegura :  
   property ConexaoSegura:WordBool read Get_ConexaoSegura write Set_ConexaoSegura;
    // UltimoLogConsultarDFe :  
   property UltimoLogConsultarDFe:WideString read Get_UltimoLogConsultarDFe write Set_UltimoLogConsultarDFe;
    // AuditorTimeOut :  
   property AuditorTimeOut:Integer read Get_AuditorTimeOut write Set_AuditorTimeOut;
    // UltimoLogReciboInutilizacao :  
   property UltimoLogReciboInutilizacao:WideString read Get_UltimoLogReciboInutilizacao write Set_UltimoLogReciboInutilizacao;
    // ModeloRetratoCancelamento :  
   property ModeloRetratoCancelamento:WideString read Get_ModeloRetratoCancelamento write Set_ModeloRetratoCancelamento;
    // UltimoLogInutilizacao :  
   property UltimoLogInutilizacao:WideString read Get_UltimoLogInutilizacao write Set_UltimoLogInutilizacao;
    // UltimoLogEnvioMde :  
   property UltimoLogEnvioMde:WideString read Get_UltimoLogEnvioMde write Set_UltimoLogEnvioMde;
    // UltimoLogRetornoMde :  
   property UltimoLogRetornoMde:WideString read Get_UltimoLogRetornoMde write Set_UltimoLogRetornoMde;
    // DiagnosticMode :  
   property DiagnosticMode:WordBool read Get_DiagnosticMode write Set_DiagnosticMode;
    // HttpLibs :  
   property HttpLibs:WideString read Get_HttpLibs write Set_HttpLibs;
  end;


// IspdNFeX : Interface for spdNFeX Object

 IspdNFeXDisp = dispinterface
   ['{7B83E236-4BC7-457D-92E7-B9CD2A5E6815}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // ListarCertificados :  
   function ListarCertificados(aDelimiter:WideString):WideString;dispid 112;
    // RemoverCertificado :  
   function RemoverCertificado(CertificateName:WideString):WordBool;dispid 113;
    // EmailAddCC :  
   procedure EmailAddCC(Email:WideString);dispid 720;
    // EmailAddCCO :  
   procedure EmailAddCCO(Email:WideString);dispid 721;
    // GetVencimentoCertificado :  
   function GetVencimentoCertificado:WideString;dispid 900;
    // SaveConfig :  
   procedure SaveConfig(aConfigFile:WideString);dispid 909;
    // GetValidadeInicialCertificado :  
   function GetValidadeInicialCertificado:WideString;dispid 933;
    // GetVencimentoCertificadoDataHora :  
   function GetVencimentoCertificadoDataHora:WideString;dispid 938;
    // CalculaChaveNFe :  
   function CalculaChaveNFe(aDtEmissao:WideString;aUF:WideString;aCNPJ:WideString;aModelo:WideString;aSerie:WideString;aNRNota:WideString;aCodSistema:WideString;aTpEmis:WideString):WideString;dispid 214;
    // AssinarNota :  
   function AssinarNota(aXML:WideString):WideString;dispid 215;
    // GerarNotasAleatorias :  
   function GerarNotasAleatorias(Qtde:Integer;CNPJ:WideString):WideString;dispid 216;
    // ConverterLoteParaXML :  
   function ConverterLoteParaXML(ArquivoLoteTxt:WideString;aLayoutConv:LayoutConv;aVersaoEsquema:WideString):WideString;dispid 217;
    // StatusDoServico :  
   function StatusDoServico:WideString;dispid 218;
    // CancelarNF :  
   function CancelarNF(aNotaID:WideString;aNumProtocolo:WideString;aJustificativa:WideString):WideString;dispid 219;
    // ConsultarNF :  
   function ConsultarNF(aNotaID:WideString):WideString;dispid 220;
    // InutilizarNF :  
   function InutilizarNF(aNotaID:WideString;aAno:WideString;aCNPJ:WideString;aModelo:WideString;aSerie:WideString;aNFIni:WideString;aNFFin:WideString;aJustificativa:WideString):WideString;dispid 221;
    // EnviarNF :  
   function EnviarNF(aNumLote:WideString;aLoteNotas:WideString;aCompactado:WordBool):WideString;dispid 222;
    // ConsultarRecibo :  
   function ConsultarRecibo(aNumRecibo:WideString):WideString;dispid 223;
    // ConsultarCadastro :  
   function ConsultarCadastro(aDocumento:WideString;aTpDocumento:WideString;aUF:WideString):WideString;dispid 224;
    // VisualizarDanfe :  
   function VisualizarDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString):WideString;dispid 225;
    // ImprimirDanfe :  
   function ImprimirDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString;aImpressora:WideString):WideString;dispid 226;
    // EditarModeloDanfe :  
   function EditarModeloDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString):WideString;dispid 227;
    // ExportarDanfe :  
   function ExportarDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString;aFormato:Integer;aExportarParaArquivo:WideString):WideString;dispid 228;
    // EnviarEmailDanfe :  
   function EnviarEmailDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString):WideString;dispid 229;
    // LerLog :  
   function LerLog(aPathArquivoLog:WideString):WideString;dispid 230;
    // VisualizarDanfeLog :  
   function VisualizarDanfeLog(aPathArquivoLog:WideString):WideString;dispid 231;
    // GeraXMLEnvioDestinatario :  
   function GeraXMLEnvioDestinatario(aIdNFe:WideString;aLogEnvLote:WideString;aLogConsRecibo:WideString;aSalvarComo:WideString):WideString;dispid 232;
    // EnviarNotaDestinatario :  
   function EnviarNotaDestinatario(aIdNFe:WideString;aLogEnvio:WideString;aLogRecibo:WideString):WideString;dispid 233;
    // LoadConfig :  
   procedure LoadConfig(aConfigFile:WideString);dispid 234;
    // ValidarLoteParaEnvio :  
   function ValidarLoteParaEnvio(aNumLote:WideString;aLoteXml:WideString):WideString;dispid 613;
    // GerarXmlCancelamentoDestinatario :  
   function GerarXmlCancelamentoDestinatario(aIdNFe:WideString;aContentLogPedCanc:WideString;aContentLogRetCanc:WideString;aSalvarComo:WideString):WideString;dispid 902;
    // EnviarNotaCanceladaDestinatario :  
   function EnviarNotaCanceladaDestinatario(aIdNFe:WideString;aLogPedCanc:WideString;aLogRetCanc:WideString;aEmailDestinatario:WideString):WideString;dispid 903;
    // PreverDanfe :  
   function PreverDanfe(aLoteNotas:WideString;aArquivoModelo:WideString):WideString;dispid 905;
    // EnviarNotaDestinatarioAnexos :  
   function EnviarNotaDestinatarioAnexos(aArquivoPDF:WideString;aArquivoXML:WideString;aOutros:WideString):WideString;dispid 908;
    // ValidarArquivoXmlDestinatario :  
   function ValidarArquivoXmlDestinatario(aXML:WideString;var aErrorList:WideString):WordBool;dispid 919;
    // EnviarManifestacaoDestinatario :  
   function EnviarManifestacaoDestinatario(aTpEvento:Integer;aNotaID:WideString;aCNPJCPF:WideString;aJustificativa:WideString;aDataHoraEvento:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString;aCOrgao:WideString):WideString;dispid 952;
    // ConsultarNFDestinadas :  
   function ConsultarNFDestinadas(aIndNFe:Integer;aIndEmi:Integer;aUltNSU:WideString):WideString;dispid 953;
    // CancelarNFeEvento :  
   function CancelarNFeEvento(aNotaID:WideString;aNumProtocolo:WideString;aJustificativa:WideString;aDataHoraEvento:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString):WideString;dispid 954;
    // DownloadNFe :  
   function DownloadNFe(aChaves:WideString;aCOrgao:WideString):WideString;dispid 955;
    // EnviarCCe :  
   function EnviarCCe(aNotaID:WideString;aTextoCorrecao:WideString;aDataHoraEvento:WideString;aOrgao:WideString;aIdLote:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString):WideString;dispid 318;
    // GerarXMLCCeDestinatario :  
   function GerarXMLCCeDestinatario(aIDEvento:WideString;aLogEvento:WideString;aLogRetEvento:WideString;aSalvarComo:WideString):WideString;dispid 319;
    // EnviarCCeDestinatario :  
   procedure EnviarCCeDestinatario(aCCe:WideString);dispid 320;
    // ImprimirCCe :  
   procedure ImprimirCCe(aXmlCCe:WideString;aImpressora:WideString);dispid 321;
    // VisualizarCCe :  
   procedure VisualizarCCe(aXmlCCe:WideString);dispid 322;
    // EditarModeloCCe :  
   procedure EditarModeloCCe(aXmlCCe:WideString);dispid 323;
    // ExportarCCe :  
   procedure ExportarCCe(aXmlCCe:WideString;aSalvarComo:WideString);dispid 324;
    // CancelarNFeEventoIdLote :  
   function CancelarNFeEventoIdLote(aNotaID:WideString;aNumProtocolo:WideString;aJustificativa:WideString;aDataHoraEvento:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString;aIdLote:WideString):WideString;dispid 956;
    // GerarXmlManifestoDestinatario :  
   function GerarXmlManifestoDestinatario(aIDEvento:WideString;aLogEvento:WideString;aLogRetEvento:WideString;aSalvarComo:WideString):WideString;dispid 301;
    // ImprimirDanfeXmlDiretorio :  
   function ImprimirDanfeXmlDiretorio(aDiretorioXml:WideString;aArquivoModelo:WideString;aExportarArquivoPara:WideString;aImpressora:WideString):WideString;dispid 303;
    // ConverterLoteParaXMLExportacao :  
   function ConverterLoteParaXMLExportacao(aArquivoLoteTxt:WideString;aLayoutConv:LayoutConv;aVersaoEsquema:WideString;aExportacao:WordBool):WideString;dispid 325;
    // EnviarNFSincrono :  
   function EnviarNFSincrono(aNumLote:WideString;aLoteNota:WideString;aCompactado:WordBool):WideString;dispid 302;
    // GerarIDCCe :  
   function GerarIDCCe(aChaveNFe:WideString;aSeqEvento:Integer):WideString;dispid 305;
    // ExportarPreverDanfe :  
   procedure ExportarPreverDanfe(aLoteNotas:WideString;aArquivoModelo:WideString;aLocalNomeArquivo:WideString);dispid 306;
    // AuditarXml :  
   function AuditarXml(aXML:WideString;aDelimitador:WideString;aServidor:WideString;aExibirRegra:WordBool;aExibirHtml:WordBool;aParams:WideString):WideString;dispid 311;
    // AuditorValidarXml :  
   function AuditorValidarXml(aXML:WideString;aDelimitador:WideString):WideString;dispid 339;
    // AuditorShowHtml :  
   procedure AuditorShowHtml(aJSON:WideString);dispid 340;
    // AuditorDownloadRegras :  
   procedure AuditorDownloadRegras;dispid 341;
    // AuditorLoadConfig :  
   procedure AuditorLoadConfig(aConfiINI:WideString);dispid 342;
    // AuditorSaveConfig :  
   procedure AuditorSaveConfig(aConfiINI:WideString);dispid 343;
    // NotaSeguraEnviarXml :  
   function NotaSeguraEnviarXml(aXML:WideString):WideString;dispid 344;
    // EnviarEPEC :  
   function EnviarEPEC(aEPECAssinado:WideString):WideString;dispid 346;
    // AssinarEPEC :  
   function AssinarEPEC(aXMLEpec:WideString):WideString;dispid 347;
    // MontarEPEC :  
   function MontarEPEC(aIdLote:WideString;aXmlEnvio:WideString;aDHEvento:WideString;aFusoHorario:WideString):WideString;dispid 348;
    // GerarXMLEPECDestinatario :  
   function GerarXMLEPECDestinatario(aIDEvento:WideString;aLogEvento:WideString;aLogRetEvento:WideString;aSalvarComo:WideString):WideString;dispid 353;
    // ImprimirEPEC :  
   function ImprimirEPEC(aLoteNotas:WideString;aProtEPEC:WideString;aDataHoraEPEC:WideString;aArquivoModelo:WideString;aImpressora:WideString):WideString;dispid 354;
    // VisualizarEPEC :  
   function VisualizarEPEC(aLoteNotas:WideString;aProtEPEC:WideString;aDataHoraEPEC:WideString;aArquivoModelo:WideString):WideString;dispid 355;
    // ExportarEPEC :  
   function ExportarEPEC(aLoteNotas:WideString;aProtEPEC:WideString;aDataHoraEPEC:WideString;aArquivoModelo:WideString;aFormato:Integer;aExportarParaArquivo:WideString):WideString;dispid 356;
    // ConsultarDistribuicaoDFe :  
   function ConsultarDistribuicaoDFe(aCodigoUF:WideString;aCNPJCPF:WideString;aNSU:WideString;aTipoNSU:TipoNSU):WideString;dispid 357;
    // DescompactarXMLZip :  
   function DescompactarXMLZip(aXML:WideString):WideString;dispid 358;
    // EnviarPedidoProrrogacao :  
   function EnviarPedidoProrrogacao(aIdLote:WideString;aChaveNFe:WideString;aNumProtocolo:WideString;aDataHoraEvento:WideString;aOrgao:WideString;aTpEvento:TipoPedidoProrrogacao;aSequenciaEvento:SYSINT;aFusoHorario:WideString;aDelimiter:WideString):WideString;dispid 361;
    // CancelarPedidoProrrogacao :  
   function CancelarPedidoProrrogacao(aIdLote:WideString;aChaveNFe:WideString;aNumProtocolo:WideString;aDataHoraEvento:WideString;aTpEvento:TipoCancelamentoPedidoProrrogacao;aSequenciaEvento:SYSINT;aFusoHorario:WideString):WideString;dispid 362;
    // AdicionarItens :  
   procedure AdicionarItens(aNumItens:WideString;aQtdeItens:WideString);dispid 363;
    // ConsultarDistribuicaoDFeChave :  
   function ConsultarDistribuicaoDFeChave(aCodigoUF:WideString;aCNPJCPF:WideString;aChave:WideString):WideString;dispid 365;
    // CalculaSegCodBarra :  
   function CalculaSegCodBarra(cUF:WideString;tpEmis:WideString;CNPJ:WideString;vNF:WideString;ICMSp:WideString;ICMSs:WideString;DD:WideString):WideString;dispid 369;
    // TestarEmailConfig :  
   function TestarEmailConfig:WideString;dispid 370;
    // ConfigurarSoftwareHouse :  
   procedure ConfigurarSoftwareHouse(aCNPJSH:WideString;aKey:WideString);dispid 371;
    // CalculaChaveInutilizacao :  
   function CalculaChaveInutilizacao(aAno:WideString;aCNPJCPF:WideString;aModelo:WideString;aSerie:WideString;aNFIni:WideString;aNFFin:WideString):WideString;dispid 372;
    // ObterCodigoUF :  
   function ObterCodigoUF(aUF:WideString):Integer;dispid 377;
    // DiretorioTemplates :  
   property DiretorioTemplates:WideString dispid 101;
    // NomeCertificado :  
   property NomeCertificado:WideString dispid 102;
    // TipoCertificado :  
   property TipoCertificado:TipoCertificado dispid 103;
    // Proxy :  
   property Proxy:WideString dispid 104;
    // Usuario :  
   property Usuario:WideString dispid 105;
    // ConfigINI :  
   property ConfigINI:WideString dispid 106;
    // SectionINI :  
   property SectionINI:WideString dispid 107;
    // Ambiente :  
   property Ambiente:Ambiente dispid 108;
    // ArquivoServidoresHom :  
   property ArquivoServidoresHom:WideString dispid 109;
    // ArquivoServidoresProd :  
   property ArquivoServidoresProd:WideString dispid 110;
    // DiretorioLog :  
   property DiretorioLog:WideString dispid 111;
    // ErrosValidador :  
   property ErrosValidador:WideString dispid 500;
    // Senha :  
   property Senha:WideString dispid 580;
    // LogotipoEmitente :  
   property LogotipoEmitente:WideString dispid 700;
    // UF :  
   property UF:WideString dispid 701;
    // CNPJ :  
   property CNPJ:WideString dispid 702;
    // DiretorioEsquemas :  
   property DiretorioEsquemas:WideString dispid 703;
    // ValidarEsquemaAntesEnvio :  
   property ValidarEsquemaAntesEnvio:WordBool dispid 704;
    // EmailServidor :  
   property EmailServidor:WideString dispid 705;
    // EmailAutenticacao :  
   property EmailAutenticacao:WordBool dispid 706;
    // EmailRemetente :  
   property EmailRemetente:WideString dispid 707;
    // EmailDestinatario :  
   property EmailDestinatario:WideString dispid 708;
    // EmailAssunto :  
   property EmailAssunto:WideString dispid 709;
    // EmailMensagem :  
   property EmailMensagem:WideString dispid 710;
    // EmailUsuario :  
   property EmailUsuario:WideString dispid 711;
    // EmailSenha :  
   property EmailSenha:WideString dispid 712;
    // FraseContingencia :  
   property FraseContingencia:WideString dispid 713;
    // FraseHomologacao :  
   property FraseHomologacao:WideString dispid 714;
    // ModeloRetrato :  
   property ModeloRetrato:WideString dispid 715;
    // ModeloPaisagem :  
   property ModeloPaisagem:WideString dispid 716;
    // VersaoManual :  
   property VersaoManual:WideString dispid 717;
    // AnexarDanfePDF :  
   property AnexarDanfePDF:WordBool dispid 718;
    // QtdeCopias :  
   property QtdeCopias:Integer dispid 719;
    // EmailPorta :  
   property EmailPorta:Integer dispid 901;
    // LineDelimiter :  
   property LineDelimiter:WideString dispid 904;
    // IgnoreInvalidCertificates :  
   property IgnoreInvalidCertificates:WordBool dispid 907;
    // Versao :  
   property Versao:WideString  readonly dispid 911;
    // EmailTimeOut :  
   property EmailTimeOut:Integer dispid 912;
    // PINCODE :  
   property PINCODE:WideString dispid 913;
    // InfCplMaxCol :  
   property InfCplMaxCol:Integer dispid 914;
    // InfCplMaxRow :  
   property InfCplMaxRow:Integer dispid 915;
    // EmailCC :  
   property EmailCC:WideString dispid 916;
    // EmailCCo :  
   property EmailCCo:WideString dispid 917;
    // TimeOut :  
   property TimeOut:Integer dispid 918;
    // ModeloDanfeSimplificado :  
   property ModeloDanfeSimplificado:WideString dispid 920;
    // CaracteresRemoverAcentos :  
   property CaracteresRemoverAcentos:WideString dispid 921;
    // ImprimirVolume :  
   property ImprimirVolume:WordBool dispid 922;
    // ImprimirDuplicata :  
   property ImprimirDuplicata:WordBool dispid 923;
    // CaminhoCertificado :  
   property CaminhoCertificado:WideString dispid 924;
    // SenhaCertificado :  
   property SenhaCertificado:WideString dispid 925;
    // ImprimirUnidadeTributada :  
   property ImprimirUnidadeTributada:WordBool dispid 926;
    // DiretorioLogErro :  
   property DiretorioLogErro:WideString dispid 927;
    // DiretorioTemporario :  
   property DiretorioTemporario:WideString dispid 928;
    // UltimoLogCancelamento :  
   property UltimoLogCancelamento:WideString dispid 929;
    // ModoOperacao :  
   property ModoOperacao:ModoOperacaoNFe dispid 666;
    // EmailConteudoHtml :  
   property EmailConteudoHtml:WordBool dispid 345;
    // MensagemPartilhaAutomatica :  
   property MensagemPartilhaAutomatica:WordBool dispid 930;
    // ImprimirObsCont :  
   property ImprimirObsCont:WordBool dispid 931;
    // MensagemFCP :  
   property MensagemFCP:WordBool dispid 932;
    // ImprimirFrenteVerso :  
   property ImprimirFrenteVerso:ImprimirFrenteVerso dispid 934;
    // AtualizarArquivoServidores :  
   property AtualizarArquivoServidores:WordBool dispid 935;
    // IdCSRT :  
   property IdCSRT:WideString dispid 936;
    // CSRT :  
   property CSRT:WideString dispid 937;
    // ImprimirLocalRetiradaEntrega :  
   property ImprimirLocalRetiradaEntrega:WordBool dispid 376;
    // UltimoLogEnvio :  
   property UltimoLogEnvio:WideString dispid 501;
    // UltimoLogConsRecibo :  
   property UltimoLogConsRecibo:WideString dispid 502;
    // DiretorioXmlDestinatario :  
   property DiretorioXmlDestinatario:WideString dispid 611;
    // MaxSizeLoteEnvio :  
   property MaxSizeLoteEnvio:Integer dispid 906;
    // DanfeSimplificado :  
   property DanfeSimplificado:WordBool dispid 943;
    // DiretorioDownloads :  
   property DiretorioDownloads:WideString dispid 317;
    // UltimoLogRecibo :  
   property UltimoLogRecibo:WideString dispid 304;
    // UltimoLogReciboCancelamento :  
   property UltimoLogReciboCancelamento:WideString dispid 383;
    // ModeloRTMCCe :  
   property ModeloRTMCCe:WideString dispid 307;
    // EntregaXML :  
   property EntregaXML:EntregaXML dispid 310;
    // NotaSeguraToken :  
   property NotaSeguraToken:WideString dispid 308;
    // NotaSeguraLogin :  
   property NotaSeguraLogin:WideString dispid 309;
    // NotaSeguraSenha :  
   property NotaSeguraSenha:WideString dispid 312;
    // NotaSeguraServidor :  
   property NotaSeguraServidor:WideString dispid 313;
    // AuditorServidor :  
   property AuditorServidor:WideString dispid 314;
    // AuditorExibirRegrasValidacao :  
   property AuditorExibirRegrasValidacao:WordBool dispid 315;
    // AuditorCodigoProduto :  
   property AuditorCodigoProduto:Integer dispid 316;
    // AuditorEstagio :  
   property AuditorEstagio:Estagio dispid 326;
    // AuditorTemplateHtml :  
   property AuditorTemplateHtml:WideString dispid 327;
    // AuditorHeigthHtml :  
   property AuditorHeigthHtml:Integer dispid 328;
    // AuditorWidthHtml :  
   property AuditorWidthHtml:Integer dispid 329;
    // AuditorHtmlBaseUrl :  
   property AuditorHtmlBaseUrl:WideString dispid 330;
    // AuditorTipoResposta :  
   property AuditorTipoResposta:TipoResposta dispid 331;
    // AuditorTotalRejeicao :  
   property AuditorTotalRejeicao:WideString dispid 332;
    // AuditorLinguagemResposta :  
   property AuditorLinguagemResposta:LinguagemResposta dispid 333;
    // AuditorModoOperacao :  
   property AuditorModoOperacao:ModoOperacao dispid 334;
    // AuditorDiretorioEsquemas :  
   property AuditorDiretorioEsquemas:WideString dispid 335;
    // AuditorDiretorioTemplates :  
   property AuditorDiretorioTemplates:WideString dispid 336;
    // AuditorDiretorioRegras :  
   property AuditorDiretorioRegras:WideString dispid 337;
    // AuditorDiretorioLogErro :  
   property AuditorDiretorioLogErro:WideString dispid 338;
    // AuditorServidorProxy :  
   property AuditorServidorProxy:WideString dispid 349;
    // AuditorPortaProxy :  
   property AuditorPortaProxy:Integer dispid 350;
    // AuditorUsuarioProxy :  
   property AuditorUsuarioProxy:WideString dispid 351;
    // AuditorSenhaProxy :  
   property AuditorSenhaProxy:WideString dispid 352;
    // ConexaoSegura :  
   property ConexaoSegura:WordBool dispid 359;
    // UltimoLogConsultarDFe :  
   property UltimoLogConsultarDFe:WideString dispid 360;
    // AuditorTimeOut :  
   property AuditorTimeOut:Integer dispid 364;
    // UltimoLogReciboInutilizacao :  
   property UltimoLogReciboInutilizacao:WideString dispid 366;
    // ModeloRetratoCancelamento :  
   property ModeloRetratoCancelamento:WideString dispid 367;
    // UltimoLogInutilizacao :  
   property UltimoLogInutilizacao:WideString dispid 368;
    // UltimoLogEnvioMde :  
   property UltimoLogEnvioMde:WideString dispid 373;
    // UltimoLogRetornoMde :  
   property UltimoLogRetornoMde:WideString dispid 374;
    // DiagnosticMode :  
   property DiagnosticMode:WordBool dispid 375;
    // HttpLibs :  
   property HttpLibs:WideString dispid 378;
  end;


// IspdNFeSCAN : Interface for spdNFeSCAN Object

 IspdNFeSCAN = interface(IspdNFeX)
   ['{7B1CF680-E7AA-4BEC-99E5-C776E43386CA}']
   function Get_Serie : WideString; safecall;
   procedure Set_Serie(const Value:WideString); safecall;
   function Get_tpEmis : WideString; safecall;
   procedure Set_tpEmis(const Value:WideString); safecall;
    // Serie :  
   property Serie:WideString read Get_Serie write Set_Serie;
    // tpEmis :  
   property tpEmis:WideString read Get_tpEmis write Set_tpEmis;
  end;


// IspdNFeSCAN : Interface for spdNFeSCAN Object

 IspdNFeSCANDisp = dispinterface
   ['{7B1CF680-E7AA-4BEC-99E5-C776E43386CA}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // ListarCertificados :  
   function ListarCertificados(aDelimiter:WideString):WideString;dispid 112;
    // RemoverCertificado :  
   function RemoverCertificado(CertificateName:WideString):WordBool;dispid 113;
    // EmailAddCC :  
   procedure EmailAddCC(Email:WideString);dispid 720;
    // EmailAddCCO :  
   procedure EmailAddCCO(Email:WideString);dispid 721;
    // GetVencimentoCertificado :  
   function GetVencimentoCertificado:WideString;dispid 900;
    // SaveConfig :  
   procedure SaveConfig(aConfigFile:WideString);dispid 909;
    // GetValidadeInicialCertificado :  
   function GetValidadeInicialCertificado:WideString;dispid 933;
    // GetVencimentoCertificadoDataHora :  
   function GetVencimentoCertificadoDataHora:WideString;dispid 938;
    // CalculaChaveNFe :  
   function CalculaChaveNFe(aDtEmissao:WideString;aUF:WideString;aCNPJ:WideString;aModelo:WideString;aSerie:WideString;aNRNota:WideString;aCodSistema:WideString;aTpEmis:WideString):WideString;dispid 214;
    // AssinarNota :  
   function AssinarNota(aXML:WideString):WideString;dispid 215;
    // GerarNotasAleatorias :  
   function GerarNotasAleatorias(Qtde:Integer;CNPJ:WideString):WideString;dispid 216;
    // ConverterLoteParaXML :  
   function ConverterLoteParaXML(ArquivoLoteTxt:WideString;aLayoutConv:LayoutConv;aVersaoEsquema:WideString):WideString;dispid 217;
    // StatusDoServico :  
   function StatusDoServico:WideString;dispid 218;
    // CancelarNF :  
   function CancelarNF(aNotaID:WideString;aNumProtocolo:WideString;aJustificativa:WideString):WideString;dispid 219;
    // ConsultarNF :  
   function ConsultarNF(aNotaID:WideString):WideString;dispid 220;
    // InutilizarNF :  
   function InutilizarNF(aNotaID:WideString;aAno:WideString;aCNPJ:WideString;aModelo:WideString;aSerie:WideString;aNFIni:WideString;aNFFin:WideString;aJustificativa:WideString):WideString;dispid 221;
    // EnviarNF :  
   function EnviarNF(aNumLote:WideString;aLoteNotas:WideString;aCompactado:WordBool):WideString;dispid 222;
    // ConsultarRecibo :  
   function ConsultarRecibo(aNumRecibo:WideString):WideString;dispid 223;
    // ConsultarCadastro :  
   function ConsultarCadastro(aDocumento:WideString;aTpDocumento:WideString;aUF:WideString):WideString;dispid 224;
    // VisualizarDanfe :  
   function VisualizarDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString):WideString;dispid 225;
    // ImprimirDanfe :  
   function ImprimirDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString;aImpressora:WideString):WideString;dispid 226;
    // EditarModeloDanfe :  
   function EditarModeloDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString):WideString;dispid 227;
    // ExportarDanfe :  
   function ExportarDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString;aFormato:Integer;aExportarParaArquivo:WideString):WideString;dispid 228;
    // EnviarEmailDanfe :  
   function EnviarEmailDanfe(aNumLote:WideString;aLoteNotas:WideString;aArquivoModelo:WideString):WideString;dispid 229;
    // LerLog :  
   function LerLog(aPathArquivoLog:WideString):WideString;dispid 230;
    // VisualizarDanfeLog :  
   function VisualizarDanfeLog(aPathArquivoLog:WideString):WideString;dispid 231;
    // GeraXMLEnvioDestinatario :  
   function GeraXMLEnvioDestinatario(aIdNFe:WideString;aLogEnvLote:WideString;aLogConsRecibo:WideString;aSalvarComo:WideString):WideString;dispid 232;
    // EnviarNotaDestinatario :  
   function EnviarNotaDestinatario(aIdNFe:WideString;aLogEnvio:WideString;aLogRecibo:WideString):WideString;dispid 233;
    // LoadConfig :  
   procedure LoadConfig(aConfigFile:WideString);dispid 234;
    // ValidarLoteParaEnvio :  
   function ValidarLoteParaEnvio(aNumLote:WideString;aLoteXml:WideString):WideString;dispid 613;
    // GerarXmlCancelamentoDestinatario :  
   function GerarXmlCancelamentoDestinatario(aIdNFe:WideString;aContentLogPedCanc:WideString;aContentLogRetCanc:WideString;aSalvarComo:WideString):WideString;dispid 902;
    // EnviarNotaCanceladaDestinatario :  
   function EnviarNotaCanceladaDestinatario(aIdNFe:WideString;aLogPedCanc:WideString;aLogRetCanc:WideString;aEmailDestinatario:WideString):WideString;dispid 903;
    // PreverDanfe :  
   function PreverDanfe(aLoteNotas:WideString;aArquivoModelo:WideString):WideString;dispid 905;
    // EnviarNotaDestinatarioAnexos :  
   function EnviarNotaDestinatarioAnexos(aArquivoPDF:WideString;aArquivoXML:WideString;aOutros:WideString):WideString;dispid 908;
    // ValidarArquivoXmlDestinatario :  
   function ValidarArquivoXmlDestinatario(aXML:WideString;var aErrorList:WideString):WordBool;dispid 919;
    // EnviarManifestacaoDestinatario :  
   function EnviarManifestacaoDestinatario(aTpEvento:Integer;aNotaID:WideString;aCNPJCPF:WideString;aJustificativa:WideString;aDataHoraEvento:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString;aCOrgao:WideString):WideString;dispid 952;
    // ConsultarNFDestinadas :  
   function ConsultarNFDestinadas(aIndNFe:Integer;aIndEmi:Integer;aUltNSU:WideString):WideString;dispid 953;
    // CancelarNFeEvento :  
   function CancelarNFeEvento(aNotaID:WideString;aNumProtocolo:WideString;aJustificativa:WideString;aDataHoraEvento:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString):WideString;dispid 954;
    // DownloadNFe :  
   function DownloadNFe(aChaves:WideString;aCOrgao:WideString):WideString;dispid 955;
    // EnviarCCe :  
   function EnviarCCe(aNotaID:WideString;aTextoCorrecao:WideString;aDataHoraEvento:WideString;aOrgao:WideString;aIdLote:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString):WideString;dispid 318;
    // GerarXMLCCeDestinatario :  
   function GerarXMLCCeDestinatario(aIDEvento:WideString;aLogEvento:WideString;aLogRetEvento:WideString;aSalvarComo:WideString):WideString;dispid 319;
    // EnviarCCeDestinatario :  
   procedure EnviarCCeDestinatario(aCCe:WideString);dispid 320;
    // ImprimirCCe :  
   procedure ImprimirCCe(aXmlCCe:WideString;aImpressora:WideString);dispid 321;
    // VisualizarCCe :  
   procedure VisualizarCCe(aXmlCCe:WideString);dispid 322;
    // EditarModeloCCe :  
   procedure EditarModeloCCe(aXmlCCe:WideString);dispid 323;
    // ExportarCCe :  
   procedure ExportarCCe(aXmlCCe:WideString;aSalvarComo:WideString);dispid 324;
    // CancelarNFeEventoIdLote :  
   function CancelarNFeEventoIdLote(aNotaID:WideString;aNumProtocolo:WideString;aJustificativa:WideString;aDataHoraEvento:WideString;aSequenciaEvento:Integer;aFusoHorario:WideString;aIdLote:WideString):WideString;dispid 956;
    // GerarXmlManifestoDestinatario :  
   function GerarXmlManifestoDestinatario(aIDEvento:WideString;aLogEvento:WideString;aLogRetEvento:WideString;aSalvarComo:WideString):WideString;dispid 301;
    // ImprimirDanfeXmlDiretorio :  
   function ImprimirDanfeXmlDiretorio(aDiretorioXml:WideString;aArquivoModelo:WideString;aExportarArquivoPara:WideString;aImpressora:WideString):WideString;dispid 303;
    // ConverterLoteParaXMLExportacao :  
   function ConverterLoteParaXMLExportacao(aArquivoLoteTxt:WideString;aLayoutConv:LayoutConv;aVersaoEsquema:WideString;aExportacao:WordBool):WideString;dispid 325;
    // EnviarNFSincrono :  
   function EnviarNFSincrono(aNumLote:WideString;aLoteNota:WideString;aCompactado:WordBool):WideString;dispid 302;
    // GerarIDCCe :  
   function GerarIDCCe(aChaveNFe:WideString;aSeqEvento:Integer):WideString;dispid 305;
    // ExportarPreverDanfe :  
   procedure ExportarPreverDanfe(aLoteNotas:WideString;aArquivoModelo:WideString;aLocalNomeArquivo:WideString);dispid 306;
    // AuditarXml :  
   function AuditarXml(aXML:WideString;aDelimitador:WideString;aServidor:WideString;aExibirRegra:WordBool;aExibirHtml:WordBool;aParams:WideString):WideString;dispid 311;
    // AuditorValidarXml :  
   function AuditorValidarXml(aXML:WideString;aDelimitador:WideString):WideString;dispid 339;
    // AuditorShowHtml :  
   procedure AuditorShowHtml(aJSON:WideString);dispid 340;
    // AuditorDownloadRegras :  
   procedure AuditorDownloadRegras;dispid 341;
    // AuditorLoadConfig :  
   procedure AuditorLoadConfig(aConfiINI:WideString);dispid 342;
    // AuditorSaveConfig :  
   procedure AuditorSaveConfig(aConfiINI:WideString);dispid 343;
    // NotaSeguraEnviarXml :  
   function NotaSeguraEnviarXml(aXML:WideString):WideString;dispid 344;
    // EnviarEPEC :  
   function EnviarEPEC(aEPECAssinado:WideString):WideString;dispid 346;
    // AssinarEPEC :  
   function AssinarEPEC(aXMLEpec:WideString):WideString;dispid 347;
    // MontarEPEC :  
   function MontarEPEC(aIdLote:WideString;aXmlEnvio:WideString;aDHEvento:WideString;aFusoHorario:WideString):WideString;dispid 348;
    // GerarXMLEPECDestinatario :  
   function GerarXMLEPECDestinatario(aIDEvento:WideString;aLogEvento:WideString;aLogRetEvento:WideString;aSalvarComo:WideString):WideString;dispid 353;
    // ImprimirEPEC :  
   function ImprimirEPEC(aLoteNotas:WideString;aProtEPEC:WideString;aDataHoraEPEC:WideString;aArquivoModelo:WideString;aImpressora:WideString):WideString;dispid 354;
    // VisualizarEPEC :  
   function VisualizarEPEC(aLoteNotas:WideString;aProtEPEC:WideString;aDataHoraEPEC:WideString;aArquivoModelo:WideString):WideString;dispid 355;
    // ExportarEPEC :  
   function ExportarEPEC(aLoteNotas:WideString;aProtEPEC:WideString;aDataHoraEPEC:WideString;aArquivoModelo:WideString;aFormato:Integer;aExportarParaArquivo:WideString):WideString;dispid 356;
    // ConsultarDistribuicaoDFe :  
   function ConsultarDistribuicaoDFe(aCodigoUF:WideString;aCNPJCPF:WideString;aNSU:WideString;aTipoNSU:TipoNSU):WideString;dispid 357;
    // DescompactarXMLZip :  
   function DescompactarXMLZip(aXML:WideString):WideString;dispid 358;
    // EnviarPedidoProrrogacao :  
   function EnviarPedidoProrrogacao(aIdLote:WideString;aChaveNFe:WideString;aNumProtocolo:WideString;aDataHoraEvento:WideString;aOrgao:WideString;aTpEvento:TipoPedidoProrrogacao;aSequenciaEvento:SYSINT;aFusoHorario:WideString;aDelimiter:WideString):WideString;dispid 361;
    // CancelarPedidoProrrogacao :  
   function CancelarPedidoProrrogacao(aIdLote:WideString;aChaveNFe:WideString;aNumProtocolo:WideString;aDataHoraEvento:WideString;aTpEvento:TipoCancelamentoPedidoProrrogacao;aSequenciaEvento:SYSINT;aFusoHorario:WideString):WideString;dispid 362;
    // AdicionarItens :  
   procedure AdicionarItens(aNumItens:WideString;aQtdeItens:WideString);dispid 363;
    // ConsultarDistribuicaoDFeChave :  
   function ConsultarDistribuicaoDFeChave(aCodigoUF:WideString;aCNPJCPF:WideString;aChave:WideString):WideString;dispid 365;
    // CalculaSegCodBarra :  
   function CalculaSegCodBarra(cUF:WideString;tpEmis:WideString;CNPJ:WideString;vNF:WideString;ICMSp:WideString;ICMSs:WideString;DD:WideString):WideString;dispid 369;
    // TestarEmailConfig :  
   function TestarEmailConfig:WideString;dispid 370;
    // ConfigurarSoftwareHouse :  
   procedure ConfigurarSoftwareHouse(aCNPJSH:WideString;aKey:WideString);dispid 371;
    // CalculaChaveInutilizacao :  
   function CalculaChaveInutilizacao(aAno:WideString;aCNPJCPF:WideString;aModelo:WideString;aSerie:WideString;aNFIni:WideString;aNFFin:WideString):WideString;dispid 372;
    // ObterCodigoUF :  
   function ObterCodigoUF(aUF:WideString):Integer;dispid 377;
    // DiretorioTemplates :  
   property DiretorioTemplates:WideString dispid 101;
    // NomeCertificado :  
   property NomeCertificado:WideString dispid 102;
    // TipoCertificado :  
   property TipoCertificado:TipoCertificado dispid 103;
    // Proxy :  
   property Proxy:WideString dispid 104;
    // Usuario :  
   property Usuario:WideString dispid 105;
    // ConfigINI :  
   property ConfigINI:WideString dispid 106;
    // SectionINI :  
   property SectionINI:WideString dispid 107;
    // Ambiente :  
   property Ambiente:Ambiente dispid 108;
    // ArquivoServidoresHom :  
   property ArquivoServidoresHom:WideString dispid 109;
    // ArquivoServidoresProd :  
   property ArquivoServidoresProd:WideString dispid 110;
    // DiretorioLog :  
   property DiretorioLog:WideString dispid 111;
    // ErrosValidador :  
   property ErrosValidador:WideString dispid 500;
    // Senha :  
   property Senha:WideString dispid 580;
    // LogotipoEmitente :  
   property LogotipoEmitente:WideString dispid 700;
    // UF :  
   property UF:WideString dispid 701;
    // CNPJ :  
   property CNPJ:WideString dispid 702;
    // DiretorioEsquemas :  
   property DiretorioEsquemas:WideString dispid 703;
    // ValidarEsquemaAntesEnvio :  
   property ValidarEsquemaAntesEnvio:WordBool dispid 704;
    // EmailServidor :  
   property EmailServidor:WideString dispid 705;
    // EmailAutenticacao :  
   property EmailAutenticacao:WordBool dispid 706;
    // EmailRemetente :  
   property EmailRemetente:WideString dispid 707;
    // EmailDestinatario :  
   property EmailDestinatario:WideString dispid 708;
    // EmailAssunto :  
   property EmailAssunto:WideString dispid 709;
    // EmailMensagem :  
   property EmailMensagem:WideString dispid 710;
    // EmailUsuario :  
   property EmailUsuario:WideString dispid 711;
    // EmailSenha :  
   property EmailSenha:WideString dispid 712;
    // FraseContingencia :  
   property FraseContingencia:WideString dispid 713;
    // FraseHomologacao :  
   property FraseHomologacao:WideString dispid 714;
    // ModeloRetrato :  
   property ModeloRetrato:WideString dispid 715;
    // ModeloPaisagem :  
   property ModeloPaisagem:WideString dispid 716;
    // VersaoManual :  
   property VersaoManual:WideString dispid 717;
    // AnexarDanfePDF :  
   property AnexarDanfePDF:WordBool dispid 718;
    // QtdeCopias :  
   property QtdeCopias:Integer dispid 719;
    // EmailPorta :  
   property EmailPorta:Integer dispid 901;
    // LineDelimiter :  
   property LineDelimiter:WideString dispid 904;
    // IgnoreInvalidCertificates :  
   property IgnoreInvalidCertificates:WordBool dispid 907;
    // Versao :  
   property Versao:WideString  readonly dispid 911;
    // EmailTimeOut :  
   property EmailTimeOut:Integer dispid 912;
    // PINCODE :  
   property PINCODE:WideString dispid 913;
    // InfCplMaxCol :  
   property InfCplMaxCol:Integer dispid 914;
    // InfCplMaxRow :  
   property InfCplMaxRow:Integer dispid 915;
    // EmailCC :  
   property EmailCC:WideString dispid 916;
    // EmailCCo :  
   property EmailCCo:WideString dispid 917;
    // TimeOut :  
   property TimeOut:Integer dispid 918;
    // ModeloDanfeSimplificado :  
   property ModeloDanfeSimplificado:WideString dispid 920;
    // CaracteresRemoverAcentos :  
   property CaracteresRemoverAcentos:WideString dispid 921;
    // ImprimirVolume :  
   property ImprimirVolume:WordBool dispid 922;
    // ImprimirDuplicata :  
   property ImprimirDuplicata:WordBool dispid 923;
    // CaminhoCertificado :  
   property CaminhoCertificado:WideString dispid 924;
    // SenhaCertificado :  
   property SenhaCertificado:WideString dispid 925;
    // ImprimirUnidadeTributada :  
   property ImprimirUnidadeTributada:WordBool dispid 926;
    // DiretorioLogErro :  
   property DiretorioLogErro:WideString dispid 927;
    // DiretorioTemporario :  
   property DiretorioTemporario:WideString dispid 928;
    // UltimoLogCancelamento :  
   property UltimoLogCancelamento:WideString dispid 929;
    // ModoOperacao :  
   property ModoOperacao:ModoOperacaoNFe dispid 666;
    // EmailConteudoHtml :  
   property EmailConteudoHtml:WordBool dispid 345;
    // MensagemPartilhaAutomatica :  
   property MensagemPartilhaAutomatica:WordBool dispid 930;
    // ImprimirObsCont :  
   property ImprimirObsCont:WordBool dispid 931;
    // MensagemFCP :  
   property MensagemFCP:WordBool dispid 932;
    // ImprimirFrenteVerso :  
   property ImprimirFrenteVerso:ImprimirFrenteVerso dispid 934;
    // AtualizarArquivoServidores :  
   property AtualizarArquivoServidores:WordBool dispid 935;
    // IdCSRT :  
   property IdCSRT:WideString dispid 936;
    // CSRT :  
   property CSRT:WideString dispid 937;
    // ImprimirLocalRetiradaEntrega :  
   property ImprimirLocalRetiradaEntrega:WordBool dispid 376;
    // UltimoLogEnvio :  
   property UltimoLogEnvio:WideString dispid 501;
    // UltimoLogConsRecibo :  
   property UltimoLogConsRecibo:WideString dispid 502;
    // DiretorioXmlDestinatario :  
   property DiretorioXmlDestinatario:WideString dispid 611;
    // MaxSizeLoteEnvio :  
   property MaxSizeLoteEnvio:Integer dispid 906;
    // DanfeSimplificado :  
   property DanfeSimplificado:WordBool dispid 943;
    // DiretorioDownloads :  
   property DiretorioDownloads:WideString dispid 317;
    // UltimoLogRecibo :  
   property UltimoLogRecibo:WideString dispid 304;
    // UltimoLogReciboCancelamento :  
   property UltimoLogReciboCancelamento:WideString dispid 383;
    // ModeloRTMCCe :  
   property ModeloRTMCCe:WideString dispid 307;
    // EntregaXML :  
   property EntregaXML:EntregaXML dispid 310;
    // NotaSeguraToken :  
   property NotaSeguraToken:WideString dispid 308;
    // NotaSeguraLogin :  
   property NotaSeguraLogin:WideString dispid 309;
    // NotaSeguraSenha :  
   property NotaSeguraSenha:WideString dispid 312;
    // NotaSeguraServidor :  
   property NotaSeguraServidor:WideString dispid 313;
    // AuditorServidor :  
   property AuditorServidor:WideString dispid 314;
    // AuditorExibirRegrasValidacao :  
   property AuditorExibirRegrasValidacao:WordBool dispid 315;
    // AuditorCodigoProduto :  
   property AuditorCodigoProduto:Integer dispid 316;
    // AuditorEstagio :  
   property AuditorEstagio:Estagio dispid 326;
    // AuditorTemplateHtml :  
   property AuditorTemplateHtml:WideString dispid 327;
    // AuditorHeigthHtml :  
   property AuditorHeigthHtml:Integer dispid 328;
    // AuditorWidthHtml :  
   property AuditorWidthHtml:Integer dispid 329;
    // AuditorHtmlBaseUrl :  
   property AuditorHtmlBaseUrl:WideString dispid 330;
    // AuditorTipoResposta :  
   property AuditorTipoResposta:TipoResposta dispid 331;
    // AuditorTotalRejeicao :  
   property AuditorTotalRejeicao:WideString dispid 332;
    // AuditorLinguagemResposta :  
   property AuditorLinguagemResposta:LinguagemResposta dispid 333;
    // AuditorModoOperacao :  
   property AuditorModoOperacao:ModoOperacao dispid 334;
    // AuditorDiretorioEsquemas :  
   property AuditorDiretorioEsquemas:WideString dispid 335;
    // AuditorDiretorioTemplates :  
   property AuditorDiretorioTemplates:WideString dispid 336;
    // AuditorDiretorioRegras :  
   property AuditorDiretorioRegras:WideString dispid 337;
    // AuditorDiretorioLogErro :  
   property AuditorDiretorioLogErro:WideString dispid 338;
    // AuditorServidorProxy :  
   property AuditorServidorProxy:WideString dispid 349;
    // AuditorPortaProxy :  
   property AuditorPortaProxy:Integer dispid 350;
    // AuditorUsuarioProxy :  
   property AuditorUsuarioProxy:WideString dispid 351;
    // AuditorSenhaProxy :  
   property AuditorSenhaProxy:WideString dispid 352;
    // ConexaoSegura :  
   property ConexaoSegura:WordBool dispid 359;
    // UltimoLogConsultarDFe :  
   property UltimoLogConsultarDFe:WideString dispid 360;
    // AuditorTimeOut :  
   property AuditorTimeOut:Integer dispid 364;
    // UltimoLogReciboInutilizacao :  
   property UltimoLogReciboInutilizacao:WideString dispid 366;
    // ModeloRetratoCancelamento :  
   property ModeloRetratoCancelamento:WideString dispid 367;
    // UltimoLogInutilizacao :  
   property UltimoLogInutilizacao:WideString dispid 368;
    // UltimoLogEnvioMde :  
   property UltimoLogEnvioMde:WideString dispid 373;
    // UltimoLogRetornoMde :  
   property UltimoLogRetornoMde:WideString dispid 374;
    // DiagnosticMode :  
   property DiagnosticMode:WordBool dispid 375;
    // HttpLibs :  
   property HttpLibs:WideString dispid 378;
    // Serie :  
   property Serie:WideString dispid 1610743808;
    // tpEmis :  
   property tpEmis:WideString dispid 1610743810;
  end;


// IspdNFeDPECX : Interface for spdNFeDPECX Object

 IspdNFeDPECX = interface(IspdCustomNFe)
   ['{54BAA9D8-BA38-404C-A766-F5BBC68D25DD}']
    // AssinarDPEC :  
   function AssinarDPEC(aXMLDPEC:WideString):WideString;safecall;
    // EnviarDPEC :  
   function EnviarDPEC(aDPECAssinado:WideString):WideString;safecall;
    // LoadConfig :  
   procedure LoadConfig(aConfigFile:WideString);safecall;
    // ConsultarDPEC :  
   function ConsultarDPEC(aTpConsulta:ParamConsDPEC;aParam:WideString):WideString;safecall;
    // MontarDPEC :  
   function MontarDPEC(aLoteNormal:WideString):WideString;safecall;
    // VisualizarDanfe :  
   function VisualizarDanfe(aLoteNotas:WideString;aProtDPEC:WideString;aDataHoraDPEC:WideString;aArquivoModelo:WideString):WideString;safecall;
    // ImprimirDanfe :  
   function ImprimirDanfe(aLoteNotas:WideString;aProtDPEC:WideString;aDataHoraDPEC:WideString;aArquivoModelo:WideString;aImpressora:WideString):WideString;safecall;
    // EditarModeloDanfe :  
   function EditarModeloDanfe(aLoteNotas:WideString;aProtDPEC:WideString;aDataHoraDPEC:WideString;aArquivoModelo:WideString):WideString;safecall;
    // ExportarDanfe :  
   function ExportarDanfe(aLoteNotas:WideString;aProtDPEC:WideString;aDataHoraDPEC:WideString;aArquivoModelo:WideString;aFormato:Integer;aExportarParaArquivo:WideString):WideString;safecall;
  end;


// IspdNFeDPECX : Interface for spdNFeDPECX Object

 IspdNFeDPECXDisp = dispinterface
   ['{54BAA9D8-BA38-404C-A766-F5BBC68D25DD}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // ListarCertificados :  
   function ListarCertificados(aDelimiter:WideString):WideString;dispid 112;
    // RemoverCertificado :  
   function RemoverCertificado(CertificateName:WideString):WordBool;dispid 113;
    // EmailAddCC :  
   procedure EmailAddCC(Email:WideString);dispid 720;
    // EmailAddCCO :  
   procedure EmailAddCCO(Email:WideString);dispid 721;
    // GetVencimentoCertificado :  
   function GetVencimentoCertificado:WideString;dispid 900;
    // SaveConfig :  
   procedure SaveConfig(aConfigFile:WideString);dispid 909;
    // GetValidadeInicialCertificado :  
   function GetValidadeInicialCertificado:WideString;dispid 933;
    // GetVencimentoCertificadoDataHora :  
   function GetVencimentoCertificadoDataHora:WideString;dispid 938;
    // AssinarDPEC :  
   function AssinarDPEC(aXMLDPEC:WideString):WideString;dispid 201;
    // EnviarDPEC :  
   function EnviarDPEC(aDPECAssinado:WideString):WideString;dispid 203;
    // LoadConfig :  
   procedure LoadConfig(aConfigFile:WideString);dispid 202;
    // ConsultarDPEC :  
   function ConsultarDPEC(aTpConsulta:ParamConsDPEC;aParam:WideString):WideString;dispid 204;
    // MontarDPEC :  
   function MontarDPEC(aLoteNormal:WideString):WideString;dispid 614;
    // VisualizarDanfe :  
   function VisualizarDanfe(aLoteNotas:WideString;aProtDPEC:WideString;aDataHoraDPEC:WideString;aArquivoModelo:WideString):WideString;dispid 722;
    // ImprimirDanfe :  
   function ImprimirDanfe(aLoteNotas:WideString;aProtDPEC:WideString;aDataHoraDPEC:WideString;aArquivoModelo:WideString;aImpressora:WideString):WideString;dispid 723;
    // EditarModeloDanfe :  
   function EditarModeloDanfe(aLoteNotas:WideString;aProtDPEC:WideString;aDataHoraDPEC:WideString;aArquivoModelo:WideString):WideString;dispid 724;
    // ExportarDanfe :  
   function ExportarDanfe(aLoteNotas:WideString;aProtDPEC:WideString;aDataHoraDPEC:WideString;aArquivoModelo:WideString;aFormato:Integer;aExportarParaArquivo:WideString):WideString;dispid 725;
    // DiretorioTemplates :  
   property DiretorioTemplates:WideString dispid 101;
    // NomeCertificado :  
   property NomeCertificado:WideString dispid 102;
    // TipoCertificado :  
   property TipoCertificado:TipoCertificado dispid 103;
    // Proxy :  
   property Proxy:WideString dispid 104;
    // Usuario :  
   property Usuario:WideString dispid 105;
    // ConfigINI :  
   property ConfigINI:WideString dispid 106;
    // SectionINI :  
   property SectionINI:WideString dispid 107;
    // Ambiente :  
   property Ambiente:Ambiente dispid 108;
    // ArquivoServidoresHom :  
   property ArquivoServidoresHom:WideString dispid 109;
    // ArquivoServidoresProd :  
   property ArquivoServidoresProd:WideString dispid 110;
    // DiretorioLog :  
   property DiretorioLog:WideString dispid 111;
    // ErrosValidador :  
   property ErrosValidador:WideString dispid 500;
    // Senha :  
   property Senha:WideString dispid 580;
    // LogotipoEmitente :  
   property LogotipoEmitente:WideString dispid 700;
    // UF :  
   property UF:WideString dispid 701;
    // CNPJ :  
   property CNPJ:WideString dispid 702;
    // DiretorioEsquemas :  
   property DiretorioEsquemas:WideString dispid 703;
    // ValidarEsquemaAntesEnvio :  
   property ValidarEsquemaAntesEnvio:WordBool dispid 704;
    // EmailServidor :  
   property EmailServidor:WideString dispid 705;
    // EmailAutenticacao :  
   property EmailAutenticacao:WordBool dispid 706;
    // EmailRemetente :  
   property EmailRemetente:WideString dispid 707;
    // EmailDestinatario :  
   property EmailDestinatario:WideString dispid 708;
    // EmailAssunto :  
   property EmailAssunto:WideString dispid 709;
    // EmailMensagem :  
   property EmailMensagem:WideString dispid 710;
    // EmailUsuario :  
   property EmailUsuario:WideString dispid 711;
    // EmailSenha :  
   property EmailSenha:WideString dispid 712;
    // FraseContingencia :  
   property FraseContingencia:WideString dispid 713;
    // FraseHomologacao :  
   property FraseHomologacao:WideString dispid 714;
    // ModeloRetrato :  
   property ModeloRetrato:WideString dispid 715;
    // ModeloPaisagem :  
   property ModeloPaisagem:WideString dispid 716;
    // VersaoManual :  
   property VersaoManual:WideString dispid 717;
    // AnexarDanfePDF :  
   property AnexarDanfePDF:WordBool dispid 718;
    // QtdeCopias :  
   property QtdeCopias:Integer dispid 719;
    // EmailPorta :  
   property EmailPorta:Integer dispid 901;
    // LineDelimiter :  
   property LineDelimiter:WideString dispid 904;
    // IgnoreInvalidCertificates :  
   property IgnoreInvalidCertificates:WordBool dispid 907;
    // Versao :  
   property Versao:WideString  readonly dispid 911;
    // EmailTimeOut :  
   property EmailTimeOut:Integer dispid 912;
    // PINCODE :  
   property PINCODE:WideString dispid 913;
    // InfCplMaxCol :  
   property InfCplMaxCol:Integer dispid 914;
    // InfCplMaxRow :  
   property InfCplMaxRow:Integer dispid 915;
    // EmailCC :  
   property EmailCC:WideString dispid 916;
    // EmailCCo :  
   property EmailCCo:WideString dispid 917;
    // TimeOut :  
   property TimeOut:Integer dispid 918;
    // ModeloDanfeSimplificado :  
   property ModeloDanfeSimplificado:WideString dispid 920;
    // CaracteresRemoverAcentos :  
   property CaracteresRemoverAcentos:WideString dispid 921;
    // ImprimirVolume :  
   property ImprimirVolume:WordBool dispid 922;
    // ImprimirDuplicata :  
   property ImprimirDuplicata:WordBool dispid 923;
    // CaminhoCertificado :  
   property CaminhoCertificado:WideString dispid 924;
    // SenhaCertificado :  
   property SenhaCertificado:WideString dispid 925;
    // ImprimirUnidadeTributada :  
   property ImprimirUnidadeTributada:WordBool dispid 926;
    // DiretorioLogErro :  
   property DiretorioLogErro:WideString dispid 927;
    // DiretorioTemporario :  
   property DiretorioTemporario:WideString dispid 928;
    // UltimoLogCancelamento :  
   property UltimoLogCancelamento:WideString dispid 929;
    // ModoOperacao :  
   property ModoOperacao:ModoOperacaoNFe dispid 666;
    // EmailConteudoHtml :  
   property EmailConteudoHtml:WordBool dispid 345;
    // MensagemPartilhaAutomatica :  
   property MensagemPartilhaAutomatica:WordBool dispid 930;
    // ImprimirObsCont :  
   property ImprimirObsCont:WordBool dispid 931;
    // MensagemFCP :  
   property MensagemFCP:WordBool dispid 932;
    // ImprimirFrenteVerso :  
   property ImprimirFrenteVerso:ImprimirFrenteVerso dispid 934;
    // AtualizarArquivoServidores :  
   property AtualizarArquivoServidores:WordBool dispid 935;
    // IdCSRT :  
   property IdCSRT:WideString dispid 936;
    // CSRT :  
   property CSRT:WideString dispid 937;
    // ImprimirLocalRetiradaEntrega :  
   property ImprimirLocalRetiradaEntrega:WordBool dispid 376;
  end;

//CoClasses
  CospdCustomNFe = Class
  Public
    Class Function Create: IspdCustomNFe;
    Class Function CreateRemote(const MachineName: string): IspdCustomNFe;
  end;

  CospdNFeSCAN = Class
  Public
    Class Function Create: IspdNFeSCAN;
    Class Function CreateRemote(const MachineName: string): IspdNFeSCAN;
  end;

  CospdNFeDPECX = Class
  Public
    Class Function Create: IspdNFeDPECX;
    Class Function CreateRemote(const MachineName: string): IspdNFeDPECX;
  end;

  CospdNFeX = Class
  Public
    Class Function Create: IspdNFeX;
    Class Function CreateRemote(const MachineName: string): IspdNFeX;
  end;

implementation

uses comobj;

Class Function CospdCustomNFe.Create: IspdCustomNFe;
begin
  Result := CreateComObject(CLASS_spdCustomNFe) as IspdCustomNFe;
end;

Class Function CospdCustomNFe.CreateRemote(const MachineName: string): IspdCustomNFe;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_spdCustomNFe) as IspdCustomNFe;
end;

Class Function CospdNFeSCAN.Create: IspdNFeSCAN;
begin
  Result := CreateComObject(CLASS_spdNFeSCAN) as IspdNFeSCAN;
end;

Class Function CospdNFeSCAN.CreateRemote(const MachineName: string): IspdNFeSCAN;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_spdNFeSCAN) as IspdNFeSCAN;
end;

Class Function CospdNFeDPECX.Create: IspdNFeDPECX;
begin
  Result := CreateComObject(CLASS_spdNFeDPECX) as IspdNFeDPECX;
end;

Class Function CospdNFeDPECX.CreateRemote(const MachineName: string): IspdNFeDPECX;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_spdNFeDPECX) as IspdNFeDPECX;
end;

Class Function CospdNFeX.Create: IspdNFeX;
begin
  Result := CreateComObject(CLASS_spdNFeX) as IspdNFeX;
end;

Class Function CospdNFeX.CreateRemote(const MachineName: string): IspdNFeX;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_spdNFeX) as IspdNFeX;
end;

end.
