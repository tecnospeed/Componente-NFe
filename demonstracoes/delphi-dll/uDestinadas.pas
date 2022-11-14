unit uDestinadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI, IniFiles, spdNFeLibAdapter, ExtCtrls, xmldoc,
  xmlintf, msxml, msxmldom, XmlDom, XmlConst;

type
  TfrmDestinadas = class(TForm)
    GroupBox1: TGroupBox;
    cbCertificadoDest: TComboBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    cbUFEmi: TComboBox;
    edtCNPJDest: TLabeledEdit;
    Label5: TLabel;
    btnManifestarNota: TButton;
    btnConsultarPelaChave: TButton;
    mmXml: TMemo;
    Label10: TLabel;
    lblUltNSU: TLabel;
    Label11: TLabel;
    lblMaxNSU: TLabel;
    Label8: TLabel;
    lblConsultaNSU: TLabel;
    btnConsultarDistribuicao: TButton;
    edtChaveNotaDest: TLabeledEdit;
    procedure cbCertificadoDestChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarDistribuicaoClick(Sender: TObject);
    procedure btnConsultarNotaDestClick(Sender: TObject);
    procedure btnManifestarNotaClick(Sender: TObject);
    procedure btnConsultarPelaChaveClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FIni: TIniFile;
    procedure CarregarUltNSU(nomeDoArquivo: String);
    function SomenteNumeros(vTexto: string): string;
    procedure CriarDiretorios;
    function ChaveInvalida: boolean;
  public
    FUltNSU: string;
    FMaxNSU: string;
    listtemp2: TStrings;
    FDirDestinadas   : string;
    FDirManifestada  : string;
    FDirDestinatario : string;
    FDirPorChave     : string;
    FDirLogManifest  : string;
  end;

var
  frmDestinadas: TfrmDestinadas;

implementation

uses Demo_NFe;

{$R *.dfm}

function TfrmDestinadas.ChaveInvalida: boolean;
begin
  if (Pos('-', edtChaveNotaDest.text) <> 0) or (edtChaveNotaDest.text = '') then
    Result := True
  else
    Result := False;
end;

procedure TfrmDestinadas.cbCertificadoDestChange(Sender: TObject);
begin
  FIni.WriteString('NFE', 'NomeCertificado', cbCertificadoDest.text);
end;

