unit uICMSPart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmICMSPart = class(TForm)
    pnlICMSPart: TPanel;
    lblOrigemICMSPart: TLabel;
    lblCSTICMSPart: TLabel;
    lblModalidadeICMSPart: TLabel;
    lblValorBCICMSPart: TLabel;
    lblAliquotaICMSPart: TLabel;
    lblValorICMSPart: TLabel;
    lblModBCSTICMSPart: TLabel;
    lblpMVASTICMSPart: TLabel;
    lblpREDBCSTICMSPart: TLabel;
    lblvBCSTICMSPart: TLabel;
    lblpICMSSTICMSPart: TLabel;
    lblvICMSSTICMSPart: TLabel;
    lblpRedBCICMSPart: TLabel;
    cbOrigemICMSPart: TComboBox;
    edtCSTICMSPart: TEdit;
    cbModalidadeICMSPart: TComboBox;
    edtValorBCICMSPart: TEdit;
    edtAliquotaICMSPart: TEdit;
    edtValorICMSPart: TEdit;
    cbModSTICMSPart: TComboBox;
    edtpMVASTICMSPart: TEdit;
    edtpRedBCSTICMSPart: TEdit;
    edtvBCSTICMSPart: TEdit;
    edtpICMSSTICMSPart: TEdit;
    edtvICMSSTICMSPart: TEdit;
    btnICMSPart: TButton;
    edtpRedBCICMSPart: TEdit;
    lblpBCOpICMSPart: TLabel;
    edtpBCOpICMSPart: TEdit;
    lblUFSTICMSPart: TLabel;
    edtUFSTICMSPart: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnICMSPartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMSPart: TfrmICMSPart;

implementation

{$R *.dfm}

procedure TfrmICMSPart.FormCreate(Sender: TObject);
begin
  cbOrigemICMSPart.ItemIndex        := 0;     // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSTICMSPart.Text               := '90';    // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
  cbModalidadeICMSPart.ItemIndex    := 0;     // Modalidade de determinação da Base de Cálculo - ver Manual
  edtValorBCICMSPart.Text           := '0.91';  // Valor da Base de Cálculo do ICMS
  edtpRedBCICMSPart.Text            := '0.01';  // Percentual de Reducao da BC
  edtAliquotaICMSPart.Text          := '7.00';  // Alíquota do ICMS em Percentual
  edtValorICMSPart.Text             := '0.06';  // Valor do ICMS em Reais
  cbModSTICMSPart.ItemIndex         := 4;     // Modalidade de determinacao da BC do ICMS ST
  edtpMVASTICMSPart.Text            := '10.00'; // Percentual da Margem e Valor Adicional do ICMS ST
  edtpRedBCSTICMSPart.Text          := '10.00'; // Percentual da Reducao do BC ICMS ST
  edtvBCSTICMSPart.Text             := '0.00';  // Valor da BC do ICMS ST
  edtpICMSSTICMSPart.Text           := '0.00';  // Aliquota do Impostos ICMS ST
  edtvICMSSTICMSPart.Text           := '0.00';  // Valor do ICMS ST
  edtpBCOpICMSPart.Text             := '0.01';  //
  edtUFSTICMSPart.Text              := 'SP';  //
end;

procedure TfrmICMSPart.btnICMSPartClick(Sender: TObject);
begin
  Self.Close;
end;

end.
