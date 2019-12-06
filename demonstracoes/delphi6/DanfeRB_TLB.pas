unit DanfeRB_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : $Revision:   1.130  $
// File generated on 8/9/2009 14:02:44 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\WINDOWS\system32\DanfeRB.dll (1)
// LIBID: {D888BB71-4374-4318-9B13-C1BDE2F20E1C}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\WINDOWS\system32\stdvcl40.dll)
// Errors:
//   Hint: TypeInfo 'DanfeRB' changed to 'DanfeRB_'
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}

interface

uses ActiveX, Classes, Graphics, OleServer, StdVCL, Variants, Windows;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  DanfeRBMajorVersion = 1;
  DanfeRBMinorVersion = 0;

  LIBID_DanfeRB: TGUID = '{D888BB71-4374-4318-9B13-C1BDE2F20E1C}';

  IID_IDanfeRB: TGUID = '{178912FC-0C5D-4E53-AADD-998095D398AC}';
  CLASS_DanfeRB_: TGUID = '{574672C4-9AF2-4047-A61D-27E86773AEC6}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IDanfeRB = interface;
  IDanfeRBDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  DanfeRB_ = IDanfeRB;


// *********************************************************************//
// Interface: IDanfeRB
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {178912FC-0C5D-4E53-AADD-998095D398AC}
// *********************************************************************//
  IDanfeRB = interface(IDispatch)
    ['{178912FC-0C5D-4E53-AADD-998095D398AC}']
    function  Get_Xml: WideString; safecall;
    procedure Set_Xml(const Value: WideString); safecall;
    function  Get_LogtipoEmitente: WideString; safecall;
    procedure Set_LogtipoEmitente(const Value: WideString); safecall;
    function  Get_QtdeCopias: Integer; safecall;
    procedure Set_QtdeCopias(Value: Integer); safecall;
    function  Get_Versao: WideString; safecall;
    procedure Set_Versao(const Value: WideString); safecall;
    procedure Imprimir(const aImpressora: WideString); safecall;
    procedure Visualizar; safecall;
    procedure Exportar(const aSalvarComo: WideString); safecall;
    procedure Configurar; safecall;
    function  Get_ModeloRetrato: WideString; safecall;
    procedure Set_ModeloRetrato(const Value: WideString); safecall;
    function  Get_ModeloPaisagem: WideString; safecall;
    procedure Set_ModeloPaisagem(const Value: WideString); safecall;
    function  Get_FraseContingencia: WideString; safecall;
    procedure Set_FraseContingencia(const Value: WideString); safecall;
    function  Get_FraseHomologacao: WideString; safecall;
    procedure Set_FraseHomologacao(const Value: WideString); safecall;
    property Xml: WideString read Get_Xml write Set_Xml;
    property LogtipoEmitente: WideString read Get_LogtipoEmitente write Set_LogtipoEmitente;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property Versao: WideString read Get_Versao write Set_Versao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
  end;

// *********************************************************************//
// DispIntf:  IDanfeRBDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {178912FC-0C5D-4E53-AADD-998095D398AC}
// *********************************************************************//
  IDanfeRBDisp = dispinterface
    ['{178912FC-0C5D-4E53-AADD-998095D398AC}']
    property Xml: WideString dispid 201;
    property LogtipoEmitente: WideString dispid 202;
    property QtdeCopias: Integer dispid 203;
    property Versao: WideString dispid 205;
    procedure Imprimir(const aImpressora: WideString); dispid 206;
    procedure Visualizar; dispid 207;
    procedure Exportar(const aSalvarComo: WideString); dispid 208;
    procedure Configurar; dispid 209;
    property ModeloRetrato: WideString dispid 210;
    property ModeloPaisagem: WideString dispid 211;
    property FraseContingencia: WideString dispid 204;
    property FraseHomologacao: WideString dispid 212;
  end;

// *********************************************************************//
// The Class CoDanfeRB_ provides a Create and CreateRemote method to          
// create instances of the default interface IDanfeRB exposed by              
// the CoClass DanfeRB_. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDanfeRB_ = class
    class function Create: IDanfeRB;
    class function CreateRemote(const MachineName: string): IDanfeRB;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDanfeRB
