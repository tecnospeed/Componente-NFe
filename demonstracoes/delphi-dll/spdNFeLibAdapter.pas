unit spdNFeLibAdapter;

interface

uses
  Windows;

type
  {Layout Conv TXT
  @value lkTXTDic Laypout de conversão baseado em arquivos Dic TXT.  - OBSOLETO
  @value lkTXTDataSet Layout de conversão baseado em Estrutura DataSet
  @value lkTXTRec Layout de conversão baseado Modelo da Receita}
  TLayoutConvKind = (lkTXTDic, lkTXTDataSet, lkTXTRec);

  {Tipo de opções para utilizar no metodo AtualizarVersao com autoupdater
  @value auNFeReiniciarAplicacao Reinicia a aplicação ao finalizara atualização
  @value auNFeNaoAtualizarRTMs Atualiza somente o template de conversor
  @value auNFeNaoMostrarProgresso Mostra a tela de progresso quando iniciar o processo de atualização}
  TAutoUpdaterNFeOption = (auNFeReiniciarAplicacao, auNFeNaoAtualizarRTMs, auNFeNaoMostrarProgresso);

  TAutoUpdaterNFeOptions = set of TAutoUpdaterNFeOption;

  TTipoAutorCompEntrega = (tEAtorCompEntregaEmitente = 1, tEAtorCompEntregaDestinatario = 2, tEAtorCompEntregaEmpresa = 3, tEAtorCompEntregaFisco = 5,
                           tEAtorCompEntregaRFB = 6, tEAtorCompEntregaOutros = 9);

  TTipoAutorInteressado = (tEAtorInterEmitente = 1, tEAtorInterDestinatario = 2, tEAtorInterTransportadora = 3);

  TTipoAutorizacaoAtorInter = (tEAINaoPermite, tEAIPermite);

const
  LIB_NAME = 'spdNFeLib.dll';
  { Tipos de NSU
  @value nkUltimo Ultimo NSU.
  @value nkEspecifico NSU Especifico. }
  nkUltimo = 0;
  nkEspecifico = 1;
  nkConsChNFe = 2;

