unit uICMS00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, spdNFEDataSets;

type
  TfrmICMS00 = class(TForm)
    pnlICMS00: TPanel;
    lblOrigemICMS00: TLabel;
    cbOrigemICMS00: TComboBox;
    lblCSTICMS00: TLabel;
    edtCSTICMS00: TEdit;
    lblModalidadeICMS00: TLabel;
    cbModalidadeICMS00: TComboBox;
    lblValorBCICMS00: TLabel;
    edtValorBCICMS00: TEdit;
    lblAliquotaICMS00: TLabel;
    edtAliquotaICMS00: TEdit;
    lblValorICMS00: TLabel;
    edtValorICMS00: TEdit;
    btnEnviarICMS00: TButton;
    edtpFCP00: TEdit;
    lblpFCP00: TLabel;
    edtvFCP00: TEdit;
    lblvFCP00: TLabel;
    procedure btnEnviarICMS00Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMS00: TfrmICMS00;

implementation

{$R *.dfm}

procedure TfrmICMS00.FormCreate(Sender: TObject);
begin
  cbOrigemICMS00.ItemIndex     := 0;
  edtCSTICMS00.Text            := '00';
  cbModalidadeICMS00.ItemIndex := 0;
  edtValorBCICMS00.Text        := '0.01';
  edtAliquotaICMS00.Text       := '17.00';
  edtValorICMS00.Text          := '0.01';
  edtpFCP00.Text               := '0.00';  // Percentual do Fundo de Combate à Pobreza (FCP)
  edtvFCP00.Text               := '0.00';  // Valor do Fundo de Combate à Pobreza (FCP)
end;

procedure TfrmICMS00.btnEnviarICMS00Click(Sender: TObject);
begin
  Self.Close;
end;

end.
