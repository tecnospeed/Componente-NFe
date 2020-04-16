unit Demo_NFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ShellAPI, IniFiles, spdNFe, spdNFeDataSets, spdNFeType,
  ComCtrls, XPMan, spdNFeUtils, jpeg,
  spdNFeValidadorClientAdapter, OleCtrls, spdNotaSegura_TLB, Contnrs;

type
    TfrmEventosNFe = class(TForm);
    TDemo_NFe_Form = class(TForm)
    pgcNFe: TPageControl;
    tbsNfe: TTabSheet;
    GroupBox1: TGroupBox;
    cbCertificado: TComboBox;
    edtUF: TLabeledEdit;
    edtCNPJ: TLabeledEdit;
    edtID: TLabeledEdit;
    edtNumRec: TLabeledEdit;
    edtNumProt: TLabeledEdit;
    btnConfig: TButton;
    btnEnviarNfe: TButton;
    gbImpressao: TGroupBox;
    btnPrever: TButton;
    btnEditarDanfe: TButton;
    btnStatus: TButton;
    btnEnviarSinc: TButton;
    btnGerarDS: TButton;
    btnConsultRec: TButton;
    btnAssinar: TButton;
    btnConsultNfe: TButton;
    btnInutilizarNfe: TButton;
    btnImprimir: TButton;
    btnExportPdf: TButton;
    btnVisualizar: TButton;
    btnEnviarEmail: TButton;
    btnConsultaCadastro: TButton;
    btnLoadConfig: TButton;
    dlgOpen: TOpenDialog;
    mmXml: TMemo;
    btnEventos: TButton;
    btnConvertXmlDataset: TButton;
    btnAuditar: TButton;
    btnGerarREC: TButton;
    btnGeraXMLTX2: TButton;
    spdNFe: TspdNFe;
    spdNFeDataSets: TspdNFeDataSets;
    GroupBox2: TGroupBox;
    mmAudicao: TMemo;
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
    procedure btnAuditarClick(Sender: TObject);
    procedure spdNFeXmlDestinatario(const aFileName: String);
    procedure btnGerarRECClick(Sender: TObject);
    procedure btnGeraXMLTX2Click(Sender: TObject);

    private
    { Private declarations }
    _ModoEnvio: String;
    _NumeroLote: String;
    _NumeroSerie: String;
    _Dir: String;

    function LoadXmlDestinatario(aChaveNFe: String): WideString;
    function obterNroResultado(const aXML: XMLString; aTag : string; aEndTag : string): string;
  public
    { Public declarations }


  end;

var
  Demo_NFe_Form: TDemo_NFe_Form;
  logEnvio : String;
  logRetorno : String;
  vIni: TIniFile;


implementation
uses Math, uEventos, StrUtils;
{$R *.dfm}
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.cbCertificadoChange(Sender: TObject);
begin
  vIni.WriteString('NFE', 'NomeCertificado',cbCertificado.Text);
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.FormCreate(Sender: TObject);
begin
  vIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+ 'nfeconfig.ini');

  spdNFe.AtualizarArquivoServidores := False;
  spdNFe.ConfigurarSoftwareHouse(vIni.ReadString('NFE', 'CNPJSoftwareHouse',''));
  spdNFe.LoadConfig();
  spdNFe.ListarCertificados(cbCertificado.Items);
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnConfigClick(Sender: TObject);
begin//
  ShellExecute(Handle,'Open',pchar('nfeconfig.ini'),'','',SW_SHOWNORMAL);