procedure TfrmDestinadas.FormCreate(Sender: TObject);
begin
  FIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+ 'nfeconfig.ini');
  cbCertificadoDest.Items.Clear;
  cbCertificadoDest.Items.Delimiter := '|';
  try
    cbCertificadoDest.Items.DelimitedText := ObterCertificados(CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;    
end;

procedure TfrmDestinadas.FormDestroy(Sender: TObject);
begin
  FIni.Free;
end;

function TfrmDestinadas.SomenteNumeros(vTexto: string): string;
var
  _Text : PChar;
begin
  _Text := PChar(vTexto);
  Result := '';
 
  while (_Text^ <> #0) do
  begin
    {$IFDEF UNICODE}
    if CharInSet(_Text^, ['0'..'9']) then
    {$ELSE}
    if _Text^ in ['0'..'9'] then
    {$ENDIF}
      Result := Result + _Text^;
 
    Inc(_Text);
  end;
end;

procedure TfrmDestinadas.CarregarUltNSU(nomeDoArquivo: String);
var
  XML: TXMLDocument;

  procedure CarregarArquivo;
  begin
    XML := TXMLDocument.Create(self);
    XML.LoadFromFile(nomeDoArquivo);
    XML.Active := True;
  end;

  function obterValor(tag: string; XMLNodeAux: IXMLNode): string;
  var I: Integer;
      NodeText: string;
  begin
    Result := '';

    if XMLNodeAux.NodeType <> ntElement then
    Exit;

    NodeText := XMLNodeAux.NodeName;

    if  (XMLNodeAux.IsTextElement)
    and (UpperCase(NodeText) = UpperCase(tag)) then
    begin
      Result := XMLNodeAux.NodeValue;
      exit;
    end;

    if XMLNodeAux.HasChildNodes then
      for I := 0 to XMLNodeAux.ChildNodes.Count - 1 do
      begin
        Result := obterValor(tag, XMLNodeAux.ChildNodes[I]);
        if Result <> '' then
          Break;
      end;
  end;

  function BuscarNode(tag: string; XMLNodeAux: IXMLNode): IXMLNode;
  var I: Integer;
      NodeText: string;
  begin
    Result := nil;

    NodeText := XMLNodeAux.NodeName;

    if (UpperCase(NodeText) = UpperCase(tag)) then
    begin
      Result := XMLNodeAux;
      exit;
    end;

    if XMLNodeAux.HasChildNodes then
      for I := 0 to XMLNodeAux.ChildNodes.Count - 1 do
      begin
        Result := BuscarNode(tag, XMLNodeAux.ChildNodes[I]);
        if Assigned(Result) then
          Break;
      end;
  end;

begin
  CarregarArquivo;

  FUltNSU := obterValor('ultNSU',XML.DocumentElement);
  FMaxNSU := obterValor('maxNSU',XML.DocumentElement);
end;

procedure TfrmDestinadas.FormShow(Sender: TObject);
begin
  cbCertificadoDest.text := Demo_NFe_Form.cbCertificado.text;
  edtCNPJDest.text := Demo_NFe_Form.edtCNPJ.text;

  FDirDestinadas   := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\';
  FDirManifestada  := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlManifest\';
  FDirDestinatario := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlDestinatario\';
  FDirPorChave     := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlPorChave\';
  FDirLogManifest  := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlManifest\XmlLogManifest\';

  CriarDiretorios;

  FUltNSU  := '000000000000000';
  FMaxNSU  := '000000000000000';
end;

procedure TfrmDestinadas.btnConsultarDistribuicaoClick(Sender: TObject);
var
  _CodigoUF, _CNPJCPF, _NSU : string;
begin
  if  (FUltNSU <> '000000000000000') and (FUltNSU = FMaxNSU) then
    ShowMessage('Consulta já esta no máximo da NSU.')
  else
  begin
    _CodigoUF := cbUFEmi.text;
    _CodigoUF := IntToStr(ObterCodigoUF(ToWideChar(_CodigoUF)));


    _CNPJCPF  := edtCNPJDest.text;
    _CNPJCPF  := SomenteNumeros(_CNPJCPF);
    _NSU      := InputBox('Pergunta', 'Número NSU (Número Sequencial Unico) inicial da consulta?', FUltNSU);

    try
      mmXML.Text := ConsultarDistribuicaoDFe(CONFIGFILE, ToWideChar(_CodigoUF), ToWideChar(_CNPJCPF), ToWideChar(_NSU), nkUltimo);
    except
      on e: Exception do TratarExcecoes(e);
    end;

    mmXML.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'Destinadas-UltNSU' + FUltNSU);
    CarregarUltNSU(ExtractFilePath(Application.ExeName) + 'Destinadas-UltNSU' + FUltNSU);

    try
      TratarXMLRetornoDFe(ToWideChar(mmXML.Text), ToWideChar(FDirDestinadas), CONFIGFILE); //Metodo para tratar o retorno criptografado da SEFAZ
    except
      on e: Exception do TratarExcecoes(e);
    end;

    ShowMessage('Caminho do download:  ' + FDirDestinadas);

    lblConsultaNSU.Caption     := _NSU;
    lblUltNSU.Caption          := FUltNSU;
    lblMaxNSU.Caption          := FMaxNSU;
  end;
end;

procedure TfrmDestinadas.CriarDiretorios;
begin
  if not DirectoryExists(FDirDestinadas) then
    CreateDir(FDirDestinadas);

  if not DirectoryExists(FDirManifestada) then
    CreateDir(FDirManifestada);

  if not DirectoryExists(FDirDestinatario) then
    CreateDir(FDirDestinatario);

  if not DirectoryExists(FDirPorChave) then
    CreateDir(FDirPorChave);

  if not DirectoryExists(FDirLogManifest) then
    CreateDir(FDirLogManifest);
end;

procedure TfrmDestinadas.btnConsultarNotaDestClick(Sender: TObject);
begin
  try
    mmXml.Text := ConsultarNF(ToWideChar(edtChaveNotaDest.text), CONFIGFILE, 1);  // tpEmis: Tipo de Emissão (1-Normal / 2-SCAN)
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TfrmDestinadas.btnManifestarNotaClick(Sender: TObject);
var
  _Codigo: String;
begin
  if ChaveInvalida then
  begin
    ShowMessage('Chave inválida, favor validar a chave selecionada.');
    Exit;
  end;

  _Codigo := InputBox
    ('Deseja realizar qual Manifestação:',
    '1 - Confirmação da Operação'+#13+
    '2 - Ciência da operação'+#13+
    '3 - Desconhecimento da operação'+#13+
    '4 - Operação não Realizada.','');

  try
    mmXml.Text := EnviarManifestacaoDestinatario(StrToInt(_Codigo), ToWideChar(edtChaveNotaDest.text),
      ToWideChar(edtCNPJDest.Text), '', ToWideChar(FormatDateTime('yyyy-MM-dd''T''HH:mm:ss', Now)), '-03:00',
      CONFIGFILE, 1, '91');
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TfrmDestinadas.btnConsultarPelaChaveClick(Sender: TObject);
var
  _CodigoUF: string;
  _CNPJCPF: string;
begin
  if ChaveInvalida then
  begin
    ShowMessage('Chave inválida, favor validar a chave selecionada.');
    Exit;
  end;

  _CodigoUF := cbUFEmi.text;

  _CodigoUF := IntToStr(ObterCodigoUF(ToWideChar(_CodigoUF)));

  _CNPJCPF  := edtCNPJDest.text;
  _CNPJCPF  := SomenteNumeros(_CNPJCPF);

  if edtChaveNotaDest.text <> '' then
  begin
    try
      mmXml.Text := ConsultarDistribuicaoDFeChave(ToWideChar(_CodigoUF), ToWideChar(_CNPJCPF),
        ToWideChar(edtChaveNotaDest.text), CONFIGFILE);
      TratarXMLRetornoDFe(ToWideChar(mmXML.Text), ToWideChar(FDirPorChave), CONFIGFILE);
      ShowMessage('Pasta do Download: ' + FDirPorChave);
    except
      on e: Exception do TratarExcecoes(e);
    end;
  end;
end;

end.