// Help String      : Tecnospeed NFe Danfe
// Default Interface: IDanfeRB
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDanfeRBProperties= class;
{$ENDIF}
  TDanfeRB = class(TOleServer)
  private
    FIntf:        IDanfeRB;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDanfeRBProperties;
    function      GetServerProperties: TDanfeRBProperties;
{$ENDIF}
    function      GetDefaultInterface: IDanfeRB;
  protected
    procedure InitServerData; override;
    function  Get_Xml: WideString;
    procedure Set_Xml(const Value: WideString);
    function  Get_LogtipoEmitente: WideString;
    procedure Set_LogtipoEmitente(const Value: WideString);
    function  Get_QtdeCopias: Integer;
    procedure Set_QtdeCopias(Value: Integer);
    function  Get_Versao: WideString;
    procedure Set_Versao(const Value: WideString);
    function  Get_ModeloRetrato: WideString;
    procedure Set_ModeloRetrato(const Value: WideString);
    function  Get_ModeloPaisagem: WideString;
    procedure Set_ModeloPaisagem(const Value: WideString);
    function  Get_FraseContingencia: WideString;
    procedure Set_FraseContingencia(const Value: WideString);
    function  Get_FraseHomologacao: WideString;
    procedure Set_FraseHomologacao(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDanfeRB);
    procedure Disconnect; override;
    procedure Imprimir(const aImpressora: WideString);
    procedure Visualizar;
    procedure Exportar(const aSalvarComo: WideString);
    procedure Configurar;
    property  DefaultInterface: IDanfeRB read GetDefaultInterface;
    property Xml: WideString read Get_Xml write Set_Xml;
    property LogtipoEmitente: WideString read Get_LogtipoEmitente write Set_LogtipoEmitente;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property Versao: WideString read Get_Versao write Set_Versao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDanfeRBProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDanfeRB
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDanfeRBProperties = class(TPersistent)
  private
    FServer:    TDanfeRB;
    function    GetDefaultInterface: IDanfeRB;
    constructor Create(AServer: TDanfeRB);
  protected
    function  Get_Xml: WideString;
    procedure Set_Xml(const Value: WideString);
    function  Get_LogtipoEmitente: WideString;
    procedure Set_LogtipoEmitente(const Value: WideString);
    function  Get_QtdeCopias: Integer;
    procedure Set_QtdeCopias(Value: Integer);
    function  Get_Versao: WideString;
    procedure Set_Versao(const Value: WideString);
    function  Get_ModeloRetrato: WideString;
    procedure Set_ModeloRetrato(const Value: WideString);
    function  Get_ModeloPaisagem: WideString;
    procedure Set_ModeloPaisagem(const Value: WideString);
    function  Get_FraseContingencia: WideString;
    procedure Set_FraseContingencia(const Value: WideString);
    function  Get_FraseHomologacao: WideString;
    procedure Set_FraseHomologacao(const Value: WideString);
  public
    property DefaultInterface: IDanfeRB read GetDefaultInterface;
  published
    property Xml: WideString read Get_Xml write Set_Xml;
    property LogtipoEmitente: WideString read Get_LogtipoEmitente write Set_LogtipoEmitente;
    property QtdeCopias: Integer read Get_QtdeCopias write Set_QtdeCopias;
    property Versao: WideString read Get_Versao write Set_Versao;
    property ModeloRetrato: WideString read Get_ModeloRetrato write Set_ModeloRetrato;
    property ModeloPaisagem: WideString read Get_ModeloPaisagem write Set_ModeloPaisagem;
    property FraseContingencia: WideString read Get_FraseContingencia write Set_FraseContingencia;
    property FraseHomologacao: WideString read Get_FraseHomologacao write Set_FraseHomologacao;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

implementation

uses ComObj;

class function CoDanfeRB_.Create: IDanfeRB;
begin
  Result := CreateComObject(CLASS_DanfeRB_) as IDanfeRB;
end;

class function CoDanfeRB_.CreateRemote(const MachineName: string): IDanfeRB;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DanfeRB_) as IDanfeRB;
end;

procedure TDanfeRB.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{574672C4-9AF2-4047-A61D-27E86773AEC6}';
    IntfIID:   '{178912FC-0C5D-4E53-AADD-998095D398AC}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDanfeRB.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDanfeRB;
  end;
end;

procedure TDanfeRB.ConnectTo(svrIntf: IDanfeRB);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDanfeRB.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDanfeRB.GetDefaultInterface: IDanfeRB;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDanfeRB.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDanfeRBProperties.Create(Self);
{$ENDIF}
end;

destructor TDanfeRB.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDanfeRB.GetServerProperties: TDanfeRBProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TDanfeRB.Get_Xml: WideString;
begin
  Result := DefaultInterface.Xml;
end;

