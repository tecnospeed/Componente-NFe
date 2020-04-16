unit uCOFINSQtde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmCOFINSQtde = class(TForm)
    pnlCOFINSQtde: TPanel;
    lblCSTCOFINSQtde: TLabel;
    lblqBCProdCOFINSQtde: TLabel;
    lblvAliqProdCOFINSQtde: TLabel;
    lblvCOFINSQtde: TLabel;
    cbCSTCOFINSQtde: TComboBox;
    edtqBCProdCOFINSQtde: TEdit;
    edtvAliqProdCOFINSQtde: TEdit;
    Button1: TButton;
    btnEnviarCOFINSQtde: TButton;
    edtvCOFINSQtde: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarCOFINSQtdeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOFINSQtde: TfrmCOFINSQtde;

implementation

{$R *.dfm}

procedure TfrmCOFINSQtde.FormCreate(Sender: TObject);
begin
  cbCSTCOFINSQtde.ItemIndex   := 0;
  edtqBCProdCOFINSQtde.Text   := '2.0200';
  edtvAliqProdCOFINSQtde.Text := '3.0000';
  edtvCOFINSQtde.Text         := '0.03';
end;

procedure TfrmCOFINSQtde.btnEnviarCOFINSQtdeClick(Sender: TObject);
begin
  Self.Close;
end;

end.
