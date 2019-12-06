unit NFeDataSetX_TLB;

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
// File generated on 30/04/2018 11:00:08 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Windows\SysWow64\NFeDataSetX.dll (1)
// LIBID: {E2B7C512-EC6F-4B8D-A8F7-3D9DB3A9DE62}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\Windows\SysWow64\stdvcl40.dll)
// Errors:
//   Error creating palette bitmap of (TspdNFeDataSetX) : Server C:\Windows\SysWow64\NFeDataSetX.dll contains no icons
//   Error creating palette bitmap of (TspdXmlDataSetX) : Server C:\Windows\SysWow64\NFeDataSetX.dll contains no icons
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
  NFeDataSetXMajorVersion = 1;
  NFeDataSetXMinorVersion = 0;

  LIBID_NFeDataSetX: TGUID = '{E2B7C512-EC6F-4B8D-A8F7-3D9DB3A9DE62}';

  IID_IspdNFeDataSetX: TGUID = '{0785115A-7986-43D9-8B0C-B640337B1AB9}';
  CLASS_spdNFeDataSetX: TGUID = '{CFDDD15C-C6AD-4396-9ED9-1245D1A0F52A}';
  IID_IspdXmlDataSetX: TGUID = '{94564DCA-8E74-400B-93E7-D2280E933A83}';
  CLASS_spdXmlDataSetX: TGUID = '{26527A23-705F-4C79-B4CB-EAED79D77829}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IspdNFeDataSetX = interface;
  IspdNFeDataSetXDisp = dispinterface;
  IspdXmlDataSetX = interface;
  IspdXmlDataSetXDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  spdNFeDataSetX = IspdNFeDataSetX;
  spdXmlDataSetX = IspdXmlDataSetX;


// *********************************************************************//
// Interface: IspdNFeDataSetX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0785115A-7986-43D9-8B0C-B640337B1AB9}
// *********************************************************************//
  IspdNFeDataSetX = interface(IDispatch)
    ['{0785115A-7986-43D9-8B0C-B640337B1AB9}']
    procedure Incluir; safecall;
    procedure IncluirItem; safecall;
    procedure Salvar; safecall;
    procedure SalvarItem; safecall;
    procedure Cancelar; safecall;
    procedure IncluirCobranca; safecall;
    procedure SalvarCobranca; safecall;
    function  GetCampo(const aName: WideString): WideString; safecall;
    procedure SetCampo(const Value: WideString); safecall;
    function  Get_DicionarioXML: WideString; safecall;
    procedure Set_DicionarioXML(const Value: WideString); safecall;
    function  Get_LoteNFe: WideString; safecall;
    procedure Set_LoteNFe(const Value: WideString); safecall;
    function  Get_VersaoEsquema: WideString; safecall;
    procedure Set_VersaoEsquema(const Value: WideString); safecall;
    procedure IncluirParte(const aParte: WideString); safecall;
    procedure SalvarParte(const aParte: WideString); safecall;
    function  Get_ValidaRegrasNegocio: WordBool; safecall;
    procedure Set_ValidaRegrasNegocio(Value: WordBool); safecall;
    function  Get_ExcecoesDeRegra: WideString; safecall;
    procedure Set_ExcecoesDeRegra(const Value: WideString); safecall;
    function  Get_ValidaRegrasNegocioTecno: WordBool; safecall;
    procedure Set_ValidaRegrasNegocioTecno(Value: WordBool); safecall;
    procedure ConverterXmlParaDataSet(const aConteudoXml: WideString; 
                                      const aVersaoEsquema: WideString); safecall;
    function  Get_DiretorioTemplates: WideString; safecall;
    procedure Set_DiretorioTemplates(const Value: WideString); safecall;
    function  Get_DiretorioLogErro: WideString; safecall;
    procedure Set_DiretorioLogErro(const Value: WideString); safecall;
    function  FindDataset(const aDataSetName: WideString): IspdXmlDataSetX; safecall;
    property DicionarioXML: WideString read Get_DicionarioXML write Set_DicionarioXML;
    property LoteNFe: WideString read Get_LoteNFe write Set_LoteNFe;
    property VersaoEsquema: WideString read Get_VersaoEsquema write Set_VersaoEsquema;
    property ValidaRegrasNegocio: WordBool read Get_ValidaRegrasNegocio write Set_ValidaRegrasNegocio;
    property ExcecoesDeRegra: WideString read Get_ExcecoesDeRegra write Set_ExcecoesDeRegra;
    property ValidaRegrasNegocioTecno: WordBool read Get_ValidaRegrasNegocioTecno write Set_ValidaRegrasNegocioTecno;
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
  end;

