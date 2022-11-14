unit uEventos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ShellAPI, ComCtrls, spdNFeLibAdapter;

type
  TEventos = class(TForm)
    pgcPageControlEventos: TPageControl;
    tsManifDest: TTabSheet;
    tsCCe: TTabSheet;
    Label1: TLabel;
    edtChaveNotaManifes: TLabeledEdit;
    edtCNPJDest: TLabeledEdit;
    cbFusoHrManif: TComboBox;
    Label2: TLabel;
    cbTipoEvento: TComboBox;
    Label3: TLabel;
    edtJustificativa: TLabeledEdit;
    edtDataManif: TLabeledEdit;
    btnEnviaManif: TButton;
    mmXmlManif: TMemo;
    Label4: TLabel;
    btnDataHoraManif: TSpeedButton;
    Label7: TLabel;
    edtChaveNotaCCe: TLabeledEdit;
    cbFusoHrCCe: TComboBox;
    Label8: TLabel;
    edtDateCCe: TLabeledEdit;
    btnDataHrCCe: TSpeedButton;
    edtDescCorrecao: TLabeledEdit;
    edtUFCCe: TLabeledEdit;
    edtIDLoteCCe: TLabeledEdit;
    edtSeqCCe: TLabeledEdit;
    mmXmlCCe: TMemo;
    btnEnviaCCe: TButton;
    btnImprimirCCe: TButton;
    btnEditarCCe: TButton;
    btnVisualizarCCe: TButton;
    btnExportPDF: TButton;
    tsCancelarNFe: TTabSheet;
    Label9: TLabel;
    edtChaveNotaCancel: TLabeledEdit;
    edtJustifCancel: TLabeledEdit;
    edtNumProtCancel: TLabeledEdit;
    edtDataHrCancel: TLabeledEdit;
    cbFusoHrCancel: TComboBox;
    mmXmlCancel: TMemo;
    Label10: TLabel;
    btnCancelarPorEvento: TButton;
    btnDataHrCancel: TSpeedButton;
    btnEnviarEmailCCe: TButton;
    dlgOpen: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviaManifClick(Sender: TObject);
    procedure btnDataHoraManifClick(Sender: TObject);
    procedure btnDataHrCCeClick(Sender: TObject);
    procedure btnDataHrCancelClick(Sender: TObject);
    procedure btnEnviaCCeClick(Sender: TObject);
    procedure btnEditarCCeClick(Sender: TObject);
    procedure btnVisualizarCCeClick(Sender: TObject);
    procedure btnExportPDFClick(Sender: TObject);
    procedure btnImprimirCCeClick(Sender: TObject);
    procedure btnCancelarPorEventoClick(Sender: TObject);
    procedure btnEnviarEmailCCeClick(Sender: TObject);

  private
    function LoadXmlCCe(aChaveCCe: String): WideString;
    function ObterDataHoraAtualFmt: string;
  public

  end;

var
  Eventos: TEventos;

implementation

uses Demo_NFe;

{$R *.dfm}

procedure TEventos.FormCreate(Sender: TObject);
begin
  edtChaveNotaCancel.Text := Demo_NFe_Form.edtID.Text;
  edtNumProtCancel.Text := Demo_NFe_Form.edtNumProt.Text;
  edtChaveNotaCCe.Text := Demo_NFe_Form.edtID.Text;
  edtChaveNotaManifes.Text := Demo_NFe_Form.edtID.Text;
end;

procedure TEventos.btnEnviaManifClick(Sender: TObject);
begin
  try
    mmXmlManif.Lines.Text := EnviarManifestacaoDestinatario(cbTipoEvento.ItemIndex,
      ToWideChar(edtChaveNotaManifes.Text), ToWideChar(edtCNPJDest.Text),
      ToWideChar(edtJustificativa.Text), ToWideChar(edtDataManif.Text),
      ToWideChar(cbFusoHrManif.Text), CONFIGFILE, 1, '91');
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TEventos.btnDataHoraManifClick(Sender: TObject);
begin
  edtDataManif.Text := ObterDataHoraAtualFmt;
