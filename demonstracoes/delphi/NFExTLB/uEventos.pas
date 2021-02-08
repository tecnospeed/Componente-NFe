unit uEventos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ComCtrls;

type
  TEventos = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    edtIDManifes: TLabeledEdit;
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
    edtIDCCe: TLabeledEdit;
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
    TabSheet3: TTabSheet;
    Label9: TLabel;
    edtIDCancel: TLabeledEdit;
    edtJustifCancel: TLabeledEdit;
    edtNumProtCancel: TLabeledEdit;
    edtDataHrCancel: TLabeledEdit;
    cbFusoHrCancel: TComboBox;
    mmXmlCancel: TMemo;
    Label10: TLabel;
    btnCancelpEvento: TButton;
    btnDataHrCancel: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviaManifClick(Sender: TObject);
    procedure btnDataHoraManifClick(Sender: TObject);
    procedure btnDataHrCCeClick(Sender: TObject);
    procedure btnEnviaCCeClick(Sender: TObject);
    procedure btnEditarCCeClick(Sender: TObject);
    procedure btnVisualizarCCeClick(Sender: TObject);
    procedure btnExportPDFClick(Sender: TObject);
    procedure btnImprimirCCeClick(Sender: TObject);
    procedure btnDataHrCancelClick(Sender: TObject);
    procedure btnCancelpEventoClick(Sender: TObject);

  private
    { Private declarations }
    function LoadXmlCCe(aChaveCCe: String):WideString;
  public
    { Public declarations }
  end;

var
  Eventos: TEventos;

implementation
uses Demo_NFe;

{$R *.dfm}
//-----------------------------------------------------------------------------
procedure TEventos.FormCreate(Sender: TObject);
begin
  edtIDCancel.Text := Demo_NFe_Form.edtID.Text;
  edtNumProtCancel.Text := Demo_NFe_Form.edtNumProt.Text;
  edtIDCCe.Text := Demo_NFe_Form.edtID.Text;
end;
//-----------------------------------------------------------------------------
procedure TEventos.btnEnviaManifClick(Sender: TObject);
begin
  mmXmlManif.Lines.Text := Demo_NFe_Form.spdNFe.EnviarManifestacaoDestinatario(cbTipoEvento.ItemIndex, edtIDManifes.Text, edtCNPJDest.Text, edtJustificativa.Text, edtDataManif.Text,1,cbFusoHrManif.Text,'91');
end;
//-----------------------------------------------------------------------------
procedure TEventos.btnDataHoraManifClick(Sender: TObject);
begin
  edtDataManif.Text := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now);
end;
//-----------------------------------------------------------------------------
procedure TEventos.btnDataHrCCeClick(Sender: TObject);
begin
  edtDateCCe.Text := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now);
end;
//-----------------------------------------------------------------------------
procedure TEventos.btnEnviaCCeClick(Sender: TObject);
begin
  mmXmlCCe.Text := Demo_NFe_Form.spdNFe.EnviarCCe(edtIDCCe.Text,edtDescCorrecao.Text,
  edtDateCCe.Text,edtUFCCe.Text,edtIDLoteCCe.Text,StrToInt(edtSeqCCe.Text),cbFusoHrCCe.Text);
end;
//-----------------------------------------------------------------------------
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
//-----------------------------------------------------------------------------
procedure TEventos.btnEditarCCeClick(Sender: TObject);
begin
  Demo_NFe_Form.spdNFe.EditarModeloCCe(LoadXmlCCe(edtIDCCe.Text));
end;
//-----------------------------------------------------------------------------
procedure TEventos.btnVisualizarCCeClick(Sender: TObject);
begin
  Demo_NFe_Form.spdNFe.VisualizarCCe(LoadXmlCCe(edtIDCCe.Text));
end;
//-----------------------------------------------------------------------------
procedure TEventos.btnExportPDFClick(Sender: TObject);
begin
  Demo_NFe_Form.spdNFe.ExportarCCe(LoadXmlCCe(edtIDCCe.Text),'C:\teste.pdf');
end;
//-----------------------------------------------------------------------------
procedure TEventos.btnImprimirCCeClick(Sender: TObject);
begin
  Demo_NFe_Form.spdNFe.ImprimirCCe(LoadXmlCCe(edtIDCCe.Text),'');
end;
//-----------------------------------------------------------------------------
procedure TEventos.btnDataHrCancelClick(Sender: TObject);
begin
  edtDataHrCancel.Text := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now);
end;
//-----------------------------------------------------------------------------
procedure TEventos.btnCancelpEventoClick(Sender: TObject);
begin
  mmXmlCancel.Lines.Text := Demo_NFe_Form.spdNFe.CancelarNFeEvento(edtIDCancel.Text,edtNumProtCancel.Text,
  edtJustifCancel.Text,edtDataHrCancel.Text,1,cbFusoHrCancel.Text);
end;

end.