end;
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
  _NumeroLote   := '1';//InputBox('NF-e','Insira o número do Lote: ','1');
  _NumeroSerie  := '1';//InputBox('NF-e','Insira o número da Série: ','1');
  spdNFe.VersaoManual := vm60;
  spdNFeDataSets.VersaoEsquema := pl_009;

  spdNFeDataSets.XMLDicionario := spdNFe.DiretorioTemplates +'Conversor\NFeDataSets.xml';


  spdNFeDataSets.Incluir;
  spdNFeDataSets.Campo('versao_A02').Value := '4.00';
  spdNFeDataSets.Campo('cUF_B02').value := '41';
  spdNFeDataSets.Campo('cNF_B03').value := '555434';
  spdNFeDataSets.Campo('natOp_B04').value := 'VENDA DE MERCADORIA ADQ. DE TERCEIRO - PF E PJ NAO CONTRIBUI';
  spdNFeDataSets.Campo('mod_B06').value := '55';
  spdNFeDataSets.Campo('serie_B07').value := '500';
  spdNFeDataSets.Campo('nNF_B08').value := '5548164';
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
  spdNFeDataSets.Campo('xNome_C03').value := 'TECNOSPEED & TECNOLOGIA';
  spdNFeDataSets.Campo('xFant_C04').value := 'TECNOSPEED & TECNOLOGIA';
  spdNFeDataSets.Campo('xLgr_C06').value := 'RUA DO POVO';
  spdNFeDataSets.Campo('nro_C07').value := '711';
  spdNFeDataSets.Campo('xBairro_C09').value := 'parque petrobrás';
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
  spdNFeDataSets.Campo('xMun_E11').value := 'MARINGÁ';
  spdNFeDataSets.Campo('UF_E12').value := 'PR';
  spdNFeDataSets.Campo('CEP_E13').value := '87500000';
  spdNFeDataSets.Campo('cPais_E14').value := '1058';
  spdNFeDataSets.Campo('xPais_E15').value := 'BRASIL';
  spdNFeDataSets.Campo('fone_E16').value := '445555555';
  spdNFeDataSets.Campo('INDIEDEST_E16A').value := '1';
  spdNFeDataSets.Campo('IE_E17').value := '9044016688';
  spdNFeDataSets.Campo('IM_E18A').value := '';

  spdNFeDataSets.Campo('email_e19').value := '';

  spdNFeDataSets.Campo('CNPJ_GA02').value := '';

  spdNFeDataSets.IncluirItem;
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
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnAssinarClick(Sender: TObject);
begin
  mmXml.Text := spdNFe.AssinarNota(mmXml.Text);
end;
//-----------------------------------------------------------------------------

procedure TDemo_NFe_Form.btnEnviarNfeClick(Sender: TObject);
begin
  mmXml.Text      := spdNFe.EnviarNF('1',mmXml.Text);
  edtNumRec.Text  := obterNroResultado (mmXml.Text, '<nRec','</nRec');    
end;
//-----------------------------------------------------------------------------
function TDemo_NFe_Form.obterNroResultado(const aXML: XMLString; aTag,
  aEndTag: string): string;
var
  _Posini, _Posfim  : integer;
begin
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
  mmXml.Text := spdNFe.EnviarNFSincrono('1', mmXml.Text);
  edtNumProt.Text := obterNroResultado(mmXml.Text,'<nProt','</nProt');
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnConsultRecClick(Sender: TObject);
begin
  mmXml.Text      := spdNFe.ConsultarRecibo(edtNumRec.Text);
  edtNumProt.Text := obterNroResultado(mmXml.Text,'<nProt','</nProt');
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnConsultNfeClick(Sender: TObject);
begin
  mmXml.Text      := spdNFe.ConsultarNF(edtID.Text);
  edtNumProt.Text := obterNroResultado(mmXml.Text,'<nProt','</nProt>');
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
    spdNFe.PreverDanfe(mmXml.Text);
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
    mmXml.Text := LoadXmlDestinatario(edtID.Text);
    spdNFe.EditarModeloDanfe('1',mmXml.Text)
  end
  else
    spdNFe.EditarModeloDanfe('1',mmXml.Text);
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnImprimirClick(Sender: TObject);
begin
  if(edtID.Text <> '') then
  begin
    mmXml.Text := LoadXmlDestinatario(edtID.Text);
    spdNFe.ImprimirDanfe('1',mmXml.Text,'','')
  end
  else
    spdNFe.ImprimirDanfe('1',mmXml.Text,'','');
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnExportPdfClick(Sender: TObject);
begin
  if(edtID.Text <> '') then
  begin
    mmXml.Text := LoadXmlDestinatario(edtID.Text);
    spdNFe.ExportarDanfe('1',mmXml.Text,'',1,'')
  end
  else
    spdNFe.ExportarDanfe('1',mmXml.Text,'',1,'');
