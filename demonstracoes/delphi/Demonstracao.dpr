program Demonstracao;

uses
  Forms,
  Exemplo in 'Exemplo.pas' {frmPrincipal},
  uICMS00 in 'uICMS00.pas' {frmICMS00},
  uICMS10 in 'uICMS10.pas' {frmICMS10},
  uICMS20 in 'uICMS20.pas' {frmICMS20},
  uICMS30 in 'uICMS30.pas' {frmICMS30},
  uICMS40 in 'uICMS40.pas' {frmICMS40},
  uICMS51 in 'uICMS51.pas' {frmICMS51},
  uICMS60 in 'uICMS60.pas' {frmICMS60},
  uICMS70 in 'uICMS70.pas' {frmICMS70},
  uICMS90 in 'uICMS90.pas' {frmICMS90},
  uICMSPart in 'uICMSPart.pas' {frmICMSPart},
  uICMSST in 'uICMSST.pas' {frmICMSST},
  uICMSN101 in 'uICMSN101.pas' {frmICMSN101},
  uICMS102 in 'uICMS102.pas' {frmICMS102},
  uICMSSN201 in 'uICMSSN201.pas' {frmICMSSN201},
  uICMSSN202 in 'uICMSSN202.pas' {frmICMSSN202},
  uICMSSN500 in 'uICMSSN500.pas' {frmICMSSN500},
  uICMSSN900 in 'uICMSSN900.pas' {frmICMSSN900},
  uPISAliq in 'uPISAliq.pas' {frmPISAliq},
  uPISQtde in 'uPISQtde.pas' {frmPISQtde},
  uPISNT in 'uPISNT.pas' {frmPISNT},
  uPISOutr in 'uPISOutr.pas' {frmPISOutr},
  uPISST in 'uPISST.pas' {frmPISST},
  uCOFINSAliq in 'uCOFINSAliq.pas' {frmCOFINSAliq},
  uCOFINSQtde in 'uCOFINSQtde.pas' {frmCOFINSQtde},
  uCOFINSNT in 'uCOFINSNT.pas' {frmCOFINSNT},
  uCOFINSOutr in 'uCOFINSOutr.pas' {frmCOFINSOutr},
  uCOFINSST in 'uCOFINSST.pas' {frmCOFINSST},
  uISSQN in 'uISSQN.pas' {frmISSQN},
  uIPITrib in 'uIPITrib.pas' {frmIPITrib},
  uIPINT in 'uIPINT.pas' {frmIPINT},
  uII in 'uII.pas' {frmII},
  uImportacaoXmlNFe in 'uImportacaoXmlNFe.pas' {frmImportacaoXmlNFe};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmICMS00, frmICMS00);
  Application.CreateForm(TfrmICMS10, frmICMS10);
  Application.CreateForm(TfrmICMS20, frmICMS20);
  Application.CreateForm(TfrmICMS30, frmICMS30);
  Application.CreateForm(TfrmICMS40, frmICMS40);
  Application.CreateForm(TfrmICMS51, frmICMS51);
  Application.CreateForm(TfrmICMS60, frmICMS60);
  Application.CreateForm(TfrmICMS70, frmICMS70);
  Application.CreateForm(TfrmICMS90, frmICMS90);
  Application.CreateForm(TfrmICMSPart, frmICMSPart);
  Application.CreateForm(TfrmICMSST, frmICMSST);
  Application.CreateForm(TfrmICMSN101, frmICMSSN101);
  Application.CreateForm(TfrmICMS102, frmICMSSN102);
  Application.CreateForm(TfrmICMSSN201, frmICMSSN201);
  Application.CreateForm(TfrmICMSSN202, frmICMSSN202);
  Application.CreateForm(TfrmICMSSN500, frmICMSSN500);
  Application.CreateForm(TfrmICMSSN900, frmICMSSN900);
  Application.CreateForm(TfrmPISAliq, frmPISAliq);
  Application.CreateForm(TfrmPISQtde, frmPISQtde);
  Application.CreateForm(TfrmPISNT, frmPISNT);
  Application.CreateForm(TfrmPISOutr, frmPISOutr);
  Application.CreateForm(TfrmPISST, frmPISST);
  Application.CreateForm(TfrmCOFINSAliq, frmCOFINSAliq);
  Application.CreateForm(TfrmCOFINSQtde, frmCOFINSQtde);
  Application.CreateForm(TfrmCOFINSNT, frmCOFINSNT);
  Application.CreateForm(TfrmCOFINSOutr, frmCOFINSOutr);
  Application.CreateForm(TfrmCOFINSST, frmCOFINSST);
  Application.CreateForm(TfrmISSQN, frmISSQN);
  Application.CreateForm(TfrmIPITrib, frmIPITrib);
  Application.CreateForm(TfrmIPINT, frmIPINT);
  Application.CreateForm(TfrmII, frmII);
  Application.CreateForm(TfrmImportacaoXmlNFe, frmImportacaoXmlNFe);
  Application.Run;
end.
