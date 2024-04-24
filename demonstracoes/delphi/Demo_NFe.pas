unit Demo_NFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ShellAPI, IniFiles, spdNFe, spdNFeDataSets, spdNFeType,
  ComCtrls, XPMan, spdNFeUtils, jpeg,
  spdNFeValidadorClientAdapter, OleCtrls, Contnrs;

type
    TDemo_NFe_Form = class(TForm)
    pgcNFe: TPageControl;
    tbsNfe: TTabSheet;
    GroupBox1: TGroupBox;
    edtCNPJ: TLabeledEdit;
    edtID: TLabeledEdit;
    edtNumRec: TLabeledEdit;
    edtNumProt: TLabeledEdit;
    dlgOpen: TOpenDialog;
    spdNFe: TspdNFe;
    spdNFeDataSets: TspdNFeDataSets;
    TabImpressao: TTabSheet;
    TabDemaisMetodos: TTabSheet;
    GroupBox3: TGroupBox;
    cbCertificado: TComboBox;
    Label4: TLabel;
    btnConfig: TButton;
    btnLoadConfig: TButton;
    btnGerarDS: TButton;
    btnGeraXMLTX2: TButton;
    btnStatus: TButton;
    btnAssinar: TButton;
    btnEnviarNfe: TButton;
    btnEnviarSinc: TButton;
    btnConsultRec: TButton;
    btnConsultNfe: TButton;
    gbImpressao: TGroupBox;
    btnPrever: TButton;
    btnEditarDanfe: TButton;
    btnImprimir: TButton;
    btnExportPdf: TButton;
    btnVisualizar: TButton;
    GroupBox4: TGroupBox;
    btnInutilizarNfe: TButton;
    btnConvertXmlDataset: TButton;
    btnConsultaCadastro: TButton;
    btnEventos: TButton;
    Button1: TButton;
    btCancelarNota: TButton;
    PageControl1: TPageControl;
    tabXml: TTabSheet;
    tabXmlEnvio: TTabSheet;
    mmXml: TMemo;
    tabXmlRetorno: TTabSheet;
    GroupBox5: TGroupBox;
    edCnpjSh: TEdit;
    edTokenSh: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    tabXmlImpressao: TTabSheet;
    mmXmlCanceladoEnvio: TMemo;
    mmXmlCanceladoRetorno: TMemo;
    mmXmlEnvio: TMemo;
    mmXmlRetorno: TMemo;
    mmXmlCompleto: TMemo;
    cbUF: TComboBox;
    Label5: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    btEmailArquivo: TButton;
    btnEnviarEmail: TButton;
    btnConsultarDestinadas: TButton;
    rdProducao: TRadioButton;
    rdHomologacao: TRadioButton;
    procedure cbCertificadoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnGerarDSClick(Sender: TObject);
    procedure btnAssinarClick(Sender: TObject);
    procedure btnEnviarNfeClick(Sender: TObject);
    procedure btnEnviarSincClick(Sender: TObject);
    procedure btnConsultRecClick(Sender: TObject);
    procedure btnConsultNfeClick(Sender: TObject);
    procedure btnInutilizarNfeClick(Sender: TObject);
    procedure btnPreverClick(Sender: TObject);
    procedure btnEditarDanfeClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExportPdfClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure btnConsultaCadastroClick(Sender: TObject);
    procedure btnLoadConfigClick(Sender: TObject);
    procedure spdNFeLog(const aNome, aID, aFileName: String);
    procedure btnEventosClick(Sender: TObject);
    procedure btnConvertXmlDatasetClick(Sender: TObject);
    procedure spdNFeXmlDestinatario(const aFileName: String);
    procedure btnGerarRECClick(Sender: TObject);
    procedure btnGeraXMLTX2Click(Sender: TObject);
    procedure btEmailArquivoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btCancelarNotaClick(Sender: TObject);
    procedure cbUFChange(Sender: TObject);
    procedure MontarXmlCompleto;
    procedure MontarXmlCompletoCancelado;
    procedure btnConsultarDestinadasClick(Sender: TObject);
    procedure edtCNPJChange(Sender: TObject);
    procedure edCnpjShChange(Sender: TObject);
    procedure edTokenShChange(Sender: TObject);
    procedure edCnpjShKeyPress(Sender: TObject; var Key: Char);
    procedure edtCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure rdProducaoClick(Sender: TObject);
    procedure rdHomologacaoClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);




    private
    { Private declarations }
    _NumeroLote, _NumeroSerie, _NumeroNF, _CodigoNota, _XmlEnvio, _XmlRetorno, _XmlEnvioC, _XmlRetornoC : String;


    function LoadXmlDestinatario(aChaveNFe: String): WideString;
    function obterNroResultado(const aXML: XMLString; aTag : string; aEndTag : string): string;
    procedure CarregarConfiguracoes;
    function ChaveInvalida: boolean;
    procedure MostrarLabel;
    procedure ChecarAmbiente;
    procedure CarregarArquivo;
    procedure CarregarXmlImpressao;

  public
    { Public declarations }



  end;

