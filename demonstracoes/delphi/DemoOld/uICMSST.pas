unit uICMSST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmICMSST = class(TForm)
    pnlICMSST: TPanel;
    lblOrigemICMSST: TLabel;
    lblCSTICMSST: TLabel;
    lblvBCSTRetICMSST: TLabel;
    cbOrigemICMSST: TComboBox;
    edtCSTICMSST: TEdit;
    edtvBCSTRetICMSST: TEdit;
    Button1: TButton;
    btnEnviarICMSST: TButton;
    lblvICMSSTRetICMSST: TLabel;
    edtvICMSSTRetICMSST: TEdit;
    lblvBCSTDestICMSST: TLabel;
    edtvBCSTDestICMSST: TEdit;
    lblvICMSSTDestICMSST: TLabel;
    edtvICMSSTDestICMSST: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarICMSSTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMSST: TfrmICMSST;

implementation

{$R *.dfm}

procedure TfrmICMSST.FormCreate(Sender: TObject);
begin
  cbOrigemICMSST.ItemIndex     := 0;     // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSTICMSST.Text            := '41';
  edtvBCSTRetICMSST.Text       := '0.01';
  edtvICMSSTRetICMSST.Text     := '0.01';
  edtvBCSTDestICMSST.Text      := '0.01';
  edtvICMSSTDestICMSST.Text    := '0.01';
end;

procedure TfrmICMSST.btnEnviarICMSSTClick(Sender: TObject);
begin
  Self.Close;
end;

end.
