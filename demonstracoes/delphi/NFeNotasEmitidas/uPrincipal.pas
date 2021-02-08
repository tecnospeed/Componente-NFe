unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, spdNFe, spdNFeType, StdCtrls, ShellAPI, IniFiles, ComCtrls,
  ShellCtrls, xmldoc, xmlintf, msxml, msxmldom, XmlDom, XmlConst;

type
  TfrmPrincipal = class(TForm)
    Image1: TImage;
    Shape1: TShape;
    GroupBox1: TGroupBox;
    btnAbrirIni: TButton;
    btnLoadConfig: TButton;
    cbCertificado: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblCNPJ: TLabel;
    lblCNPJSH: TLabel;
    lblCertificado: TLabel;
    Label5: TLabel;
    lblUF: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblConsultaUF: TLabel;
    lblConsultaCNPJ: TLabel;
    lblConsultaNSU: TLabel;
    GroupBox3: TGroupBox;
    btnConsultarDistribuicao: TButton;
    Label10: TLabel;
    lblUltNSU: TLabel;
    GroupBox4: TGroupBox;
    mmXML: TMemo;
    btnTratarXML: TButton;
    slvXMLs: TShellListView;
    Button1: TButton;
    btnImprimir: TButton;
    Button2: TButton;
    Label9: TLabel;
    lblChaveNFe: TLabel;
    btnManifestar: TButton;
    Label11: TLabel;
    lblMaxNSU: TLabel;
    Button3: TButton;
    procedure btnAbrirIniClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLoadConfigClick(Sender: TObject);
    procedure btnConsultarDistribuicaoClick(Sender: TObject);
    procedure btnTratarXMLClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure slvXMLsClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnManifestarClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure ListarArquivos(diretorioInicial, mascara: string; listtotaldir: boolean = false; recursive: boolean = true);
    procedure CarregarUltNSU(nomeDoArquivo: String);
    function ChaveInvalida: boolean;
    function SomenteNumeros(vTexto: string): string;
    procedure CriarDiretorios;
    { Private declarations }
  public
    { Public declarations }
    vIni: TIniFile;
    spdNFe: TspdNFe;
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
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}
function TfrmPrincipal.ChaveInvalida: boolean;
begin
  if (Pos('-', lblChaveNFe.Caption) <> 0)
  or (lblChaveNFe.Caption = '') then
    Result := True
  else
    Result := False;
end;

function TfrmPrincipal.SomenteNumeros(vTexto: string): string;
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

procedure TfrmPrincipal.ListarArquivos(diretorioInicial, mascara: string; listtotaldir: boolean = false; recursive: boolean = true);
var
  i: integer;
  listatemp: TStrings;
  procedure ListarDiretorios(Folder: string; lista: Tstrings);
  var
    Rec: TSearchRec;
    i: integer;
    temps: string;
  begin
    lista.Clear;
    if SysUtils.FindFirst(Folder + '*', faDirectory, Rec) = 0 then
    try
      repeat
        lista.Add(rec.Name);
      until SysUtils.FindNext(Rec) <> 0;
    finally
      if lista.count <> 0 then
      begin
        // deleta o diretorio ..
        lista.Delete(1);
        // deleta o diretorio .
        lista.Delete(0);
        i := 0;
        //deleta os arquivos isto e fica apenas os diretorios
        if lista.count <> 0 then
        begin
          repeat
            temps := lista.Strings[i];
            temps := extractfileext(temps);
            if temps <> '' then
              lista.Delete(i)
            else
              inc(i);
          until i >= lista.Count;
        end;
      end;
    end;
  end;

  procedure ListarAtahos(Folder, mask: string; Lista: Tstrings);
  var
    Rec: TSearchRec;
  begin
    lista.Clear;
    if SysUtils.FindFirst(Folder + mask, faAnyFile, Rec) = 0 then
    try
      repeat
        lista.Add(rec.Name);
      until SysUtils.FindNext(Rec) <> 0;
    finally
      SysUtils.FindClose(Rec);
    end;
  end;

  procedure AddLIstInOther(ListSource, ListDestino: TStrings);
  var
    f: integer;
  begin
    for f := 0 to ListSource.Count - 1 do
    begin
      ListDestino.Add(ListSource.Strings[f]);
    end;
  end;