var
  Demo_NFe_Form: TDemo_NFe_Form;
  logEnvio : String;
  logRetorno : String;
  vIni: TIniFile;



implementation
uses Math, uEventos, uDestinadas, StrUtils;
{$R *.dfm}
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.cbCertificadoChange(Sender: TObject);
begin
  vIni.WriteString('NFE', 'NomeCertificado', cbCertificado.Text);
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.ChecarAmbiente;
begin
  if spdnfe.Ambiente = akproducao then
    rdProducao.Checked := true
  else
    rdHomologacao.checked := true;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.CarregarArquivo;
var
  _XML: String;
begin
      dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
      dlgOpen.Execute;

    if dlgOpen.FileName <> '' then
    begin
      _XML := dlgOpen.FileName;
      mmXml.Lines.LoadFromFile(_XML);
      mmXml.Text := spdNFe.ConverterLoteParaXml(_XML,lkTXTDataSet,pl_009);
    end;
end;


procedure TDemo_NFe_Form.CarregarXmlImpressao;
var
  _XML: String;
begin
      dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
      dlgOpen.Execute;

    if dlgOpen.FileName <> '' then
    begin
      _XML := dlgOpen.FileName;
      mmXmlCompleto.Lines.LoadFromFile(_XML);
    end;
end;



//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.FormCreate(Sender: TObject);
begin
  vIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+ 'nfeconfig.ini');
  spdNFe.ConfigurarSoftwareHouse('', '');
  Demo_NFe_Form.Caption := 'Tecnospeed NFe - Versão: ' + spdNfe.Versao;
  spdNFe.AtualizarArquivoServidores := False;
  spdNFe.ListarCertificados(cbCertificado.Items);
  spdNFe.OnLog := spdNFeLog;
  CarregarConfiguracoes;
  ChecarAmbiente;
end;

procedure TDemo_NFe_Form.MostrarLabel;
begin
  if spdNFe.Ambiente = akProducao then
  begin
   label2.caption := 'Ambiente de Produção';
   label2.Font.Color := clRed;
  end
  else
  begin
   label2.caption := 'Ambiente de Homologação';
   label2.Font.Color := clBlue;
  end;
end;

procedure TDemo_NFe_Form.CarregarConfiguracoes;
begin
  spdNFe.LoadConfig();

  if cbUF.text = '' then
  cbUF.Text  := spdNFe.UF
  else
  spdNfe.UF := cbUF.Text;

  cbCertificado.Text  := spdNFe.NomeCertificado.Text;
  edtCNPJ.Text        := spdNFe.CNPJ;

  if edCnpjSh.text = '' then
  edCnpjSh.Text       := vIni.ReadString('NFE', 'CNPJSH','');

  if edTokenSh.text = '' then
  edTokenSh.Text      := vIni.ReadString('NFE', 'TOKENSH','');
end;

procedure TDemo_NFe_Form.spdNFeLog(const aNome, aID, aFileName: string);
begin

   if aNome = 'env-lot' then
   begin
       _XmlEnvio := aFilename;
       mmXmlEnvio.Lines.LoadFromFile(_XmlEnvio)
   end
   else if aNome = 'env-sinc-lot' then
   begin
       _XmlEnvio := aFilename;
       mmXmlEnvio.Lines.LoadFromFile(_XmlEnvio)
   end
   else if aNome = 'rec' then
   begin
       _XmlRetorno := aFilename;
       mmXmlRetorno.Lines.LoadFromFile(_XmlRetorno)
   end    
   else if aNome = 'caneve-env' then
   begin
       _XmlEnvioC := aFileName;
       mmXmlCanceladoEnvio.Lines.LoadFromFile(_XmlEnvioC)
   end
   else if aNome = 'caneve-ret' then
   begin
       _XmlRetornoC := aFilename;
       mmXmlCanceladoRetorno.Lines.LoadFromFile(_XmlRetornoC)
   end    
end;

//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnConfigClick(Sender: TObject);
begin//
  ShellExecute(Handle,'Open',pchar('nfeconfig.ini'),'','',SW_SHOWNORMAL);
end;
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnStatusClick(Sender: TObject);
begin//
  mmXml.Text := spdNfe.StatusDoServico;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnGerarDSClick(Sender: TObject);
