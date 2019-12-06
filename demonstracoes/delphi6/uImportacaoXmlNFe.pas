unit uImportacaoXmlNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils, NFeDataSetX_TLB, NFeX_TLB;

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
  _ArquivoIni : string;
  _NFeX : TspdNFeX;
  _NFeDatasetX : TspdNFeDataSetX;
  _conteudoArquivo: TStringList;
  _dsItem, _dsRastro, _dsDI, _dsADI, _dsDuplicata, _dsPagamento: spdXmlDataSetX;
  _idItem, _idRastro, _idDI, _idADI, _idDuplicata, _idPagamento: integer;
begin
  if ((edtArquivoXmlNfe.Text = EmptyStr) or (not FileExists(edtArquivoXmlNfe.Text))) then
  begin
    ShowMessage('Não foi encontrado o arquivo Xml.'
      +#13#10+'Informe um arquivo existente.');
    edtArquivoXmlNfe.SetFocus;
    Abort;
  end;

  _NFeX := TspdNFeX.Create(nil);
  _NFeDatasetX := TspdNFeDataSetX.Create(nil);
  _conteudoArquivo := TStringList.Create;

  Screen.Cursor := crHourGlass;
  try
    _NFeDatasetX.LoteNFe := '';
    mmoInformacoesNFe.Clear;

    try
      _NFeX.ConfigurarSoftwareHouse(fCnpjSoftwareHouse,''); //***Configure com o CNPJ de sua Software House

      //Le as configurações do arquivo nfeConfig.ini
      _ArquivoIni := ExtractFilePath(ParamStr(0)) + 'nfeConfig.ini';
      if FileExists(_ArquivoIni) then
        _NFeX.LoadConfig(_ArquivoIni);

      _conteudoArquivo.LoadFromFile(edtArquivoXmlNfe.Text);
      if (AnsiContainsText(_conteudoArquivo.Text, 'versao="3.10"')) then
      begin
        _NFeX.VersaoManual := '5.0a';
        _NFeDatasetX.VersaoEsquema := 'pl_008i2';
        _NFeDatasetX.DicionarioXML := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Templates\vm50a\Conversor\NFeDataSets.xml';
      end
      else
      begin
        _NFeX.VersaoManual := '6.0';
        _NFeDatasetX.VersaoEsquema := 'pl_009';
        _NFeDatasetX.DicionarioXML := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Templates\vm60\Conversor\NFeDataSets.xml';
      end;

      _NFeDatasetX.DiretorioTemplates := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Templates';
      _NFeDatasetX.ConverterXmlParaDataSet(edtArquivoXmlNfe.Text, _NFeDatasetX.VersaoEsquema);

      _conteudoArquivo.Clear;

      //Exibindo algumas informações gerais do Documento
      _conteudoArquivo.Add('---------------------------------------------------------------------------------------------');
      _conteudoArquivo.Add('INFORMAÇÕES DO DOCUMENTO');
      _conteudoArquivo.Add('   versao_A02 = ' + _NFeDatasetX.GetCampo('versao_A02'));
      _conteudoArquivo.Add('   cUF_B02 = ' + _NFeDatasetX.GetCampo('cUF_B02'));
      _conteudoArquivo.Add('   cNF_B03 = ' + _NFeDatasetX.GetCampo('cNF_B03'));
      _conteudoArquivo.Add('   natOp_B04 = ' + _NFeDatasetX.GetCampo('natOp_B04'));
      _conteudoArquivo.Add('   serie_B07 = ' + _NFeDatasetX.GetCampo('serie_B07'));
      _conteudoArquivo.Add('   nNF_B08 = ' + _NFeDatasetX.GetCampo('nNF_B08'));
      _conteudoArquivo.Add('   dhEmi_B09 = ' + _NFeDatasetX.GetCampo('dhEmi_B09'));
      _conteudoArquivo.Add('   dhSaiEnt_B10 = ' + _NFeDatasetX.GetCampo('dhSaiEnt_B10'));
      _conteudoArquivo.Add('   tpNF_B11 = ' + _NFeDatasetX.GetCampo('tpNF_B11'));
      _conteudoArquivo.Add('   finNFe_B25 = ' + _NFeDatasetX.GetCampo('finNFe_B25'));
      _conteudoArquivo.Add('');

      //Exibindo algumas informações do Emitente
      _conteudoArquivo.Add('---------------------------------------------------------------------------------------------');
      _conteudoArquivo.Add('INFORMAÇÕES DO EMITENTE');
      _conteudoArquivo.Add('   CNPJ_C02 = ' + _NFeDatasetX.GetCampo('CNPJ_C02'));
      _conteudoArquivo.Add('   xNome_C03 = ' + _NFeDatasetX.GetCampo('xNome_C03'));
      _conteudoArquivo.Add('   xFant_C04 = ' + _NFeDatasetX.GetCampo('xFant_C04'));
      _conteudoArquivo.Add('   xLgr_C06 = ' + _NFeDatasetX.GetCampo('xLgr_C06'));
      _conteudoArquivo.Add('   nro_C07 = ' + _NFeDatasetX.GetCampo('nro_C07'));
      _conteudoArquivo.Add('   xCpl_C08 = ' + _NFeDatasetX.GetCampo('xCpl_C08'));
      _conteudoArquivo.Add('   xBairro_C09 = ' + _NFeDatasetX.GetCampo('xBairro_C09'));
      _conteudoArquivo.Add('   cMun_C10 = ' + _NFeDatasetX.GetCampo('cMun_C10'));
      _conteudoArquivo.Add('   xMun_C11 = ' + _NFeDatasetX.GetCampo('xMun_C11'));
      _conteudoArquivo.Add('   UF_C12 = ' + _NFeDatasetX.GetCampo('UF_C12'));
      _conteudoArquivo.Add('   CEP_C13 = ' + _NFeDatasetX.GetCampo('CEP_C13'));
      _conteudoArquivo.Add('   cPais_C14 = ' + _NFeDatasetX.GetCampo('cPais_C14'));
      _conteudoArquivo.Add('   xPais_C15 = ' + _NFeDatasetX.GetCampo('xPais_C15'));
      _conteudoArquivo.Add('   fone_C16 = ' + _NFeDatasetX.GetCampo('fone_C16'));
      _conteudoArquivo.Add('   IE_C17 = ' + _NFeDatasetX.GetCampo('IE_C17'));
      _conteudoArquivo.Add('   IEST_C18 = ' + _NFeDatasetX.GetCampo('IEST_C18'));
      _conteudoArquivo.Add('   IM_C19 = ' + _NFeDatasetX.GetCampo('IM_C19'));
      _conteudoArquivo.Add('   CRT_C21 = ' + _NFeDatasetX.GetCampo('CRT_C21'));
      _conteudoArquivo.Add('');

      //Exibindo algumas informações do Destinatário
      _conteudoArquivo.Add('---------------------------------------------------------------------------------------------');
      _conteudoArquivo.Add('INFORMAÇÕES DO DESTINATÁRIO');
      if (_NFeDatasetX.GetCampo('CPF_E03') <> EmptyStr) then
        _conteudoArquivo.Add('   CPF_E03 = ' + _NFeDatasetX.GetCampo('CPF_E03'))
      else
        _conteudoArquivo.Add('   CNPJ_E02 = ' + _NFeDatasetX.GetCampo('CNPJ_E02'));
      _conteudoArquivo.Add('   xNome_E04 = ' + _NFeDatasetX.GetCampo('xNome_E04'));
      _conteudoArquivo.Add('   xLgr_E06 = ' + _NFeDatasetX.GetCampo('xLgr_E06'));
      _conteudoArquivo.Add('   nro_E07 = ' + _NFeDatasetX.GetCampo('nro_E07'));
      _conteudoArquivo.Add('   xCpl_E08 = ' + _NFeDatasetX.GetCampo('xCpl_E08'));
      _conteudoArquivo.Add('   xBairro_E09 = ' + _NFeDatasetX.GetCampo('xBairro_E09'));
      _conteudoArquivo.Add('   cMun_E10 = ' + _NFeDatasetX.GetCampo('cMun_E10'));
      _conteudoArquivo.Add('   xMun_E11 = ' + _NFeDatasetX.GetCampo('xMun_E11'));
      _conteudoArquivo.Add('   UF_E12 = ' + _NFeDatasetX.GetCampo('UF_E12'));
      _conteudoArquivo.Add('   CEP_E13 = ' + _NFeDatasetX.GetCampo('CEP_E13'));
      _conteudoArquivo.Add('   cPais_E14 = ' + _NFeDatasetX.GetCampo('cPais_E14'));
      _conteudoArquivo.Add('   xPais_E15 = ' + _NFeDatasetX.GetCampo('xPais_E15'));
      _conteudoArquivo.Add('   fone_E16 = ' + _NFeDatasetX.GetCampo('fone_E16'));
      _conteudoArquivo.Add('   IE_E17 = ' + _NFeDatasetX.GetCampo('IE_E17'));
      _conteudoArquivo.Add('   ISUF_E18 = ' + _NFeDatasetX.GetCampo('ISUF_E18'));
      _conteudoArquivo.Add('   email_E19 = ' + _NFeDatasetX.GetCampo('email_E19'));
      _conteudoArquivo.Add('');

      //Exibindo algumas informações dos Itens
      //_NFeDatasetX.H.First;
      _idItem := 0;
      //_dsItem := CospdXmlDataSetX.Create();
      _dsItem := _NFeDatasetX.FindDataset('H');
      _dsItem.First();
      while not(_dsItem.Eof) do
      begin
        _idItem := _idItem + 1;
        _conteudoArquivo.Add('-----------------------------------------------------------------------------------------------');
        _conteudoArquivo.Add('INFORMAÇÕES DO ITEM (Id: '+ IntToStr(_idItem)+')');
        _conteudoArquivo.Add('   cProd_I02 = ' + _NFeDatasetX.GetCampo('cProd_I02'));
        _conteudoArquivo.Add('   cEAN_I03 = ' + _NFeDatasetX.GetCampo('cEAN_I03'));
        _conteudoArquivo.Add('   xProd_I04 = ' + _NFeDatasetX.GetCampo('xProd_I04'));
        _conteudoArquivo.Add('   NCM_I05 = ' + _NFeDatasetX.GetCampo('NCM_I05'));
        _conteudoArquivo.Add('   CFOP_I08 = ' + _NFeDatasetX.GetCampo('CFOP_I08'));
        _conteudoArquivo.Add('   uCom_I09 = ' + _NFeDatasetX.GetCampo('uCom_I09'));
        _conteudoArquivo.Add('   qCom_I10 = ' + _NFeDatasetX.GetCampo('qCom_I10'));
        _conteudoArquivo.Add('   vUnCom_I10a = ' + _NFeDatasetX.GetCampo('vUnCom_I10a'));
        _conteudoArquivo.Add('   vProd_I11 = ' + _NFeDatasetX.GetCampo('vProd_I11'));

        //Informações de Impostos
        _conteudoArquivo.Add('IMPOSTOS');
        _conteudoArquivo.Add('   ICMS');
        _conteudoArquivo.Add('      CST_N12 = ' + _NFeDatasetX.GetCampo('CST_N12'));
        _conteudoArquivo.Add('      modBC_N13 = ' + _NFeDatasetX.GetCampo('modBC_N13'));
        _conteudoArquivo.Add('      vBC_N15 = ' + _NFeDatasetX.GetCampo('vBC_N15'));
        _conteudoArquivo.Add('      pICMS_N16 = ' + _NFeDatasetX.GetCampo('pICMS_N16'));
        _conteudoArquivo.Add('      vICMS_N17 = ' + _NFeDatasetX.GetCampo('vICMS_N17'));
        _conteudoArquivo.Add('   PARTILHA ICMS');
        _conteudoArquivo.Add('      vBCUFDest_NA03 = ' + _NFeDatasetX.GetCampo('vBCUFDest_NA03'));
        if _NFeX.VersaoManual >= '6.0' then //So tem a partir desta versão
          _conteudoArquivo.Add('      vBCFCPUFDest_NA04 = ' + _NFeDatasetX.GetCampo('vBCFCPUFDest_NA04'));
        _conteudoArquivo.Add('      pFCPUFDest_NA05 = ' + _NFeDatasetX.GetCampo('pFCPUFDest_NA05'));
        _conteudoArquivo.Add('      pICMSUFDest_NA07 = ' + _NFeDatasetX.GetCampo('pICMSUFDest_NA07'));
        _conteudoArquivo.Add('      pICMSInter_NA09 = ' + _NFeDatasetX.GetCampo('pICMSInter_NA09'));
        _conteudoArquivo.Add('      pICMSInterPart_NA11 = ' + _NFeDatasetX.GetCampo('pICMSInterPart_NA11'));
        _conteudoArquivo.Add('      vFCPUFDest_NA13 = ' + _NFeDatasetX.GetCampo('vFCPUFDest_NA13'));
        _conteudoArquivo.Add('      vICMSUFDest_NA15 = ' + _NFeDatasetX.GetCampo('vICMSUFDest_NA15'));
        _conteudoArquivo.Add('      vICMSUFRemet_NA17 = ' + _NFeDatasetX.GetCampo('vICMSUFRemet_NA17'));
        _conteudoArquivo.Add('   PIS');
        _conteudoArquivo.Add('      CST_Q06 = ' + _NFeDatasetX.GetCampo('CST_Q06'));
        _conteudoArquivo.Add('      vBC_Q07 = ' + _NFeDatasetX.GetCampo('vBC_Q07'));
        _conteudoArquivo.Add('      pPIS_Q08 = ' + _NFeDatasetX.GetCampo('pPIS_Q08'));
        _conteudoArquivo.Add('      vPIS_Q09 = ' + _NFeDatasetX.GetCampo('vPIS_Q09'));
        _conteudoArquivo.Add('   COFINS');
        _conteudoArquivo.Add('      CST_S06 = ' + _NFeDatasetX.GetCampo('CST_S06'));
        _conteudoArquivo.Add('      vBC_S07 = ' + _NFeDatasetX.GetCampo('vBC_S07'));
        _conteudoArquivo.Add('      pCOFINS_S08 = ' + _NFeDatasetX.GetCampo('pCOFINS_S08'));
        _conteudoArquivo.Add('      vCOFINS_S11 = ' + _NFeDatasetX.GetCampo('vCOFINS_S11'));
        _conteudoArquivo.Add('   IPI');
        _conteudoArquivo.Add('      CST_O09 = ' + _NFeDatasetX.GetCampo('CST_O09'));
        _conteudoArquivo.Add('      vBC_O10 = ' + _NFeDatasetX.GetCampo('vBC_O10'));
        _conteudoArquivo.Add('      pIPI_O13 = ' + _NFeDatasetX.GetCampo('pIPI_O13'));
        _conteudoArquivo.Add('      vIPI_O14 = ' + _NFeDatasetX.GetCampo('vIPI_O14'));

        //Informações de Rastro
        if _NFeX.VersaoManual >= '6.0' then //So tem a partir desta versão
        begin
          _idRastro := 0;
          _dsRastro := _NFeDatasetX.FindDataSet('I80');
          _dsRastro.First;
          while not(_dsRastro.Eof) do
          begin
            if Trim(_NFeDatasetX.GetCampo('nLote_I81')) <> EmptyStr then
            begin
              _idRastro := _idRastro + 1;            
              _conteudoArquivo.Add('RASTRO (Id: '+IntToStr(_idRastro)+')');
              _conteudoArquivo.Add('   nLote_I81 = ' + _NFeDatasetX.GetCampo('nLote_I81'));
              _conteudoArquivo.Add('   qLote_I82 = ' + _NFeDatasetX.GetCampo('qLote_I82'));
              _conteudoArquivo.Add('   dFab_I83 = ' + _NFeDatasetX.GetCampo('dFab_I83'));
              _conteudoArquivo.Add('   dVal_I84 = ' + _NFeDatasetX.GetCampo('dVal_I84'));
              _conteudoArquivo.Add('   cAgreg_I85 = ' + _NFeDatasetX.GetCampo('cAgreg_I85'));
            end;

            _dsRastro.Next;
          end;
        end;

        //Informações de DI/ADI
        _idDI := 0;
        _dsDI := _NFeDatasetX.FindDataSet('DI');
        _dsDI.First;
        while not(_dsDI.Eof) do
        begin
          if Trim(_NFeDatasetX.GetCampo('nDI_I19')) <> EmptyStr then
          begin
            _idDI := _idDI + 1;
            _conteudoArquivo.Add('DECLARAÇÃO DE IMPORTAÇÃO (Id: '+IntToStr(_idDI)+')');
            _conteudoArquivo.Add('   nDI_I19 = ' + _NFeDatasetX.GetCampo('nDI_I19'));
            _conteudoArquivo.Add('   dDI_I20 = ' + _NFeDatasetX.GetCampo('dDI_I20'));
            _conteudoArquivo.Add('   xLocDesemb_I21 = ' + _NFeDatasetX.GetCampo('xLocDesemb_I21'));
            _conteudoArquivo.Add('   UFDesemb_I22 = ' + _NFeDatasetX.GetCampo('UFDesemb_I22'));
            _conteudoArquivo.Add('   dDesemb_I23 = ' + _NFeDatasetX.GetCampo('dDesemb_I23'));
            _conteudoArquivo.Add('   tpViaTransp_I23a = ' + _NFeDatasetX.GetCampo('tpViaTransp_I23a'));
            _conteudoArquivo.Add('   vAFRMM_I23b = ' + _NFeDatasetX.GetCampo('vAFRMM_I23b'));
            _conteudoArquivo.Add('   tpIntermedio_I23c = ' + _NFeDatasetX.GetCampo('tpIntermedio_I23c'));
            _conteudoArquivo.Add('   CNPJ_I23d = ' + _NFeDatasetX.GetCampo('CNPJ_I23d'));
            _conteudoArquivo.Add('   UFTerceiro_I23e = ' + _NFeDatasetX.GetCampo('UFTerceiro_I23e'));
            _conteudoArquivo.Add('   cExportador_I24 = ' + _NFeDatasetX.GetCampo('cExportador_I24'));
          end;

          _idADI := 0;
          _dsADI := _NFeDatasetX.FindDataSet('ADI');
          _dsADI.First;
          while not(_dsADI.Eof) do
          begin
            if Trim(_NFeDatasetX.GetCampo('nAdicao_I26')) <> EmptyStr then
            begin
              _idADI := _idADI + 1;
              _conteudoArquivo.Add('ADIÇÕES (Id: '+IntToStr(_idADI)+')');
              _conteudoArquivo.Add('   nAdicao_I26 = ' + _NFeDatasetX.GetCampo('nAdicao_I26'));
              _conteudoArquivo.Add('   nSeqAdic_I27 = ' + _NFeDatasetX.GetCampo('nSeqAdic_I27'));
              _conteudoArquivo.Add('   cFabricante_I28 = ' + _NFeDatasetX.GetCampo('cFabricante_I28'));
              _conteudoArquivo.Add('   vDescDI_I29 = ' + _NFeDatasetX.GetCampo('vDescDI_I29'));
              _conteudoArquivo.Add('   nDraw_I29a = ' + _NFeDatasetX.GetCampo('nDraw_I29a'));
            end;

            _dsADI.Next;
          end;

          _dsDI.Next;
        end;

        _dsItem.Next;

        _conteudoArquivo.Add('');
      end;

      //Informações de Pagamentos
      if _NFeX.VersaoManual >= '6.0' then //So tem a partir desta versão
      begin
        _idPagamento := 0;
        _dsPagamento := _NFeDatasetX.FindDataSet('YA');
        _dsPagamento.First;
        while not(_dsPagamento.Eof) do
        begin
          if Trim(_NFeDatasetX.GetCampo('tPag_YA02')) <> EmptyStr then
          begin
            _idPagamento := _idPagamento + 1;
            _conteudoArquivo.Add('---------------------------------------------------------------------------------------------');
            _conteudoArquivo.Add('INFORMAÇÕES DO PAGAMENTO (Id: '+IntToStr(_idPagamento)+')');
            _conteudoArquivo.Add('   indPag_YA01b = ' + _NFeDatasetX.GetCampo('indPag_YA01b'));
            _conteudoArquivo.Add('   tPag_YA02 = ' + _NFeDatasetX.GetCampo('tPag_YA02'));
            _conteudoArquivo.Add('   vPag_YA03 = ' + _NFeDatasetX.GetCampo('vPag_YA03'));
            _conteudoArquivo.Add('   tpIntegra_YA04a = ' + _NFeDatasetX.GetCampo('tpIntegra_YA04a'));
            _conteudoArquivo.Add('   CNPJ_YA05 = ' + _NFeDatasetX.GetCampo('CNPJ_YA05'));
            _conteudoArquivo.Add('   tBand_YA06 = ' + _NFeDatasetX.GetCampo('tBand_YA06'));
            _conteudoArquivo.Add('   cAut_YA07 = ' + _NFeDatasetX.GetCampo('cAut_YA07'));
          end;

          _dsPagamento.Next;

          _conteudoArquivo.Add('');
        end;
      end;

      //Informações de Duplicatas
      _idDuplicata := 0;
      _dsDuplicata := _NFeDatasetX.FindDataSet('DUP');
      _dsDuplicata.First;
      while not(_dsDuplicata.Eof) do
      begin
        if Trim(_NFeDatasetX.GetCampo('nDup_Y08')) <> EmptyStr then
        begin
          _idDuplicata := _idDuplicata + 1;
          _conteudoArquivo.Add('---------------------------------------------------------------------------------------------');
          _conteudoArquivo.Add('INFORMAÇÕES DA DUPLICATA (Id: '+IntToStr(_idDuplicata)+')');
          _conteudoArquivo.Add('   nDup_Y08 = ' + _NFeDatasetX.GetCampo('nDup_Y08'));
          _conteudoArquivo.Add('   dVenc_Y09 = ' + _NFeDatasetX.GetCampo('dVenc_Y09'));
          _conteudoArquivo.Add('   vDup_Y10 = ' + _NFeDatasetX.GetCampo('vDup_Y10'));
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
    _NFeDatasetX.Free;
    _NFeX.Free;
    _conteudoArquivo.Free;

    Screen.Cursor := crDefault;
  end;
end;

end.
