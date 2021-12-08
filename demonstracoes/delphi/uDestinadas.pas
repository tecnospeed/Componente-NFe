unit uDestinadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI, IniFiles, spdNFe, spdNFeType, ExtCtrls, xmldoc, xmlintf, msxml, msxmldom, XmlDom, XmlConst;

type
    TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    cbCertificadoDest: TComboBox;
    Label1: TLabel;
    btnConfig: TButton;
    btnLoadConfig: TButton;
    spdNFe1: TspdNFe;
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
    procedure btnConfigClick(Sender: TObject);
    procedure btnLoadConfigClick(Sender: TObject);
    procedure cbCertificadoDestChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarDistribuicaoClick(Sender: TObject);
    procedure btnConsultarNotaDestClick(Sender: TObject);
    procedure btnManifestarNotaClick(Sender: TObject);
    procedure btnConsultarPelaChaveClick(Sender: TObject);
  private
    procedure CarregarUltNSU(nomeDoArquivo: String);

    function SomenteNumeros(vTexto: string): string;
    procedure CriarDiretorios;
    function ChaveInvalida: boolean;

    { Private declarations }
  public
    { Public declarations }
    vCNPJSH: string;
    vTOKENSH: string;
    vUltNSU: string;
    vMaxNSU: string;
    listtemp2: TStrings;
    vDirDestinadas   : string;
    vDirManifestada  : string;
    vDirDestinatario : string;
    vDirPorChave     : string;
    vDirLogManifest  : string;
  end;

var
  Form1: TForm1;
  vIni: TIniFile;

implementation
uses Demo_NFe;

{$R *.dfm}

function TForm1.ChaveInvalida: boolean;
begin
  if (Pos('-', edtChaveNotaDest.text) <> 0)
  or (edtChaveNotaDest.text = '') then
    Result := True
  else
    Result := False;
end;


procedure TForm1.btnConfigClick(Sender: TObject);
begin
  ShellExecute(Handle,'Open',pchar('nfeconfig.ini'),'','',SW_SHOWNORMAL);
end;

procedure TForm1.btnLoadConfigClick(Sender: TObject);
begin
  spdNFe1.LoadConfig();

  if cbCertificadoDest.text = '' then
  cbCertificadoDest.Text  := spdNFe1.NomeCertificado.Text;

  if edtCNPJDest.text = '' then
  edtCNPJDest.Text        := spdNFe1.CNPJ;
end;

procedure TForm1.cbCertificadoDestChange(Sender: TObject);
begin
 vIni.WriteString('NFE', 'NomeCertificado', cbCertificadoDest.text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 vIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+ 'nfeconfig.ini');
 spdNFe1.ListarCertificados(cbCertificadoDest.Items);
end;

function TForm1.SomenteNumeros(vTexto: string): string;
var
  vText : PChar;
