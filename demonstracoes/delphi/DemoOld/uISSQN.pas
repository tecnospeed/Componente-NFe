unit uISSQN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmISSQN = class(TForm)
    pnlISSQN: TPanel;
    Button1: TButton;
    lblISSQN: TButton;
    lblvBCISSQN: TLabel;
    edtvBCISSQN: TEdit;
    lblvAliqISSQN: TLabel;
    edtvAliqISSQN: TEdit;
    lblvISSQN: TLabel;
    edtvISSQN: TEdit;
    cMunFG: TLabel;
    edtcMunFGISSQN: TEdit;
    lblcListServISSQN: TLabel;
    edtcListServISSQN: TEdit;
    edtvDeducaoISSQN: TEdit;
    lblvDeducaoISSQN: TLabel;
    edtvOutroISSQN: TEdit;
    lblvOutroISSQN: TLabel;
    edtvDescIncondISSQN: TEdit;
    lblvDescIncondISSQN: TLabel;
    edtvDescCondISSQN: TEdit;
    lblvDescCondISSQN: TLabel;
    edtvISSRetISSQN: TEdit;
    lblvISSRetISSQN: TLabel;
    cbbindISSISSQN: TComboBox;
    lbl1: TLabel;
    edtcMunISSQN: TEdit;
    lblcMunISSQN: TLabel;
    edtcServicoISSQN: TEdit;
    lblcServicoISSQN: TLabel;
    cbbindIncentivoISSQN: TComboBox;
    lblindIncentivoISSQN: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure lblISSQNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmISSQN: TfrmISSQN;

implementation

{$R *.dfm}

procedure TfrmISSQN.FormCreate(Sender: TObject);
begin
  edtvBCISSQN.Text          := '82.60';   // Valor da Base de Calculo da ISSQN
  edtvAliqISSQN.Text        := '5.00';    // Aliquota do ISSQN
  edtvISSQN.Text            := '4.13';    // Valor do ISSQN
  edtcMunFGISSQN.Text       := '4308607'; // Codigo do Municipio de Ororrencia do fato gerador do ISSQN
  edtcListServISSQN.Text    := '1402';    // Codigo da Lista de Servicos
  edtvDeducaoISSQN.Text     := '0.01';    // Valor da dedução para redução da BC
  edtvOutroISSQN.Text       := '0.01';    // Valor outras retenções
  edtvDescIncondISSQN.Text  := '0.01';    // Valor desconto incondicionado
  edtvDescCondISSQN.Text    := '0.01';    // Valor desconto condicionado
  edtvISSRetISSQN.Text      := '0.01';    // Valor retenção ISS
  edtcServicoISSQN.Text     := '1.01';    // Código do serviço prestado dentro do Mun
  edtcMunISSQN.Text         := '4308607'; // Código Municipio de incidencia do imposto
end;

procedure TfrmISSQN.lblISSQNClick(Sender: TObject);
begin
  Self.Close;
  frmISSQN.edtvDeducaoISSQN.Enabled := false;
  frmISSQN.edtvOutroISSQN.Enabled := false;
  frmISSQN.edtvDescIncondISSQN.Enabled := false;
  frmISSQN.edtvDescCondISSQN.Enabled := false;
  frmISSQN.edtvISSRetISSQN.Enabled := false;
  frmISSQN.cbbindISSISSQN.Enabled := false;
  frmISSQN.edtcServicoISSQN.Enabled := false;
  frmISSQN.edtcMunISSQN.Enabled := false;
  frmISSQN.cbbindISSISSQN.Enabled := false;
  frmISSQN.cbbindIncentivoISSQN.Enabled := false;
end;

end.
