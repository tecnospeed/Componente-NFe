unit uIPINT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmIPINT = class(TForm)
    pnlIPINT: TPanel;
    lblCSTIPINT: TLabel;
    Button1: TButton;
    btnEnviarIPINT: TButton;
    cbCSTIPINT: TComboBox;
    lblclEnqIPINT: TLabel;
    edtclEnqIPINT: TEdit;
    lblCNPJProdIPINT: TLabel;
    edtCNPJProdIPINT: TEdit;
    lblcSeloIPINT: TLabel;
    edtcSeloIPINT: TEdit;
    lblqSeloIPINT: TLabel;
    edtqSeloIPINT: TEdit;
    lblcEnqIPINT: TLabel;
    edtcEnqIPINT: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarIPINTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIPINT: TfrmIPINT;

implementation

{$R *.dfm}

procedure TfrmIPINT.FormCreate(Sender: TObject);
begin
  edtclEnqIPINT.Text    := 'NDA'; 	   // Classe de enquadramento do IPI para cigarros e Bebidas
  edtCNPJProdIPINT.Text := '00000000000000'; // CNPJ do produtor da mercadoria quando diferente do emitente
  edtcSeloIPINT.Text    := 'N'; 		   // Codigo do selo de Controle IPI
  edtqSeloIPINT.Text    := '0'; 		   // Quantidade de selo de Controle
  edtcEnqIPINT.Text     := '999'; 	   // Codigo de enquadramento legal do IPI
  cbCSTIPINT.ItemIndex := 0; // Codigo da Situacao tributaria do IPI
end;

procedure TfrmIPINT.btnEnviarIPINTClick(Sender: TObject);
begin
  Self.Close;
end;

end.
