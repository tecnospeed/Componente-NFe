unit uDistribuicaoDFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI, ExtCtrls, IniFiles, Grids, ComCtrls,
  ActiveX, XMLDoc, NFeX_TLB, msxml6_tlb;

type
  TfrmDistribuicaoDFe = class(TForm)
    grpInformacoes: TGroupBox;
    grpRetorno: TGroupBox;
    edtCnpjCpf: TEdit;
    cbUF: TComboBox;
    btnConsultarDFe: TButton;
    lblCnpjCpf: TLabel;
    lblUF: TLabel;
    edtNSU: TEdit;
    lblNSU: TLabel;
    rdgNSU: TRadioGroup;
    pgcRetorno: TPageControl;
    tabListagem: TTabSheet;
    tabXML: TTabSheet;
    mmoXml: TMemo;
    grdNotas: TStringGrid;
    Panel1: TPanel;
    btnDownloadNFe: TButton;
    lblTextoQtdNotas: TLabel;
    lblChaveDownloadNFe: TLabel;
    edtChaveDownload: TEdit;
    lblStatusDownloadNFe: TLabel;
    edtStatusDownloadNFe: TEdit;
    edtQtdNotas: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarDFeClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDownloadNFeClick(Sender: TObject);
    procedure grdNotasSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
    function GetCodigoUF(const aIndexUf: integer): string;
    function GetValueTagFilho(aTagPai, aTagFilho, aXML : string): string;
    function RemoveNameSpaces(aXMLString: string): string;
    procedure DescompactarDFe;
  public
    { Public declarations }
    fCnpjSoftwareHouse: string;
  end;

var
  frmDistribuicaoDFe: TfrmDistribuicaoDFe;
  spdNFeX: TspdNFeX;
  
implementation

{$R *.dfm}

procedure TfrmDistribuicaoDFe.FormCreate(Sender: TObject);
begin
  spdNFeX := TspdNFeX.Create(nil);
end;

procedure TfrmDistribuicaoDFe.FormShow(Sender: TObject);
var
  _ArquivoIni : string;
begin
  spdNFeX.ConfigurarSoftwareHouse(fCnpjSoftwareHouse,''); //***Configure com o CNPJ de sua Software House
  
  //Le as configurações do arquivo nfeConfig.ini
  _ArquivoIni := ExtractFilePath(ParamStr(0)) + 'nfeConfig.ini';
  if FileExists(_ArquivoIni) then
    spdNFeX.LoadConfig(_ArquivoIni);

  edtCnpjCpf.Text := spdNFeX.CNPJ;
  cbUF.ItemIndex := cbUF.Items.IndexOf(spdNFeX.UF);
end;

procedure TfrmDistribuicaoDFe.FormDestroy(Sender: TObject);
begin
  spdNFeX.Free;
end;

procedure TfrmDistribuicaoDFe.btnConsultarDFeClick(Sender: TObject);
var
  _tipoNSU : TOleEnum;
  _xml : WideString;
begin
  edtQtdNotas.Text := '0';
  edtChaveDownload.Text := '';
  edtStatusDownloadNFe.Text := '';
  mmoXml.Lines.Text := '';

  if rdgNSU.ItemIndex = 1 then
    _tipoNSU := nkEspecifico
  else
    _tipoNSU := nkUltimo;

  _xml := spdNFeX.ConsultarDistribuicaoDFe(
    GetCodigoUF(cbUF.ItemIndex),
    edtCnpjCpf.Text,
    edtNSU.Text,
    _tipoNSU);

  if (_xml <> EmptyStr) then
  begin
    mmoXml.Lines.Text := xmlDoc.FormatXMLData(_xml);  
    DescompactarDFe;
  end;
end;

function TfrmDistribuicaoDFe.GetCodigoUF(const aIndexUf: integer): string;
begin
  case aIndexUf of
    0  : Result := '12'; //AC
    1  : Result := '27'; //AL
    2  : Result := '13'; //AM
    3  : Result := '16'; //AP
    4  : Result := '29'; //BA
    5  : Result := '23'; //CE
    6  : Result := '53'; //DF
    7  : Result := '32'; //ES
    8  : Result := '52'; //GO
    9  : Result := '21'; //MA
    10 : Result := '31'; //MG
    11 : Result := '50'; //MS
    12 : Result := '51'; //MT
    13 : Result := '15'; //PA
    14 : Result := '25'; //PB
    15 : Result := '26'; //PE
    16 : Result := '22'; //PI
    17 : Result := '41'; //PR
    18 : Result := '33'; //RJ
    19 : Result := '24'; //RN
    20 : Result := '11'; //RO
    21 : Result := '14'; //RR
    22 : Result := '43'; //RS
    23 : Result := '42'; //SC
    24 : Result := '28'; //SE
    25 : Result := '35'; //SP
    26 : Result := '17'; //TO
  end;
