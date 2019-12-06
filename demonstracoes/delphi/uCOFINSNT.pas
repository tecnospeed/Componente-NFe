unit uCOFINSNT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmCOFINSNT = class(TForm)
    pnlCOFINSNT: TPanel;
    lblCSTCOFINSNT: TLabel;
    cbCSTCOFINSNT: TComboBox;
    Button1: TButton;
    btnEnviarCOFINSNT: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarCOFINSNTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOFINSNT: TfrmCOFINSNT;

implementation

{$R *.dfm}

procedure TfrmCOFINSNT.FormCreate(Sender: TObject);
begin
  cbCSTCOFINSNT.ItemIndex := 0;
end;

procedure TfrmCOFINSNT.btnEnviarCOFINSNTClick(Sender: TObject);
begin
  Self.Close;
end;

end.