begin
  edtNumRec.clear;
  edtNumProt.clear;
  _NumeroLote   := '1'; 
  _NumeroSerie  := InputBox('NF-e','Insira o Número da Série:','1');
  _NumeroNF     := InputBox('NF-e','Insira o Número da Nota: ','1');
  _CodigoNota   := InputBox('NF-e','Insira o Código da Nota: ','1');
  spdNFe.VersaoManual := vm60;
  spdNFeDataSets.VersaoEsquema := pl_009;

  spdNFeDataSets.XMLDicionario := spdNFe.DiretorioTemplates +'Conversor\NFeDataSets.xml';

  spdNFeDataSets.Incluir;
  spdNFeDataSets.Campo('versao_A02').Value := '4.00';
  spdNFeDataSets.Campo('cUF_B02').value := '41';
  spdNFeDataSets.Campo('cNF_B03').value := _CodigoNota;
  spdNFeDataSets.Campo('natOp_B04').value := 'VENDA DE MERCADORIA ADQ. DE TERCEIRO - PF E PJ NAO CONTRIBUI';
  spdNFeDataSets.Campo('mod_B06').value := '55';
  spdNFeDataSets.Campo('serie_B07').value := _NumeroSerie;
  spdNFeDataSets.Campo('nNF_B08').value := _NumeroNF;
  spdNFeDataSets.Campo('dhEMI_B09').value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now)+'-03:00';
  spdNFeDataSets.Campo('dhSaiEnt_B10').value := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now)+'-03:00';
  spdNFeDataSets.Campo('tpNF_B11').value := '1';
  spdNFeDataSets.Campo('IDDEST_B11A').value := '2';
  spdNFeDataSets.Campo('cMunFG_B12').value := '4115200';
  spdNFeDataSets.Campo('tpImp_B21').value := '1';
  spdNFeDataSets.Campo('tpEmis_B22').value := '1';

  spdNFeDataSets.Campo('cDV_B23').value := '0';
  spdNFeDataSets.Campo('tpAmb_B24').value := '2';
  spdNFeDataSets.Campo('finNFe_B25').value := '1';
  spdNFeDataSets.Campo('INDFINAL_B25A').value := '1';
  spdNFeDataSets.Campo('INDPRES_B25B').value := '1';
  spdNFeDataSets.Campo('procEmi_B26').value := '0';
  spdNFeDataSets.Campo('verProc_B27').value := 'VersaoAplicacao';

  spdNFeDataSets.Campo('CRT_C21').value := '3';
  spdNFeDataSets.Campo('CNPJ_C02').value := '08187168000160';
  spdNFeDataSets.Campo('xNome_C03').value := 'TECNOSPEED E TECNOLOGIA';
  spdNFeDataSets.Campo('xFant_C04').value := 'TECNOSPEED E TECNOLOGIA';
  spdNFeDataSets.Campo('xLgr_C06').value := 'RUA DO POVO';
  spdNFeDataSets.Campo('nro_C07').value := '711';
  spdNFeDataSets.Campo('xBairro_C09').value := 'Parque petrobras';
  spdNFeDataSets.Campo('cMun_C10').value := '4115200';
  spdNFeDataSets.Campo('xMun_C11').value := 'MARINGA';
  spdNFeDataSets.Campo('UF_C12').value := 'PR';
  spdNFeDataSets.Campo('CEP_C13').value := '87083000';
  spdNFeDataSets.Campo('cPais_C14').value := '1058';
  spdNFeDataSets.Campo('xPais_C15').value := 'BRASIL';
  spdNFeDataSets.Campo('fone_C16').value := '4432222222';
  spdNFeDataSets.Campo('IE_C17').value := '9044016688';

  spdNFeDataSets.Campo('CNPJ_E02').value := '08187168000160';
  spdNFeDataSets.Campo('IDESTRANGEIRO_E03A').value := '';
  spdNFeDataSets.Campo('xNome_E04').value := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  spdNFeDataSets.Campo('xLgr_E06').value := 'RUA DO CENTRO';
  spdNFeDataSets.Campo('nro_E07').value := '897';
  spdNFeDataSets.Campo('xBairro_E09').value := 'CENTRAL';
  spdNFeDataSets.Campo('cMun_E10').value := '4115200 ';
  spdNFeDataSets.Campo('xMun_E11').value := 'MARINGA';
  spdNFeDataSets.Campo('UF_E12').value := 'PR';
  spdNFeDataSets.Campo('CEP_E13').value := '87500000';
  spdNFeDataSets.Campo('cPais_E14').value := '1058';
  spdNFeDataSets.Campo('xPais_E15').value := 'BRASIL';
  spdNFeDataSets.Campo('fone_E16').value := '445555555';
  spdNFeDataSets.Campo('INDIEDEST_E16A').value := '1';
  spdNFeDataSets.Campo('IE_E17').value := '9044016688';
  spdNFeDataSets.Campo('IM_E18A').value := '';

  spdNFeDataSets.Campo('email_e19').value := '';


  //Informação do Responsável Técnico NT2018/005
  spdNFeDataSets.Campo('CNPJ_ZD02').value := '08187168000160';
  spdNFeDataSets.Campo('xContato_ZD04').value := 'Nome do Contato';
  spdNFeDataSets.Campo('email_ZD05').value := 'email@empresaficticia.com.br';
  spdNFeDataSets.Campo('fone_ZD06').value := '41999999999';


  spdNFeDataSets.IncluirItem; //informacoes do produto
  spdNFeDataSets.Campo('nItem_H02').value := '1';
  spdNFeDataSets.Campo('cProd_I02').value := '0999';
  spdNFeDataSets.Campo('cEAN_I03').value := 'SEM GTIN';
  spdNFeDataSets.Campo('xProd_I04').value := 'MELAO';
  spdNFeDataSets.Campo('NCM_I05').value := '11081200';
  spdNFeDataSets.Campo('CEST_I05c').value := '0123456';
  spdNFeDataSets.Campo('indEscala_I05d').value := 'S';
  spdNFeDataSets.Campo('CFOP_I08').value := '6102';
  spdNFeDataSets.Campo('uCom_I09').value := 'CX';
  spdNFeDataSets.Campo('qCom_I10').value := '1';
  spdNFeDataSets.Campo('vUnCom_I10a').value := '0.0100';
  spdNFeDataSets.Campo('vProd_I11').value := '0.01';
  spdNFeDataSets.Campo('cEANTrib_I12').value := 'SEM GTIN';
  spdNFeDataSets.Campo('uTrib_I13').value := 'CX';
  spdNFeDataSets.Campo('qTrib_I14').value := '1';
  spdNFeDataSets.Campo('vUnTrib_I14a').value := '0.0100';
  spdNFeDataSets.Campo('indTot_I17b').value := '1';
  spdNFeDataSets.Campo('orig_N11').value := '0';
  spdNFeDataSets.Campo('CST_N12').value := '00';
  spdNFeDataSets.Campo('modBC_N13').value := '0';
  spdNFeDataSets.Campo('vBC_N15').value := '0.01';
  spdNFeDataSets.Campo('pICMS_N16').value := '12.00';
  spdNFeDataSets.Campo('vICMS_N17').value := '0.01';
  spdNFeDataSets.Campo('VICMSDESON_N28A').value := '0.00';

  spdNFeDataSets.Campo('CST_Q06').value := '01';
  spdNFeDataSets.Campo('vBC_Q07').value := '0.01';
  spdNFeDataSets.Campo('pPIS_Q08').value := '1.65';
  spdNFeDataSets.Campo('vPIS_Q09').value := '0.00';

  spdNFeDataSets.Campo('CST_S06').value := '01';
  spdNFeDataSets.Campo('vBC_S07').value := '0.01';
  spdNFeDataSets.Campo('pCOFINS_S08').value := '7.60';
  spdNFeDataSets.Campo('vCOFINS_S11').value := '0.01';

  spdNFeDataSets.Campo('nLote_I81').value := '123';
  spdNFeDataSets.Campo('qLote_I82').value := '5565.000';
  spdNFeDataSets.Campo('dFab_I83').value := '2017-07-23';
  spdNFeDataSets.Campo('dVal_I84').value := '2018-07-23';

  spdNFeDataSets.Campo('cProdANVISA_k01a').value := '1234567890123';
  spdNFeDataSets.Campo('vPMC_k06').value := '1.00';

  spdNFeDataSets.SalvarItem;

  spdNFeDataSets.Campo('vBC_W03').value := '0.01';
  spdNFeDataSets.Campo('vICMS_W04').value := '0.01';
  spdNFeDataSets.Campo('vICMSDeson_W04a').value := '0.00';
  spdNFeDataSets.Campo('vFCP_W04h').value := '0.00';
  spdNFeDataSets.Campo('vBCST_W05').value := '0.00';
  spdNFeDataSets.Campo('vST_W06').value := '0.00';
  spdNFeDataSets.Campo('vFCPST_W06a').value := '0.00';
  spdNFeDataSets.Campo('vFCPSTRet_W06b').value := '0.00';
  spdNFeDataSets.Campo('vST_W06').value := '0.00';
  spdNFeDataSets.Campo('vFCPST_W06a').value := '0.00';
  spdNFeDataSets.Campo('vFCPSTRet_W06b').value := '0.00';
  spdNFeDataSets.Campo('vProd_W07').value := '0.01';
  spdNFeDataSets.Campo('vFrete_W08').value := '0.00';
  spdNFeDataSets.Campo('vSeg_W09').value := '0.00';
  spdNFeDataSets.Campo('vDesc_W10').value := '0.00';
  spdNFeDataSets.Campo('vII_W11').value := '0.00';
  spdNFeDataSets.Campo('vIPI_W12').value := '0.00';
  spdNFeDataSets.Campo('vIPIDevol_W12a').value := '0.00';
  spdNFeDataSets.Campo('vPIS_W13').value := '0.00';
  spdNFeDataSets.Campo('vCOFINS_W14').value := '0.01';
  spdNFeDataSets.Campo('vOutro_W15').value := '0.00';
  spdNFeDataSets.Campo('vNF_W16').value := '0.01';

  spdNFeDataSets.Campo('modFrete_X02').value := '0';


  spdNFeDataSets.IncluirPart('YA');
  spdNFeDataSets.Campo('tPag_YA02').value := '01';
  spdNFeDataSets.Campo('vPag_YA03').value := '0.01';
  spdNFeDataSets.SalvarPart('YA');

  spdNFeDataSets.Salvar;

  mmXml.Text := spdNFeDataSets.LoteNFe.Text;
  PageControl1.ActivePage := tabXml;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnAssinarClick(Sender: TObject);
