unit uICMSSN900;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmICMSSN900 = class(TForm)
    pnlICMSSN900: TPanel;
    lblOrigemICMSSN900: TLabel;
    lblCSOSNICMSSN900: TLabel;
    lblpCredSN900: TLabel;
    lblvCredICMSSN900: TLabel;
    lblmodBCSTICMSSN900: TLabel;
    lblpMVAST900: TLabel;
    lblRedBCST900: TLabel;
    lblvBCST900: TLabel;
    lblpICMSST900: TLabel;
    lblvICMSST900: TLabel;
    cbOrigem900: TComboBox;
    edtCSOSN900: TEdit;
    edtpCredSN900: TEdit;
    btnEnviarICMSSN900: TButton;
    edtvCredICMSSN900: TEdit;
    edtpMVAST900: TEdit;
    edtpRedBCST900: TEdit;
    edtvBCST900: TEdit;
    edtpICMSST900: TEdit;
    edtvICMSST900: TEdit;
    lblmodBCICMSSN900: TLabel;
    lblvBC900: TLabel;
    edtvBC900: TEdit;
    lblpRedBC900: TLabel;
    edtpRedBC900: TEdit;
    lblpICMS900: TLabel;
    edtpICMS900: TEdit;
    lblvICMS900: TLabel;
    edtvICMS900: TEdit;
    cbmodBC900: TComboBox;
    cbmodBCST900: TComboBox;
    edtvBCFCPST900: TEdit;
    lblvBCFCPST900: TLabel;
    lblpFCPST900: TLabel;
    edtpFCPST900: TEdit;
    edtvFCPST900: TEdit;
    lblvFCPST900: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarICMSSN900Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMSSN900: TfrmICMSSN900;

implementation

{$R *.dfm}

procedure TfrmICMSSN900.FormCreate(Sender: TObject);
begin
  cbOrigem900.ItemIndex     := 0;
  edtCSOSN900.Text          := '900';
  cbmodBC900.ItemIndex      := 2;
  edtvBC900.Text            := '0.91';
  edtpRedBC900.Text         := '0.01';
  edtpICMS900.Text          := '7.00';
  edtvICMS900.Text          := '0.06';
  cbmodBCST900.ItemIndex    := 4;
  edtpMVAST900.Text         := '10.00';
  edtpRedBCST900.Text       := '10.00';
  edtvBCST900.Text          := '0.00';
  edtpICMSST900.Text        := '0.00';
  edtvICMSST900.Text        := '0.00';
  edtpCredSN900.Text        := '0.01';
  edtvCredICMSSN900.Text    := '0.01';
end;

procedure TfrmICMSSN900.btnEnviarICMSSN900Click(Sender: TObject);
begin
  Self.Close;
end;

end.
