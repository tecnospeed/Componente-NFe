unit uPISAliq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmPISAliq = class(TForm)
    pnlPISAliq: TPanel;
    lblCSTPISAliq: TLabel;
    lblvBCPISAliq: TLabel;
    lblpPISPISAliq: TLabel;
    lblvPISPISAliq: TLabel;
    cbCSTPISAliq: TComboBox;
    edtvBCPISAliq: TEdit;
    edtpPISPISAliq: TEdit;
    Button1: TButton;
    btnEnviarPISAliq: TButton;
    edtvPISPISAliq: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarPISAliqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPISAliq: TfrmPISAliq;

implementation

{$R *.dfm}

procedure TfrmPISAliq.FormCreate(Sender: TObject);
begin
  cbCSTPISAliq.ItemIndex := 0;
  edtvBCPISAliq.Text     := '0.01';
  edtpPISPISAliq.Text    := '1.65';
  edtvPISPISAliq.Text    := '0.01';
end;

procedure TfrmPISAliq.btnEnviarPISAliqClick(Sender: TObject);
begin
  Self.Close;
end;

end.
