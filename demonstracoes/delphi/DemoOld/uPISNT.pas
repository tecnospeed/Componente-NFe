unit uPISNT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmPISNT = class(TForm)
    pnlPISNT: TPanel;
    lblCSTPISNT: TLabel;
    cbCSTPISNT: TComboBox;
    Button1: TButton;
    btnEnviarPISPISNT: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarPISPISNTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPISNT: TfrmPISNT;

implementation

{$R *.dfm}

procedure TfrmPISNT.FormCreate(Sender: TObject);
begin
  cbCSTPISNT.ItemIndex := 0; // Codigo de Situacao Tributária
end;

procedure TfrmPISNT.btnEnviarPISPISNTClick(Sender: TObject);
begin
  Self.Close;
end;

end.
