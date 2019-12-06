unit uICMS20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, spdNFEDataSets;

type
  TfrmICMS20 = class(TForm)
    pnlICMS020: TPanel;
    lblOrigemICMS20: TLabel;
    lblCSTICMS20: TLabel;
    lblModalidadeICMS20: TLabel;
    lblValorBCICMS20: TLabel;
    lblAliquotaICMS20: TLabel;
    lblValorICMS20: TLabel;
    cbOrigemICMS20: TComboBox;
    edtCSTICMS20: TEdit;
    cbModalidadeICMS20: TComboBox;
    edtValorBCICMS20: TEdit;
    edtAliquotaICMS20: TEdit;
    edtValorICMS20: TEdit;
    btnEnviarICMS20: TButton;
    lblpRedBCICMS20: TLabel;
    edtpRedBCICMS20: TEdit;
    lblMotDesICMS20: TLabel;
    cbMotDesICMS20: TComboBox;
    lblValorICMSDeson: TLabel;
    edtValorICMS20Deson: TEdit;
    edtvBCFCP20: TEdit;
    lblvBCFCP20: TLabel;
    lblpFCP20: TLabel;
    edtpFCP20: TEdit;
    edtvFCP20: TEdit;
    lblvFCP20: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarICMS20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMS20: TfrmICMS20;

implementation

{$R *.dfm}

procedure TfrmICMS20.FormCreate(Sender: TObject);
begin
  cbOrigemICMS20.ItemIndex      := 0;    // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSTICMS20.Text             := '20';   // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
  cbModalidadeICMS20.ItemIndex  := 0;    // Modalidade de determinação da Base de Cálculo - ver Manual
  edtpRedBCICMS20.Text          := '0.01'; // Percentual de Reducao da BC
  edtValorBCICMS20.Text         := '0.01'; // Valor da Base de Cálculo do ICMS
  edtAliquotaICMS20.Text        := '17.00'; // Alíquota do ICMS em Percentual
  edtValorICMS20.Text           := '0.01'; // Valor do ICMS em Reais
  edtValorICMS20Deson.Text      := '0.01'; // Valor do ICMS desonerado
  edtvBCFCP20.Text              := '0.00'; // Valor da Base de Cálculo do FCP
  edtpFCP20.Text                := '0.00'; // Percentual do Fundo de Combate à Pobreza (FCP)
  edtvFCP20.Text                := '0.00'; // Valor do Fundo de Combate à Pobreza (FCP)
end;

procedure TfrmICMS20.btnEnviarICMS20Click(Sender: TObject);
begin
  Self.Close;
end;

end.
