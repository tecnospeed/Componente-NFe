unit uICMS70;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, spdNFeDataSets;

type
  TfrmICMS70 = class(TForm)
    pnlICMS70: TPanel;
    lblOrigemICMS70: TLabel;
    lblCSTICMS70: TLabel;
    lblModalidadeICMS70: TLabel;
    lblValorBCICMS10: TLabel;
    lblpICMS70: TLabel;
    lblvICMS70: TLabel;
    lblmodBCST70: TLabel;
    lblpMVAST70: TLabel;
    lblpREDBCST70: TLabel;
    lblvBCST70: TLabel;
    lblpICMSST70: TLabel;
    lblvICMSST70: TLabel;
    cbOrigemICMS70: TComboBox;
    edtCSTICMS70: TEdit;
    cbModalidadeICMS70: TComboBox;
    edtValorBC70: TEdit;
    edtpICMS70: TEdit;
    edtvICMS70: TEdit;
    cbmodBCST70: TComboBox;
    edtpMVAST70: TEdit;
    edtpRedBCST70: TEdit;
    edtvBCST70: TEdit;
    edtpICMSST70: TEdit;
    edtvICMSST70: TEdit;
    btnICMS10: TButton;
    lblpRedBC70: TLabel;
    edtpRedBC70: TEdit;
    edtvICMSDeson70: TEdit;
    lblvICMSDeson70: TLabel;
    cbbmotDesICMS70: TComboBox;
    lblmotDesICMS70: TLabel;
    edtvBCFCP70: TEdit;
    lblvBCFCP70: TLabel;
    lblpFCP70: TLabel;
    edtpFCP70: TEdit;
    edtvFCP70: TEdit;
    lblvFCP70: TLabel;
    edtvBCFCPST70: TEdit;
    lblvBCFCPST70: TLabel;
    lblpFCPST70: TLabel;
    edtpFCPST70: TEdit;
    edtvFCPST70: TEdit;
    lblvFCPST70: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnICMS10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMS70: TfrmICMS70;

implementation

{$R *.dfm}

procedure TfrmICMS70.FormCreate(Sender: TObject);
begin
  cbOrigemICMS70.ItemIndex     := 0;       // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSTICMS70.Text            := '70';    // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
  cbModalidadeICMS70.ItemIndex := 0;       // Modalidade de determinação da Base de Cálculo - ver Manual
  edtpRedBC70.Text             := '0.01';  // Percentual de Reducao da BC
  edtValorBC70.Text            := '0.01';  // Valor da Base de Cálculo do ICMS
  edtpICMS70.Text              := '17.00'; // Alíquota do ICMS em Percentual
  edtvICMS70.Text              := '0.01';  // Valor do ICMS em Reais
  cbmodBCST70.ItemIndex        := 4;       // Modalidade de determinacao da BC do ICMS ST
  edtpMVAST70.Text             := '10.00'; // Percentual da Margem e Valor Adicional do ICMS ST
  edtpRedBCST70.Text           := '10.00'; // Percentual da Reducao do BC ICMS ST
  edtvBCST70.Text              := '0.00';  // Valor da BC do ICMS ST
  edtpICMSST70.Text            := '0.00';  // Aliquota do Impostos ICMS ST
  edtvICMSST70.Text            := '0.00';  // Valor do ICMS ST
  edtvICMSDeson70.Text         := '0.01';  // Valor do ICMS desonerado
  edtvBCFCP70.Text             := '0.00';  // Valor da Base de Cálculo do FCP
  edtpFCP70.Text               := '0.00';  // Percentual do Fundo de Combate à Pobreza (FCP)
  edtvFCP70.Text               := '0.00';  // Valor do Fundo de Combate à Pobreza (FCP)
  edtvBCFCPST70.Text           := '0.00';  // Valor da Base de Cálculo do FCP retido por Substituição Tributária
  edtpFCPST70.Text             := '0.00';  // Percentual do FCP retido por Substituição Tributária
  edtvFCPST70.Text             := '0.00';  // Valor do FCP retido por Substituição Tributária
end;

procedure TfrmICMS70.btnICMS10Click(Sender: TObject);
begin
  Self.Close;
end;

end.
