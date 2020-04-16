unit uICMS51;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, spdNFeDataSets;

type
  TfrmICMS51 = class(TForm)
    pnlICMS51: TPanel;
    lblOrigemICMS51: TLabel;
    lblCSTICMS51: TLabel;
    lblModalidadeICMS51: TLabel;
    lblValorBCICMS51: TLabel;
    lblAliquotaICMS51: TLabel;
    lblvICMS51: TLabel;
    cbOrigemICMS51: TComboBox;
    edtCSTICMS51: TEdit;
    cbModalidadeICMS51: TComboBox;
    edtValorBCICMS51: TEdit;
    edtAliquotaICMS51: TEdit;
    edtvICMS51: TEdit;
    btnEnviarICMS51: TButton;
    lblpRedBC51: TLabel;
    edtpRedBC51: TEdit;
    edtvICMSOp51: TEdit;
    lblvICMSOp51: TLabel;
    edtpDif51: TEdit;
    lblpDif51: TLabel;
    edtvICMSDif51: TEdit;
    lblvICMSDif51: TLabel;
    edtvBCFCP51: TEdit;
    lblvBCFCP51: TLabel;
    lblpFCP51: TLabel;
    edtpFCP51: TEdit;
    edtvFCP51: TEdit;
    lblvFCP51: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarICMS51Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMS51: TfrmICMS51;

implementation

{$R *.dfm}

procedure TfrmICMS51.FormCreate(Sender: TObject);
begin
  cbOrigemICMS51.ItemIndex      := 0;       // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSTICMS51.Text             := '51';    // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
  cbModalidadeICMS51.ItemIndex  := 0;       // Modalidade de determinação da Base de Cálculo - ver Manual
  edtpRedBC51.Text              := '0.01';  // Percentual de Reducao da BC
  edtValorBCICMS51.Text         := '0.01';  // Valor da Base de Cálculo do ICMS
  edtAliquotaICMS51.Text        := '17.00'; // Alíquota do ICMS em Percentual
  edtvICMS51.Text               := '0.01';  // Valor do ICMS em Reais
  edtvICMSOp51.Text             := '0.01';  // Valor do ICMS da Operação
  edtpDif51.Text                := '100';   // Percentual do diferimento
  edtvICMSDif51.Text            := '0.00';  // Valor do ICMS Diferido
  edtvBCFCP51.Text              := '0.00';  // Valor da Base de Cálculo do FCP
  edtpFCP51.Text                := '0.00';  // Percentual do Fundo de Combate à Pobreza (FCP)
  edtvFCP51.Text                := '0.00';  // Valor do Fundo de Combate à Pobreza (FCP)
end;

procedure TfrmICMS51.btnEnviarICMS51Click(Sender: TObject);
begin
  Self.Close;
end;

end.
