unit uIPITrib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmIPITrib = class(TForm)
    pnlIPITrib: TPanel;
    Button1: TButton;
    btnEnviarIPITrib: TButton;
    lblCSTIPITrib: TLabel;
    cbCSTIPITrib: TComboBox;
    lblvBCIPITrib: TLabel;
    edtvBCIPITrib: TEdit;
    lblpIPITrib: TLabel;
    edtpIPITrib: TEdit;
    lblqUnidIPITrib: TLabel;
    edtqUnidIPITrib: TEdit;
    lblvUnidIPITrib: TLabel;
    edtvUnidIPITrib: TEdit;
    lblvIPITrib: TLabel;
    edtvIPITrib: TEdit;
    lblclEnqIPITrib: TLabel;
    edtclEnqIPITrib: TEdit;
    lblCNPJProdIPITrib: TLabel;
    edtCNPJProdIPITrib: TEdit;
    lblcSeloIPITrib: TLabel;
    edtcSeloIPITrib: TEdit;
    lblqSeloIPItrib: TLabel;
    edtqSeloIPITrib: TEdit;
    lblcEnqIPITrib: TLabel;
    edtcEnqIPITrib: TEdit;
    rgAliqUnidTrib: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarIPITribClick(Sender: TObject);
    procedure rgAliqUnidTribClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIPITrib: TfrmIPITrib;

implementation

{$R *.dfm}

procedure TfrmIPITrib.FormCreate(Sender: TObject);
begin
  edtclEnqIPITrib.Text    := 'NDA'; 	   // Classe de enquadramento do IPI para cigarros e Bebidas
  edtCNPJProdIPITrib.Text := '00000000000000'; // CNPJ do produtor da mercadoria quando diferente do emitente
  edtcSeloIPITrib.Text    := 'N'; 		   // Codigo do selo de Controle IPI
  edtqSeloIPITrib.Text    := '0'; 		   // Quantidade de selo de Controle
  edtcEnqIPITrib.Text     := '999'; 	   // Codigo de enquadramento legal do IPI
  cbCSTIPITrib.ItemIndex   := 0; // Codigo da Situacao tributaria do IPI
  edtvBCIPITrib.Text       := '90.00'; // Valor da BC do IPI
  edtpIPITrib.Text         := '5.00';  // Aliquota do IPI
  edtqUnidIPITrib.Text     := '1';  // Quantidade total na unidade padrao para tributacao
  edtvUnidIPITrib.Text     := '5';  // Valor por unidade tributavel
  edtvIPITrib.Text         := '1'; // Valor do IPI
end;

procedure TfrmIPITrib.btnEnviarIPITribClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmIPITrib.rgAliqUnidTribClick(Sender: TObject);
begin
  if rgAliqUnidTrib.ItemIndex = 0 then
  begin
    edtvBCIPITrib.Enabled := True;
    edtpIPITrib.Enabled := True;
    edtqUnidIPITrib.Enabled := False;
    edtvUnidIPITrib.Enabled := False;
  end
  else
  begin
    edtvBCIPITrib.Enabled := False;
    edtpIPITrib.Enabled := False;
    edtqUnidIPITrib.Enabled := True;
    edtvUnidIPITrib.Enabled := True;
  end;
end;

end.