begin
  vText := PChar(vTexto);
  Result := '';
 
  while (vText^ <> #0) do
  begin
    {$IFDEF UNICODE}
    if CharInSet(vText^, ['0'..'9']) then
    {$ELSE}
    if vText^ in ['0'..'9'] then
    {$ENDIF}
      Result := Result + vText^;
 
    Inc(vText);
  end;
end;


procedure TForm1.CarregarUltNSU(nomeDoArquivo: String);
var
  listaInformacoes : TStringList;
  XML: TXMLDocument;
  XMLnodeAux1: IXMLNode;
  i : Integer;


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

  vUltNSU := obterValor('ultNSU',XML.DocumentElement);
  vMaxNSU := obterValor('maxNSU',XML.DocumentElement);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  spdnfe1.LoadConfig();
  cbCertificadoDest.text := Demo_NFe_Form.cbCertificado.text;
  edtCNPJDest.text := Demo_NFe_Form.edtCNPJ.text;


  vDirDestinadas   := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\';
  vDirManifestada  := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlManifest\';
  vDirDestinatario := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlDestinatario\';
  vDirPorChave     := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlPorChave\';
  vDirLogManifest  := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlManifest\XmlLogManifest\';

  CriarDiretorios;

  vUltNSU  := '000000000000000';
  vMaxNSU  := '000000000000000';

end;


procedure TForm1.btnConsultarDistribuicaoClick(Sender: TObject);
var
  vCodigoUF, vCNPJCPF, vNSU : string;
begin
  if  (vUltNSU <> '000000000000000')
  and (vUltNSU = vMaxNSU) then
    ShowMessage('Consulta já esta no máximo da NSU.')
  else
  begin
    vCodigoUF := cbUFEmi.text;
    vCodigoUF := IntToStr(spdNFe1.ObterCodigoUF(vCodigoUF));


    vCNPJCPF  := edtCNPJDest.text;
    vCNPJCPF  := SomenteNumeros(vCNPJCPF);
    vNSU      := InputBox('Pergunta', 'Número NSU (Número Sequencial Unico) inicial da consulta?', vUltNSU);

    mmXML.Text := spdNFe1.ConsultarDistribuicaoDFe(vCodigoUF,vCNPJCPF,vNSU,nkUltimo);

    mmXML.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'Destinadas-UltNSU' + vUltNSU);
    CarregarUltNSU(ExtractFilePath(Application.ExeName) + 'Destinadas-UltNSU' + vUltNSU);

    spdNfe1.TratarXMLRetornoDFe(mmXML.Text, vDirDestinadas); //Metodo para tratar o retorno criptografado da SEFAZ

    showmessage('Caminho do download:  ' + vDirDestinadas);


    lblConsultaNSU.Caption     := vNSU;
    lblUltNSU.Caption          := vUltNSU;
    lblMaxNSU.Caption          := vMaxNSU;
  end;
end;

procedure TForm1.CriarDiretorios;
begin
  if not DirectoryExists(vDirDestinadas) then
    CreateDir(vDirDestinadas);

  if not DirectoryExists(vDirManifestada) then
    CreateDir(vDirManifestada);

  if not DirectoryExists(vDirDestinatario) then
    CreateDir(vDirDestinatario);

  if not DirectoryExists(vDirPorChave) then
    CreateDir(vDirPorChave);

  if not DirectoryExists(vDirLogManifest) then
    CreateDir(vDirLogManifest);
end;

procedure TForm1.btnConsultarNotaDestClick(Sender: TObject);
begin
  mmXml.Text := spdNFe1.ConsultarNF(edtChaveNotaDest.text);
end;

procedure TForm1.btnManifestarNotaClick(Sender: TObject);
var
  vcodigo: String;
begin
  if ChaveInvalida then
  begin
    Showmessage('Chave inválida, favor validar a chave selecionada.');
    Exit;
  end;

  vcodigo := InputBox
  ('Deseja realizar qual Manifestação:',
  '1 - Confirmação da Operação'+#13+
  '2 - Ciência da operação'+#13+
  '3 - Desconhecimento da operação'+#13+
  '4 - Operação não Realizada.','');


  mmXml.Text := spdNFe1.EnviarManifestacaoDestinatario(StrToInt(vcodigo), edtChaveNotaDest.text, spdNFE1.CNPJ, '', FormatDateTime('yyyy-MM-dd''T''HH:mm:ss', Now), 1, '-03:00','91');
end;

procedure TForm1.btnConsultarPelaChaveClick(Sender: TObject);
var
  vCodigoUF: string;
  vCNPJCPF: string;
begin
  if ChaveInvalida then
  begin
    Showmessage('Chave inválida, favor validar a chave selecionada.');
    Exit;
  end;

  vCodigoUF := cbUFEmi.text;

  vCodigoUF := IntToStr(spdNFE1.ObterCodigoUF(vCodigoUF));

  vCNPJCPF  := edtCNPJDest.text;
  vCNPJCPF  := SomenteNumeros(vCNPJCPF);

  if edtChaveNotaDest.text <> '' then
  begin
    mmXml.Text := spdNFe1.ConsultarDistribuicaoDFeChave(vCodigoUF, vCNPJCPF, edtChaveNotaDest.text);
    spdNfe1.TratarXMLRetornoDFe(mmXML.Text, vDirPorChave);
    Showmessage('Pasta do Download: ' + vDirporChave);
  end;
end;

end.
