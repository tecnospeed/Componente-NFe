Unit NFeDataSetX_1_0_TLB;

//  Imported NFeDataSetX on 23/02/2020 19:51:44 from C:\Windows\SysWow64\NFeDataSetX.dll

{$mode delphi}{$H+}

interface

// Dependency: stdole v2 (stdole2.pas)
//  Warning: 'GUID' not automatable in IspdNFeDataSetXdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdNFeDataSetXdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdNFeDataSetXdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IspdNFeDataSetXdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IspdNFeDataSetXdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IspdNFeDataSetXdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IspdNFeDataSetXdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IspdNFeDataSetXdisp.Invoke
//  Warning: renamed method 'Eof' in IspdXmlDataSetX to 'Eof_'
//  Warning: 'GUID' not automatable in IspdXmlDataSetXdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdXmlDataSetXdisp.QueryInterface
//  Warning: 'Ppointer' not automatable in IspdXmlDataSetXdisp.GetTypeInfo
//  Warning: 'GUID' not automatable in IspdXmlDataSetXdisp.GetIDsOfNames
//  Warning: 'PShortInt' not automatable in IspdXmlDataSetXdisp.GetIDsOfNames
//  Warning: 'GUID' not automatable in IspdXmlDataSetXdisp.Invoke
//  Warning: 'DISPPARAMS' not automatable in IspdXmlDataSetXdisp.Invoke
//  Warning: 'EXCEPINFO' not automatable in IspdXmlDataSetXdisp.Invoke
//  Warning: renamed method 'Eof' in IspdXmlDataSetX to 'Eof_'
Uses
  Windows,ActiveX,Classes,Variants,stdole2;
Const
  NFeDataSetXMajorVersion = 1;
  NFeDataSetXMinorVersion = 0;
  NFeDataSetXLCID = 0;
  LIBID_NFeDataSetX : TGUID = '{E2B7C512-EC6F-4B8D-A8F7-3D9DB3A9DE62}';

  IID_IspdNFeDataSetX : TGUID = '{0785115A-7986-43D9-8B0C-B640337B1AB9}';
  CLASS_spdNFeDataSetX : TGUID = '{CFDDD15C-C6AD-4396-9ED9-1245D1A0F52A}';
  IID_IspdXmlDataSetX : TGUID = '{94564DCA-8E74-400B-93E7-D2280E933A83}';
  CLASS_spdXmlDataSetX : TGUID = '{26527A23-705F-4C79-B4CB-EAED79D77829}';

//Enums

//Forward declarations

Type
 IspdNFeDataSetX = interface;
 IspdNFeDataSetXDisp = dispinterface;
 IspdXmlDataSetX = interface;
 IspdXmlDataSetXDisp = dispinterface;

//Map CoClass to its default interface

 spdNFeDataSetX = IspdNFeDataSetX;
 spdXmlDataSetX = IspdXmlDataSetX;

//records, unions, aliases


//interface declarations