begin
  mmXml.Text := spdNFe.AssinarNota(mmXml.Text);
end;
//-----------------------------------------------------------------------------

procedure TDemo_NFe_Form.btnEnviarNfeClick(Sender: TObject);
begin
  mmXmlRetorno.Text := spdNFe.EnviarNF('1',mmXml.Text);

  edtNumRec.Text  := obterNroResultado (mmXmlretorno.Text, '<nRec','</nRec');
  PageControl1.ActivePage := tabXmlRetorno;
end;
//-----------------------------------------------------------------------------
function TDemo_NFe_Form.obterNroResultado(const aXML: XMLString; aTag,
  aEndTag: string): string;
var
  _Posini, _Posfim  : integer;
begin                           //Função para pegar o conteúdo das tags
   Result := '';
  _Posini:= Pos(aTag,aXML);
  _Posfim:= Pos(aEndTag,aXML);
  if  ( _Posini > 0 ) then
    begin
      inc(_PosIni, Length(aTag));
      Result:=Copy(aXML,_Posini+1,(_PosFim-_PosIni)-1);
    end;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnEnviarSincClick(Sender: TObject);
begin
  mmXmlRetorno.Text := spdNFe.EnviarNFSincrono('1', mmXml.Text);
  edtNumProt.Text := obterNroResultado(mmXmlRetorno.Text,'<nProt','</nProt');
  edtId.Text := obterNroResultado(mmXmlRetorno.Text,'<chNFe','</chNFe');
  PageControl1.ActivePage := tabXmlRetorno;
  MontarXmlCompleto;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnConsultRecClick(Sender: TObject);
