unit uICMSSN202;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmICMSSN202 = class(TForm)
    pnlICMSSN202: TPanel;
    lblOrigemICMSSN202: TLabel;
    lblCSOSNICMSSN202: TLabel;
    lblmodBCSTICMSSN202: TLabel;
    lblpMVAST202: TLabel;
    lblRedBCST202: TLabel;
    lblvBCSTICMSSN202: TLabel;
    lblpICMSST202: TLabel;
    lblvICMSSTICMSSN202: TLabel;
    cbOrigemICMSSN202: TComboBox;
    edtCSOSNICMSSN202: TEdit;
    btnEnviarICMSSN202: TButton;
    edtpMVAST202: TEdit;
    edtpRedBCST202: TEdit;
    edtvBCST202: TEdit;
    edtpICMSST202: TEdit;
    edtvICMSST202: TEdit;
    cbmodBCST202: TComboBox;
    edtvBCFCPST202: TEdit;
    lblvBCFCPST201: TLabel;
    lblpFCPST201: TLabel;
    edtpFCPST202: TEdit;
    edtvFCPST202: TEdit;
    lblvFCPST201: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarICMSSN202Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMSSN202: TfrmICMSSN202;

implementation

{$R *.dfm}

procedure TfrmICMSSN202.FormCreate(Sender: TObject);
begin
  cbOrigemICMSSN202.ItemIndex := 0;    // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSOSNICMSSN202.Text      := '202';
  cbmodBCST202.ItemIndex      := 1;
  edtpMVAST202.Text           := '0.01';
  edtpRedBCST202.Text         := '0.01';
  edtvBCST202.Text            := '0.01';
  edtpICMSST202.Text          := '0.01';
  edtvICMSST202.Text          := '0.01';
  edtvBCFCPST202.Text         := '0.00';  // Valor da Base de Cálculo do FCP retido por Substituição Tributária
  edtpFCPST202.Text           := '0.00';  // Percentual do FCP retido por Substituição Tributária
  edtvFCPST202.Text           := '0.00';  // Valor do FCP retido por Substituição Tributária
end;

procedure TfrmICMSSN202.btnEnviarICMSSN202Click(Sender: TObject);
begin
  Self.Close;
end;

end.
