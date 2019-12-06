unit uPISST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmPISST = class(TForm)
    pnlPISST: TPanel;
    lblvBCPISST: TLabel;
    lblpPISST: TLabel;
    lblqBCProdPISST: TLabel;
    lblvAliqProdPISST: TLabel;
    lblvPISST: TLabel;
    edtvBCPISST: TEdit;
    edtpPISST: TEdit;
    Button1: TButton;
    btnEnviarPISST: TButton;
    edtqBCProdPISST: TEdit;
    edtvAliqProdPISST: TEdit;
    edtvPISST: TEdit;
    rgCalcPISST: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarPISSTClick(Sender: TObject);
    procedure rgCalcPISSTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPISST: TfrmPISST;

implementation

{$R *.dfm}

procedure TfrmPISST.FormCreate(Sender: TObject);
begin
  edtvBCPISST.Text       := '0.91'; // Valor da Base de Calculo do PIS
  edtpPISST.Text         := '1.65'; // Aliquota do PIS em Percentual
  edtqBCProdPISST.Text   := '246';      // Quantidade Vendida
  edtvAliqProdPISST.Text := '107.6000'; // Aliquota do PIS em Reais
  edtvPISST.Text         := '0.02'; // Valor do PIS em Reais
end;

procedure TfrmPISST.btnEnviarPISSTClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPISST.rgCalcPISSTClick(Sender: TObject);
begin
  if rgCalcPISST.ItemIndex = 0 then
  begin
    edtvBCPISST.Enabled := True;
    edtpPISST.Enabled := True;
    edtqBCProdPISST.Enabled := False;
    edtvAliqProdPISST.Enabled := False;
  end
  else
  begin
    edtvBCPISST.Enabled := False;
    edtpPISST.Enabled := False;
    edtqBCProdPISST.Enabled := True;
    edtvAliqProdPISST.Enabled := True;
  end;
end;

end.