// *********************************************************************//
// DispIntf:  IspdNFeDataSetXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0785115A-7986-43D9-8B0C-B640337B1AB9}
// *********************************************************************//
  IspdNFeDataSetXDisp = dispinterface
    ['{0785115A-7986-43D9-8B0C-B640337B1AB9}']
    procedure Incluir; dispid 201;
    procedure IncluirItem; dispid 202;
    procedure Salvar; dispid 203;
    procedure SalvarItem; dispid 204;
    procedure Cancelar; dispid 205;
    procedure IncluirCobranca; dispid 206;
    procedure SalvarCobranca; dispid 207;
    function  GetCampo(const aName: WideString): WideString; dispid 208;
    procedure SetCampo(const Value: WideString); dispid 210;
    property DicionarioXML: WideString dispid 211;
    property LoteNFe: WideString dispid 212;
    property VersaoEsquema: WideString dispid 209;
    procedure IncluirParte(const aParte: WideString); dispid 213;
    procedure SalvarParte(const aParte: WideString); dispid 214;
    property ValidaRegrasNegocio: WordBool dispid 215;
    property ExcecoesDeRegra: WideString dispid 216;
    property ValidaRegrasNegocioTecno: WordBool dispid 217;
    procedure ConverterXmlParaDataSet(const aConteudoXml: WideString; 
                                      const aVersaoEsquema: WideString); dispid 219;
    property DiretorioTemplates: WideString dispid 220;
    property DiretorioLogErro: WideString dispid 221;
    function  FindDataset(const aDataSetName: WideString): IspdXmlDataSetX; dispid 218;
  end;

