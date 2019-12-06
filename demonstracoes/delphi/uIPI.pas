unit uIPI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmIPI = class(TForm)
    pnlIPI: TPanel;
    Button1: TButton;
    btnEnviarIPI: TButton;
    lblclEnqIPI: TLabel;
    edtclEnqIPI: TEdit;
    lblCNPJProdIPI: TLabel;
    edtCNPJProdIPI: TEdit;
    lblcSeloIPI: TLabel;
    edtcSeloIPI: TEdit;
    lblqSeloIPI: TLabel;
    edtqSeloIPI: TEdit;
    lblcEnqIPI: TLabel;
    edtcEnqIPI: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarIPIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIPI: TfrmIPI;

implementation

{$R *.dfm}

procedure TfrmIPI.FormCreate(Sender: TObject);
begin
  edtclEnqIPI.Text    := 'NDA'; 	   // Classe de enquadramento do IPI para cigarros e Bebidas
  edtCNPJProdIPI.Text := '00000000000000'; // CNPJ do produtor da mercadoria quando diferente do emitente
  edtcSeloIPI.Text    := 'N'; 		   // Codigo do selo de Controle IPI
  edtqSeloIPI.Text    := '0'; 		   // Quantidade de selo de Controle
  edtcEnqIPI.Text     := '999'; 	   // Codigo de enquadramento legal do IPI
end;

procedure TfrmIPI.btnEnviarIPIClick(Sender: TObject);
begin
  Self.Close;
end;

end.
