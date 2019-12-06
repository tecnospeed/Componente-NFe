unit uICMS60;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, spdNFeDataSets;

type
  TfrmICMS60 = class(TForm)
    pnlICMS60: TPanel;
    lblOrigemICMS60: TLabel;
    lblCSTICMS60: TLabel;
    lblvBCSTRet60: TLabel;
    cbOrigemICMS60: TComboBox;
    edtCSTICMS60: TEdit;
    edtvBCSTRet60: TEdit;
    btnEnviarICMS60: TButton;
    lblvICMSSTRet60: TLabel;
    edtvICMSSTRet60: TEdit;
    edtvBCFCPSTRet60: TEdit;
    lblvBCFCPSTRet60: TLabel;
    lblpFCPSTRet60: TLabel;
    edtpFCPSTRet60: TEdit;
    edtvFCPSTRet60: TEdit;
    lblvFCPSTRet60: TLabel;
    edtpST60: TEdit;
    lblpST60: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarICMS60Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICMS60: TfrmICMS60;

implementation

{$R *.dfm}

procedure TfrmICMS60.FormCreate(Sender: TObject);
begin
  cbOrigemICMS60.ItemIndex := 0;      // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
  edtCSTICMS60.Text        := '60';   // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
  edtvBCSTRet60.Text       := '0.00'; // Valor da BC do ICMS ST retido
  edtpST60.Text            := '0.00'; // Alíquota suportada pelo Consumidor Final
  edtvICMSSTRet60.Text     := '0.00'; // Valor do ICMS ST retido
  edtvBCFCPSTRet60.Text    := '0.00'; // Valor da Base de Cálculo do FCP retido anteriormente por ST
  edtpFCPSTRet60.Text      := '0.00'; // Percentual do FCP retido anteriormente por Substituição Tributária
  edtvFCPSTRet60.Text      := '0.00'; // Valor do FCP retido por Substituição Tributária
end;

procedure TfrmICMS60.btnEnviarICMS60Click(Sender: TObject);
begin
  Self.Close;
end;

end.