begin
  mmXmlRetorno.Text      := spdNFe.ConsultarRecibo(edtNumRec.Text);
  edtNumProt.Text := obterNroResultado(mmXmlretorno.Text,'<nProt','</nProt');
  edtId.Text := obterNroResultado(mmXmlRetorno.Text,'<chNFe','</chNFe');
  PageControl1.ActivePage := tabXmlRetorno;
  MontarXmlCompleto;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnConsultNfeClick(Sender: TObject);
begin
  if ChaveInvalida then
  begin
    Showmessage('Chave inválida, favor validar a chave selecionada.');
    edtid.SetFocus;
    Exit;
  end;
  mmXml.Text      := spdNFe.ConsultarNF(edtID.Text);
  edtNumProt.Text := obterNroResultado(mmXml.Text,'<nProt','</nProt>');
  PageControl1.ActivePage := tabXml;
  MontarXmlCompleto;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnInutilizarNfeClick(Sender: TObject);
var
  aAno, aModelo, aSerie, aIni, aFim, txJustificativa: String;
begin
  aAno            := InputBox('NFe', 'Insira o ano da NFe a ser inutilizada',FormatDateTime('YY',date()));
  aModelo         := InputBox('NFe', 'Insira o modelo da NFe a ser inutilizada', '55');
  aSerie          := InputBox('NFe', 'Insira a série da NFe a ser inutilizada', '0');
  aIni            := InputBox('NFe', 'Insira o número da NFe inicial a ser inutilizada', '4');
  aFim            := InputBox('NFe', 'Insira o número da NFe final a ser inutilizada', '9');
  txJustificativa := InputBox('NFe', 'Insira a justificativa (min. 15 caracteres)', 'Exemplo de inutilizacao da NFe');

  mmXml.Text := spdNFe.InutilizarNF('',aAno,edtCNPJ.Text,aModelo,aSerie,aIni,aFim,txJustificativa);
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnPreverClick(Sender: TObject);
begin
    spdNFe.PreverDanfe(mmXmlCompleto.Text);
end;
//-----------------------------------------------------------------------------
function TDemo_NFe_Form.LoadXmlDestinatario(aChaveNFe: String): WideString;
var
  _File:     TStrings;
  _FileName: String;
begin
  _File := TStringList.Create;
  try
    _FileName := ExtractFilePath(ParamStr(0)) + 'XmlDestinatario\' + aChaveNFe + '-nfe.xml';
    if not FileExists(_FileName) then
      raise Exception.CreateFmt('Nao foi possivel encontrar o arquivo XML %s .Verifique se NFe esta autorizada.',[_fileName]);

    _File.LoadFromFile(_FileName);
    _File.SaveToFile('C:\Retorno.txt');
    Result := _File.Text;
  finally
    _File.Free;
  end;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnEditarDanfeClick(Sender: TObject);