end;

function TfrmDistribuicaoDFe.RemoveNameSpaces(aXMLString: string): string;

const
  // An XSLT script for removing the namespaces from any document. It will remove the prefix as well.
  // From http://wiki.tei-c.org/index.php/Remove-Namespaces.xsl
  cRemoveNSTransform =
    '<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">'
    + '<xsl:output method="xml" indent="no"/>' +

    '<xsl:template match="/|comment()|processing-instruction()">' +
    '    <xsl:copy>' + '      <xsl:apply-templates/>' + '    </xsl:copy>' +
    '</xsl:template>' +

    '<xsl:template match="*">' + '    <xsl:element name="{local-name()}">' +
    '      <xsl:apply-templates select="@*|node()"/>' + '    </xsl:element>' +
    '</xsl:template>' +

    '<xsl:template match="@*">' + '    <xsl:attribute name="{local-name()}">' +
    '      <xsl:value-of select="."/>' + '    </xsl:attribute>' +
    '</xsl:template>' +

    '</xsl:stylesheet>';

var
  _Doc, _XSL: IXMLDOMDocument2;
  _Res: string;
  _p: integer;
begin
  _Doc := CoDOMDocument60.Create;
  _Doc.ASync := false;
  _XSL := CoDOMDocument60.Create;
  _XSL.ASync := false;
  try
    _Doc.loadXML(aXMLString);
    _XSL.loadXML(cRemoveNSTransform);
    _Res := _Doc.TransFormNode(_XSL);
    // This now contains the original text with a <?xml version="1.0" encoding="UTF-16"?> prepended; remove it:
    _p := Pos('?>', _Res);
    Result := Copy(_Res, _p + 2, Length(_Res));
  except
    on E: Exception do
      result := E.Message;
  end;
end;

procedure TfrmDistribuicaoDFe.DescompactarDFe;

  var
    _lXMLDoc: IXMLDOMDocument2;

  procedure confgObject(aXML: WideString);
  begin
    try
      _lXMLDoc := CoDOMDocument60.Create;
      _lXMLDoc.setProperty('SelectionLanguage', 'XPath');
      if aXML <> EmptyStr then
        _lXMLDoc.loadXML(RemoveNameSpaces(aXML))
      else
        raise Exception.Create('XML não informado!');
    except
      on E: Exception do
        Exception.Create(E.Message);
    end;
  end;

var
  _auxXML : Widestring;
  _i, _j, _jx : Integer;
  _listaXML, _chaves : TStringList;
  _lNodeList, _iRSEmitente, _iVNF : IXMLDOMNodeList; //tipagem da MSXML6_TLB
  _qtdChaves, _linhaGrid : Integer;