procedure TDanfeRB.Set_Xml(const Value: WideString);
  { Warning: The property Xml has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Xml := Value;
end;

function  TDanfeRB.Get_LogtipoEmitente: WideString;
begin
  Result := DefaultInterface.LogtipoEmitente;
end;

procedure TDanfeRB.Set_LogtipoEmitente(const Value: WideString);
  { Warning: The property LogtipoEmitente has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogtipoEmitente := Value;
end;

function  TDanfeRB.Get_QtdeCopias: Integer;
begin
  Result := DefaultInterface.QtdeCopias;
end;

procedure TDanfeRB.Set_QtdeCopias(Value: Integer);
begin
  DefaultInterface.QtdeCopias := Value;
end;

function  TDanfeRB.Get_Versao: WideString;
begin
  Result := DefaultInterface.Versao;
end;

procedure TDanfeRB.Set_Versao(const Value: WideString);
  { Warning: The property Versao has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Versao := Value;
end;

function  TDanfeRB.Get_ModeloRetrato: WideString;
begin
  Result := DefaultInterface.ModeloRetrato;
end;

procedure TDanfeRB.Set_ModeloRetrato(const Value: WideString);
  { Warning: The property ModeloRetrato has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetrato := Value;
end;

function  TDanfeRB.Get_ModeloPaisagem: WideString;
begin
  Result := DefaultInterface.ModeloPaisagem;
end;

procedure TDanfeRB.Set_ModeloPaisagem(const Value: WideString);
  { Warning: The property ModeloPaisagem has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloPaisagem := Value;
end;

function  TDanfeRB.Get_FraseContingencia: WideString;
begin
  Result := DefaultInterface.FraseContingencia;
end;

procedure TDanfeRB.Set_FraseContingencia(const Value: WideString);
  { Warning: The property FraseContingencia has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseContingencia := Value;
end;

function  TDanfeRB.Get_FraseHomologacao: WideString;
begin
  Result := DefaultInterface.FraseHomologacao;
end;

procedure TDanfeRB.Set_FraseHomologacao(const Value: WideString);
  { Warning: The property FraseHomologacao has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseHomologacao := Value;
end;

procedure TDanfeRB.Imprimir(const aImpressora: WideString);
begin
  DefaultInterface.Imprimir(aImpressora);
end;

procedure TDanfeRB.Visualizar;
begin
  DefaultInterface.Visualizar;
end;

procedure TDanfeRB.Exportar(const aSalvarComo: WideString);
begin
  DefaultInterface.Exportar(aSalvarComo);
end;

procedure TDanfeRB.Configurar;
begin
  DefaultInterface.Configurar;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDanfeRBProperties.Create(AServer: TDanfeRB);
begin
  inherited Create;
  FServer := AServer;
end;

function TDanfeRBProperties.GetDefaultInterface: IDanfeRB;
begin
  Result := FServer.DefaultInterface;
end;

function  TDanfeRBProperties.Get_Xml: WideString;
begin
  Result := DefaultInterface.Xml;
end;

procedure TDanfeRBProperties.Set_Xml(const Value: WideString);
  { Warning: The property Xml has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Xml := Value;
end;

function  TDanfeRBProperties.Get_LogtipoEmitente: WideString;
begin
  Result := DefaultInterface.LogtipoEmitente;
end;

procedure TDanfeRBProperties.Set_LogtipoEmitente(const Value: WideString);
  { Warning: The property LogtipoEmitente has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LogtipoEmitente := Value;
end;

function  TDanfeRBProperties.Get_QtdeCopias: Integer;
begin
  Result := DefaultInterface.QtdeCopias;
end;

procedure TDanfeRBProperties.Set_QtdeCopias(Value: Integer);
begin
  DefaultInterface.QtdeCopias := Value;
end;

function  TDanfeRBProperties.Get_Versao: WideString;
begin
  Result := DefaultInterface.Versao;
end;

procedure TDanfeRBProperties.Set_Versao(const Value: WideString);
  { Warning: The property Versao has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Versao := Value;
end;

function  TDanfeRBProperties.Get_ModeloRetrato: WideString;
begin
  Result := DefaultInterface.ModeloRetrato;
end;

procedure TDanfeRBProperties.Set_ModeloRetrato(const Value: WideString);
  { Warning: The property ModeloRetrato has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloRetrato := Value;
end;

function  TDanfeRBProperties.Get_ModeloPaisagem: WideString;
begin
  Result := DefaultInterface.ModeloPaisagem;
end;

procedure TDanfeRBProperties.Set_ModeloPaisagem(const Value: WideString);
  { Warning: The property ModeloPaisagem has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ModeloPaisagem := Value;
end;

function  TDanfeRBProperties.Get_FraseContingencia: WideString;
begin
  Result := DefaultInterface.FraseContingencia;
end;

procedure TDanfeRBProperties.Set_FraseContingencia(const Value: WideString);
  { Warning: The property FraseContingencia has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseContingencia := Value;
end;

function  TDanfeRBProperties.Get_FraseHomologacao: WideString;
begin
  Result := DefaultInterface.FraseHomologacao;
end;

procedure TDanfeRBProperties.Set_FraseHomologacao(const Value: WideString);
  { Warning: The property FraseHomologacao has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FraseHomologacao := Value;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TDanfeRB]);
end;

end.
