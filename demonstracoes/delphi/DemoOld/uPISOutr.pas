unit uPISOutr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmPISOutr = class(TForm)
    pnlPISOutr: TPanel;
    lblCSTPISOutr: TLabel;
    lblvBCPISOutr: TLabel;
    lblpPISPISOutr: TLabel;
    lblqBCProdPISOutr: TLabel;
    cbCSTPISOutr: TComboBox;
    edtvBCPISOutr: TEdit;
    edtpPISPISOutr: TEdit;
    Button1: TButton;
    btnEnviarPISOutr: TButton;
    edtqBCProdPISOutr: TEdit;
    lblvAliqProdPISOutr: TLabel;
    edtvAliqProdPISOutr: TEdit;
    lblvPISOutr: TLabel;
    edtvPISOutr: TEdit;
    rgCalcPISTrib: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarPISOutrClick(Sender: TObject);
    procedure rgCalcPISTribClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPISOutr: TfrmPISOutr;

implementation

{$R *.dfm}

procedure TfrmPISOutr.FormCreate(Sender: TObject);
begin
  cbCSTPISOutr.ItemIndex   := 0;   // Codigo de Situacao Tributária - ver opções no Manual
  edtvBCPISOutr.Text       := '0.00'; // Valor da Base de Cálculo do PIS
  edtpPISPISOutr.Text      := '0.00'; // Alíquota em Percencual do PIS
  edtqBCProdPISOutr.Text   := '0'; // Quantidade Vendida
  edtvAliqProdPISOutr.Text := '1'; // Alíquota do PIS em Reais
  edtvPISOutr.Text         := '0.00'; // Valor do PIS em Reais
end;

procedure TfrmPISOutr.btnEnviarPISOutrClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPISOutr.rgCalcPISTribClick(Sender: TObject);
begin
  if rgCalcPISTrib.ItemIndex = 0 then
  begin
    edtvBCPISOutr.Enabled := True;
    edtpPISPISOutr.Enabled := True;
    edtqBCProdPISOutr.Enabled := False;
    edtvAliqProdPISOutr.Enabled := False;
  end
  else
  begin
    edtvBCPISOutr.Enabled := False;
    edtpPISPISOutr.Enabled := False;
    edtqBCProdPISOutr.Enabled := True;
    edtvAliqProdPISOutr.Enabled := True;
  end;
end;

end.