// *********************************************************************//
// Interface: IspdXmlDataSetX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {94564DCA-8E74-400B-93E7-D2280E933A83}
// *********************************************************************//
  IspdXmlDataSetX = interface(IDispatch)
    ['{94564DCA-8E74-400B-93E7-D2280E933A83}']
    function  Eof: WordBool; safecall;
    procedure First; safecall;
    procedure Next; safecall;
    function  FieldByNameValue(const aFieldName: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IspdXmlDataSetXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {94564DCA-8E74-400B-93E7-D2280E933A83}
// *********************************************************************//
  IspdXmlDataSetXDisp = dispinterface
    ['{94564DCA-8E74-400B-93E7-D2280E933A83}']
    function  Eof: WordBool; dispid 201;
    procedure First; dispid 202;
    procedure Next; dispid 203;
    function  FieldByNameValue(const aFieldName: WideString): WideString; dispid 204;
  end;

// *********************************************************************//
// The Class CospdNFeDataSetX provides a Create and CreateRemote method to          
// create instances of the default interface IspdNFeDataSetX exposed by              
// the CoClass spdNFeDataSetX. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdNFeDataSetX = class
    class function Create: IspdNFeDataSetX;
    class function CreateRemote(const MachineName: string): IspdNFeDataSetX;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TspdNFeDataSetX
// Help String      : SpeedLabs NFe DataSetsX
// Default Interface: IspdNFeDataSetX
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TspdNFeDataSetXProperties= class;
{$ENDIF}
  TspdNFeDataSetX = class(TOleServer)
  private
    FIntf:        IspdNFeDataSetX;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TspdNFeDataSetXProperties;
    function      GetServerProperties: TspdNFeDataSetXProperties;
{$ENDIF}
    function      GetDefaultInterface: IspdNFeDataSetX;
  protected
    procedure InitServerData; override;
    function  Get_DicionarioXML: WideString;
    procedure Set_DicionarioXML(const Value: WideString);
    function  Get_LoteNFe: WideString;
    procedure Set_LoteNFe(const Value: WideString);
    function  Get_VersaoEsquema: WideString;
    procedure Set_VersaoEsquema(const Value: WideString);
    function  Get_ValidaRegrasNegocio: WordBool;
    procedure Set_ValidaRegrasNegocio(Value: WordBool);
    function  Get_ExcecoesDeRegra: WideString;
    procedure Set_ExcecoesDeRegra(const Value: WideString);
    function  Get_ValidaRegrasNegocioTecno: WordBool;
    procedure Set_ValidaRegrasNegocioTecno(Value: WordBool);
    function  Get_DiretorioTemplates: WideString;
    procedure Set_DiretorioTemplates(const Value: WideString);
    function  Get_DiretorioLogErro: WideString;
    procedure Set_DiretorioLogErro(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IspdNFeDataSetX);
    procedure Disconnect; override;
    procedure Incluir;
    procedure IncluirItem;
    procedure Salvar;
    procedure SalvarItem;
    procedure Cancelar;
    procedure IncluirCobranca;
    procedure SalvarCobranca;
    function  GetCampo(const aName: WideString): WideString;
    procedure SetCampo(const Value: WideString);
    procedure IncluirParte(const aParte: WideString);
    procedure SalvarParte(const aParte: WideString);
    procedure ConverterXmlParaDataSet(const aConteudoXml: WideString; 
                                      const aVersaoEsquema: WideString);
    function  FindDataset(const aDataSetName: WideString): IspdXmlDataSetX;
    property  DefaultInterface: IspdNFeDataSetX read GetDefaultInterface;
    property DicionarioXML: WideString read Get_DicionarioXML write Set_DicionarioXML;
    property LoteNFe: WideString read Get_LoteNFe write Set_LoteNFe;
    property VersaoEsquema: WideString read Get_VersaoEsquema write Set_VersaoEsquema;
    property ValidaRegrasNegocio: WordBool read Get_ValidaRegrasNegocio write Set_ValidaRegrasNegocio;
    property ExcecoesDeRegra: WideString read Get_ExcecoesDeRegra write Set_ExcecoesDeRegra;
    property ValidaRegrasNegocioTecno: WordBool read Get_ValidaRegrasNegocioTecno write Set_ValidaRegrasNegocioTecno;
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TspdNFeDataSetXProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TspdNFeDataSetX
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TspdNFeDataSetXProperties = class(TPersistent)
  private
    FServer:    TspdNFeDataSetX;
    function    GetDefaultInterface: IspdNFeDataSetX;
    constructor Create(AServer: TspdNFeDataSetX);
  protected
    function  Get_DicionarioXML: WideString;
    procedure Set_DicionarioXML(const Value: WideString);
    function  Get_LoteNFe: WideString;
    procedure Set_LoteNFe(const Value: WideString);
    function  Get_VersaoEsquema: WideString;
    procedure Set_VersaoEsquema(const Value: WideString);
    function  Get_ValidaRegrasNegocio: WordBool;
    procedure Set_ValidaRegrasNegocio(Value: WordBool);
    function  Get_ExcecoesDeRegra: WideString;
    procedure Set_ExcecoesDeRegra(const Value: WideString);
    function  Get_ValidaRegrasNegocioTecno: WordBool;
    procedure Set_ValidaRegrasNegocioTecno(Value: WordBool);
    function  Get_DiretorioTemplates: WideString;
    procedure Set_DiretorioTemplates(const Value: WideString);
    function  Get_DiretorioLogErro: WideString;
    procedure Set_DiretorioLogErro(const Value: WideString);
  public
    property DefaultInterface: IspdNFeDataSetX read GetDefaultInterface;
  published
    property DicionarioXML: WideString read Get_DicionarioXML write Set_DicionarioXML;
    property LoteNFe: WideString read Get_LoteNFe write Set_LoteNFe;
    property VersaoEsquema: WideString read Get_VersaoEsquema write Set_VersaoEsquema;
    property ValidaRegrasNegocio: WordBool read Get_ValidaRegrasNegocio write Set_ValidaRegrasNegocio;
    property ExcecoesDeRegra: WideString read Get_ExcecoesDeRegra write Set_ExcecoesDeRegra;
    property ValidaRegrasNegocioTecno: WordBool read Get_ValidaRegrasNegocioTecno write Set_ValidaRegrasNegocioTecno;
    property DiretorioTemplates: WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    property DiretorioLogErro: WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CospdXmlDataSetX provides a Create and CreateRemote method to          
// create instances of the default interface IspdXmlDataSetX exposed by              
// the CoClass spdXmlDataSetX. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdXmlDataSetX = class
    class function Create: IspdXmlDataSetX;
    class function CreateRemote(const MachineName: string): IspdXmlDataSetX;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TspdXmlDataSetX
// Help String      : 
// Default Interface: IspdXmlDataSetX
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TspdXmlDataSetXProperties= class;
{$ENDIF}
  TspdXmlDataSetX = class(TOleServer)
  private
    FIntf:        IspdXmlDataSetX;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TspdXmlDataSetXProperties;
    function      GetServerProperties: TspdXmlDataSetXProperties;
{$ENDIF}
    function      GetDefaultInterface: IspdXmlDataSetX;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IspdXmlDataSetX);
    procedure Disconnect; override;
    function  Eof: WordBool;
    procedure First;
    procedure Next;
    function  FieldByNameValue(const aFieldName: WideString): WideString;
    property  DefaultInterface: IspdXmlDataSetX read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TspdXmlDataSetXProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TspdXmlDataSetX
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TspdXmlDataSetXProperties = class(TPersistent)
  private
    FServer:    TspdXmlDataSetX;
    function    GetDefaultInterface: IspdXmlDataSetX;
    constructor Create(AServer: TspdXmlDataSetX);
  protected
  public
    property DefaultInterface: IspdXmlDataSetX read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