function AuditarXml(const aXml: PWideChar; const aDelimitador: PWideChar; const aServidor: PWideChar; const aExibirRegra, aExibirHtml: WordBool; const aParams, aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function AssinarDPEC(aXmlDPEC: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function EnviarDPEC(aDPECAssinado: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function ConsultarDPEC(aTpConsulta: Integer; aParam: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function AssinarNota(aXML: PWideChar; aConfigFilePath: PWideChar; tpEmis: Integer): PWideChar; stdcall; external LIB_NAME;
function GerarNotasAleatorias(Qtde: Integer; CNPJ: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function ConverterLoteParaXml(ArquivoLoteTxt: PWideChar; aConfigFilePath: PWideChar; aTipoConversao: Integer; aVersaoEsquema: PWideChar; aLayoutConv: TLayoutConvKind = lkTXTDic; aExportacao: boolean = false): PWideChar; stdcall; external LIB_NAME;
function StatusDoServico(aConfigFilePath: PWideChar; tpEmis: Integer): PWideChar; stdcall; external LIB_NAME;
function CancelarNF(aNotaID, aNumProtocolo, aJustificativa: PWideChar; aConfigFilePath: PWideChar; tpEmis: Integer): PWideChar; stdcall; external LIB_NAME;
function ConsultarNF(aNotaID: PWideChar; aConfigFilePath: PWideChar; tpEmis: Integer): PWideChar; stdcall; external LIB_NAME;
function InutilizarNF(aNotaID, aAno, aCNPJ, aModelo: PWideChar; aSerie: PWideChar; aNFIni, aNFFin, aJustificativa, aConfigFilePath: PWideChar; tpEmis: Integer): PWideChar; stdcall; external LIB_NAME;
function EnviarNF(aNumLote: PWideChar; aLoteNotas: PWideChar; aCompactado: Boolean; aConfigFilePath: PWideChar; tpEmis: Integer): PWideChar; stdcall; external LIB_NAME;
function EnviarNFSincrono(aNumLote: PWideChar; aLoteNota: PWideChar; aCompactado: Boolean; aConfigFilePath: PWideChar; tpEmis: Integer): PWideChar; stdcall; external LIB_NAME;
function ConsultarRecibo(aNumRecibo: PWideChar; aConfigFilePath: PWideChar; tpEmis: Integer): PWideChar; stdcall; external LIB_NAME;
function ConsultarCadastro(aDocumento: PWideChar; aTpDocumento: PWideChar; aUF: PWideChar; aConfigFilePath: PWideChar; tpEmis: Integer): PWideChar; stdcall; external LIB_NAME;
procedure VisualizarDanfe(aNumLote: PWideChar; aLoteNotas: PWideChar; aArquivoModelo: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure ExportarPreverDanfe(const aLoteNotas: PWideChar; aArquivoModelo: PWideChar; aLocalNomeArquivo: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure PreverDanfe(aLoteNotas: PWideChar; aArquivoModelo: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure VisualizarDanfeDPEC(aLoteNotas: PWideChar; aProtocoloDPEC: PWideChar; aDataHoraDPEC: PWideChar; aArquivoModelo: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure ImprimirDanfe(aNumLote: PWideChar; aLoteNotas: PWideChar; aArquivoModelo: PWideChar; aConfigFilePath: PWideChar; aImpressora: PWideChar); stdcall; external LIB_NAME;
procedure ImprimirDanfeXmlDiretorio(const aDiretorioXml: PWideChar; aArquivoModelo: PWideChar; const aExportarArquivoPara: PWideChar; const aImpressora: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure ImprimirDanfeDPEC(aLoteNotas: PWideChar; aProtocoloDPEC: PWideChar; aDataHoraDPEC: PWideChar; aArquivoModelo: PWideChar; aConfigFilePath: PWideChar; aImpressora: PWideChar); stdcall; external LIB_NAME;
procedure EditarModeloDanfe(aNumLote: PWideChar; aLoteNotas: PWideChar; aArquivoModelo: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure EditarModeloDanfeDPEC(aLoteNotas: PWideChar; aProtocoloDPEC: PWideChar; aDataHoraDPEC: PWideChar; aArquivoModelo: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure ExportarDanfe(aNumLote: PWideChar; aLoteNotas: PWideChar; aArquivoModelo: PWideChar; aFormato: Integer; aConfigFilePath: PWideChar; aExportarParaArquivo: PWideChar); stdcall; external LIB_NAME;
procedure ExportarDanfeDPEC(aLoteNotas: PWideChar; aProtocoloDPEC: PWideChar; aDataHoraDPEC: PWideChar; aArquivoModelo: PWideChar; aFormato: Integer; aConfigFilePath: PWideChar; aExportarParaArquivo: PWideChar); stdcall; external LIB_NAME;
function ObterCertificados(aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function RemoverCertificado(CertificateName: PCHAR): BOOL; stdcall; external LIB_NAME;
procedure EmailDanfe(aNumLote: PWideChar; aLoteNotas: PWideChar; aArquivoModelo: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
function ConsultarDistribuicaoDFe(aConfigFilePath: PWideChar; aCodigoUF: PWideChar; aCNPJCPF: PWideChar; aNSU: PWideChar; aTipoNSU: Integer): PWideChar; stdcall; external LIB_NAME;
function DescompactarXMLZip(const aXML: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function RemoverAcentos(txt: PWideChar): PWideChar; stdcall; external LIB_NAME;
function ListarLogs(aFilter: integer; aCustomFilter: PCHAR; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function LerLog(aPathArquivoLog: PWideChar): PWideChar; stdcall; external LIB_NAME;
procedure VisualizarDanfeLog(aPathArquivoLog: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
function CalculaChaveNFe(aDtEmissao: PWideChar; aUF: PWideChar; aCNPJ: PWideChar; aModelo: PWideChar; aSerie: PWideChar; aNRNota: PWideChar; aCodSistema: PWideChar; aTpEmis: PWideChar): PWideChar; stdcall; external LIB_NAME;
function GerarXMLEnvioDestinatario(aIdNFe: PWideChar; aLogEnvLote: PWideChar; aLogConsRecibo: PWideChar; aSalvarComo: Pchar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
procedure EnviarNotaDestinatario(aIDNFe: PWideChar; aLogEnvio: PWideChar; aLogRecibo: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
function GerarXMLCancelamentoDestinatario(aIDNFe: PWideChar; aContentLogPedCanc: PWideChar; aContentLogRetCanc: PWideChar; aSalvarComo: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
procedure EnviarNotaCanceladaDestinatario(aIDNFe: PWideChar; aLogPedCanc: PWideChar; aLogRetCanc: PWideChar; aEmailDestinatario: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure EnviarNotaDestinatarioAnexos(aArquivoPDF: PWideChar; aArquivoXML: PWideChar; aOutros: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
function ValidarArquivoXmlDestinatario(const aXml: PWideChar; var aErrorList: PWideChar; aConfigFilePath: PWideChar): boolean; stdcall; external LIB_NAME;
function GetVencimentoCertificado(const aConfigFilePath: PWideChar): PWChar; stdcall; external LIB_NAME;
function EnviarManifestacaoDestinatario(aTpEvento: Integer; aNotaID, aCNPJCPF, aJustificativa, aDataHoraEvento, aFusoHorario, aConfigFilePath: PWideChar; aSequenciaEvento: integer; aCOrgao: PWideChar): PWideChar; stdcall; external LIB_NAME;
function ConsultarNFeDestinadas(aIndNFe: Integer; aIndEmi: Integer; aUltNSU: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function CancelarNFeEventoIdLote(aNotaID: PWideChar; aNumProtocolo: PWideChar; aJustificativa: PWideChar; aDataHoraEvento: PWideChar; aFusoHorario: PWideChar; aConfigFilePath: PWideChar; aSequenciaEvento: integer; aIdLote: PWideChar): PWideChar; stdcall; external LIB_NAME;
function CancelarNFeEvento(aNotaID: PWideChar; aNumProtocolo: PWideChar; aJustificativa: PWideChar; aDataHoraEvento: PWideChar; aFusoHorario: PWideChar; aConfigFilePath: PWideChar; aSequenciaEvento: integer; atpEmis: Integer = 1): PWideChar; stdcall; external LIB_NAME;
function DownloadNFe(aChaves: PWideChar; aConfigFilePath: PWideChar; aOrgao: PWideChar): PWideChar; stdcall; external LIB_NAME;
function ValidarLoteParaEnvio(const aNumLote: PWideChar; aLoteNotas: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
procedure ValidarTamanhoArquivoEnvio(aLoteNotas: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
function EnviarCCe(const aNotaID, aTextoCorrecao, aDataHoraEvento, aOrgao, aIdLote: PWideChar; aSequenciaEvento: integer; const aFusoHorario: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function MontarEPEC(const aIdLote, aXmlEnvio, aDHEvento, aFusoHorario, aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function AssinarEPEC(const aXMLEpec, aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function EnviarEPEC(const aXMLEpecAssinado, aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function GerarXMLCCeDestinatario(aIDEvento: PWideChar; const aLogEvento, aLogRetEvento: PWideChar; aSalvarComo: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function GerarXMLManifestoDestinatario(aIDEvento: PWideChar; const aLogEvento, aLogRetEvento: PWideChar; aSalvarComo: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
procedure EnviarCCeDestinatario(const aCCe: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure ImprimirCCe(const aXmlCCe: PWideChar; const aImpressora: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure VisualizarCCe(const aXmlCCe: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure EditarModeloCCe(const aXmlCCe: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure ExportarCCe(const aXmlCCe: PWideChar; aSalvarComo: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
function GerarXMLEPECDestinatario(aIDEvento: PWideChar; const aLogEvento, aLogRetEvento: PWideChar; aSalvarComo: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
procedure ImprimirEPEC(aLoteNotas: PWideChar; aProtEPEC, aDataHoraEPEC: PWideChar; aArquivoModelo: PWideChar; aImpressora: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
procedure ExportarEPEC(aLoteNotas: PWideChar; aProtEPEC, aDataHoraEPEC: PWideChar; aArquivoModelo: PWideChar; aFormato: Integer; aExportarParaArquivo: PWideChar; aConfigFilePath: Pchar); stdcall; external LIB_NAME;
procedure VisualizarEPEC(aLoteNotas: PWideChar; aProtEPEC, aDataHoraEPEC: Pchar; aArquivoModelo: Pchar; aConfigFilePath: Pchar); stdcall; external LIB_NAME;
function GerarIdCCe(const aChaveNFe: PWideChar; aSeqEvento: integer; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function MontarXmlCCe(const aChaveNFe, aTextoCorrecao, aDataHoraEvento, aOrgao: PWideChar; aSequenciaEvento: integer; const aFusoHorario: PWideChar; aConfigFilePath: Pchar): PWideChar; stdcall; external LIB_NAME;
function AssinarCCe(const aXmlCCe: PWideChar; aConfigFilePath: Pchar): PWideChar; stdcall; external LIB_NAME;
function LoadTemplate(const aXMLFileName: PWideChar; aConfigFilePath: Pchar): PWideChar; stdcall; external LIB_NAME;
procedure ValidarLoteItem(const aNumLote, aLoteNotas: PWideChar; aConfigFilePath: Pchar); stdcall; external LIB_NAME;
function EnviarPedidoProrrogacao(const aIdLote, aChaveNFe, aNumProtocolo: PWideChar; aDataHoraEvento, aOrgao, aTpEvento: PWideChar; const aSequenciaEvento: integer; aFusoHorario, aDelimiter: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function CancelarPedidoProrrogacao(const aIdLote, aChaveNFe, aNumProtocolo, aDataHoraEvento, aTpEvento: PWideChar; const aSequenciaEvento: integer; aFusoHorario: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function AtualizarVersao(const aVersao: PWideChar; const aOpcoes: TAutoUpdaterNFeOptions; aConfigFilePath: PWideChar): Boolean; stdcall; external LIB_NAME;
function CalculaChaveInutilizacao(const aAno, aCNPJCPF, aModelo, aSerie, aNFIni, aNFFin: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function CalcularCodigoBarrasNFeOffline(const aXmlEnvio: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function CancelarComprovanteEntrega(const aIdLote, aChaveNFe, aNumProtocoloEvento, aOrgao, aOrgaoAutor, aVersaoAplicativo, aDataHoraEvento, aFusoHorario: PWideChar; const aSequenciaEvento: integer; const aTpAutor: TTipoAutorCompEntrega; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function ConsultarDistribuicaoDFeChave(const aCodigoUF, aCNPJCPF, aChave: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function ConsultarGTIN(const aGTIN: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function EnviarAtorInteressado(const aChaveNFe, aOrgao, aDataHoraEvento, aIdLote, aOrgaoAutor, aCnpjCpfAutorizado, aVersaoAplicativo: PWideChar; aSequenciaEvento: integer; const aTpAutor: TTipoAutorInteressado; const aTpAutorizacao: TTipoAutorizacaoAtorInter; aFusoHorario: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function EnviarComprovanteEntrega(const aChaveNFe, aOrgao, aDataHoraEvento, aIdLote, aOrgaoAutor, aDataHoraEntrega, aVersaoAplicativo, aFusoHorario, aNumDocIdent, aNomeAssinanteComp, aLatitude, aLongitude, aPathImagemEntrega: PWideChar; aSequenciaEvento: integer; const aTpAutor: TTipoAutorCompEntrega; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function GerarXMLAtorInteressadoDestinatario(aIDEvento: PWideChar; const aLogEvento, aLogRetEvento: PWideChar; aSalvarComo: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function GerarXMLCancelamentoComprovanteEntregaDestinatario(aIDEvento: PWideChar; const aLogEvento, aLogRetEvento: PWideChar; aSalvarComo: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function GerarXMLComprovanteEntregaDestinatario(aIDEvento: PWideChar; const aLogEvento, aLogRetEvento: PWideChar; aSalvarComo: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function GerarXMLInutilizacaoDestinatario(aIdInut: PWideChar; const aEnvioInutilizacao, aRetornoInutilizacao: PWideChar; aSalvarComo: PWideChar; aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
function TestarEmailConfig(aConfigFilePath: PWideChar): PWideChar; stdcall; external LIB_NAME;
procedure TratarXMLRetornoDFe(const aXML: PWideChar; aDiretorio: PWideChar; aConfigFilePath: PWideChar); stdcall; external LIB_NAME;
function GetUltimoErro: PWideChar; stdcall; external LIB_NAME;
function ObterCodigoUF(const aUF: PWideChar): Integer; stdcall; external LIB_NAME;
function Versao: PWideChar; stdcall; external LIB_NAME;

implementation

end.
