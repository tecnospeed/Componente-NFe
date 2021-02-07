unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter;

type
  TForm1 = class(TForm)
    edtCNPJSH: TEdit;
    edtCNPJDest: TEdit;
    edtToken: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    pgc1: TPageControl;
    tsRetorno: TTabSheet;
    mmoRetorno1: TMemo;
    btnCadDestinatario: TButton;
    edtProtocolo: TEdit;
    lbl4: TLabel;
    btnAdcConsulta: TButton;
    btnConsProtocolo: TButton;
    btnBaixarNotas: TButton;
    btnBaixar1Nota: TButton;
    btnListarEventos1Nt: TButton;
    btnBaixarXML1Evento: TButton;
    edtChaveNFe: TEdit;
    lbl5: TLabel;
    APINFeDest: TRESTClient;
    APIRequest: TRESTRequest;
    APIResponse: TRESTResponse;
    btnStatus: TButton;
    APIResponseDSAdapter: TRESTResponseDataSetAdapter;
    fdmTbResponse: TFDMemTable;
    rgConsulta: TRadioGroup;
    dtpDtInicio: TDateTimePicker;
    dtpDtFinal: TDateTimePicker;
    lbl6: TLabel;
    lbl7: TLabel;
    edtIDEvento: TEdit;
    lbl8: TLabel;
    tsRetorno2: TTabSheet;
    mmoRetornoTratado: TMemo;
    API1: TRESTClient;
    API2: TRESTRequest;
    API3: TRESTResponse;
    procedure btnStatusClick(Sender: TObject);
    procedure btnAdcConsultaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsProtocoloClick(Sender: TObject);
    procedure btnBaixarNotasClick(Sender: TObject);
    procedure btnBaixar1NotaClick(Sender: TObject);
    procedure btnListarEventos1NtClick(Sender: TObject);
    procedure btnBaixarXML1EventoClick(Sender: TObject);
    procedure btnCadDestinatarioClick(Sender: TObject);
  private
    procedure LerRetorno;
    procedure ExecutarRequest(pComHeader: Boolean; pResource: string; pMetodo: TRESTRequestMethod; pContentType: string = '');
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.JSON;

{$R *.dfm}

procedure TForm1.LerRetorno;
var
  I : Integer;
begin
  mmoRetorno1.Lines.Clear;
  mmoRetornoTratado.Lines.Clear;

  if Assigned(APIResponse.JSONValue) then
  begin
    mmoRetorno1.Lines.Text := APIResponse.JSONValue.ToString;

    fdmTbResponse.Open;
    fdmTbResponse.First;

    while not fdmTbResponse.Eof do
    begin
      for I := 0 to fdmTbResponse.FieldCount - 1 do
      begin
        mmoRetornoTratado.Lines.Add(fdmTbResponse.Fields[I].FieldName + ' = ' + fdmTbResponse.Fields[I].AsString);

        if fdmTbResponse.Fields[I].FieldName = 'id' then
          edtProtocolo.Text := fdmTbResponse.Fields[I].AsString;
      end;

      fdmTbResponse.Next;
    end;
  end
  else
  begin
    if APIResponse.StatusCode = 200 then
      mmoRetorno1.Lines.Text := 'Sucesso status: ' + IntToStr(APIResponse.StatusCode)
    else
      mmoRetorno1.Lines.Text := 'Error: ' + IntToStr(APIResponse.StatusCode);
  end;
end;

procedure TForm1.btnAdcConsultaClick(Sender: TObject);
var
  jsBody: TJSONobject;

  procedure GerarJSON;
  var
    jsPeriodo: TJSONobject;
    jsChaves : TJSONArray;
  begin
    jsBody    := TJSONobject.Create;
    jsPeriodo := TJSONobject.Create;
    jsChaves  := TJSONArray.Create;

    if rgConsulta.ItemIndex = 0 then
    begin
      jsPeriodo.AddPair('dataInicial', FormatDateTime('yyyy-mm-dd', dtpDtInicio.Date));
      jsPeriodo.AddPair('dataFinal', FormatDateTime('yyyy-mm-dd', dtpDtFinal.Date));
      jsBody.AddPair(TJSONPair.Create('periodo', jsPeriodo));
    end
    else
    begin
      jsChaves.Add(edtChaveNFe.Text);
      jsBody.AddPair(TJSONPair.Create('nfeChaves', jsChaves));
    end;
  end;
begin
  APINFeDest.Accept        := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
  APINFeDest.AcceptCharset := 'utf-8, *;q=0.8';
  APINFeDest.ContentType   := 'application/json';

  APIRequest.Params.Clear;
  APIRequest.ClearBody;

  APIRequest.Params.AddHeader('token_sh', edtToken.Text);
  APIRequest.Params.AddHeader('cpfCnpjSoftwareHouse', edtCNPJSH.Text);
  APIRequest.Params.AddHeader('cpfCnpjDestinatario', edtCNPJDest.Text);

  APIRequest.AddParameter('Content-Type', 'application/json', TRESTRequestParameterKind.pkHTTPHEADER, [poDoNotEncode]);

  GerarJSON;
  APIRequest.Params.AddBody(jsBody.ToString, ctAPPLICATION_JSON);

  APIRequest.Resource := 'protocolos';
  APIRequest.Method   := rmPOST;
  APIRequest.Execute;

  LerRetorno;
end;

procedure TForm1.btnCadDestinatarioClick(Sender: TObject);
var
  jsBody: TJSONobject;
  jsDados1 : TJSONobject;
  jsDados2 : TJSONobject;
  jsDados3 : TJSONobject;
  jsDados4 : TJSONobject;
  jsDados5 : TJSONobject;
  jsDadosBody : TJSONArray;