begin
  if(edtID.Text <> '') then
  begin
    mmXmlCompleto.Text := LoadXmlDestinatario(edtID.Text);
    spdNFe.EditarModeloDanfe('1',mmXmlCompleto.Text);
    PageControl1.ActivePage := tabXmlImpressao;
  end;

  if mmXmlCompleto.text = '' then
  begin
    CarregarXmlImpressao;
    spdNFe.EditarModeloDanfe('1',mmXmlCompleto.Text);
    PageControl1.ActivePage := tabXmlImpressao;
  end
  else
    spdNFe.EditarModeloDanfe('1',mmXmlCompleto.Text);
    PageControl1.ActivePage := tabXmlImpressao;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnImprimirClick(Sender: TObject);
begin
  if(edtID.Text <> '') then
  begin
    mmXmlCompleto.Text := LoadXmlDestinatario(edtID.Text);
    spdNFe.ImprimirDanfe('1',mmXmlCompleto.Text,'','');
    PageControl1.ActivePage := tabXmlImpressao;
  end;

  if mmXmlCompleto.text = '' then
  begin
    CarregarXmlImpressao;
    spdNFe.ImprimirDanfe('1',mmXmlCompleto.Text);
    PageControl1.ActivePage := tabXmlImpressao;
  end
  else
    spdNFe.ImprimirDanfe('1',mmXmlCompleto.Text,'','');
    PageControl1.ActivePage := tabXmlImpressao;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnExportPdfClick(Sender: TObject);
begin
  if(edtID.Text <> '') then
  begin
    mmXmlCompleto.Text := LoadXmlDestinatario(edtID.Text);
    spdNFe.ExportarDanfe('1',mmXmlCompleto.Text,'',1,'');
    PageControl1.ActivePage := tabXmlImpressao;
  end;

  if mmXmlCompleto.text = '' then
  begin
    CarregarXmlImpressao;
    spdNFe.ExportarDanfe('1',mmXmlCompleto.Text);
    PageControl1.ActivePage := tabXmlImpressao;
  end
  else
    spdNFe.ExportarDanfe('1',mmXmlCompleto.Text,'',1,'');
    PageControl1.ActivePage := tabXmlImpressao;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnVisualizarClick(Sender: TObject);
begin
  if(edtID.Text <> '') then
  begin
    mmXmlCompleto.Text := LoadXmlDestinatario(edtID.Text);
    spdNFe.VisualizarDanfe('1',mmXmlCompleto.Text);
    PageControl1.ActivePage := tabXmlImpressao;
  end;

  if mmXmlCompleto.text = '' then
  begin
    CarregarXmlImpressao;
    spdNFe.VisualizarDanfe('1',mmXmlCompleto.Text);
    PageControl1.ActivePage := tabXmlImpressao;
  end
  else
    spdNFe.VisualizarDanfe('1',mmXmlCompleto.Text);
    PageControl1.ActivePage := tabXmlImpressao;
end;
//-----------------------------------------------------------------------------

procedure TDemo_NFe_Form.btnEnviarEmailClick(Sender: TObject);
begin
  spdNFe.EnviarNotaDestinatario(edtID.Text,'','');
end;
//-----------------------------------------------------------------------------

procedure TDemo_NFe_Form.btnConsultaCadastroClick(Sender: TObject);
begin
  mmXml.Text  := spdNFe.ConsultarCadastro(spdNFe.CNPJ,'CNPJ',spdNFe.UF);
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnLoadConfigClick(Sender: TObject);
begin
  CarregarConfiguracoes;
  ChecarAmbiente;
  spdnfe.DanfeSettings.ModeloRetrato := spdnfe.DiretorioTemplates + 'vm60\Danfe\retrato.rtm';

  if  (edTokenSh.text = '') or (edCnpjSh.text = '') then
  begin
  Showmessage ('Os campos CNPJ e Token precisam estar preenchidos');
  edCnpjSh.SetFocus;
  end
  else
  spdNFe.ConfigurarSoftwareHouse(edCnpjSh.Text,edTokenSh.Text);

  MostrarLabel;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnEventosClick(Sender: TObject);
var
  formEventos: TEventos;
begin
  formEventos := TEventos.Create(Self);
  try
    formEventos.ShowModal;
  finally
  formEventos.Free;
  end;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnConvertXmlDatasetClick(Sender: TObject);
