unit uNFeEventos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,  NFeX_TLB, jpeg, ExtCtrls;

type
  TfrmNFeEventos = class(TForm)
    pgNFeEventos: TPageControl;
    tbsManifestacao: TTabSheet;
    edtChaveManifestacao: TEdit;
    lblManifestacao: TLabel;
    edtCNPJManifestacao: TEdit;
    cbFusoManifestacao: TComboBox;
    cbTipoEvento: TComboBox;
    edtJustificativaManifestacao: TEdit;
    edtDataManifestacao: TEdit;
    btnDataEvento: TButton;
    btnEnviarManifestacao: TButton;
    mmManifestacao: TMemo;
    lblChaveNFeManis: TLabel;
    lblNFeEventoCNPJ: TLabel;
    lblNFeEventoFuso: TLabel;
    lblTipoEvento: TLabel;
    lblNFeEventoJustificativa: TLabel;
    lblDataManifestacao: TLabel;
    lblXmlManifestacao: TLabel;
    tbsCancelarNFeEvento: TTabSheet;
    lblCancelarNFeEvento: TLabel;
    edtChaveCancelarNFeEvento: TEdit;
    edtProtocoloCancelarNFeEvento: TEdit;
    cbFusoCancelarNFeEvento: TComboBox;
    edtJustificativaCancelarNFeEvento: TEdit;
    edtDataCancelarNFeEvento: TEdit;
    btnDataCancelarNFeEvento: TButton;
    btnCancelarNFeEvento: TButton;
    mmCancelarNFeEvento: TMemo;
    lblChaveCancelarNFe: TLabel;
    lblProtocoloAutCancelar: TLabel;
    lblFusoCancelarEvento: TLabel;
    lblJustificativaCancelarNFeEvento: TLabel;
    lblDataCancelarNFeEvento: TLabel;
    lblEventosNFe: TLabel;
    lblXmlCancelarNFe: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    lbModo: TLabel;
    lbStatus: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtOrgao: TEdit;
    lblOrgao: TLabel;
    Label18: TLabel;
    procedure btnEnviarManifestacaoClick(Sender: TObject);
    procedure btnDataEventoClick(Sender: TObject);
    procedure btnDataCancelarNFeEventoClick(Sender: TObject);
    procedure btnCancelarNFeEventoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setSpdNFeXEventos(spdNFe:TspdNFeX);
  end;

var
  frmNFeEventos: TfrmNFeEventos;
  spdNFeXEventos: TspdNFeX;

implementation

{$R *.dfm}

procedure TfrmNFeEventos.btnEnviarManifestacaoClick(Sender: TObject);
begin
  if ( (Trim(edtChaveManifestacao.Text) = EmptyStr) or
       (Trim(edtCNPJManifestacao.Text) = EmptyStr) or
       (Trim(cbFusoManifestacao.Text) = EmptyStr) or
       (Trim(cbTipoEvento.Text) = EmptyStr) or
       (Trim(edtJustificativaManifestacao.Text) = EmptyStr) or
       (Trim(edtDataManifestacao.Text) = EmptyStr) or
       (Trim(edtOrgao.Text) = EmptyStr) ) then
  begin
    ShowMessage('O Tipo da Manifestação, Data Evento, Justificativa, Chave NFe, '
       +'CNPJ Destinatário, Fuso horário e Órgão são obrigatórios.');
  end
  else
  begin
    btnEnviarManifestacao.Enabled := false;
    try
      try
        //aTpEvento; aNotaID; aCNPJCPF; aJustificativa; aDataHoraEvento; aSequenciaEvento; aFusoHorario; aCOrgao
        mmManifestacao.Lines.Text := spdNFeXEventos.EnviarManifestacaoDestinatario(
          cbTipoEvento.ItemIndex,
          edtChaveManifestacao.Text,
          edtCNPJManifestacao.Text,
          edtJustificativaManifestacao.Text,
          edtDataManifestacao.Text,
          1,
          cbFusoManifestacao.Text,
          edtOrgao.Text
          );
      finally
        btnEnviarManifestacao.Enabled := true;
      end;
    except
      btnEnviarManifestacao.Enabled := true;
      raise;
    end;
  end;
end;

procedure TfrmNFeEventos.btnDataEventoClick(Sender: TObject);
begin
  edtDataManifestacao.Text := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now);
end;

procedure TfrmNFeEventos.btnDataCancelarNFeEventoClick(Sender: TObject);
begin
  edtDataCancelarNFeEvento.Text := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now);
end;

procedure TfrmNFeEventos.btnCancelarNFeEventoClick(Sender: TObject);
begin
  if ((Trim(edtChaveCancelarNFeEvento.Text) = EmptyStr) or
      (Trim(edtProtocoloCancelarNFeEvento.Text) = EmptyStr) or
      (Trim(cbFusoCancelarNFeEvento.Text) = EmptyStr) or
      (Trim(edtJustificativaCancelarNFeEvento.Text) = EmptyStr) or
      (Trim(edtDataCancelarNFeEvento.Text) = EmptyStr)) then
  begin
    ShowMessage('Os campos Chave da Nota, Protocolo Autorização, Fuso horário, Justificativa e Data Evento são obrigatórios.');
  end
  else
  begin
    btnCancelarNFeEvento.Enabled := false;
    try
      try
        mmCancelarNFeEvento.Lines.Text := spdNFeXEventos.CancelarNFeEvento(
          edtChaveCancelarNFeEvento.Text,
          edtProtocoloCancelarNFeEvento.Text,
          edtJustificativaCancelarNFeEvento.Text,
          edtDataCancelarNFeEvento.Text,
          1,
          cbFusoCancelarNFeEvento.Text);
      finally
        btnCancelarNFeEvento.Enabled := true;
      end;
    except
      btnCancelarNFeEvento.Enabled := true;
      raise;
    end;
  end;
end;

procedure TfrmNFeEventos.setSpdNFeXEventos(spdNFe: TspdNFeX);
begin
  spdNFeXEventos := spdNFe;
end;

procedure TfrmNFeEventos.FormShow(Sender: TObject);
begin
  edtCNPJManifestacao.Text := spdNFeXEventos.CNPJ;
end;

end.