// IspdNFeDataSetX : SpeedLabs NFe DataSetsX

 IspdNFeDataSetX = interface(IDispatch)
   ['{0785115A-7986-43D9-8B0C-B640337B1AB9}']
    // Incluir :  
   procedure Incluir;safecall;
    // IncluirItem :  
   procedure IncluirItem;safecall;
    // Salvar :  
   procedure Salvar;safecall;
    // SalvarItem :  
   procedure SalvarItem;safecall;
    // Cancelar :  
   procedure Cancelar;safecall;
    // IncluirCobranca :  
   procedure IncluirCobranca;safecall;
    // SalvarCobranca :  
   procedure SalvarCobranca;safecall;
    // GetCampo :  
   function GetCampo(aName:WideString):WideString;safecall;
    // SetCampo :  
   procedure SetCampo(Value:WideString);safecall;
   function Get_DicionarioXML : WideString; safecall;
   procedure Set_DicionarioXML(const Value:WideString); safecall;
   function Get_LoteNFe : WideString; safecall;
   procedure Set_LoteNFe(const Value:WideString); safecall;
   function Get_VersaoEsquema : WideString; safecall;
   procedure Set_VersaoEsquema(const Value:WideString); safecall;
    // IncluirParte :  
   procedure IncluirParte(aParte:WideString);safecall;
    // SalvarParte :  
   procedure SalvarParte(aParte:WideString);safecall;
   function Get_ValidaRegrasNegocio : WordBool; safecall;
   procedure Set_ValidaRegrasNegocio(const Value:WordBool); safecall;
   function Get_ExcecoesDeRegra : WideString; safecall;
   procedure Set_ExcecoesDeRegra(const Value:WideString); safecall;
   function Get_ValidaRegrasNegocioTecno : WordBool; safecall;
   procedure Set_ValidaRegrasNegocioTecno(const Value:WordBool); safecall;
    // ConverterXmlParaDataSet :  
   procedure ConverterXmlParaDataSet(aConteudoXml:WideString;aVersaoEsquema:WideString);safecall;
   function Get_DiretorioTemplates : WideString; safecall;
   procedure Set_DiretorioTemplates(const Value:WideString); safecall;
   function Get_DiretorioLogErro : WideString; safecall;
   procedure Set_DiretorioLogErro(const Value:WideString); safecall;
    // FindDataset :  
   function FindDataset(aDataSetName:WideString):IspdXmlDataSetX;safecall;
    // DicionarioXML :  
   property DicionarioXML:WideString read Get_DicionarioXML write Set_DicionarioXML;
    // LoteNFe :  
   property LoteNFe:WideString read Get_LoteNFe write Set_LoteNFe;
    // VersaoEsquema :  
   property VersaoEsquema:WideString read Get_VersaoEsquema write Set_VersaoEsquema;
    // ValidaRegrasNegocio :  
   property ValidaRegrasNegocio:WordBool read Get_ValidaRegrasNegocio write Set_ValidaRegrasNegocio;
    // ExcecoesDeRegra :  
   property ExcecoesDeRegra:WideString read Get_ExcecoesDeRegra write Set_ExcecoesDeRegra;
    // ValidaRegrasNegocioTecno :  
   property ValidaRegrasNegocioTecno:WordBool read Get_ValidaRegrasNegocioTecno write Set_ValidaRegrasNegocioTecno;
    // DiretorioTemplates :  
   property DiretorioTemplates:WideString read Get_DiretorioTemplates write Set_DiretorioTemplates;
    // DiretorioLogErro :  
   property DiretorioLogErro:WideString read Get_DiretorioLogErro write Set_DiretorioLogErro;
  end;


