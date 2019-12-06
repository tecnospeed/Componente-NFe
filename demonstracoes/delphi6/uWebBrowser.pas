unit uWebBrowser;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, OleCtrls, SHDocVw, ActnList, NFeX_TLB;

type
  TfrmWebBrowser = class(TForm)
    WebBrowser1: TWebBrowser;
    MainMenu1: TMainMenu;
    EscSair1: TMenuItem;
    ActionList1: TActionList;
    Action1: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    UltimoLogEnvio: string;
  end;

var
  frmWebBrowser: TfrmWebBrowser;

implementation

uses uPrincipal;

{$R *.DFM}

procedure TfrmWebBrowser.FormCreate(Sender: TObject);
begin
  frmWebBrowser.Width := 800;
  frmWebBrowser.Height:= 600;
end;

procedure TfrmWebBrowser.FormShow(Sender: TObject);
begin
  frmWebBrowser.WebBrowser1.Navigate(UltimoLogEnvio);
end;

procedure TfrmWebBrowser.Action1Execute(Sender: TObject);
begin
  frmWebBrowser.Close;
end;

procedure TfrmWebBrowser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
