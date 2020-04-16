unit uICMS90;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmICMS90 = class(TForm)
    pnlICMS90: TPanel;
    lblOrigemICMS90: TLabel;
    lblCSTICMS90: TLabel;
    lblmodBC90: TLabel;
    lblvBC90: TLabel;
    lbpICMS90: TLabel;
    lbvICMS90: TLabel;
    lblmodBCST90: TLabel;
    lblpMVASTICMS90: TLabel;
    lblpREDBCSTICMS90: TLabel;
    lblvBCSTICMS90: TLabel;
    lblpICMSSTICMS90: TLabel;
    lblvICMSSTICMS90: TLabel;
    lblpRedBC90: TLabel;
    cbOrigemICMS90: TComboBox;
    edtCSTICMS90: TEdit;
    cbmodBC90: TComboBox;
    edtvBC90: TEdit;
    edtpICMS90: TEdit;
    edtvICMS90: TEdit;
    cbmodBCST90: TComboBox;
    edtpMVAST90: TEdit;
    edtpRedBCST90: TEdit;
    edtvBCST90: TEdit;
    edtpICMSST90: TEdit;
    edtvICMSST90: TEdit;
    btnICMS90: TButton;
    edtpRedBC90: TEdit;
    edtvICMSDeson90: TEdit;
    lblvICMSDeson90: TLabel;
    cbbmotDesICMS90: TComboBox;
    lblmotDesICMS90: TLabel;
    edtvBCFCP90: TEdit;
    lblvBCFCP90: TLabel;
    lblpFCP90: TLabel;
    edtpFCP90: TEdit;
    edtvFCP90: TEdit;
    lblvFCP90: TLabel;
    edtvBCFCPST90: TEdit;
    lblvBCFCPST90: TLabel;
    lblpFCPST90: TLabel;
    edtpFCPST90: TEdit;
    edtvFCPST90: TEdit;
    lblvFCPST90: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnICMS90Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMS90: TfrmICMS90;

implementation

{$R *.dfm}

procedure TfrmICMS90.FormCreate(Sender: TObject);
begin
  cbOrigemICMS90.ItemIndex := 0;    // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSTICMS90.Text        := '90';   // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
  cbmodBC90.ItemIndex      := 0;    // Modalidade de determinacao da BC
  edtvBC90.Text            := '0.01'; // Valor da BC do ICMS
  edtpRedBC90.Text         := '0.01'; // Percentual de Reducao de BC
  edtpICMS90.Text          := '17.00'; // Aliquota do Imposto
  edtvICMS90.Text          := '0.01'; // Valor do ICMS
  cbmodBCST90.ItemIndex    := 0; // modalidade de determinação da BC do ICMS ST
  edtpMVAST90.Text         := '0.01';
  edtpRedBCST90.Text       := '0.01';
  edtvBCST90.Text          := '0.01';
  edtpICMSST90.Text        := '0.01';
  edtvICMSST90.Text        := '0.01';
  edtvICMSDeson90.Text     := '0.01';
  edtvBCFCP90.Text         := '0.00';  // Valor da Base de Cálculo do FCP
  edtpFCP90.Text           := '0.00';  // Percentual do Fundo de Combate à Pobreza (FCP)
  edtvFCP90.Text           := '0.00';  // Valor do Fundo de Combate à Pobreza (FCP)
  edtvBCFCPST90.Text       := '0.00';  // Valor da Base de Cálculo do FCP retido por Substituição Tributária
  edtpFCPST90.Text         := '0.00';  // Percentual do FCP retido por Substituição Tributária
  edtvFCPST90.Text         := '0.00';  // Valor do FCP retido por Substituição Tributária
end;

procedure TfrmICMS90.btnICMS90Click(Sender: TObject);
begin
  Self.Close;
end;

end.