end;
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.btnVisualizarClick(Sender: TObject);
begin
  if(edtID.Text <> '') then
  begin
    mmXml.Text := LoadXmlDestinatario(edtID.Text);
    spdNFe.VisualizarDanfe('1',mmXml.Text)
  end
  else
    spdNFe.VisualizarDanfe('1',mmXml.Text);
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
begin//
  spdNFe.LoadConfig();


  edtUF.Text          := spdNFe.UF;
  cbCertificado.Text  := spdNFe.NomeCertificado.Text;
  edtCNPJ.Text        := spdNFe.CNPJ; 

  spdNFe.MaxSizeLoteEnvio := 500;

  if spdNFe.Ambiente = akProducao then
    if Application.MessageBox('O ambiente definido no INI esta como PRODUÇÃO, deseja alterar para HOMOLOGAÇÃO?','CUIDADO!!',mb_yesno + MB_ICONWARNING) = id_yes then
      spdNFe.Ambiente := akHomologacao;
end;
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
procedure TDemo_NFe_Form.spdNFeLog(const aNome, aID, aFileName: String);
begin
  if((aNome = 'env-sinc-lot') or (aNome = 'env-lot') or (aNome = 'caneve-env')) Then
    logEnvio := aFileName;
  if((aNome = 'rec-sinc') or (aNome = 'pro-rec') or (aNome = 'sit') or (aNome = 'caneve-ret')) Then
    logRetorno := aFileName;
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
   mmXml.Text := mmXml.Text + '-------------------------------------' + #13;

   //Dados do emitente
   mmXml.Text := mmXml.Text + 'CNPJ Emitente: ' + spdNFeDataSets.Campo('CNPJ_C02').Value + #13;
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
procedure TDemo_NFe_Form.btnAuditarClick(Sender: TObject);
var
  Validador : TspdValidadorClientX;
begin
  Validador := TspdValidadorClientX.Create(nil);

  Validador.Servidor := 'http://validadornfe.tecnospeed.com.br:8181/validadorgui/validar';
  Validador.ModoOperacao := moLocal;
  Validador.ExibirRegrasValidacao := True;
  Validador.CodigoProduto := 1;
  Validador.Estagio := esProducao;
  Validador.TipoResposta := trTexto;
  Validador.LinguagemResposta := tlHtml;
  ShowMessage(spdnfe.DiretorioTemplates);
  ShowMessage(spdnfe.DiretorioEsquemas);
  Validador.DiretorioTemplates := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Templates\auditor\';
  Validador.DiretorioEsquemas := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Esquemas\auditor\';
  Validador.DiretorioRegras := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Templates\auditor\Regras\';
  Validador.DiretorioLogErro := '\LogErro\';
  Validador.WidthHtml := 700;
  Validador.HeigthHtml := 500;
  mmAudicao.Text := Validador.ValidarXml(mmXml.Text,'|');
//  Validador.ShowHtml(Validador.ValidarXml(mmXml.Text,'|'));
end;

procedure TDemo_NFe_Form.spdNFeXmlDestinatario(const aFileName: String);
begin
   ShowMessage(aFileName);
end;
procedure TDemo_NFe_Form.btnGerarRECClick(Sender: TObject);
var
  _XML: String;
begin
  dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
  _NumeroLote        := '1';//InputBox('NF-e', 'Insira o Número do Lote: ', '1');
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
var
  _XML: String;
begin
  if mmXml.Text <> '' then
  begin
    mmXml.Text := spdNFe.ConverterLoteParaXml(mmXml.Text,lkTXTDataSet,pl_009);
  end
  else
  begin
    dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpen.Execute;

    if dlgOpen.FileName <> '' then
    begin
      _XML := dlgOpen.FileName;
      mmXml.Lines.LoadFromFile(_XML);
      mmXml.Text := spdNFe.ConverterLoteParaXml(_XML,lkTXTDataSet,pl_009);
    end
  end;
  edtID.Text := obterNroResultado(mmXml.Text,'"NF','" versao');
end;

end.



