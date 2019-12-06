unit uDemoUtils;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, ComCtrls,ShellAPI,Inifiles;


const
 INI_FILE = 'nfeConfig.ini';

 {Remove caracteres de uma string deixando apenas numeros}
 function RemoveChar(Const Texto:String):String;

 { Pega o ID da NFe no XML }
 function ObterNotaID(const aXml:WideString): string;

 { Pega o Numero do Recibo no Xml de Retorno  }
 function ObterNroRecibo(const aXml:WideString): string;

 { Pega o Numero do protocolo do retorno da ConsultaDoRecibo }
 function ObterNroProtocolo(const aXml:WideString): string;

 {função que escreve em um arquivo .ini}
 procedure WriteToIni(aName, aValue: String);

 procedure SaveStToFile (const aStream : TStream; const aFileName : String);

 { Lê o arquivo e devolve o xml }
 function LoadFile(const FileName: String):widestring;

 { Salvar dados no arquivo e devolve o xml }
 function SavetoFile(const Conteudo,FileName: String):widestring;

implementation

procedure WriteToIni(aName, aValue : String);
var
  IniFile : TIniFile;
  aCurrentDir : string;
begin
  aCurrentDir := ExtractFilePath(ParamStr(0));
  SetCurrentDir(aCurrentDir);
  IniFile := TIniFile.Create(aCurrentDir + INI_FILE);
  try
    IniFile.WriteString('NFE', aName, aValue);
  finally
    IniFile.Free;
  end;
end;

function ObterNroRecibo(const aXml:WideString): string;
var _Posini, _Posfim : integer;
    aTag, aEndTag : string;
begin
  Result := '';
  aTag := '<nRec';
  aEndTag := '</nRec';
  _Posini := Pos(aTag,aXML);
  _Posfim := Pos(aEndTag,aXML);
  if (_Posini > 0) then
  begin
    inc(_PosIni,Length(aTag));
    Result := Copy(aXml,_Posini+1,(_PosFim-_PosIni)-1);
  end;
end;

function RemoveChar(Const Texto:String):String;
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
    begin
      if (Texto[I] in ['0'..'9']) then
        begin
          S := S + Copy(Texto, I, 1);
        end;
    end;
  result := S;
end;

function ObterNotaID(const aXml:WideString): string;
var _Posini : integer;
    aTag : string;
begin
  Result := '';
  aTag := '<infNFe Id="NFe';
  _Posini := Pos(aTag,aXML);
  if (_Posini > 0) then
  begin
    inc(_PosIni,Length(aTag));
    Result := Copy(aXml,_Posini,44);
  end;
end;

function ObterNroProtocolo(const aXml:WideString): string;
var _Posini, _Posfim : integer;
    aTag, aEndTag : string;
begin
  Result := '';
  aTag := '<nProt';
  aEndTag := '</nProt';
  _Posini := Pos(aTag,aXML);
  _Posfim := Pos(aEndTag,aXML);
  if (_Posini > 0) then
  begin
    inc(_PosIni,Length(aTag));
    Result := Copy(aXml,_Posini+1,(_PosFim-_PosIni)-1);
  end;
end;

procedure SaveStToFile (const aStream : TStream; const aFileName : String);
begin
   if aStream <> nil then
     With TMemoryStream(aStream) do
       SaveToFile (aFileName);
end;

function LoadFile(const FileName: String):widestring;
var
  _Conteudo:TStringList;
begin
 _Conteudo:=TStringList.Create;
 _Conteudo.LoadFromFile(FileName);

 Result := _Conteudo.Text;

 _Conteudo.Free;
end;

function SavetoFile(const Conteudo,FileName: String):widestring;
var
  _Conteudo:TStringList;
begin
 _Conteudo:=TStringList.Create;
 _Conteudo.SaveToFile(FileName);

 Result := _Conteudo.Text;

 _Conteudo.Free;
end;


end.