begin
   spdNFeDataSets.VersaoEsquema := pl_009;
   spdNFeDataSets.XMLDicionario := spdNFe.DiretorioTemplates + 'Conversor\NFeDataSets.xml';
   spdNFeDataSets := spdNFe.ConverteXmlParaDataSet(mmXml.Text,pl_009);

   mmXml.Clear;
   //Dados do Cabeçalho da nota
   mmXml.Text := mmXml.Text + 'Série da nota: ' + spdNFeDataSets.Campo('serie_B07').Value + #13+#10;
   mmXml.Text := mmXml.Text + 'Numero da nota: ' + spdNFeDataSets.Campo('nNF_B08').Value + #13+#10;
   mmXml.Text := mmXml.Text + '-------------------------------------' + #13+#10;

   //Dados do emitente
   mmXml.Text := mmXml.Text + 'CNPJ Emitente: ' + spdNFeDataSets.Campo('CNPJ_C02').Value + #13+#10;
   mmXml.Text := mmXml.Text + 'Razão social do emitente: ' + spdNFeDataSets.Campo('xNome_C03').Value + #13+#10;
   mmXml.Text := mmXml.Text + 'Cidade do emitente: ' + spdNFeDataSets.Campo('xMun_C11').Value + #13+#10;
   mmXml.Text := mmXml.Text + '-------------------------------------' + #13+#10;

   //Dados do destinatario
   mmXml.Text := mmXml.Text + 'CNPJ destinatario: ' + spdNFeDataSets.Campo('CNPJ_E02').Value + #13+#10;
   mmXml.Text := mmXml.Text + 'Razão social do destinatario: ' + spdNFeDataSets.Campo('xNome_E04').Value + #13+#10;
   mmXml.Text := mmXml.Text + 'Cidade do destinatario: ' + spdNFeDataSets.Campo('xMun_E11').Value + #13+#10;
   mmXml.Text := mmXml.Text + '-------------------------------------' + #13+#10;

   //Dados do item
   //DSItem := spdNFeDataSets.FindDataset('H')
   spdNFeDataSets.FindDataset ('H');
   spdNFeDataSets.FindDataset('H').First;

     while not(spdNFeDataSets.FindDataSet('H').Eof) do
     begin
       mmXml.Text := mmXml.Text + 'Numero do Item: ' + spdNFeDataSets.Campo('nItem_H02').Value + #13+#10;
       mmXml.Text := mmXml.Text + 'Nome do Produto: ' + spdNFeDataSets.Campo('xProd_I04').Value + #13+#10;

       mmXml.Text := mmXml.Text + 'CST ICMS do Item: ' + spdNFeDataSets.Campo('CST_N12').Value + #13+#10;
       mmXml.Text := mmXml.Text + 'CSOSN ICMS do Item: ' + spdNFeDataSets.Campo('CSOSN_N12a').Value + #13+#10;
       mmXml.Text := mmXml.Text + '-------------------------------------' + #13+#10;
       spdNFeDataSets.FindDataset('H').Next;
     end;

//Dados do totalizador
   mmXml.Text := mmXml.Text + 'Total do ICMS: ' + spdNFeDataSets.Campo('vICMS_W04').Value + #13+#10;
   mmXml.Text := mmXml.Text + 'Total da nota: ' + spdNFeDataSets.Campo('vNF_W16').Value + #13+#10;
   mmXml.Text := mmXml.Text + '-------------------------------------' + #13+#10;
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.spdNFeXmlDestinatario(const aFileName: String);
begin
   ShowMessage(aFileName);
end;
procedure TDemo_NFe_Form.btnGerarRECClick(Sender: TObject);
var
  _XML: String;
begin
  dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
  _NumeroLote        := InputBox('NF-e', 'Insira o Número do Lote: ', '1');
  dlgOpen.Execute;

  if dlgOpen.FileName <> '' then
  begin
    _XML := dlgOpen.FileName;
    mmXml.Lines.LoadFromFile(_XML);
    mmXml.Text := spdNFe.ConverterLoteParaXml(_XML,lkTXTRec,pl_009);
    edtID.Text := obterNroResultado(mmXml.Text,'"NF','" versao');
  end
  else
  begin
    mmXml.Text := spdNFe.ConverterLoteParaXml(mmXml.Text,lkTXTRec,pl_009);
    edtID.Text := obterNroResultado(mmXml.Text,'"NF','" versao');
  end;
end;

procedure TDemo_NFe_Form.btnGeraXMLTX2Click(Sender: TObject);
begin
  if mmXml.Text <> '' then
  begin
    mmXml.Text := spdNFe.ConverterLoteParaXml(mmXml.Text,lkTXTDataSet,pl_009);
  end
  else
  CarregarArquivo;

  edtID.Text := obterNroResultado(mmXml.Text,'"NF','" versao');
end;

procedure TDemo_NFe_Form.btEmailArquivoClick(Sender: TObject);
var
  PDFaux, XMLaux: string;
begin
  PDFaux := '';
  XMLaux := '';

  Showmessage ('Selecione o PDF para envio');
  dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
  dlgOpen.Title      := 'Selecione o PDF para envio.';
  dlgOpen.Execute;

  if dlgOpen.FileName <> '' then
    PDFaux := dlgOpen.FileName
  else
    Exit;

  Showmessage ('Selecione o Xml autorizado para envio');
  dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
  dlgOpen.Title      := 'Selecione o XML para envio.';
  dlgOpen.Execute;

  if dlgOpen.FileName <> '' then
    XMLaux := dlgOpen.FileName
  else
    Exit;

  if (PDFaux <> '') and (XMLaux <> '') then
    spdNFe.EnviarNotaDestinatarioAnexos(PDFaux, XMLaux, '');
