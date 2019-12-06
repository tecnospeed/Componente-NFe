unit uICMS10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, spdNFEDataSets;

type
  TfrmICMS10 = class(TForm)
    pnlICMS10: TPanel;
    lblOrigemICMS10: TLabel;
    cbOrigemICMS10: TComboBox;
    lblCSTICMS10: TLabel;
    edtCSTICMS10: TEdit;
    lblModalidadeICMS10: TLabel;
    cbModalidadeICMS10: TComboBox;
    lblValorBCICMS10: TLabel;
    edtValorBCICMS10: TEdit;
    lblAliquotaICMS10: TLabel;
    edtAliquotaICMS10: TEdit;
    lblValorICMS10: TLabel;
    edtValorICMS10: TEdit;
    lblModBCSTICMS10: TLabel;
    cbModSTICMS10: TComboBox;
    lblpMVASTICMS10: TLabel;
    edtpMVASTICMS10: TEdit;
    lblpREDBCSTICMS10: TLabel;
    edtpRedBCSTICMS10: TEdit;
    lblvBCSTICMS10: TLabel;
    edtvBCSTIMS10: TEdit;
    lblpICMSSTICMS10: TLabel;
    edtpICMSSTICMS10: TEdit;
    lblvICMSSTICMS10: TLabel;
    edtvICMSSTICMS10: TEdit;
    btnICMS10: TButton;
    edtvBCFCP10: TEdit;
    lblvBCFCP10: TLabel;
    lblpFCP10: TLabel;
    edtpFCP10: TEdit;
    edtvFCP10: TEdit;
    lblvFCP10: TLabel;
    edtvBCFCPST10: TEdit;
    lblvBCFCPST10: TLabel;
    lblpFCPST10: TLabel;
    edtpFCPST10: TEdit;
    edtvFCPST10: TEdit;
    lblvFCPST10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnICMS10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMS10: TfrmICMS10;

implementation

{$R *.dfm}

procedure TfrmICMS10.FormCreate(Sender: TObject);
begin
  cbOrigemICMS10.ItemIndex        := 0;       // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSTICMS10.Text               := '10';    // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
  cbModalidadeICMS10.ItemIndex    := 0;       // Modalidade de determinação da Base de Cálculo - ver Manual
  edtValorBCICMS10.Text           := '0.91';  // Valor da Base de Cálculo do ICMS
  edtAliquotaICMS10.Text          := '7.00';  // Alíquota do ICMS em Percentual
  edtValorICMS10.Text             := '0.06';  // Valor do ICMS em Reais
  cbModSTICMS10.ItemIndex         := 4;       // Modalidade de determinacao da BC do ICMS ST
  edtpMVASTICMS10.Text            := '10.00'; // Percentual da Margem e Valor Adicional do ICMS ST
  edtpRedBCSTICMS10.Text          := '10.00'; // Percentual da Reducao do BC ICMS ST
  edtvBCSTIMS10.Text              := '0.00';  // Valor da BC do ICMS ST
  edtpICMSSTICMS10.Text           := '0.00';  // Aliquota do Impostos ICMS ST
  edtvICMSSTICMS10.Text           := '0.00';  // Valor do ICMS ST
  edtvBCFCP10.Text                := '0.00';  // Valor da Base de Cálculo do FCP
  edtpFCP10.Text                  := '0.00';  // Percentual do Fundo de Combate à Pobreza (FCP)
  edtvFCP10.Text                  := '0.00';  // Valor do Fundo de Combate à Pobreza (FCP)
  edtvBCFCPST10.Text              := '0.00';  // Valor da Base de Cálculo do FCP retido por Substituição Tributária
  edtpFCPST10.Text                := '0.00';  // Percentual do FCP retido por Substituição Tributária
  edtvFCPST10.Text                := '0.00';  // Valor do FCP retido por Substituição Tributária
end;

procedure TfrmICMS10.btnICMS10Click(Sender: TObject);
begin
  Self.Close;
end;

end.