begin
  APINFeDest.Accept        := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
  APINFeDest.AcceptCharset := 'utf-8, *;q=0.8';
  APINFeDest.ContentType   := '';

  APIRequest.Params.Clear;
  APIRequest.ClearBody;

  APIRequest.Params.AddHeader('token_sh', edtToken.Text);
  APIRequest.Params.AddHeader('cpfCnpjSoftwareHouse', edtCNPJSH.Text);
  APIRequest.Params.AddHeader('cpfCnpjDestinatario', edtCNPJDest.Text);

  APIRequest.AddParameter('Content-Type', 'form-data', TRESTRequestParameterKind.pkHTTPHEADER, [poDoNotEncode]);

//  APIRequest.AddFile('certificado',FileSearch('TECNO2020.pfx', 'D:\Util\Certificado\'), ctMULTIPART_FORM_DATA);
//  jsBody    := TJSONobject.Create;
//  jsDados1   := TJSONobject.Create;
//  jsDados2   := TJSONobject.Create;
//  jsDados3   := TJSONobject.Create;
//  jsDados4   := TJSONobject.Create;
//  jsDados5   := TJSONobject.Create;
//  jsDadosBody  := TJSONArray.Create;
//
//  jsDados1.AddPair('key','uf');
//  jsDados1.AddPair('value','41');
//  jsDados1.AddPair('type','text');
//  jsDadosBody.Add(jsDados1);
//
//  jsDados2.AddPair('key','certificado');
//  jsDados2.AddPair('type','file');
//  jsDados2.AddPair('src','/D:/Util/Certificado/TECNO2020.pfx');
//  jsDadosBody.Add(jsDados2);
//
//  jsDados3.AddPair('key','senha');
//  jsDados3.AddPair('value','1234');
//  jsDados3.AddPair('type','text');
//  jsDadosBody.Add(jsDados3);
//
//  jsDados4.AddPair('key','email');
//  jsDados4.AddPair('value','teste@teste');
//  jsDados4.AddPair('type','text');
//  jsDadosBody.Add(jsDados4);
//
//  jsDados5.AddPair('key','cpfCnpj');
//  jsDados5.AddPair('value','1234');
//  jsDados5.AddPair('type','11111111111');
//  jsDadosBody.Add(jsDados5);
//
//  jsBody.AddPair('mode','formdata');
//  jsBody.AddPair('formdata',jsDadosBody);
//
//  APIRequest.Params.AddBody(jsBody.ToString, ctAPPLICATION_JSON);
//  APIRequest.AddParameter('uf', '41', TRESTRequestParameterKind.pkREQUESTBODY);
//  APIRequest.AddParameter('senha', '1234', TRESTRequestParameterKind.pkREQUESTBODY, [poDoNotEncode]);
//  APIRequest.AddParameter('email', 'teste@teste.com.br', TRESTRequestParameterKind.pkREQUESTBODY, [poDoNotEncode]);
//  APIRequest.AddParameter('cpfCnpj', '11111111111', TRESTRequestParameterKind.pkREQUESTBODY, [poDoNotEncode]);

//  APIRequest.AddBody('uf:41', ctMULTIPART_FORM_DATA);
//  APIRequest.AddBody('uf:41', ctTEXT_CMD);
//  APIRequest.AddBody('email=teste@teste.com.br');
//  APIRequest.AddBody('cpfCnpj=11111111111');

  APIRequest.Resource := 'destinatarios';
  APIRequest.Method   := rmPOST;
  APIRequest.Execute;

  LerRetorno;
end;

procedure TForm1.ExecutarRequest(pComHeader: Boolean; pResource: string; pMetodo: TRESTRequestMethod; pContentType: string = '');
begin
  APINFeDest.Accept := '*/*';
  APINFeDest.AcceptCharset := '';
  APINFeDest.ContentType   := pContentType;

  APIRequest.Params.Clear;
  if pComHeader then
  begin
    APIRequest.Params.AddHeader('token_sh', edtToken.Text);
    APIRequest.Params.AddHeader('cpfCnpjSoftwareHouse', edtCNPJSH.Text);
    APIRequest.Params.AddHeader('cpfCnpjDestinatario', edtCNPJDest.Text);
  end;
  APIRequest.Resource := pResource;
  APIRequest.Method   := pMetodo;
  APIRequest.Execute;

  LerRetorno;
end;

procedure TForm1.btnBaixar1NotaClick(Sender: TObject);
begin
  ExecutarRequest(True, 'notas/' + edtChaveNFe.Text, rmGET);
end;

procedure TForm1.btnBaixarNotasClick(Sender: TObject);
begin
  ExecutarRequest(True, 'protocolos/' + edtProtocolo.Text + '/notas', rmGET);
end;

procedure TForm1.btnBaixarXML1EventoClick(Sender: TObject);
begin
  ExecutarRequest(True, 'notas/' + edtChaveNFe.Text + '/eventos/' + edtIDEvento.Text, rmGET);
end;

procedure TForm1.btnConsProtocoloClick(Sender: TObject);
begin
  ExecutarRequest(True, 'protocolos/' + edtProtocolo.Text, rmGET);
end;

procedure TForm1.btnListarEventos1NtClick(Sender: TObject);
begin
  ExecutarRequest(True, 'notas/' + edtChaveNFe.Text + '/eventos', rmGET);
end;

procedure TForm1.btnStatusClick(Sender: TObject);
begin
  ExecutarRequest(False, 'status', rmGET);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  dtpDtInicio.DateTime := Date - 10;
  edtToken.Text        := 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa';
  edtCNPJSH.Text       := '11111111111111';
  edtCNPJDest.Text     := '11111111111111';
end;

end.