begin
  grdNotas.ColCount := 0;
  grdNotas.RowCount := 0;
  grdNotas.Cells[0, 0] := '';

  if (mmoXml.Text = EmptyStr) then
  begin
    ShowMessage('O xml do Retorno DFe está vazio.'
      +#13#10+'Execute o botão '+btnConsultarDFe.Caption);
    btnConsultarDFe.SetFocus;
  end
  else
  begin
    _listaXML := TStringList.Create;
    _chaves := TStringList.Create;
    _qtdChaves := 0;
    try
      confgObject(mmoXml.Text);

      //Criando NodeList com XML compactado
      _lNodeList := _lXMLDoc.selectNodes('//retDistDFeInt/loteDistDFeInt/docZip');
      //Verifica se o NodeList não está vazia, para evitar AV
      if (_lNodeList.length > 0) then
      begin
        for _i := 0 to _lNodeList.length - 1 do
        begin
          _auxXML := _lNodeList.item[_i].text;
          //Descompactando XML e adicionando a lista
          _listaXML.Add(spdNFeX.DescompactarXMLZip(_auxXML));
        end;

        //contando Chaves
        for _jx := 0 to _listaXML.Count - 1 do
        begin
          confgObject(_listaXML.Strings[_jx]);
          //Criando NodeList com as chaves
          _lNodeList := _lXMLDoc.selectNodes('//resNFe/chNFe');
          if (_lNodeList.length > 0) then
          begin
            for _i := 0 to _lNodeList.length - 1 do
            begin
              _qtdChaves := _qtdChaves + 1;
            end;
          end;
        end;

        //Montar Grid
        with grdNotas Do
        begin
          ColCount := 4;
          RowCount := _qtdChaves + 1;

          Cells[0, 0] := 'Chave NF-e';
          Cells[1, 0] := 'Emitente';
          Cells[2, 0] := 'vNF (R$)';
          Cells[3, 0] := 'XML';

          grdNotas.ColWidths[0] := 270;
          grdNotas.ColWidths[1] := 200;
          grdNotas.ColWidths[2] := 50;
          grdNotas.ColWidths[3] := 300;
        end;

        //Loop para carregar XML's da lista.
        _linhaGrid := 1;
        for _j := 0 to _listaXML.Count - 1 do
        begin
          confgObject(_listaXML.Strings[_j]);
          //Criando NodeList com as chaves
          _lNodeList := _lXMLDoc.selectNodes('//resNFe/chNFe');
          _iRSEmitente := _lXMLDoc.selectNodes('//resNFe/xNome');
          _iVNF := _lXMLDoc.selectNodes('//resNFe/vNF');

          if (_lNodeList.length > 0) then
          begin
            for _i := 0 to _lNodeList.length - 1 do
            begin
              with grdNotas do
              begin
                Cells[0, _linhaGrid] := _lNodeList.item[_i].text;
                Cells[1, _linhaGrid] := _iRSEmitente.item[_i].text;
                Cells[2, _linhaGrid] := 'R$ ' + _iVNF.item[_i].text;
                Cells[3, _linhaGrid] := _listaXML.Strings[_j];
              end;
              _linhaGrid := _linhaGrid + 1;

              edtChaveDownload.Text := _lNodeList.item[_i].text;
            end;
          end;
        end;
      end;

      edtQtdNotas.Text := IntToStr(_qtdChaves);
    finally
      FreeAndNil(_listaXML);
      FreeAndNil(_chaves);

      if _qtdChaves > 0 then
        pgcRetorno.ActivePage := tabListagem
      else
        pgcRetorno.ActivePage := tabXML;      
    end;
  end;
end;

procedure TfrmDistribuicaoDFe.btnDownloadNFeClick(Sender: TObject);
var
  _lXMLDocDownload: IXMLDOMDocument2;
  _lNodeListDownload: IXMLDOMNodeList;
  _lNodeDownload: IXMLDOMNode;
  _xmlDownload: string;

  procedure configObjDownload(aXML: widestring);
  begin
    try
      _lXMLDocDownload := CoDOMDocument60.Create;
      _lXMLDocDownload.setProperty('SelectionLanguage', 'XPath');
      if aXML <> EmptyStr then
        _lXMLDocDownload.loadXML(RemoveNameSpaces(aXML))
      else
        raise Exception.Create('XML não informado!');
    except
      on E: Exception do
        Exception.Create(E.Message);
    end;
  end;

  function trataRetDownload(aRetDownload: WideString): String;
  begin
    configObjDownload(aRetDownload);
    _lNodeListDownload := _lXMLDocDownload.selectNodes('//retDistDFeInt/xMotivo');
    if (_lNodeListDownload.length > 0 ) then
    begin
      _lNodeDownload := _lNodeListDownload.item[0];
      if _lNodeDownload.text = 'Documento localizado' then
        Result := 'XML disponível em: ' + spdNFeX.DiretorioDownloads + edtChaveDownload.Text + '-nfe.xml'
      else
        Result := GetValueTagFilho('retDistDFeInt','cStat', aRetDownload)
          +' - '+ GetValueTagFilho('retDistDFeInt','xMotivo', aRetDownload);
    end
    else
      raise Exception.Create('Estrutura não encontrada no XML');
  end;

begin
  if (Trim(edtChaveDownload.Text) = EmptyStr) then
    ShowMessage('Não foi selecionada nenhuma NF-e.')
  else
  begin
    try
      btnDownloadNFe.Enabled := False;    
      try
        _xmlDownload := spdNFeX.ConsultarDistribuicaoDFeChave(
          GetCodigoUF(cbUF.ItemIndex),
          edtCnpjCpf.Text,
          edtChaveDownload.Text);
        edtStatusDownloadNFe.Text := trataRetDownload(_xmlDownload);
      finally
        btnDownloadNFe.Enabled := True;
      end;
    except
      raise;
    end;
  end;
end;

procedure TfrmDistribuicaoDFe.grdNotasSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  edtStatusDownloadNFe.Text := '';
  if ARow > 0 then
    edtChaveDownload.Text := grdNotas.Cells[0, ARow]
  else
    edtChaveDownload.Text := '';
end;

function TfrmDistribuicaoDFe.GetValueTagFilho(aTagPai, aTagFilho, aXML: string): string;

  function GetValueTag(aTag, aTxt: String): String;
  var
    _PINI, _PFIN: integer;
    _Txt: string;
  begin
    _Txt := StringReplace(aTxt, ' xmlns="http://www.portalfiscal.inf.br/nfe">','>', [rfReplaceAll]);

    _PINI := Pos('<' + aTag + '>', _Txt) + (Length(aTag) + 2);
    _PFIN := Pos('</' + aTag + '>', _Txt);

    Result := Copy(_Txt, _PINI, _PFIN - _PINI);
  end;
  
begin
  aXML := GetValueTag(aTagPai, aXml);
  Result := GetValueTag(aTagFilho, aXML);
end;

end.
