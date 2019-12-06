unit NFeEmailX_TLB;

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
// File generated on 23/10/2009 14:56:51 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\WINDOWS\system32\NFeEmailX.dll (1)
// LIBID: {F3E56226-7069-4985-9202-173A6C59DDD8}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\WINDOWS\system32\stdvcl40.dll)
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
  NFeEmailXMajorVersion = 1;
  NFeEmailXMinorVersion = 0;

  LIBID_NFeEmailX: TGUID = '{F3E56226-7069-4985-9202-173A6C59DDD8}';

  IID_IspdNFeEmailX: TGUID = '{513F6527-1AAF-439D-8123-4E8339F38FB1}';
  CLASS_spdNFeEmailX: TGUID = '{186A0224-A3E0-4AA2-B746-1F8D60E8A899}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IspdNFeEmailX = interface;
  IspdNFeEmailXDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  spdNFeEmailX = IspdNFeEmailX;


// *********************************************************************//
// Interface: IspdNFeEmailX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {513F6527-1AAF-439D-8123-4E8339F38FB1}
// *********************************************************************//
  IspdNFeEmailX = interface(IDispatch)
    ['{513F6527-1AAF-439D-8123-4E8339F38FB1}']
    function  Get_Servidor: WideString; safecall;
    procedure Set_Servidor(const Value: WideString); safecall;
    function  Get_Autenticacao: WordBool; safecall;
    procedure Set_Autenticacao(Value: WordBool); safecall;
    function  Get_EmailRemetente: WideString; safecall;
    procedure Set_EmailRemetente(const Value: WideString); safecall;
    function  Get_EmailDestinatario: WideString; safecall;
    procedure Set_EmailDestinatario(const Value: WideString); safecall;
    function  Get_Assunto: WideString; safecall;
    procedure Set_Assunto(const Value: WideString); safecall;
    function  Get_Mensagem: WideString; safecall;
    procedure Set_Mensagem(const Value: WideString); safecall;
    function  Get_Usuario: WideString; safecall;
    procedure Set_Usuario(const Value: WideString); safecall;
    function  Get_Senha: WideString; safecall;
    procedure Set_Senha(const Value: WideString); safecall;
    procedure AddAnexo(const aArquivo: WideString); safecall;
    procedure EnviarEmail; safecall;
    procedure AddCCo(const Email: WideString); safecall;
    procedure AddCC(const Email: WideString); safecall;
    property Servidor: WideString read Get_Servidor write Set_Servidor;
    property Autenticacao: WordBool read Get_Autenticacao write Set_Autenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property Assunto: WideString read Get_Assunto write Set_Assunto;
    property Mensagem: WideString read Get_Mensagem write Set_Mensagem;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property Senha: WideString read Get_Senha write Set_Senha;
  end;

// *********************************************************************//
// DispIntf:  IspdNFeEmailXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {513F6527-1AAF-439D-8123-4E8339F38FB1}
// *********************************************************************//
  IspdNFeEmailXDisp = dispinterface
    ['{513F6527-1AAF-439D-8123-4E8339F38FB1}']
    property Servidor: WideString dispid 101;
    property Autenticacao: WordBool dispid 102;
    property EmailRemetente: WideString dispid 103;
    property EmailDestinatario: WideString dispid 104;
    property Assunto: WideString dispid 105;
    property Mensagem: WideString dispid 106;
    property Usuario: WideString dispid 107;
    property Senha: WideString dispid 108;
    procedure AddAnexo(const aArquivo: WideString); dispid 201;
    procedure EnviarEmail; dispid 202;
    procedure AddCCo(const Email: WideString); dispid 203;
    procedure AddCC(const Email: WideString); dispid 204;
  end;

// *********************************************************************//
// The Class CospdNFeEmailX provides a Create and CreateRemote method to          
// create instances of the default interface IspdNFeEmailX exposed by              
// the CoClass spdNFeEmailX. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdNFeEmailX = class
    class function Create: IspdNFeEmailX;
    class function CreateRemote(const MachineName: string): IspdNFeEmailX;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TspdNFeEmailX
