unit uICMSSN201;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmICMSSN201 = class(TForm)
    pnlICMSSN201: TPanel;
    lblOrigemICMSSN201: TLabel;
    lblCSOSNICMSSN201: TLabel;
    lblpCredSN201: TLabel;
    lblvCredICMSSN201: TLabel;
    cbOrigemICMSSN201: TComboBox;
    edtCSOSNICMSSN201: TEdit;
    edtpCredSN201: TEdit;
    btnEnviarICMSSN201: TButton;
    edtvCredICMSSN201: TEdit;
    lblmodBCSTICMSSN201: TLabel;
    lbpMVAST201: TLabel;
    edtpMVAST201: TEdit;
    lblpRedBCST201: TLabel;
    edtpRedBCST201: TEdit;
    lblvBCST201: TLabel;
    edtvBCST201: TEdit;
    lblpICMSST201: TLabel;
    edtpICMSST201: TEdit;
    lblvICMSST201: TLabel;
    edtvICMSST201: TEdit;
    cbmodBCSTICMSSN201: TComboBox;
    edtvBCFCPST201: TEdit;
    lblvBCFCPST201: TLabel;
    lblpFCPST201: TLabel;
    edtpFCPST201: TEdit;
    edtvFCPST201: TEdit;
    lblvFCPST201: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarICMSSN201Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMSSN201: TfrmICMSSN201;

implementation

{$R *.dfm}

procedure TfrmICMSSN201.FormCreate(Sender: TObject);
begin
  cbOrigemICMSSN201.ItemIndex   := 0;    // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSOSNICMSSN201.Text        := '201';
  cbmodBCSTICMSSN201.ItemIndex  := 0;
  edtpMVAST201.Text             := '0.01';
  edtpRedBCST201.Text           := '0.01';
  edtvBCST201.Text              := '0.01';
  edtpICMSST201.Text            := '0.01';
  edtvICMSST201.Text            := '0.01';
  edtpCredSN201.Text            := '0.01';
  edtvCredICMSSN201.Text        := '0.01';
  edtvBCFCPST201.Text           := '0.00';  // Valor da Base de Cálculo do FCP retido por Substituição Tributária
  edtpFCPST201.Text             := '0.00';  // Percentual do FCP retido por Substituição Tributária
  edtvFCPST201.Text             := '0.00';  // Valor do FCP retido por Substituição Tributária
end;

procedure TfrmICMSSN201.btnEnviarICMSSN201Click(Sender: TObject);
begin
  Self.Close;
end;

end.