begin
  listatemp := TStringList.Create;
  ListarAtahos(diretorioInicial, mascara, listatemp);
  if listtotaldir = true then
  begin
    for i := 0 to listatemp.Count - 1 do
    begin
      listatemp.Strings[i] := diretorioInicial + listatemp.Strings[i];
    end;
  end;
  AddLIstInOther(listatemp, listtemp2);
  if recursive = true then
  begin
    ListarDiretorios(diretorioInicial, listatemp);
    for i := 0 to listatemp.Count - 1 do
    begin
      ListarArquivos(diretorioInicial + listatemp.Strings[i] + '', mascara, listtotaldir, recursive);
    end;
  end;
  listatemp.Free;
end;

procedure TfrmPrincipal.btnAbrirIniClick(Sender: TObject);
begin
  ShellExecute(Handle,'Open',pchar('nfeconfig.ini'),'','',SW_SHOWNORMAL);
end;

procedure TfrmPrincipal.CriarDiretorios;
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

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  vDirDestinadas   := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\';
  vDirManifestada  := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlManifest\';
  vDirDestinatario := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlDestinatario\';
  vDirPorChave     := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlPorChave\';
  vDirLogManifest  := ExtractFilePath(Application.ExeName) + 'XmlDestinadas\XmlManifest\XmlLogManifest\';

  CriarDiretorios;

  spdNFE := TspdNFe.Create(nil);
  vIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+ 'nfeconfig.ini');

  vCNPJSH  := vIni.ReadString('NFE', 'cnpjSh','0000000000000');
  vTOKENSH := vIni.ReadString('NFE', 'tokenSh','aaaaaaaaaaaaaaa');
  vUltNSU  := '000000000000000';
  vMaxNSU  := '000000000000000';

  spdNFE.ListarCertificados(cbCertificado.Items);
  cbCertificado.ItemIndex := 0;

  lblChaveNFe.Caption        := '';
  lblUF.Caption              := '';
  lblCNPJ.Caption            := '';
  lblCNPJSH.Caption          := '';
  lblCertificado.Caption     := '';
  lblConsultaUF.Caption      := '';
  lblConsultaCNPJ.Caption    := '';
  lblConsultaNSU.Caption     := '';
  lblUltNSU.Caption          := vUltNSU;
  lblMaxNSU.Caption          := vMaxNSU;

  slvXMLs.Root := vDirDestinadas;
end;

procedure TfrmPrincipal.btnLoadConfigClick(Sender: TObject);
begin
  CriarDiretorios;
  
  spdNFe.ConfigurarSoftwareHouse(vCNPJSH, vTOKENSH);
  spdNFe.LoadConfig(ExtractFilePath(ParamStr(0))+ 'nfeconfig.ini');
  if spdNFe.NomeCertificado.Text = '' then
    spdNFe.NomeCertificado.Text := cbCertificado.Text;

  vUltNSU  := '000000000000000';
  vMaxNSU  := '000000000000000';

  spdNFE.ListarCertificados(cbCertificado.Items);
  cbCertificado.ItemIndex := 0;

  lblChaveNFe.Caption     := '';
  lblConsultaUF.Caption   := '';
  lblConsultaCNPJ.Caption := '';
  lblConsultaNSU.Caption  := '';
  lblUltNSU.Caption       := vUltNSU;
  lblMaxNSU.Caption       := vMaxNSU;
  lblUF.Caption           := spdNFe.UF;
  lblCNPJ.Caption         := spdNFe.CNPJ;
  lblCNPJSH.Caption       := vCNPJSH;
  lblCertificado.Caption  := spdNFe.NomeCertificado.Text;
end;

procedure TfrmPrincipal.CarregarUltNSU(nomeDoArquivo: String);
var
  listaInformacoes : TStringList;
  XML: TXMLDocument;
  XMLnodeAux1: IXMLNode;
  XMLnodeAux2: IXMLNode;
  i : Integer;

  _cUF, _cNF, _mod, _nserieSAT, _nCFe, _dEmi, _hEmi, _cDV, _tpAmb, _CNPJ, _signAC, _assinaturaQRCODE, _numeroCaixa : string;
  _emit_CNPJ, _emit_xNome, _emit_enderEmit,_emit_IE, _emit_cRegTrib, _emit_indRatISSQN : string;
  _emit_xLgr, _emit_nro, _emit_xBairro, _emit_xMun, _emit_CEP : string;
  _dest_CNPJ, _dest_xNome : string;
  _prod_cProd, _xProd, _NCM, _CFOP, _uCom, _qCom, _vUnCom, _vProd, _indRegra, _vItem, _ICMS_Orig, _ICMS_CST, _PIS_CST, _COFINS_CST : string;
  _total_vICMS, _total_vProd, _total_vDesc, _total_vPIS, _total_vCOFINS, _total_vPISST, _total_vOutro : string;
  _pgto_cMP, _pgto_vMP : string;
  _pgto_vTroco, _obsFisco : string;

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

