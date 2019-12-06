program DemoD5;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmExemplo},
  uDemoUtils in 'uDemoUtils.pas',
  uWebBrowser in 'uWebBrowser.pas' {frmWebBrowser},
  NFeX_TLB in 'NFeX_TLB.pas',
  NFeDataSetX_TLB in 'NFeDataSetX_TLB.pas',
  uDistribuicaoDFe in 'uDistribuicaoDFe.pas' {frmDistribuicaoDFe},
  uImportacaoXmlNFe in 'uImportacaoXmlNFe.pas' {frmImportacaoXmlNFe};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmExemplo, frmExemplo);
  Application.Run;
end.