// Help String      : spdNFeEmailX
// Default Interface: IspdNFeEmailX
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TspdNFeEmailXProperties= class;
{$ENDIF}
  TspdNFeEmailX = class(TOleServer)
  private
    FIntf:        IspdNFeEmailX;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TspdNFeEmailXProperties;
    function      GetServerProperties: TspdNFeEmailXProperties;
{$ENDIF}
    function      GetDefaultInterface: IspdNFeEmailX;
  protected
    procedure InitServerData; override;
    function  Get_Servidor: WideString;
    procedure Set_Servidor(const Value: WideString);
    function  Get_Autenticacao: WordBool;
    procedure Set_Autenticacao(Value: WordBool);
    function  Get_EmailRemetente: WideString;
    procedure Set_EmailRemetente(const Value: WideString);
    function  Get_EmailDestinatario: WideString;
    procedure Set_EmailDestinatario(const Value: WideString);
    function  Get_Assunto: WideString;
    procedure Set_Assunto(const Value: WideString);
    function  Get_Mensagem: WideString;
    procedure Set_Mensagem(const Value: WideString);
    function  Get_Usuario: WideString;
    procedure Set_Usuario(const Value: WideString);
    function  Get_Senha: WideString;
    procedure Set_Senha(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IspdNFeEmailX);
    procedure Disconnect; override;
    procedure AddAnexo(const aArquivo: WideString);
    procedure EnviarEmail;
    procedure AddCCo(const Email: WideString);
    procedure AddCC(const Email: WideString);
    property  DefaultInterface: IspdNFeEmailX read GetDefaultInterface;
    property Servidor: WideString read Get_Servidor write Set_Servidor;
    property Autenticacao: WordBool read Get_Autenticacao write Set_Autenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property Assunto: WideString read Get_Assunto write Set_Assunto;
    property Mensagem: WideString read Get_Mensagem write Set_Mensagem;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property Senha: WideString read Get_Senha write Set_Senha;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TspdNFeEmailXProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TspdNFeEmailX
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TspdNFeEmailXProperties = class(TPersistent)
  private
    FServer:    TspdNFeEmailX;
    function    GetDefaultInterface: IspdNFeEmailX;
    constructor Create(AServer: TspdNFeEmailX);
  protected
    function  Get_Servidor: WideString;
    procedure Set_Servidor(const Value: WideString);
    function  Get_Autenticacao: WordBool;
    procedure Set_Autenticacao(Value: WordBool);
    function  Get_EmailRemetente: WideString;
    procedure Set_EmailRemetente(const Value: WideString);
    function  Get_EmailDestinatario: WideString;
    procedure Set_EmailDestinatario(const Value: WideString);
    function  Get_Assunto: WideString;
    procedure Set_Assunto(const Value: WideString);
    function  Get_Mensagem: WideString;
    procedure Set_Mensagem(const Value: WideString);
    function  Get_Usuario: WideString;
    procedure Set_Usuario(const Value: WideString);
    function  Get_Senha: WideString;
    procedure Set_Senha(const Value: WideString);
  public
    property DefaultInterface: IspdNFeEmailX read GetDefaultInterface;
  published
    property Servidor: WideString read Get_Servidor write Set_Servidor;
    property Autenticacao: WordBool read Get_Autenticacao write Set_Autenticacao;
    property EmailRemetente: WideString read Get_EmailRemetente write Set_EmailRemetente;
    property EmailDestinatario: WideString read Get_EmailDestinatario write Set_EmailDestinatario;
    property Assunto: WideString read Get_Assunto write Set_Assunto;
    property Mensagem: WideString read Get_Mensagem write Set_Mensagem;
    property Usuario: WideString read Get_Usuario write Set_Usuario;
    property Senha: WideString read Get_Senha write Set_Senha;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

implementation

uses ComObj;

class function CospdNFeEmailX.Create: IspdNFeEmailX;
begin
  Result := CreateComObject(CLASS_spdNFeEmailX) as IspdNFeEmailX;
end;

class function CospdNFeEmailX.CreateRemote(const MachineName: string): IspdNFeEmailX;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdNFeEmailX) as IspdNFeEmailX;
end;

procedure TspdNFeEmailX.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{186A0224-A3E0-4AA2-B746-1F8D60E8A899}';
    IntfIID:   '{513F6527-1AAF-439D-8123-4E8339F38FB1}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TspdNFeEmailX.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IspdNFeEmailX;
  end;
end;

procedure TspdNFeEmailX.ConnectTo(svrIntf: IspdNFeEmailX);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TspdNFeEmailX.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TspdNFeEmailX.GetDefaultInterface: IspdNFeEmailX;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TspdNFeEmailX.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TspdNFeEmailXProperties.Create(Self);
{$ENDIF}
end;

destructor TspdNFeEmailX.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TspdNFeEmailX.GetServerProperties: TspdNFeEmailXProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TspdNFeEmailX.Get_Servidor: WideString;
begin
  Result := DefaultInterface.Servidor;
end;

