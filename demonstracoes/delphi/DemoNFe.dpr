program DemoNFe;

uses
  SysUtils, Forms,
  Demo_NFe in 'Demo_NFe.pas' {Demo_NFe_Form},
  uEventos in 'uEventos.pas' {Eventos};

begin
  { TODO -oUser -cConsole Main : Insert code here }
  Application.Initialize;
  Application.CreateForm(TDemo_NFe_Form, Demo_NFe_Form);
  Application.CreateForm(TEventos, Eventos);
  Application.Run;
end.
