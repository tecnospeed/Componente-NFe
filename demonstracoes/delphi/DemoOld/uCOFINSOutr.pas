unit uCOFINSOutr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmCOFINSOutr = class(TForm)
    pnlCOFINSOutr: TPanel;
    lblCSTCOFINSOutr: TLabel;
    lblvBCCOFINSOutr: TLabel;
    lblpCOFINSOutr: TLabel;
    lblvCOFINSOut: TLabel;
    cbCSTCOFINSOutr: TComboBox;
    edtvBCCOFINSOutr: TEdit;
    edtpCOFINSOutr: TEdit;
    Button1: TButton;
    btnEnviarCOFINSOutr: TButton;
    edtvCOFINSOutr: TEdit;
    lblqBCProdCOFINSOutr: TLabel;
    edtqBCProdCOFINSOutr: TEdit;
    lblvAliqProdCOFINSOutr: TLabel;
    edtvAliqProdCOFINSOutr: TEdit;
    rgCalcCOFINSOutr: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarCOFINSOutrClick(Sender: TObject);
    procedure rgCalcCOFINSOutrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOFINSOutr: TfrmCOFINSOutr;

implementation

{$R *.dfm}

procedure TfrmCOFINSOutr.FormCreate(Sender: TObject);
begin
  cbCSTCOFINSOutr.ItemIndex     := 0; 	// Código de Situacao Tributária - ver opções no Manual
  edtvBCCOFINSOutr.Text         := '0.00';	// Valor da Base de Cálculo do COFINS
  edtpCOFINSOutr.Text           := '0.00';	// Alíquota do COFINS em Percentual
  edtqBCProdCOFINSOutr.Text     := '0'; // Quantidade Vendida
  edtvAliqProdCOFINSOutr.Text   := '1'; // Alíquota da COFINS em Reais
  edtvCOFINSOutr.Text           := '0.00';	// Valor do COFINS em Reais
end;

procedure TfrmCOFINSOutr.btnEnviarCOFINSOutrClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmCOFINSOutr.rgCalcCOFINSOutrClick(Sender: TObject);
begin
  if rgCalcCOFINSOutr.ItemIndex = 0 then
  begin
    edtvBCCOFINSOutr.Enabled := True;
    edtpCOFINSOutr.Enabled := True;
    edtqBCProdCOFINSOutr.Enabled := False;
    edtvAliqProdCOFINSOutr.Enabled := False;
  end
  else
  begin
    edtvBCCOFINSOutr.Enabled := False;
    edtpCOFINSOutr.Enabled := False;
    edtqBCProdCOFINSOutr.Enabled := True;
    edtvAliqProdCOFINSOutr.Enabled := True;
  end;
end;

end.
