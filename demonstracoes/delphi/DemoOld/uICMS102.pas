unit uICMS102;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmICMS102 = class(TForm)
    pnlICMSN102: TPanel;
    lblOrigem102: TLabel;
    lblCSOSN102: TLabel;
    cbOrigem102: TComboBox;
    btnEnviarICMSN102: TButton;
    edtCSOSN102: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarICMSN102Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMSSN102: TfrmICMS102;

implementation

{$R *.dfm}

procedure TfrmICMS102.FormCreate(Sender: TObject);
begin
  cbOrigem102.ItemIndex   := 0;    // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSOSN102.Text        := '102';
end;

procedure TfrmICMS102.btnEnviarICMSN102Click(Sender: TObject);
begin
  Self.Close;
end;

end.