end;

procedure TDemo_NFe_Form.Button1Click(Sender: TObject);
var
  aXmlCanceladoEnvio, aXmlCanceladoRetorno: string;
begin

  If mmXmlCanceladoEnvio.text <> '' then
  begin
  aXmlCanceladoEnvio := mmXmlCanceladoEnvio.text
  end
  else
  dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
  ShowMessage('Selecione o Xml de Cancelamento de Envio');
  dlgOpen.Execute;
  aXmlCanceladoEnvio := dlgOpen.FileName;
  mmXmlCanceladoEnvio.Lines.LoadFromFile(aXmlCanceladoEnvio);


  If mmXmlCanceladoEnvio.text <> '' then
  begin
  aXmlCanceladoRetorno := mmXmlCanceladoRetorno.text
  end
  Else
  dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
  ShowMessage('Selecione o Xml de Cancelamento de Retorno');
  dlgOpen.Execute;
  aXmlCanceladoRetorno := dlgOpen.FileName;
  mmXmlCanceladoRetorno.Lines.LoadFromFile(aXmlCanceladoRetorno);


  mmXmlCompleto.text := spdNFe.GerarXMLCancelamentoDestinatario(edtid.Text,aXmlCanceladoEnvio, aXmlCanceladoRetorno, '');
end;

procedure TDemo_NFe_Form.btCancelarNotaClick(Sender: TObject);
var
  formEventos: TEventos;
begin
  formEventos := TEventos.Create(Self);
  try
    formEventos.ShowModal;
  finally
  formEventos.Free;
  end;
end;


procedure TDemo_NFe_Form.cbUFChange(Sender: TObject);
begin
  vIni.WriteString('NFE', 'UF ',cbUF.Text);
end;

procedure TDemo_NFe_Form.MontarXmlCompleto;
begin
  if (mmXmlEnvio.text <> '') and (mmXmlRetorno.Text <> '') then
  mmXmlcompleto.text := spdNfe.GerarXMLEnvioDestinatario(edtId.text, mmXmlEnvio.text, mmXmlRetorno.Text);
end;

procedure TDemo_NFe_Form.MontarXmlCompletoCancelado;
begin
  if (mmXmlCanceladoEnvio.text <> '') and (mmXmlCanceladoRetorno.Text <> '') then
  mmXmlcompleto.text := spdNfe.GerarXMLEnvioDestinatario(edtId.text, mmXmlCanceladoEnvio.text, mmXmlCanceladoRetorno.Text);
end;


procedure TDemo_NFe_Form.btnConsultarDestinadasClick(Sender: TObject);
begin
  form1.ShowModal;
end;

procedure TDemo_NFe_Form.edtCNPJChange(Sender: TObject);
begin
  vIni.WriteString('NFE', 'CNPJ', edtCNPJ.Text);
end;

procedure TDemo_NFe_Form.edCnpjShChange(Sender: TObject);
begin
  vIni.WriteString('NFE', 'CNPJSH', edCnpjSh.Text)
end;

procedure TDemo_NFe_Form.edTokenShChange(Sender: TObject);
begin
  vIni.WriteString('NFE', 'TOKENSH', edTokenSh.text)
end;


procedure TDemo_NFe_Form.edCnpjShKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9', #8, #27, #32]) then
begin
beep;
key := #0;
end;
end;

procedure TDemo_NFe_Form.edtCNPJKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9', #8, #27, #32]) then
begin
beep;
key := #0;
end;
end;

function TDemo_NFe_Form.ChaveInvalida: boolean;
begin
  if (Pos('-', edtID.text) <> 0)
  or (edtID.text = '') then
    Result := True
  else
    Result := False;
end;

procedure TDemo_NFe_Form.rdProducaoClick(Sender: TObject);
begin
  vIni.WriteString('NFE', 'Ambiente', '1');
  spdnfe.Ambiente := akproducao;
  MostrarLabel;
end;

procedure TDemo_NFe_Form.rdHomologacaoClick(Sender: TObject);
begin
  vIni.WriteString('NFE', 'Ambiente', '2');
  spdnfe.Ambiente := akHomologacao;
  MostrarLabel;
end;

procedure TDemo_NFe_Form.Button3Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360010343074-Guia-Geral-Componente-NFe',nil,nil,SW_SHOWMAXIMIZED);
end;

procedure TDemo_NFe_Form.Button4Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://atendimento.tecnospeed.com.br/hc/pt-br/sections/360001177553-Propriedades-do-componente',nil,nil,SW_SHOWMAXIMIZED);
end;


procedure TDemo_NFe_Form.Button5Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://atendimento.tecnospeed.com.br/hc/pt-br/sections/360001159034-M%C3%A9todos-do-componente',nil,nil,SW_SHOWMAXIMIZED);
end;


procedure TDemo_NFe_Form.Button6Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360009515054-Dicion%C3%A1rio-de-dados-',nil,nil,SW_SHOWMAXIMIZED);
end;


end.



