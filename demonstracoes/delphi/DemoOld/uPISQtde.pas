unit uPISQtde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmPISQtde = class(TForm)
    pnlPISQtde: TPanel;
    lblCSTPISQtde: TLabel;
    lblqBCProdPISQtde: TLabel;
    lblvAliqProdPISQtde: TLabel;
    lblvPISPISQtde: TLabel;
    cbCSTPISQtde: TComboBox;
    edtqBCProdPISQtde: TEdit;
    edtvAliqProdPISQtde: TEdit;
    Button1: TButton;
    btnEnviarPISPISQtde: TButton;
    edtvPISPISQtde: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarPISPISQtdeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPISQtde: TfrmPISQtde;

implementation

{$R *.dfm}

procedure TfrmPISQtde.FormCreate(Sender: TObject);
begin
  cbCSTPISQtde.ItemIndex := 0;
  edtqBCProdPISQtde.Text := '0';
  edtvAliqProdPISQtde.Text := '1';
  edtvPISPISQtde.Text := '0.00';
end;

procedure TfrmPISQtde.btnEnviarPISPISQtdeClick(Sender: TObject);
begin
  Self.Close;
end;

end.