procedure TfrmPrincipal.btnConsultarDistribuicaoClick(Sender: TObject);
var
  vCodigoUF: string;
  vCNPJCPF: string;
  vNSU: string;
begin
  if  (vUltNSU <> '000000000000000')
  and (vUltNSU = vMaxNSU) then
    ShowMessage('Consulta já esta no máximo da NSU.')
  else
  begin
    vCodigoUF := InputBox('Pergunta', 'Sigla da UF à qual será feita a consulta DF-e?', 'PR');
    lblConsultaUF.Caption := vCodigoUF;
    vCodigoUF := IntToStr(spdNFE.ObterCodigoUF(vCodigoUF));
    lblConsultaUF.Caption := lblConsultaUF.Caption + ' - Código:' +  vCodigoUF;
    vCNPJCPF  := InputBox('Pergunta', 'CPF ou CNPJ que solicitou a Distribuição DF-e?', spdNFe.CNPJ);
    vCNPJCPF  := SomenteNumeros(vCNPJCPF);
    vNSU      := InputBox('Pergunta', 'Número NSU (Número Sequencial Unico) inicial da consulta?', vUltNSU);

    mmXML.Text := spdNFE.ConsultarDistribuicaoDFe(vCodigoUF,vCNPJCPF,vNSU,nkUltimo);
    mmXML.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'Destinadas-UltNSU' + vUltNSU);
    CarregarUltNSU(ExtractFilePath(Application.ExeName) + 'Destinadas-UltNSU' + vUltNSU);

    lblConsultaCNPJ.Caption    := vCNPJCPF;
    lblConsultaNSU.Caption     := vNSU;
    lblUltNSU.Caption          := vUltNSU;
    lblMaxNSU.Caption          := vMaxNSU;
  end;
end;

procedure TfrmPrincipal.btnTratarXMLClick(Sender: TObject);
begin
  spdNfe.TratarXMLRetornoDFe(mmXML.Text, vDirDestinadas);

  slvXMLs.Refresh;  
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  slvXMLs.Back;
end;

procedure TfrmPrincipal.slvXMLsClick(Sender: TObject);
begin
  if  (Assigned(slvXMLs))
  and (slvXMLs.SelectedFolder.DisplayName <> '')
  and (Pos('.xml', slvXMLs.SelectedFolder.DisplayName) <> 0) then
  begin
    mmXml.Lines.LoadFromFile(slvXMLs.SelectedFolder.PathName);
    lblChaveNFe.caption := SomenteNumeros(slvXMLs.SelectedFolder.DisplayName);
  end;
end;

procedure TfrmPrincipal.btnImprimirClick(Sender: TObject);
begin
  spdNFe.VisualizarDanfe('1',mmXml.Text);
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
var
  vCodigoUF: string;
  vCNPJCPF: string;
begin
  if ChaveInvalida then
  begin
    Showmessage('Chave inválida, favor validar a chave selecionada.');
    Exit;
  end;  

  vCodigoUF := InputBox('Pergunta', 'Sigla da UF à qual será feita a consulta DF-e?', 'PR');
  lblConsultaUF.Caption := vCodigoUF;
  vCodigoUF := IntToStr(spdNFE.ObterCodigoUF(vCodigoUF));

  vCNPJCPF  := InputBox('Pergunta', 'CPF ou CNPJ que solicitou a Distribuição DF-e?', spdNFe.CNPJ);
  vCNPJCPF  := SomenteNumeros(vCNPJCPF);

  if lblChaveNFe.caption <> '' then
  begin
    mmXml.Text := spdNFe.ConsultarDistribuicaoDFeChave(vCodigoUF, vCNPJCPF, lblChaveNFe.caption);
    spdNfe.TratarXMLRetornoDFe(mmXML.Text, vDirPorChave);
  end;
end;

procedure TfrmPrincipal.btnManifestarClick(Sender: TObject);
begin
  if ChaveInvalida then
  begin
    Showmessage('Chave inválida, favor validar a chave selecionada.');
    Exit;
  end;  

  mmXml.Text := spdNFe.EnviarManifestacaoDestinatario(2, lblChaveNFe.caption, spdNFE.CNPJ, '', FormatDateTime('yyyy-MM-dd''T''HH:mm:ss', Now), 1, '-03:00','91');
  slvXMLs.Refresh;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
  mmXml.Text := spdNFe.ConsultarNF(lblChaveNFe.caption);
end;

end.