// IspdNFeDataSetX : SpeedLabs NFe DataSetsX

 IspdNFeDataSetXDisp = dispinterface
   ['{0785115A-7986-43D9-8B0C-B640337B1AB9}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Incluir :  
   procedure Incluir;dispid 201;
    // IncluirItem :  
   procedure IncluirItem;dispid 202;
    // Salvar :  
   procedure Salvar;dispid 203;
    // SalvarItem :  
   procedure SalvarItem;dispid 204;
    // Cancelar :  
   procedure Cancelar;dispid 205;
    // IncluirCobranca :  
   procedure IncluirCobranca;dispid 206;
    // SalvarCobranca :  
   procedure SalvarCobranca;dispid 207;
    // GetCampo :  
   function GetCampo(aName:WideString):WideString;dispid 208;
    // SetCampo :  
   procedure SetCampo(Value:WideString);dispid 210;
    // IncluirParte :  
   procedure IncluirParte(aParte:WideString);dispid 213;
    // SalvarParte :  
   procedure SalvarParte(aParte:WideString);dispid 214;
    // ConverterXmlParaDataSet :  
   procedure ConverterXmlParaDataSet(aConteudoXml:WideString;aVersaoEsquema:WideString);dispid 219;
    // FindDataset :  
   function FindDataset(aDataSetName:WideString):IspdXmlDataSetX;dispid 218;
    // DicionarioXML :  
   property DicionarioXML:WideString dispid 211;
    // LoteNFe :  
   property LoteNFe:WideString dispid 212;
    // VersaoEsquema :  
   property VersaoEsquema:WideString dispid 209;
    // ValidaRegrasNegocio :  
   property ValidaRegrasNegocio:WordBool dispid 215;
    // ExcecoesDeRegra :  
   property ExcecoesDeRegra:WideString dispid 216;
    // ValidaRegrasNegocioTecno :  
   property ValidaRegrasNegocioTecno:WordBool dispid 217;
    // DiretorioTemplates :  
   property DiretorioTemplates:WideString dispid 220;
    // DiretorioLogErro :  
   property DiretorioLogErro:WideString dispid 221;
  end;


// IspdXmlDataSetX : 

 IspdXmlDataSetX = interface(IDispatch)
   ['{94564DCA-8E74-400B-93E7-D2280E933A83}']
    // Eof_ :  
   function Eof_:WordBool;safecall;
    // First :  
   procedure First;safecall;
    // Next :  
   procedure Next;safecall;
    // FieldByNameValue :  
   function FieldByNameValue(aFieldName:WideString):WideString;safecall;
  end;


// IspdXmlDataSetX : 

 IspdXmlDataSetXDisp = dispinterface
   ['{94564DCA-8E74-400B-93E7-D2280E933A83}']
    // QueryInterface :  
   procedure QueryInterface(var riid:{!! GUID !!} OleVariant;out ppvObj:{!! Ppointer !!} OleVariant);dispid 1610612736;
    // AddRef :  
   function AddRef:LongWord;dispid 1610612737;
    // Release :  
   function Release:LongWord;dispid 1610612738;
    // GetTypeInfoCount :  
   procedure GetTypeInfoCount(out pctinfo:UInt);dispid 1610678272;
    // GetTypeInfo :  
   procedure GetTypeInfo(itinfo:UInt;lcid:LongWord;out pptinfo:{!! Ppointer !!} OleVariant);dispid 1610678273;
    // GetIDsOfNames :  
   procedure GetIDsOfNames(var riid:{!! GUID !!} OleVariant;var rgszNames:{!! PShortInt !!} OleVariant;cNames:UInt;lcid:LongWord;out rgdispid:Integer);dispid 1610678274;
    // Invoke :  
   procedure Invoke(dispidMember:Integer;var riid:{!! GUID !!} OleVariant;lcid:LongWord;wFlags:Word;var pdispparams:{!! DISPPARAMS !!} OleVariant;out pvarResult:OleVariant;out pexcepinfo:{!! EXCEPINFO !!} OleVariant;out puArgErr:UInt);dispid 1610678275;
    // Eof_ :  
   function Eof_:WordBool;dispid 201;
    // First :  
   procedure First;dispid 202;
    // Next :  
   procedure Next;dispid 203;
    // FieldByNameValue :  
   function FieldByNameValue(aFieldName:WideString):WideString;dispid 204;
  end;

//CoClasses
  CospdNFeDataSetX = Class
  Public
    Class Function Create: IspdNFeDataSetX;
    Class Function CreateRemote(const MachineName: string): IspdNFeDataSetX;
  end;

  CospdXmlDataSetX = Class
  Public
    Class Function Create: IspdXmlDataSetX;
    Class Function CreateRemote(const MachineName: string): IspdXmlDataSetX;
  end;

implementation

uses comobj;

Class Function CospdNFeDataSetX.Create: IspdNFeDataSetX;
begin
  Result := CreateComObject(CLASS_spdNFeDataSetX) as IspdNFeDataSetX;
end;

Class Function CospdNFeDataSetX.CreateRemote(const MachineName: string): IspdNFeDataSetX;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_spdNFeDataSetX) as IspdNFeDataSetX;
end;

Class Function CospdXmlDataSetX.Create: IspdXmlDataSetX;
begin
  Result := CreateComObject(CLASS_spdXmlDataSetX) as IspdXmlDataSetX;
end;

Class Function CospdXmlDataSetX.CreateRemote(const MachineName: string): IspdXmlDataSetX;
begin
  Result := CreateRemoteComObject(MachineName,CLASS_spdXmlDataSetX) as IspdXmlDataSetX;
end;

end.
