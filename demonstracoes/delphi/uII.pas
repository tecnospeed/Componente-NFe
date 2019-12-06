unit uII;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmII = class(TForm)
    pnlII: TPanel;
    Button1: TButton;
    btnEnviarII: TButton;
    lblvBCII: TLabel;
    edtvBCII: TEdit;
    lblvDespAdu: TLabel;
    edtvDespAdu: TEdit;
    lblvII: TLabel;
    edtvII: TEdit;
    lblvIOF: TLabel;
    edtvIOFII: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarIIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmII: TfrmII;

implementation

{$R *.dfm}

procedure TfrmII.FormCreate(Sender: TObject);
begin
  edtvBCII.Text    := '1.00';
  edtvDespAdu.Text := '1.00';
  edtvII.Text      := '1.00';
  edtvIOFII.Text   := '1.00';
end;

procedure TfrmII.btnEnviarIIClick(Sender: TObject);
begin
  Self.Close;
end;

end.
