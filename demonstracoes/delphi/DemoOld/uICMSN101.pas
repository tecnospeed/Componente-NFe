unit uICMSN101;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmICMSN101 = class(TForm)
    pnlICMSN101: TPanel;
    lblOrigemICMSN101: TLabel;
    lblCSOSNICMSN101: TLabel;
    lblpCredSN101: TLabel;
    lblvCredICMSSN101: TLabel;
    cbOrigem101: TComboBox;
    edtCSOSN101: TEdit;
    edtpCredSN101: TEdit;
    btnEnviarICMSN101: TButton;
    edtvCredICMSSN101: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarICMSN101Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMSSN101: TfrmICMSN101;

implementation

{$R *.dfm}

procedure TfrmICMSN101.FormCreate(Sender: TObject);
begin
  cbOrigem101.ItemIndex  := 0;    // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSOSN101.Text       := '101';
  edtpCredSN101.Text     := '0.01';
  edtvCredICMSSN101.Text := '0.01';
end;

procedure TfrmICMSN101.btnEnviarICMSN101Click(Sender: TObject);
begin
  Self.Close;
end;

end.