end;

procedure TEventos.btnDataHrCCeClick(Sender: TObject);
begin
  edtDateCCe.Text := ObterDataHoraAtualFmt;
end;

procedure TEventos.btnDataHrCancelClick(Sender: TObject);
begin
  edtDataHrCancel.Text := ObterDataHoraAtualFmt;
end;

procedure TEventos.btnEnviaCCeClick(Sender: TObject);
begin
  try
    mmXmlCCe.Text := EnviarCCe(ToWideChar(edtChaveNotaCCe.Text), ToWideChar(edtDescCorrecao.Text),
      ToWideChar(edtDateCCe.Text), ToWideChar(edtUFCCe.Text), ToWideChar(edtIDLoteCCe.Text),
      StrToInt(edtSeqCCe.Text), ToWideChar(cbFusoHrCCe.Text), CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

function TEventos.LoadXmlCCe(aChaveCCe: String): WideString;
var
  _File: TStringList;
  _FileName: String;
begin
  _File := TStringList.Create;
  try
    _FileName := ExtractFilePath(ParamStr(0))+ 'XmlDestinatario\' + aChaveCCe + '-cce.xml';
    if not FileExists(_FileName) then
      raise Exception.CreateFmt('Nao foi possivel encontrar o arquivo XML %s .Verifique se NFe esta autorizada.',[_FileName]);

    _File.LoadFromFile(_FileName);
    Result := _File.Text;
  finally
    _File.Free;
  end;
end;

procedure TEventos.btnEditarCCeClick(Sender: TObject);
begin
  try
    EditarModeloCCe(ToWideChar(LoadXmlCCe(edtChaveNotaCCe.Text)), CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TEventos.btnVisualizarCCeClick(Sender: TObject);
begin
  try
    VisualizarCCe(ToWideChar(LoadXmlCCe(edtChaveNotaCCe.Text)), CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TEventos.btnExportPDFClick(Sender: TObject);
begin
  try
    ExportarCCe(ToWideChar(LoadXmlCCe(edtChaveNotaCCe.Text)), 'C:\teste.pdf', CONFIGFILE);
    ShowMessage('PDF Gerado em "C:\teste.pdf"');
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TEventos.btnImprimirCCeClick(Sender: TObject);
begin
  try
    ImprimirCCe(ToWideChar(LoadXmlCCe(edtChaveNotaCCe.Text)), '', CONFIGFILE);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TEventos.btnCancelarPorEventoClick(Sender: TObject);
begin
  try
    mmXmlCancel.Lines.Text := CancelarNFeEvento(ToWideChar(edtChaveNotaCancel.Text), ToWideChar(edtNumProtCancel.Text),
      ToWideChar(edtJustifCancel.Text), ToWideChar(edtDataHrCancel.Text), ToWideChar(cbFusoHrCancel.Text), CONFIGFILE, 1);
  except
    on e: Exception do TratarExcecoes(e);
  end;
end;

procedure TEventos.btnEnviarEmailCCeClick(Sender: TObject);
var
  _XMLAux: string;
begin
  showmessage('Selecione o Xml da CCE');
  dlgOpen.InitialDir := ExtractFilePath(ParamStr(0));
  dlgOpen.Title      := 'Selecione o Xml da CCe para envio.';
  dlgOpen.Filter     := DLG_FILTER_XML;

  if dlgOpen.Execute then
  begin
    _XMLAux := dlgOpen.FileName;
    try
      EnviarCCeDestinatario(ToWideChar(_XMLAux), CONFIGFILE);
    except
      on e: Exception do TratarExcecoes(e);
    end;
  end
end;

function TEventos.ObterDataHoraAtualFmt: string;
begin
  Result := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS', Now);
end;

end.

