unit uICMSSN500;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmICMSSN500 = class(TForm)
    pnlICMSSN500: TPanel;
    lblOrigemICMSSN500: TLabel;
    lblCSOSNICMSSN500: TLabel;
    lblvBCSTRetICMSSN500: TLabel;
    lblvICMSSTRetICMSSN500: TLabel;
    cbOrigemICMSSN500: TComboBox;
    edtCSOSN500: TEdit;
    btnEnviarICMSSN500: TButton;
    edtvBCSTRet500: TEdit;
    edtvICMSSTRet500: TEdit;
    lblvBCFCPSTRet500: TLabel;
    lblpFCPSTRet500: TLabel;
    lblvFCPSTRet500: TLabel;
    edtvBCFCPSTRet500: TEdit;
    edtpFCPSTRet500: TEdit;
    edtvFCPSTRet500: TEdit;
    edtpST500: TEdit;
    lblpST60: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarICMSSN500Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMSSN500: TfrmICMSSN500;

implementation

{$R *.dfm}

procedure TfrmICMSSN500.FormCreate(Sender: TObject);
begin
  cbOrigemICMSSN500.ItemIndex := 0;    // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSOSN500.Text            := '500';
  edtvBCSTRet500.Text         := '0.01';
  edtvICMSSTRet500.Text       := '0.01';
  edtpST500.Text              := '0.00'; // Alíquota suportada pelo Consumidor Final
  edtvBCFCPSTRet500.Text      := '0.00'; // Valor da Base de Cálculo do FCP retido anteriormente por ST
  edtpFCPSTRet500.Text        := '0.00'; // Percentual do FCP retido anteriormente por Substituição Tributária
  edtvFCPSTRet500.Text        := '0.00'; // Valor do FCP retido por Substituição Tributária
end;

procedure TfrmICMSSN500.btnEnviarICMSSN500Click(Sender: TObject);
begin
  Self.Close;
end;

end.
