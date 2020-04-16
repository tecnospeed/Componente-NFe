unit uICMS30;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, spdNfeDataSets;

type
  TfrmICMS30 = class(TForm)
    pnlICMS30: TPanel;
    lblOrigemICMS30: TLabel;
    lblCSTICMS30: TLabel;
    lblModBCSTICMS30: TLabel;
    lblpMVASTICMS30: TLabel;
    lblpREDBCSTICMS30: TLabel;
    lblvBCSTICMS30: TLabel;
    lblpICMSSTICMS30: TLabel;
    lblvICMSSTICMS30: TLabel;
    cbOrigemICMS30: TComboBox;
    edtCSTICMS30: TEdit;
    cbModSTICMS30: TComboBox;
    edtpMVASTICMS30: TEdit;
    edtpRedBCSTICMS30: TEdit;
    edtvBCSTIMS30: TEdit;
    edtpICMSSTICMS30: TEdit;
    edtvICMSSTICMS30: TEdit;
    btnICMS30: TButton;
    edtValorICMS30Deson: TEdit;
    lblValorICMSDeson: TLabel;
    cbbMotDesICMS30: TComboBox;
    lblMotDesICMS30: TLabel;
    edtvBCFCPST30: TEdit;
    lblvBCFCPST30: TLabel;
    lblpFCPST30: TLabel;
    edtpFCPST30: TEdit;
    edtvFCPST30: TEdit;
    lblvFCPST30: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnICMS30Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMS30: TfrmICMS30;

implementation

{$R *.dfm}

procedure TfrmICMS30.FormCreate(Sender: TObject);
begin
  cbOrigemICMS30.ItemIndex     := 0;     // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSTICMS30.Text            := '30';    // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
  cbModSTICMS30.ItemIndex      := 4;     // Modalidade de determinacao da BC do ICMS ST
  edtpMVASTICMS30.Text         := '10.00'; // Percentual da Margem e Valor Adicional do ICMS ST
  edtpRedBCSTICMS30.Text       := '10.00'; // Percentual da Reducao do BC ICMS ST
  edtvBCSTIMS30.Text           := '0.00';  // Valor da BC do ICMS ST
  edtpICMSSTICMS30.Text        := '0.00';  // Aliquota do Impostos ICMS ST
  edtvICMSSTICMS30.Text        := '0.00';  // Valor do ICMS ST
  edtValorICMS30Deson.Text     := '0.01';  // Valor do ICMS desonerado
  edtvBCFCPST30.Text           := '0.00';  // Valor da Base de Cálculo do FCP retido por Substituição Tributária
  edtpFCPST30.Text             := '0.00';  // Percentual do FCP retido por Substituição Tributária
  edtvFCPST30.Text             := '0.00';  // Valor do FCP retido por Substituição Tributária
end;

procedure TfrmICMS30.btnICMS30Click(Sender: TObject);
begin
  Self.Close;
end;

end.