implementation

uses ComObj;

class function CospdNFeDataSetX.Create: IspdNFeDataSetX;
begin
  Result := CreateComObject(CLASS_spdNFeDataSetX) as IspdNFeDataSetX;
end;

class function CospdNFeDataSetX.CreateRemote(const MachineName: string): IspdNFeDataSetX;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdNFeDataSetX) as IspdNFeDataSetX;
end;

procedure TspdNFeDataSetX.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{CFDDD15C-C6AD-4396-9ED9-1245D1A0F52A}';
    IntfIID:   '{0785115A-7986-43D9-8B0C-B640337B1AB9}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TspdNFeDataSetX.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IspdNFeDataSetX;
  end;
end;

procedure TspdNFeDataSetX.ConnectTo(svrIntf: IspdNFeDataSetX);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TspdNFeDataSetX.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TspdNFeDataSetX.GetDefaultInterface: IspdNFeDataSetX;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TspdNFeDataSetX.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TspdNFeDataSetXProperties.Create(Self);
{$ENDIF}
end;

destructor TspdNFeDataSetX.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TspdNFeDataSetX.GetServerProperties: TspdNFeDataSetXProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TspdNFeDataSetX.Get_DicionarioXML: WideString;
begin
  Result := DefaultInterface.DicionarioXML;
end;

