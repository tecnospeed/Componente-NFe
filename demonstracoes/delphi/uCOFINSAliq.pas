unit uCOFINSAliq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmCOFINSAliq = class(TForm)
    pnlCOFINSAliq: TPanel;
    lblCSTCOFINSAliq: TLabel;
    lblvBCCOFINSAliq: TLabel;
    lblpCOFINSAliq: TLabel;
    lblCOFINSAliq: TLabel;
    cbCSTCOFINSAliq: TComboBox;
    edtvBCCOFINSAliq: TEdit;
    edtpCOFINSAliq: TEdit;
    Button1: TButton;
    btnEnviarCOFINSAliq: TButton;
    edtCOFINSAliq: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarCOFINSAliqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOFINSAliq: TfrmCOFINSAliq;

implementation

{$R *.dfm}

procedure TfrmCOFINSAliq.FormCreate(Sender: TObject);
begin
  cbCSTCOFINSAliq.ItemIndex := 0;
  edtvBCCOFINSAliq.Text     := '0.01';
  edtpCOFINSAliq.Text       := '7.60';
  edtCOFINSAliq.Text        := '0.01';
end;

procedure TfrmCOFINSAliq.btnEnviarCOFINSAliqClick(Sender: TObject);
begin
  Self.Close;
end;

end.
