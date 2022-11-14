program DemoNFe;

uses
  SysUtils,
  Forms,
  Demo_NFe in 'Demo_NFe.pas' {Demo_NFe_Form},
  uEventos in 'uEventos.pas' {Eventos},
  uDestinadas in 'uDestinadas.pas' {frmDestinadas},
  spdNFeLibAdapter in 'spdNFeLibAdapter.pas';

begin
  Application.Initialize;
  Application.Title := 'Demo_NFe';
  Application.CreateForm(TDemo_NFe_Form, Demo_NFe_Form);
  Application.CreateForm(TEventos, Eventos);
  Application.CreateForm(TfrmDestinadas, frmDestinadas);
  Application.Run;
end.