procedure TspdNFeDataSetX.Set_DicionarioXML(const Value: WideString);
  { Warning: The property DicionarioXML has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DicionarioXML := Value;
end;

function  TspdNFeDataSetX.Get_LoteNFe: WideString;
begin
  Result := DefaultInterface.LoteNFe;
end;

procedure TspdNFeDataSetX.Set_LoteNFe(const Value: WideString);
  { Warning: The property LoteNFe has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LoteNFe := Value;
end;

function  TspdNFeDataSetX.Get_VersaoEsquema: WideString;
begin
  Result := DefaultInterface.VersaoEsquema;
end;

procedure TspdNFeDataSetX.Set_VersaoEsquema(const Value: WideString);
  { Warning: The property VersaoEsquema has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VersaoEsquema := Value;
end;

function  TspdNFeDataSetX.Get_ValidaRegrasNegocio: WordBool;
begin
  Result := DefaultInterface.ValidaRegrasNegocio;
end;

procedure TspdNFeDataSetX.Set_ValidaRegrasNegocio(Value: WordBool);
begin
  DefaultInterface.ValidaRegrasNegocio := Value;
end;

function  TspdNFeDataSetX.Get_ExcecoesDeRegra: WideString;
begin
  Result := DefaultInterface.ExcecoesDeRegra;
end;

procedure TspdNFeDataSetX.Set_ExcecoesDeRegra(const Value: WideString);
  { Warning: The property ExcecoesDeRegra has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ExcecoesDeRegra := Value;
end;

function  TspdNFeDataSetX.Get_ValidaRegrasNegocioTecno: WordBool;
begin
  Result := DefaultInterface.ValidaRegrasNegocioTecno;
end;

procedure TspdNFeDataSetX.Set_ValidaRegrasNegocioTecno(Value: WordBool);
begin
  DefaultInterface.ValidaRegrasNegocioTecno := Value;
end;

function  TspdNFeDataSetX.Get_DiretorioTemplates: WideString;
begin
  Result := DefaultInterface.DiretorioTemplates;
end;

procedure TspdNFeDataSetX.Set_DiretorioTemplates(const Value: WideString);
  { Warning: The property DiretorioTemplates has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemplates := Value;
end;

function  TspdNFeDataSetX.Get_DiretorioLogErro: WideString;
begin
  Result := DefaultInterface.DiretorioLogErro;
end;

procedure TspdNFeDataSetX.Set_DiretorioLogErro(const Value: WideString);
  { Warning: The property DiretorioLogErro has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLogErro := Value;
end;

procedure TspdNFeDataSetX.Incluir;
begin
  DefaultInterface.Incluir;
end;

procedure TspdNFeDataSetX.IncluirItem;
begin
  DefaultInterface.IncluirItem;
end;

procedure TspdNFeDataSetX.Salvar;
begin
  DefaultInterface.Salvar;
end;

procedure TspdNFeDataSetX.SalvarItem;
begin
  DefaultInterface.SalvarItem;
end;

procedure TspdNFeDataSetX.Cancelar;
begin
  DefaultInterface.Cancelar;
end;

procedure TspdNFeDataSetX.IncluirCobranca;
begin
  DefaultInterface.IncluirCobranca;
end;

procedure TspdNFeDataSetX.SalvarCobranca;
begin
  DefaultInterface.SalvarCobranca;
end;

function  TspdNFeDataSetX.GetCampo(const aName: WideString): WideString;
begin
  Result := DefaultInterface.GetCampo(aName);
end;

procedure TspdNFeDataSetX.SetCampo(const Value: WideString);
begin
  DefaultInterface.SetCampo(Value);
end;

procedure TspdNFeDataSetX.IncluirParte(const aParte: WideString);
begin
  DefaultInterface.IncluirParte(aParte);
end;

procedure TspdNFeDataSetX.SalvarParte(const aParte: WideString);
begin
  DefaultInterface.SalvarParte(aParte);
end;

procedure TspdNFeDataSetX.ConverterXmlParaDataSet(const aConteudoXml: WideString; 
                                                  const aVersaoEsquema: WideString);
begin
  DefaultInterface.ConverterXmlParaDataSet(aConteudoXml, aVersaoEsquema);
end;

function  TspdNFeDataSetX.FindDataset(const aDataSetName: WideString): IspdXmlDataSetX;
begin
  Result := DefaultInterface.FindDataset(aDataSetName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TspdNFeDataSetXProperties.Create(AServer: TspdNFeDataSetX);
begin
  inherited Create;
  FServer := AServer;
end;

function TspdNFeDataSetXProperties.GetDefaultInterface: IspdNFeDataSetX;
begin
  Result := FServer.DefaultInterface;
end;

function  TspdNFeDataSetXProperties.Get_DicionarioXML: WideString;
begin
  Result := DefaultInterface.DicionarioXML;
end;

procedure TspdNFeDataSetXProperties.Set_DicionarioXML(const Value: WideString);
  { Warning: The property DicionarioXML has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DicionarioXML := Value;
end;

function  TspdNFeDataSetXProperties.Get_LoteNFe: WideString;
begin
  Result := DefaultInterface.LoteNFe;
end;

procedure TspdNFeDataSetXProperties.Set_LoteNFe(const Value: WideString);
  { Warning: The property LoteNFe has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LoteNFe := Value;
end;

function  TspdNFeDataSetXProperties.Get_VersaoEsquema: WideString;
begin
  Result := DefaultInterface.VersaoEsquema;
end;

procedure TspdNFeDataSetXProperties.Set_VersaoEsquema(const Value: WideString);
  { Warning: The property VersaoEsquema has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VersaoEsquema := Value;
end;

function  TspdNFeDataSetXProperties.Get_ValidaRegrasNegocio: WordBool;
begin
  Result := DefaultInterface.ValidaRegrasNegocio;
end;

procedure TspdNFeDataSetXProperties.Set_ValidaRegrasNegocio(Value: WordBool);
begin
  DefaultInterface.ValidaRegrasNegocio := Value;
end;

function  TspdNFeDataSetXProperties.Get_ExcecoesDeRegra: WideString;
begin
  Result := DefaultInterface.ExcecoesDeRegra;
end;

procedure TspdNFeDataSetXProperties.Set_ExcecoesDeRegra(const Value: WideString);
  { Warning: The property ExcecoesDeRegra has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ExcecoesDeRegra := Value;
end;

function  TspdNFeDataSetXProperties.Get_ValidaRegrasNegocioTecno: WordBool;
begin
  Result := DefaultInterface.ValidaRegrasNegocioTecno;
end;

procedure TspdNFeDataSetXProperties.Set_ValidaRegrasNegocioTecno(Value: WordBool);
begin
  DefaultInterface.ValidaRegrasNegocioTecno := Value;
end;

function  TspdNFeDataSetXProperties.Get_DiretorioTemplates: WideString;
begin
  Result := DefaultInterface.DiretorioTemplates;
end;

procedure TspdNFeDataSetXProperties.Set_DiretorioTemplates(const Value: WideString);
  { Warning: The property DiretorioTemplates has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioTemplates := Value;
end;

function  TspdNFeDataSetXProperties.Get_DiretorioLogErro: WideString;
begin
  Result := DefaultInterface.DiretorioLogErro;
end;

procedure TspdNFeDataSetXProperties.Set_DiretorioLogErro(const Value: WideString);
  { Warning: The property DiretorioLogErro has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DiretorioLogErro := Value;
end;

{$ENDIF}

class function CospdXmlDataSetX.Create: IspdXmlDataSetX;
begin
  Result := CreateComObject(CLASS_spdXmlDataSetX) as IspdXmlDataSetX;
end;

class function CospdXmlDataSetX.CreateRemote(const MachineName: string): IspdXmlDataSetX;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdXmlDataSetX) as IspdXmlDataSetX;
end;

procedure TspdXmlDataSetX.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{26527A23-705F-4C79-B4CB-EAED79D77829}';
    IntfIID:   '{94564DCA-8E74-400B-93E7-D2280E933A83}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TspdXmlDataSetX.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IspdXmlDataSetX;
  end;
end;

procedure TspdXmlDataSetX.ConnectTo(svrIntf: IspdXmlDataSetX);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TspdXmlDataSetX.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TspdXmlDataSetX.GetDefaultInterface: IspdXmlDataSetX;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TspdXmlDataSetX.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TspdXmlDataSetXProperties.Create(Self);
{$ENDIF}
end;

destructor TspdXmlDataSetX.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TspdXmlDataSetX.GetServerProperties: TspdXmlDataSetXProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TspdXmlDataSetX.Eof: WordBool;
begin
  Result := DefaultInterface.Eof;
end;

procedure TspdXmlDataSetX.First;
begin
  DefaultInterface.First;
end;

procedure TspdXmlDataSetX.Next;
begin
  DefaultInterface.Next;
end;

function  TspdXmlDataSetX.FieldByNameValue(const aFieldName: WideString): WideString;
begin
  Result := DefaultInterface.FieldByNameValue(aFieldName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TspdXmlDataSetXProperties.Create(AServer: TspdXmlDataSetX);
begin
  inherited Create;
  FServer := AServer;
end;

function TspdXmlDataSetXProperties.GetDefaultInterface: IspdXmlDataSetX;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TspdNFeDataSetX, TspdXmlDataSetX]);
end;

end.
