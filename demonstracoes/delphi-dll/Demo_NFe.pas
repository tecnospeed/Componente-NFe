unit Demo_NFe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ShellAPI, IniFiles, ComCtrls, spdNFeLibAdapter;

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
    TabImpressao: TTabSheet;
    TabDemaisMetodos: TTabSheet;
    GroupBox3: TGroupBox;
    cbCertificado: TComboBox;
    Label4: TLabel;
    btnConfig: TButton;
    btnLoadConfig: TButton;
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
    btnConsultaCadastro: TButton;
    btnEventos: TButton;
    btnGerarXmlCancDest: TButton;
    btCancelarNota: TButton;
    pgcXMLs: TPageControl;
    tsXml: TTabSheet;
    tsXmlEnvio: TTabSheet;
    mmXml: TMemo;
    tsXmlRetorno: TTabSheet;
    GroupBox5: TGroupBox;
    edCnpjSh: TEdit;
    edTokenSh: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    TabSheet4: TTabSheet;
    tsXmlCanEveEnv: TTabSheet;
    tsXmlCanEveRet: TTabSheet;
    tsXmlImpressao: TTabSheet;
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
    procedure FormDestroy(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
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
    procedure btnEventosClick(Sender: TObject);
    procedure spdNFeXmlDestinatario(const aFileName: String);
    procedure btnGerarRECClick(Sender: TObject);
    procedure btnGeraXMLTX2Click(Sender: TObject);
    procedure btEmailArquivoClick(Sender: TObject);
    procedure btnGerarXmlCancDestClick(Sender: TObject);
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
    FIni: TIniFile;
    function LoadXmlDestinatario(aChaveNFe: string): WideString;
    function ObterNroResultado(const aXML: string; aTag : string; aEndTag : string): string;
    procedure CarregarConfiguracoes;
    function ChaveInvalida: boolean;
    procedure MostrarLabel;
    procedure ChecarAmbiente;
    function CarregarXmlImpressao: Boolean;
    procedure PermitirApenasCharsCNPJ(var Key: char);
  public

  end;

// Utilitárias
function ToWideChar(const aString: WideString): PWideChar;
procedure TratarExcecoes(e: Exception);

var
  Demo_NFe_Form: TDemo_NFe_Form;

const
  CONFIGFILE = 'nfeConfig.ini';
  DLG_FILTER_XML = 'Arquivos XML (*.xml)|*.xml';  

implementation

uses
  uEventos, uDestinadas;
  
{$R *.dfm}

procedure TDemo_NFe_Form.cbCertificadoChange(Sender: TObject);
begin
  FIni.WriteString('NFE', 'NomeCertificado', cbCertificado.Text);
end;

procedure TDemo_NFe_Form.ChecarAmbiente;
begin
  if FIni.ReadInteger('NFE', 'Ambiente', 2) = 1 then
    rdProducao.Checked := True
  else
    rdHomologacao.Checked := True;
end;

function TDemo_NFe_Form.CarregarXmlImpressao: Boolean;
var
  _XML: String;
begin
  if edtID.Text <> '' then
    mmXmlCompleto.Lines.Text := LoadXmlDestinatario(edtID.Text)
  else if mmXmlCompleto.Lines.Text = '' then
  begin
    dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpen.Filter := DLG_FILTER_XML;
    dlgOpen.Execute;

    if dlgOpen.FileName <> '' then
    begin
      _XML := dlgOpen.FileName;
      mmXmlCompleto.Lines.LoadFromFile(_XML);
    end;
  end;
  pgcXMLs.ActivePage := tsXmlImpressao;
  Result := mmXmlCompleto.Lines.Text <> '';
end;

procedure TDemo_NFe_Form.FormCreate(Sender: TObject);
begin
  FIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+ 'nfeconfig.ini');
  Demo_NFe_Form.Caption := 'Tecnospeed NFe - Versão: ' + Versao;

  cbCertificado.Items.Clear;
  cbCertificado.Items.Delimiter := '|';
  try
    cbCertificado.Items.DelimitedText := ObterCertificados(CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;

  CarregarConfiguracoes;
  ChecarAmbiente;
end;

procedure TDemo_NFe_Form.FormDestroy(Sender: TObject);
begin
  FIni.Free;
end;

procedure TDemo_NFe_Form.MostrarLabel;
begin
  if rdProducao.Checked then
  begin
    Label2.caption := 'Ambiente de Produção';
    Label2.Font.Color := clRed;
  end
  else
  begin
    Label2.caption := 'Ambiente de Homologação';
    Label2.Font.Color := clBlue;
  end;
end;

procedure TDemo_NFe_Form.CarregarConfiguracoes;
begin
  cbUF.Text := FIni.ReadString('NFE', 'UF', '');
  cbCertificado.Text := FIni.ReadString('NFE', 'NomeCertificado','');
  edtCNPJ.Text := FIni.ReadString('NFE', 'CNPJ','');
  edCnpjSh.Text := FIni.ReadString('NFE', 'CNPJSH','');
  edTokenSh.Text := FIni.ReadString('NFE', 'TOKENSH','');
end;

procedure TDemo_NFe_Form.btnConfigClick(Sender: TObject);
begin
  ShellExecute(Handle, 'Open', CONFIGFILE, '', '', SW_SHOWNORMAL);
end;

procedure TDemo_NFe_Form.btnStatusClick(Sender: TObject);
begin
  try
    mmXml.Text := StatusDoServico(CONFIGFILE, 1);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.btnAssinarClick(Sender: TObject);
begin
  try
    mmXml.Text := AssinarNota(ToWideChar(mmXml.Text), CONFIGFILE, 1);  // tpEmis: Tipo de Emissão (1-Normal / 2-SCAN)
  except
    on e: Exception do TratarExcecoes(e);
  end;
    
  pgcXMLs.ActivePage := tsXml;
end;

procedure TDemo_NFe_Form.btnEnviarNfeClick(Sender: TObject);
begin
  try
    mmXmlRetorno.Text := EnviarNF('1', ToWideChar(mmXml.Text), False, CONFIGFILE, 1);  // tpEmis: Tipo de Emissão (1-Normal / 2-SCAN)
  except
    on e: Exception do TratarExcecoes(e);
  end;

  edtNumRec.Text  := ObterNroResultado (mmXmlretorno.Text, '<nRec','</nRec');
  pgcXMLs.ActivePage := tsXmlRetorno;
end;

function TDemo_NFe_Form.ObterNroResultado(const aXML: string; aTag, aEndTag: string): string;
var
  _Posini, _Posfim: integer;
begin                           //Função para pegar o conteúdo das tags
  Result := '';
  _Posini:= Pos(aTag,aXML);
  _Posfim:= Pos(aEndTag,aXML);
  if (_Posini > 0) then
  begin
    inc(_PosIni, Length(aTag));
    Result := Copy(aXML, _Posini+1, (_PosFim - _PosIni) - 1);
  end;
end;

procedure TDemo_NFe_Form.btnEnviarSincClick(Sender: TObject);
begin
  try
    mmXmlRetorno.Text := EnviarNFSincrono('1', ToWideChar(mmXml.Text), False, CONFIGFILE, 1);  // tpEmis: Tipo de Emissão (1-Normal / 2-SCAN)
  except
    on e: Exception do TratarExcecoes(e);
  end;
  edtNumProt.Text := ObterNroResultado(mmXmlRetorno.Text,'<nProt','</nProt');
  edtId.Text := ObterNroResultado(mmXmlRetorno.Text,'<chNFe','</chNFe');
  pgcXMLs.ActivePage := tsXmlRetorno;
  MontarXmlCompleto;
end;

procedure TDemo_NFe_Form.btnConsultRecClick(Sender: TObject);
var
  _nrec: WideString;
begin
  _nrec := edtNumRec.Text;
  try
    mmXmlRetorno.Text := ConsultarRecibo(ToWideChar(_nrec), CONFIGFILE, 1);  // tpEmis: Tipo de Emissão (1-Normal / 2-SCAN)
  except
    on e: Exception do TratarExcecoes(e);
  end;
    
  edtNumProt.Text := ObterNroResultado(mmXmlretorno.Text,'<nProt','</nProt');
  edtId.Text := ObterNroResultado(mmXmlRetorno.Text,'<chNFe','</chNFe');
  pgcXMLs.ActivePage := tsXmlRetorno;
  MontarXmlCompleto;
end;

procedure TDemo_NFe_Form.btnConsultNfeClick(Sender: TObject);
begin
  if ChaveInvalida then
  begin
    Showmessage('Chave inválida, favor validar a chave selecionada.');
    edtID.SetFocus;
    Exit;
  end;
  
  try
    mmXml.Text := ConsultarNF(ToWideChar(edtID.Text), CONFIGFILE, 1);  // tpEmis: Tipo de Emissão (1-Normal / 2-SCAN)
  except
    on e: Exception do TratarExcecoes(e);
  end;
  
  edtNumProt.Text := ObterNroResultado(mmXml.Text,'<nProt','</nProt>');
  pgcXMLs.ActivePage := tsXml;
  MontarXmlCompleto;
end;

procedure TDemo_NFe_Form.btnInutilizarNfeClick(Sender: TObject);
var
  _Ano, _Modelo, _Serie, _Ini, _Fim, _Justificativa: String;
begin
  _Ano           := InputBox('NFe', 'Insira o ano da NFe a ser inutilizada',FormatDateTime('YY',date()));
  _Modelo        := InputBox('NFe', 'Insira o modelo da NFe a ser inutilizada', '55');
  _Serie         := InputBox('NFe', 'Insira a série da NFe a ser inutilizada', '0');
  _Ini           := InputBox('NFe', 'Insira o número da NFe inicial a ser inutilizada', '4');
  _Fim           := InputBox('NFe', 'Insira o número da NFe final a ser inutilizada', '9');
  _Justificativa := InputBox('NFe', 'Insira a justificativa (min. 15 caracteres)', 'Exemplo de inutilizacao da NFe');

  try
    mmXml.Text := InutilizarNF('', ToWideChar(_Ano), ToWideChar(edtCNPJ.Text), ToWideChar(_Modelo),
      ToWideChar(_Serie), ToWideChar(_Ini), ToWideChar(_Fim), ToWideChar(_Justificativa), CONFIGFILE, 1);  // tpEmis: Tipo de Emissão (1-Normal / 2-SCAN)
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.btnPreverClick(Sender: TObject);
begin
  try
    PreverDanfe(ToWideChar(mmXmlCompleto.Text), '', CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

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
    Result := _File.Text;
  finally
    _File.Free;
  end;
end;

procedure TDemo_NFe_Form.btnEditarDanfeClick(Sender: TObject);
begin
  if CarregarXmlImpressao then
  try
    EditarModeloDanfe('1', ToWideChar(mmXmlCompleto.Text), '', CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.btnImprimirClick(Sender: TObject);
begin
  if CarregarXmlImpressao then
  try
    ImprimirDanfe('1', ToWideChar(mmXmlCompleto.Text), '', CONFIGFILE, '');
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.btnExportPdfClick(Sender: TObject);
begin
  if CarregarXmlImpressao then
  try
    ExportarDanfe('1', ToWideChar(mmXmlCompleto.Text), '', 1, CONFIGFILE, '');
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.btnVisualizarClick(Sender: TObject);
begin
  if CarregarXmlImpressao then
  try
    VisualizarDanfe('1', ToWideChar(mmXmlCompleto.Text), '', CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.btnEnviarEmailClick(Sender: TObject);
begin
  try
    EnviarNotaDestinatario(ToWideChar(edtID.Text), '', '', CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.btnConsultaCadastroClick(Sender: TObject);
begin
  try
    mmXml.Text := ConsultarCadastro(ToWideChar(edtCNPJ.Text), 'CNPJ', ToWideChar(cbUF.Text), CONFIGFILE, 1);  // tpEmis: Tipo de Emissão (1-Normal / 2-SCAN)
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.btnLoadConfigClick(Sender: TObject);
begin
  { A Lib DLL do Componente NFe não usa rotina LoadConfig.
    Todas as rotinas tem de informar o caminho do arquivo nfeConfig.ini
    (string vazia indica que está junto ao executável). 
    Sendo assim vamos meramente carregar na tela algumas configurações do INI. } 

  CarregarConfiguracoes;
  ChecarAmbiente;
  MostrarLabel;
end;

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

procedure TDemo_NFe_Form.spdNFeXmlDestinatario(const aFileName: String);
begin
  ShowMessage(aFileName);
end;

procedure TDemo_NFe_Form.btnGerarRECClick(Sender: TObject);
var
  _XML, _NumeroLote: String;
begin
  dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
  _NumeroLote        := InputBox('NF-e', 'Insira o Número do Lote: ', '1');
  dlgOpen.Execute;

  try
    if dlgOpen.FileName <> '' then
    begin
      _XML := dlgOpen.FileName;
      mmXml.Lines.LoadFromFile(_XML);
      mmXml.Text := ConverterLoteParaXml(ToWideChar(_XML), CONFIGFILE, Integer(lkTXTRec), 'pl_009i');
      edtID.Text := ObterNroResultado(mmXml.Text,'"NF','" versao');
    end
    else
    begin
      mmXml.Text := ConverterLoteParaXml(ToWideChar(mmXml.Text), CONFIGFILE, Integer(lkTXTRec), 'pl_009i');
      edtID.Text := ObterNroResultado(mmXml.Text,'"NF','" versao');
    end;
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.btnGeraXMLTX2Click(Sender: TObject);
begin
  dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
  dlgOpen.Filter := 'Arquivos TX2 (*.tx2)|*.tx2';

  if dlgOpen.Execute then
  begin
    mmXml.Lines.LoadFromFile(dlgOpen.FileName);

    if Application.MessageBox('Deseja incrementar o número da nota (nNF) e atualizar a data/hora de emissão?',
      'Arquivo TX2', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      mmXml.Lines.Values['nNF_B08'] := IntToStr(StrToInt(mmXml.Lines.Values['nNF_B08']) + 1);
      mmXml.Lines.Values['DHEMI_B09'] := FormatDateTime('yyyy-MM-dd''T''HH:mm:ss''-03:00''', Now);
      mmXml.Lines.Values['DHSAIENT_B10'] := mmXml.Lines.Values['DHEMI_B09'];
      mmXml.Lines.SaveToFile(dlgOpen.FileName);
    end;

    try
      mmXml.Lines.Text := ConverterLoteParaXml(ToWideChar(mmXml.Lines.Text), CONFIGFILE, Integer(lkTXTDataSet), 'pl_009i');
    except
      on e: Exception do TratarExcecoes(e);
    end;
  end;

  edtID.Text := ObterNroResultado(mmXml.Text,'"NF','" versao');
  pgcXMLs.ActivePage := tsXml;
end;

procedure TDemo_NFe_Form.btEmailArquivoClick(Sender: TObject);
var
  _PdfAux, _XmlAux: string;
begin
  _PdfAux := '';
  _XmlAux := '';

  Showmessage ('Selecione o PDF para envio');
  dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
  dlgOpen.Title      := 'Selecione o PDF para envio.';
  dlgOpen.Execute;

  if dlgOpen.FileName <> '' then
    _PdfAux := dlgOpen.FileName
  else
    Exit;

  Showmessage ('Selecione o Xml autorizado para envio');
  dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
  dlgOpen.Title      := 'Selecione o XML para envio.';
  dlgOpen.Execute;

  if dlgOpen.FileName <> '' then
    _XmlAux := dlgOpen.FileName
  else
    Exit;

  if (_PdfAux <> '') and (_XmlAux <> '') then
  try
    EnviarNotaDestinatarioAnexos(ToWideChar(_PdfAux), ToWideChar(_XmlAux), '', CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.btnGerarXmlCancDestClick(Sender: TObject);
var
  _XmlCanceladoEnvio, _XmlCanceladoRetorno: string;
begin

  If mmXmlCanceladoEnvio.Text <> '' then
  begin
    _XmlCanceladoEnvio := mmXmlCanceladoEnvio.Text;
  end
  else
  begin
    dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
    ShowMessage('Selecione o Xml de Cancelamento de Envio');
    dlgOpen.Filter := DLG_FILTER_XML;
    if not dlgOpen.Execute then Exit;
    _XmlCanceladoEnvio := dlgOpen.FileName;
    mmXmlCanceladoEnvio.Lines.LoadFromFile(_XmlCanceladoEnvio);
  end;

  If mmXmlCanceladoRetorno.Text <> '' then
  begin
    _XmlCanceladoRetorno := mmXmlCanceladoRetorno.Text;
  end
  else
  begin
    dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
    dlgOpen.Filter := DLG_FILTER_XML;
    ShowMessage('Selecione o Xml de Cancelamento de Retorno');
    if not dlgOpen.Execute then Exit;
    _XmlCanceladoRetorno := dlgOpen.FileName;
    mmXmlCanceladoRetorno.Lines.LoadFromFile(_XmlCanceladoRetorno);
  end;

  try
    mmXmlCompleto.Text := GerarXMLCancelamentoDestinatario(ToWideChar(edtID.Text), ToWideChar(_XmlCanceladoEnvio),
      ToWideChar(_XmlCanceladoRetorno), '', CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
  pgcXMLs.ActivePage := tsXmlImpressao;
end;

procedure TDemo_NFe_Form.btCancelarNotaClick(Sender: TObject);
var
  formEventos: TEventos;
begin
  formEventos := TEventos.Create(Self);
  try
    formEventos.edtChaveNotaCancel.Text := edtID.Text;
    formEventos.edtNumProtCancel.Text := edtNumProt.Text;
    formEventos.pgcPageControlEventos.ActivePage := formEventos.tsCancelarNFe;    
    formEventos.ShowModal;
  finally
    formEventos.Free;
  end;
end;

procedure TDemo_NFe_Form.cbUFChange(Sender: TObject);
begin
  FIni.WriteString('NFE', 'UF ',cbUF.Text);
end;

procedure TDemo_NFe_Form.MontarXmlCompleto;
begin
  if (mmXmlEnvio.text <> '') and (mmXmlRetorno.Text <> '') then
  try
    mmXmlcompleto.text := GerarXMLEnvioDestinatario(ToWideChar(edtId.text), ToWideChar(mmXmlEnvio.text),
      ToWideChar(mmXmlRetorno.Text), '', CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.MontarXmlCompletoCancelado;
begin
  if (mmXmlCanceladoEnvio.text <> '') and (mmXmlCanceladoRetorno.Text <> '') then
  try
    mmXmlcompleto.text := GerarXMLEnvioDestinatario(ToWideChar(edtId.text), ToWideChar(mmXmlCanceladoEnvio.text),
      ToWideChar(mmXmlCanceladoRetorno.Text), '', CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TDemo_NFe_Form.btnConsultarDestinadasClick(Sender: TObject);
begin
  frmDestinadas.ShowModal;
end;

procedure TDemo_NFe_Form.edtCNPJChange(Sender: TObject);
begin
  FIni.WriteString('NFE', 'CNPJ', edtCNPJ.Text);
end;

procedure TDemo_NFe_Form.edCnpjShChange(Sender: TObject);
begin
  FIni.WriteString('NFE', 'CNPJSH', edCnpjSh.Text);
end;

procedure TDemo_NFe_Form.edTokenShChange(Sender: TObject);
begin
  FIni.WriteString('NFE', 'TOKENSH', edTokenSh.text);
end;

procedure TDemo_NFe_Form.edCnpjShKeyPress(Sender: TObject; var Key: Char);
begin
  PermitirApenasCharsCNPJ(Key);
end;

procedure TDemo_NFe_Form.edtCNPJKeyPress(Sender: TObject; var Key: Char);
begin
  PermitirApenasCharsCNPJ(Key);
end;

function TDemo_NFe_Form.ChaveInvalida: boolean;
begin
  if (Pos('-', edtID.text) <> 0) or (edtID.text = '') then
    Result := True
  else
    Result := False;
end;

procedure TDemo_NFe_Form.rdProducaoClick(Sender: TObject);
begin
  FIni.WriteString('NFE', 'Ambiente', '1');
  MostrarLabel;
end;

procedure TDemo_NFe_Form.rdHomologacaoClick(Sender: TObject);
begin
  FIni.WriteString('NFE', 'Ambiente', '2');
  MostrarLabel;
end;

procedure TDemo_NFe_Form.Button3Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360010343074-Guia-Geral-Componente-NFe',nil,nil,SW_SHOWMAXIMIZED);
end;

procedure TDemo_NFe_Form.Button4Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://atendimento.tecnospeed.com.br/hc/pt-br/articles/4422741644439-Propriedades-NF-e',nil,nil,SW_SHOWMAXIMIZED);
end;

procedure TDemo_NFe_Form.Button5Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://atendimento.tecnospeed.com.br/hc/pt-br/articles/4405009828119-Lista-de-M%C3%A9todos-Componente-NF-e',nil,nil,SW_SHOWMAXIMIZED);
end;

procedure TDemo_NFe_Form.Button6Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360009515054-Dicion%C3%A1rio-de-dados-',nil,nil,SW_SHOWMAXIMIZED);
end;

procedure TDemo_NFe_Form.PermitirApenasCharsCNPJ(var Key: char);
begin
  if not (Key in ['0'..'9', #8, #27, #32]) then
  begin
    Beep;
    Key := #0;
  end;
end;

{ Utilitárias }

function ToWideChar(const aString: WideString): PWideChar;
begin
  { Todas as rotinas da Lib usam como string o tipo PWideChar
    (ponteiro para WideChar, string Unicode / UTF-16 Little-Endian) }
  Result := PWideChar(aString);
end;

procedure TratarExcecoes(e: Exception);
var
  _UltimoErro: string;
begin
  _UltimoErro := GetUltimoErro;
  { Exceções em Libs DLL não podem ser interpretadas corretamente pelo Delphi.
    Nesse caso implementamos uma rotina para obter o último erro ocorrido. }
  if _UltimoErro <> '' then
    raise Exception.Create(_UltimoErro)
  else
    raise e;
end;

end.

