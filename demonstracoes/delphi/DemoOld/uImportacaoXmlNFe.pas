unit uImportacaoXmlNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils, spdNFeDataSets, spdNFe, spdNFeType;

type
  TfrmImportacaoXmlNFe = class(TForm)
    pnlTop: TPanel;
    pnlClient: TPanel;
    edtArquivoXmlNfe: TEdit;
    btnProcessar: TButton;
    btnOpen: TButton;
    lblArquivoXmlNfe: TLabel;
    mmoInformacoesNFe: TMemo;
    dlgOpenNfe: TOpenDialog;
    procedure btnOpenClick(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fCnpjSoftwareHouse : string;
  end;

var
  frmImportacaoXmlNFe: TfrmImportacaoXmlNFe;

implementation

{$R *.dfm}

procedure TfrmImportacaoXmlNFe.btnOpenClick(Sender: TObject);
begin
  dlgOpenNfe.InitialDir := ExtractFilePath(ParamStr(0));
  dlgOpenNfe.Filter := 'Arquivo xml (*.xml) | *.xml';

  if dlgOpenNfe.Execute then
    edtArquivoXmlNfe.Text := dlgOpenNfe.FileName;
end;

procedure TfrmImportacaoXmlNFe.btnProcessarClick(Sender: TObject);
var
  _NFe : TspdNFe;
  _NFeDatasets : TspdNFeDataSets;
  _conteudoArquivo: TStringList;
  _dsRastro, _dsDI, _dsADI, _dsDuplicata, _dsPagamento: TXmlDataSetNFe;
begin
  if ((edtArquivoXmlNfe.Text = EmptyStr) or (not FileExists(edtArquivoXmlNfe.Text))) then
  begin
    ShowMessage('Não foi encontrado o arquivo Xml.'
      +#13#10+'Informe um arquivo existente.');
    edtArquivoXmlNfe.SetFocus;
    Abort;
  end;

  _NFe := TspdNFe.Create(nil);
  _NFeDatasets := TspdNFeDataSets.Create(nil);
  _conteudoArquivo := TStringList.Create;

  Screen.Cursor := crHourGlass;
  try
    _NFeDatasets.LoteNFe.Clear;
    mmoInformacoesNFe.Clear;

    try
      _NFe.ConfigurarSoftwareHouse(fCnpjSoftwareHouse, ''); //***Configure com o CNPJ de sua Software House
      _NFe.LoadConfig;

      _conteudoArquivo.LoadFromFile(edtArquivoXmlNfe.Text);
      if (AnsiContainsText(_conteudoArquivo.Text, 'versao="3.10"')) then
      begin
        _NFe.VersaoManual := vm50a;
        _NFeDatasets.VersaoEsquema := pl_008i2;
        _NFeDatasets.XMLDicionario := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Templates\vm50a\Conversor\NFeDataSets.xml';
      end
      else
      begin
        _NFe.VersaoManual := vm60;
        _NFeDatasets.VersaoEsquema := pl_009;
        _NFeDatasets.XMLDicionario := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Templates\vm60\Conversor\NFeDataSets.xml';
      end;

      _NFeDatasets := _NFe.ConverteXmlParaDataSet(edtArquivoXmlNfe.Text, _NFeDatasets.VersaoEsquema);
      _conteudoArquivo.Clear;

      //Exibindo algumas informações gerais do Documento
      _conteudoArquivo.Add('---------------------------------------------------------------------------------------------');
      _conteudoArquivo.Add('INFORMAÇÕES DO DOCUMENTO');
      _conteudoArquivo.Add('   versao_A02 = ' + _NFeDatasets.Campo('versao_A02').AsString);
      _conteudoArquivo.Add('   cUF_B02 = ' + _NFeDatasets.Campo('cUF_B02').AsString);
      _conteudoArquivo.Add('   cNF_B03 = ' + _NFeDatasets.Campo('cNF_B03').AsString);
      _conteudoArquivo.Add('   natOp_B04 = ' + _NFeDatasets.Campo('natOp_B04').AsString);
      _conteudoArquivo.Add('   serie_B07 = ' + _NFeDatasets.Campo('serie_B07').AsString);
      _conteudoArquivo.Add('   nNF_B08 = ' + _NFeDatasets.Campo('nNF_B08').AsString);
      _conteudoArquivo.Add('   dhEmi_B09 = ' + _NFeDatasets.Campo('dhEmi_B09').AsString);
      _conteudoArquivo.Add('   dhSaiEnt_B10 = ' + _NFeDatasets.Campo('dhSaiEnt_B10').AsString);
      _conteudoArquivo.Add('   tpNF_B11 = ' + _NFeDatasets.Campo('tpNF_B11').AsString);
      _conteudoArquivo.Add('   finNFe_B25 = ' + _NFeDatasets.Campo('finNFe_B25').AsString);
      _conteudoArquivo.Add('');

      //Exibindo algumas informações do Emitente
      _conteudoArquivo.Add('---------------------------------------------------------------------------------------------');
      _conteudoArquivo.Add('INFORMAÇÕES DO EMITENTE');
      _conteudoArquivo.Add('   CNPJ_C02 = ' + _NFeDatasets.Campo('CNPJ_C02').AsString);
      _conteudoArquivo.Add('   xNome_C03 = ' + _NFeDatasets.Campo('xNome_C03').AsString);
      _conteudoArquivo.Add('   xFant_C04 = ' + _NFeDatasets.Campo('xFant_C04').AsString);
      _conteudoArquivo.Add('   xLgr_C06 = ' + _NFeDatasets.Campo('xLgr_C06').AsString);
      _conteudoArquivo.Add('   nro_C07 = ' + _NFeDatasets.Campo('nro_C07').AsString);
      _conteudoArquivo.Add('   xCpl_C08 = ' + _NFeDatasets.Campo('xCpl_C08').AsString);
      _conteudoArquivo.Add('   xBairro_C09 = ' + _NFeDatasets.Campo('xBairro_C09').AsString);
      _conteudoArquivo.Add('   cMun_C10 = ' + _NFeDatasets.Campo('cMun_C10').AsString);
      _conteudoArquivo.Add('   xMun_C11 = ' + _NFeDatasets.Campo('xMun_C11').AsString);
      _conteudoArquivo.Add('   UF_C12 = ' + _NFeDatasets.Campo('UF_C12').AsString);
      _conteudoArquivo.Add('   CEP_C13 = ' + _NFeDatasets.Campo('CEP_C13').AsString);
      _conteudoArquivo.Add('   cPais_C14 = ' + _NFeDatasets.Campo('cPais_C14').AsString);
      _conteudoArquivo.Add('   xPais_C15 = ' + _NFeDatasets.Campo('xPais_C15').AsString);
      _conteudoArquivo.Add('   fone_C16 = ' + _NFeDatasets.Campo('fone_C16').AsString);
      _conteudoArquivo.Add('   IE_C17 = ' + _NFeDatasets.Campo('IE_C17').AsString);
      _conteudoArquivo.Add('   IEST_C18 = ' + _NFeDatasets.Campo('IEST_C18').AsString);
      _conteudoArquivo.Add('   IM_C19 = ' + _NFeDatasets.Campo('IM_C19').AsString);
      _conteudoArquivo.Add('   CRT_C21 = ' + _NFeDatasets.Campo('CRT_C21').AsString);
      _conteudoArquivo.Add('');

      //Exibindo algumas informações do Destinatário
      _conteudoArquivo.Add('---------------------------------------------------------------------------------------------');
      _conteudoArquivo.Add('INFORMAÇÕES DO DESTINATÁRIO');
      if (_NFeDatasets.Campo('CPF_E03').AsString <> EmptyStr) then
        _conteudoArquivo.Add('   CPF_E03 = ' + _NFeDatasets.Campo('CPF_E03').AsString)
      else
        _conteudoArquivo.Add('   CNPJ_E02 = ' + _NFeDatasets.Campo('CNPJ_E02').AsString);
      _conteudoArquivo.Add('   xNome_E04 = ' + _NFeDatasets.Campo('xNome_E04').AsString);
      _conteudoArquivo.Add('   xLgr_E06 = ' + _NFeDatasets.Campo('xLgr_E06').AsString);
      _conteudoArquivo.Add('   nro_E07 = ' + _NFeDatasets.Campo('nro_E07').AsString);
      _conteudoArquivo.Add('   xCpl_E08 = ' + _NFeDatasets.Campo('xCpl_E08').AsString);
      _conteudoArquivo.Add('   xBairro_E09 = ' + _NFeDatasets.Campo('xBairro_E09').AsString);
      _conteudoArquivo.Add('   cMun_E10 = ' + _NFeDatasets.Campo('cMun_E10').AsString);
      _conteudoArquivo.Add('   xMun_E11 = ' + _NFeDatasets.Campo('xMun_E11').AsString);
      _conteudoArquivo.Add('   UF_E12 = ' + _NFeDatasets.Campo('UF_E12').AsString);
      _conteudoArquivo.Add('   CEP_E13 = ' + _NFeDatasets.Campo('CEP_E13').AsString);
      _conteudoArquivo.Add('   cPais_E14 = ' + _NFeDatasets.Campo('cPais_E14').AsString);
      _conteudoArquivo.Add('   xPais_E15 = ' + _NFeDatasets.Campo('xPais_E15').AsString);
      _conteudoArquivo.Add('   fone_E16 = ' + _NFeDatasets.Campo('fone_E16').AsString);
      _conteudoArquivo.Add('   IE_E17 = ' + _NFeDatasets.Campo('IE_E17').AsString);
      _conteudoArquivo.Add('   ISUF_E18 = ' + _NFeDatasets.Campo('ISUF_E18').AsString);
      _conteudoArquivo.Add('   email_E19 = ' + _NFeDatasets.Campo('email_E19').AsString);
      _conteudoArquivo.Add('');

      //Exibindo algumas informações dos Itens
      _NFeDatasets.H.First;
      while not(_NFeDatasets.H.Eof) do
      begin
        _conteudoArquivo.Add('-----------------------------------------------------------------------------------------------');
        _conteudoArquivo.Add('INFORMAÇÕES DO ITEM (Id: '+ IntToStr(_NFeDatasets.H.RecNo)+')');
        _conteudoArquivo.Add('   cProd_I02 = ' + _NFeDatasets.Campo('cProd_I02').AsString);
        _conteudoArquivo.Add('   cEAN_I03 = ' + _NFeDatasets.Campo('cEAN_I03').AsString);
        _conteudoArquivo.Add('   xProd_I04 = ' + _NFeDatasets.Campo('xProd_I04').AsString);
        _conteudoArquivo.Add('   NCM_I05 = ' + _NFeDatasets.Campo('NCM_I05').AsString);
        _conteudoArquivo.Add('   CFOP_I08 = ' + _NFeDatasets.Campo('CFOP_I08').AsString);
        _conteudoArquivo.Add('   uCom_I09 = ' + _NFeDatasets.Campo('uCom_I09').AsString);
        _conteudoArquivo.Add('   qCom_I10 = ' + _NFeDatasets.Campo('qCom_I10').AsString);
        _conteudoArquivo.Add('   vUnCom_I10a = ' + _NFeDatasets.Campo('vUnCom_I10a').AsString);
        _conteudoArquivo.Add('   vProd_I11 = ' + _NFeDatasets.Campo('vProd_I11').AsString);

        //Informações de Impostos
        _conteudoArquivo.Add('IMPOSTOS');
        _conteudoArquivo.Add('   ICMS');
        _conteudoArquivo.Add('      CST_N12 = ' + _NFeDatasets.Campo('CST_N12').AsString);
        _conteudoArquivo.Add('      modBC_N13 = ' + _NFeDatasets.Campo('modBC_N13').AsString);
        _conteudoArquivo.Add('      vBC_N15 = ' + _NFeDatasets.Campo('vBC_N15').AsString);
        _conteudoArquivo.Add('      pICMS_N16 = ' + _NFeDatasets.Campo('pICMS_N16').AsString);
        _conteudoArquivo.Add('      vICMS_N17 = ' + _NFeDatasets.Campo('vICMS_N17').AsString);
        _conteudoArquivo.Add('   PARTILHA ICMS');
        _conteudoArquivo.Add('      vBCUFDest_NA03 = ' + _NFeDatasets.Campo('vBCUFDest_NA03').AsString);
        if _NFe.VersaoManual >= vm60 then //So tem a partir desta versão
          _conteudoArquivo.Add('      vBCFCPUFDest_NA04 = ' + _NFeDatasets.Campo('vBCFCPUFDest_NA04').AsString);
        _conteudoArquivo.Add('      pFCPUFDest_NA05 = ' + _NFeDatasets.Campo('pFCPUFDest_NA05').AsString);
        _conteudoArquivo.Add('      pICMSUFDest_NA07 = ' + _NFeDatasets.Campo('pICMSUFDest_NA07').AsString);
        _conteudoArquivo.Add('      pICMSInter_NA09 = ' + _NFeDatasets.Campo('pICMSInter_NA09').AsString);
        _conteudoArquivo.Add('      pICMSInterPart_NA11 = ' + _NFeDatasets.Campo('pICMSInterPart_NA11').AsString);
        _conteudoArquivo.Add('      vFCPUFDest_NA13 = ' + _NFeDatasets.Campo('vFCPUFDest_NA13').AsString);
        _conteudoArquivo.Add('      vICMSUFDest_NA15 = ' + _NFeDatasets.Campo('vICMSUFDest_NA15').AsString);
        _conteudoArquivo.Add('      vICMSUFRemet_NA17 = ' + _NFeDatasets.Campo('vICMSUFRemet_NA17').AsString);
        _conteudoArquivo.Add('   PIS');
        _conteudoArquivo.Add('      CST_Q06 = ' + _NFeDatasets.Campo('CST_Q06').AsString);
        _conteudoArquivo.Add('      vBC_Q07 = ' + _NFeDatasets.Campo('vBC_Q07').AsString);
        _conteudoArquivo.Add('      pPIS_Q08 = ' + _NFeDatasets.Campo('pPIS_Q08').AsString);
        _conteudoArquivo.Add('      vPIS_Q09 = ' + _NFeDatasets.Campo('vPIS_Q09').AsString);
        _conteudoArquivo.Add('   COFINS');
        _conteudoArquivo.Add('      CST_S06 = ' + _NFeDatasets.Campo('CST_S06').AsString);
        _conteudoArquivo.Add('      vBC_S07 = ' + _NFeDatasets.Campo('vBC_S07').AsString);
        _conteudoArquivo.Add('      pCOFINS_S08 = ' + _NFeDatasets.Campo('pCOFINS_S08').AsString);
        _conteudoArquivo.Add('      vCOFINS_S11 = ' + _NFeDatasets.Campo('vCOFINS_S11').AsString);
        _conteudoArquivo.Add('   IPI');
        _conteudoArquivo.Add('      CST_O09 = ' + _NFeDatasets.Campo('CST_O09').AsString);
        _conteudoArquivo.Add('      vBC_O10 = ' + _NFeDatasets.Campo('vBC_O10').AsString);
        _conteudoArquivo.Add('      pIPI_O13 = ' + _NFeDatasets.Campo('pIPI_O13').AsString);
        _conteudoArquivo.Add('      vIPI_O14 = ' + _NFeDatasets.Campo('vIPI_O14').AsString);

        //Informações de Rastro
        if _NFe.VersaoManual >= vm60 then //So tem a partir desta versão
        begin
          _dsRastro := _NFeDatasets.FindDataSet('I80');
          _dsRastro.First;
          while not(_dsRastro.Eof) do
          begin
            if Trim(_dsRastro.FieldByName('nLote_I81').AsString) <> EmptyStr then
            begin
              _conteudoArquivo.Add('RASTRO (Id: '+IntToStr(_dsRastro.RecNo)+')');
              _conteudoArquivo.Add('   nLote_I81 = ' + _dsRastro.FieldByName('nLote_I81').AsString);
              _conteudoArquivo.Add('   qLote_I82 = ' + _dsRastro.FieldByName('qLote_I82').AsString);
              _conteudoArquivo.Add('   dFab_I83 = ' + _dsRastro.FieldByName('dFab_I83').AsString);
              _conteudoArquivo.Add('   dVal_I84 = ' + _dsRastro.FieldByName('dVal_I84').AsString);
              _conteudoArquivo.Add('   cAgreg_I85 = ' + _dsRastro.FieldByName('cAgreg_I85').AsString);
            end;

            _dsRastro.Next;
          end;
        end;

        //Informações de DI/ADI
        _dsDI := _NFeDatasets.FindDataSet('DI');
        _dsDI.First;
        while not(_dsDI.Eof) do
        begin
          if Trim(_dsDI.FieldByName('nDI_I19').AsString) <> EmptyStr then
          begin
            _conteudoArquivo.Add('DECLARAÇÃO DE IMPORTAÇÃO (Id: '+IntToStr(_dsDI.RecNo)+')');
            _conteudoArquivo.Add('   nDI_I19 = ' + _dsDI.FieldByName('nDI_I19').AsString);
            _conteudoArquivo.Add('   dDI_I20 = ' + _dsDI.FieldByName('dDI_I20').AsString);
            _conteudoArquivo.Add('   xLocDesemb_I21 = ' + _dsDI.FieldByName('xLocDesemb_I21').AsString);
            _conteudoArquivo.Add('   UFDesemb_I22 = ' + _dsDI.FieldByName('UFDesemb_I22').AsString);
            _conteudoArquivo.Add('   dDesemb_I23 = ' + _dsDI.FieldByName('dDesemb_I23').AsString);
            _conteudoArquivo.Add('   tpViaTransp_I23a = ' + _dsDI.FieldByName('tpViaTransp_I23a').AsString);
            _conteudoArquivo.Add('   vAFRMM_I23b = ' + _dsDI.FieldByName('vAFRMM_I23b').AsString);
            _conteudoArquivo.Add('   tpIntermedio_I23c = ' + _dsDI.FieldByName('tpIntermedio_I23c').AsString);
            _conteudoArquivo.Add('   CNPJ_I23d = ' + _dsDI.FieldByName('CNPJ_I23d').AsString);
            _conteudoArquivo.Add('   UFTerceiro_I23e = ' + _dsDI.FieldByName('UFTerceiro_I23e').AsString);
            _conteudoArquivo.Add('   cExportador_I24 = ' + _dsDI.FieldByName('cExportador_I24').AsString);
          end;

          _dsADI := _NFeDatasets.FindDataSet('ADI');
          _dsADI.First;
          while not(_dsADI.Eof) do
          begin
            if Trim(_dsADI.FieldByName('nAdicao_I26').AsString) <> EmptyStr then
            begin
              _conteudoArquivo.Add('ADIÇÕES (Id: '+IntToStr(_dsADI.RecNo)+')');
              _conteudoArquivo.Add('   nAdicao_I26 = ' + _dsADI.FieldByName('nAdicao_I26').AsString);
              _conteudoArquivo.Add('   nSeqAdic_I27 = ' + _dsADI.FieldByName('nSeqAdic_I27').AsString);
              _conteudoArquivo.Add('   cFabricante_I28 = ' + _dsADI.FieldByName('cFabricante_I28').AsString);
              _conteudoArquivo.Add('   vDescDI_I29 = ' + _dsADI.FieldByName('vDescDI_I29').AsString);
              _conteudoArquivo.Add('   nDraw_I29a = ' + _dsADI.FieldByName('nDraw_I29a').AsString);
            end;

            _dsADI.Next;
          end;

          _dsDI.Next;
        end;

        _NFeDatasets.H.Next;

        _conteudoArquivo.Add('');
      end;

      //Informações de Pagamentos
      if _NFe.VersaoManual >= vm60 then //So tem a partir desta versão
      begin
        _dsPagamento := _NFeDatasets.FindDataSet('YA');
        _dsPagamento.First;
        while not(_dsPagamento.Eof) do
        begin
          if Trim(_dsPagamento.FieldByName('tPag_YA02').AsString) <> EmptyStr then
          begin
            _conteudoArquivo.Add('---------------------------------------------------------------------------------------------');
            _conteudoArquivo.Add('INFORMAÇÕES DO PAGAMENTO (Id: '+IntToStr(_dsPagamento.RecNo)+')');
            _conteudoArquivo.Add('   indPag_YA01b = ' + _dsPagamento.FieldByName('indPag_YA01b').AsString);
            _conteudoArquivo.Add('   tPag_YA02 = ' + _dsPagamento.FieldByName('tPag_YA02').AsString);
            _conteudoArquivo.Add('   vPag_YA03 = ' + _dsPagamento.FieldByName('vPag_YA03').AsString);
            _conteudoArquivo.Add('   tpIntegra_YA04a = ' + _dsPagamento.FieldByName('tpIntegra_YA04a').AsString);
            _conteudoArquivo.Add('   CNPJ_YA05 = ' + _dsPagamento.FieldByName('CNPJ_YA05').AsString);
            _conteudoArquivo.Add('   tBand_YA06 = ' + _dsPagamento.FieldByName('tBand_YA06').AsString);
            _conteudoArquivo.Add('   cAut_YA07 = ' + _dsPagamento.FieldByName('cAut_YA07').AsString);
          end;

          _dsPagamento.Next;

          _conteudoArquivo.Add('');
        end;
      end;

      //Informações de Duplicatas
      _dsDuplicata := _NFeDatasets.FindDataSet('DUP');
      _dsDuplicata.First;
      while not(_dsDuplicata.Eof) do
      begin
        if Trim(_dsDuplicata.FieldByName('nDup_Y08').AsString) <> EmptyStr then
        begin
          _conteudoArquivo.Add('---------------------------------------------------------------------------------------------');
          _conteudoArquivo.Add('INFORMAÇÕES DA DUPLICATA (Id: '+IntToStr(_dsDuplicata.RecNo)+')');
          _conteudoArquivo.Add('   nDup_Y08 = ' + _dsDuplicata.FieldByName('nDup_Y08').AsString);
          _conteudoArquivo.Add('   dVenc_Y09 = ' + _dsDuplicata.FieldByName('dVenc_Y09').AsString);
          _conteudoArquivo.Add('   vDup_Y10 = ' + _dsDuplicata.FieldByName('vDup_Y10').AsString);
        end;

        _dsDuplicata.Next;

        _conteudoArquivo.Add('');
      end;

      mmoInformacoesNFe.Text := _conteudoArquivo.Text;

    except
      on e: Exception do
        ShowMessage('Não foi possível processar o xml :' + e.Message);
    end;

  finally
    _NFeDatasets.Free;
    _NFe.Free;
    _conteudoArquivo.Free;

    Screen.Cursor := crDefault;
  end;
end;

end.
