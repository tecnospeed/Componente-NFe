unit uICMS40;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, spdNFeDataSets;

type
  TfrmICMS40 = class(TForm)
    pnlICMS40: TPanel;
    lblOrigemICMS40: TLabel;
    lblCSTICMS40: TLabel;
    cbOrigemICMS40: TComboBox;
    edtCSTICMS40: TEdit;
    btnEnviarICMS00: TButton;
    lblMotDesICMS40: TLabel;
    cbMotDesICMS40: TComboBox;
    edtValorICMS40Deson: TEdit;
    lblValorICMS40Deson: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarICMS00Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMS40: TfrmICMS40;

implementation

{$R *.dfm}

procedure TfrmICMS40.FormCreate(Sender: TObject);
begin
  cbOrigemICMS40.ItemIndex := 0;  // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSTICMS40.Text        := '40'; // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
  cbMotDesICMS40.ItemIndex := 7;
  edtValorICMS40Deson.Text := '0.01';
end;

procedure TfrmICMS40.btnEnviarICMS00Click(Sender: TObject);
begin
  Self.Close;
end;

end.