procedure TspdNFeEmailX.Set_Servidor(const Value: WideString);
  { Warning: The property Servidor has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Servidor := Value;
end;

function  TspdNFeEmailX.Get_Autenticacao: WordBool;
begin
  Result := DefaultInterface.Autenticacao;
end;

procedure TspdNFeEmailX.Set_Autenticacao(Value: WordBool);
begin
  DefaultInterface.Autenticacao := Value;
end;

function  TspdNFeEmailX.Get_EmailRemetente: WideString;
begin
  Result := DefaultInterface.EmailRemetente;
end;

procedure TspdNFeEmailX.Set_EmailRemetente(const Value: WideString);
  { Warning: The property EmailRemetente has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailRemetente := Value;
end;

function  TspdNFeEmailX.Get_EmailDestinatario: WideString;
begin
  Result := DefaultInterface.EmailDestinatario;
end;

procedure TspdNFeEmailX.Set_EmailDestinatario(const Value: WideString);
  { Warning: The property EmailDestinatario has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailDestinatario := Value;
end;

function  TspdNFeEmailX.Get_Assunto: WideString;
begin
  Result := DefaultInterface.Assunto;
end;

procedure TspdNFeEmailX.Set_Assunto(const Value: WideString);
  { Warning: The property Assunto has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Assunto := Value;
end;

function  TspdNFeEmailX.Get_Mensagem: WideString;
begin
  Result := DefaultInterface.Mensagem;
end;

procedure TspdNFeEmailX.Set_Mensagem(const Value: WideString);
  { Warning: The property Mensagem has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mensagem := Value;
end;

function  TspdNFeEmailX.Get_Usuario: WideString;
begin
  Result := DefaultInterface.Usuario;
end;

procedure TspdNFeEmailX.Set_Usuario(const Value: WideString);
  { Warning: The property Usuario has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Usuario := Value;
end;

function  TspdNFeEmailX.Get_Senha: WideString;
begin
  Result := DefaultInterface.Senha;
end;

procedure TspdNFeEmailX.Set_Senha(const Value: WideString);
  { Warning: The property Senha has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Senha := Value;
end;

procedure TspdNFeEmailX.AddAnexo(const aArquivo: WideString);
begin
  DefaultInterface.AddAnexo(aArquivo);
end;

procedure TspdNFeEmailX.EnviarEmail;
begin
  DefaultInterface.EnviarEmail;
end;

procedure TspdNFeEmailX.AddCCo(const Email: WideString);
begin
  DefaultInterface.AddCCo(Email);
end;

procedure TspdNFeEmailX.AddCC(const Email: WideString);
begin
  DefaultInterface.AddCC(Email);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TspdNFeEmailXProperties.Create(AServer: TspdNFeEmailX);
begin
  inherited Create;
  FServer := AServer;
end;

function TspdNFeEmailXProperties.GetDefaultInterface: IspdNFeEmailX;
begin
  Result := FServer.DefaultInterface;
end;

function  TspdNFeEmailXProperties.Get_Servidor: WideString;
begin
  Result := DefaultInterface.Servidor;
end;

procedure TspdNFeEmailXProperties.Set_Servidor(const Value: WideString);
  { Warning: The property Servidor has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Servidor := Value;
end;

function  TspdNFeEmailXProperties.Get_Autenticacao: WordBool;
begin
  Result := DefaultInterface.Autenticacao;
end;

procedure TspdNFeEmailXProperties.Set_Autenticacao(Value: WordBool);
begin
  DefaultInterface.Autenticacao := Value;
end;

function  TspdNFeEmailXProperties.Get_EmailRemetente: WideString;
begin
  Result := DefaultInterface.EmailRemetente;
end;

procedure TspdNFeEmailXProperties.Set_EmailRemetente(const Value: WideString);
  { Warning: The property EmailRemetente has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailRemetente := Value;
end;

function  TspdNFeEmailXProperties.Get_EmailDestinatario: WideString;
begin
  Result := DefaultInterface.EmailDestinatario;
end;

procedure TspdNFeEmailXProperties.Set_EmailDestinatario(const Value: WideString);
  { Warning: The property EmailDestinatario has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.EmailDestinatario := Value;
end;

function  TspdNFeEmailXProperties.Get_Assunto: WideString;
begin
  Result := DefaultInterface.Assunto;
end;

procedure TspdNFeEmailXProperties.Set_Assunto(const Value: WideString);
  { Warning: The property Assunto has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Assunto := Value;
end;

function  TspdNFeEmailXProperties.Get_Mensagem: WideString;
begin
  Result := DefaultInterface.Mensagem;
end;

procedure TspdNFeEmailXProperties.Set_Mensagem(const Value: WideString);
  { Warning: The property Mensagem has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mensagem := Value;
end;

function  TspdNFeEmailXProperties.Get_Usuario: WideString;
begin
  Result := DefaultInterface.Usuario;
end;

procedure TspdNFeEmailXProperties.Set_Usuario(const Value: WideString);
  { Warning: The property Usuario has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Usuario := Value;
end;

function  TspdNFeEmailXProperties.Get_Senha: WideString;
begin
  Result := DefaultInterface.Senha;
end;

procedure TspdNFeEmailXProperties.Set_Senha(const Value: WideString);
  { Warning: The property Senha has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Senha := Value;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TspdNFeEmailX]);
end;

end.
