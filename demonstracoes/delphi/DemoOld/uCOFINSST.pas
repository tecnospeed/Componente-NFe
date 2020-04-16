unit uCOFINSST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmCOFINSST = class(TForm)
    pnlCOFINSST: TPanel;
    lblvBCCOFINSST: TLabel;
    lblpCOFINSST: TLabel;
    lblvCOFINSST: TLabel;
    lblqBCProdCOFINSST: TLabel;
    lblvAliqProdCOFINSST: TLabel;
    edtvBCCOFINSST: TEdit;
    edtpCOFINSST: TEdit;
    Button1: TButton;
    btnEnviarCOFINSST: TButton;
    edtvCOFINSST: TEdit;
    edtqBCProdCOFINSST: TEdit;
    edtvAliqProdCOFINSST: TEdit;
    rgCalcCOFINSST: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarCOFINSSTClick(Sender: TObject);
    procedure rgCalcCOFINSSTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOFINSST: TfrmCOFINSST;

implementation

{$R *.dfm}

procedure TfrmCOFINSST.FormCreate(Sender: TObject);
begin
  edtvBCCOFINSST.Text 	      := '1.02';   // Valor da Base de Calculo da COFINS
  edtpCOFINSST.Text   	      := '7.60';   // Aliquota do COFINS em percentual
  edtqBCProdCOFINSST.Text   	:= '2460'; 	// Quantidade Vendida
  edtvAliqProdCOFINSST.Text 	:= '7.6000'; 	// Aliquota do COFINS em Reais
  edtvCOFINSST.Text         	:= '0.04'; 	// Valor do COFINS em Reais
end;

procedure TfrmCOFINSST.btnEnviarCOFINSSTClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmCOFINSST.rgCalcCOFINSSTClick(Sender: TObject);
begin
  if rgCalcCOFINSST.ItemIndex = 0 then
  begin
    edtvBCCOFINSST.Enabled := True;
    edtpCOFINSST.Enabled := True;
    edtqBCProdCOFINSST.Enabled := False;
    edtvAliqProdCOFINSST.Enabled := False;
  end
  else
  begin
    edtvBCCOFINSST.Enabled := False;
    edtpCOFINSST.Enabled := False;
    edtqBCProdCOFINSST.Enabled := True;
    edtvAliqProdCOFINSST.Enabled := True;
  end;
end;

end.
