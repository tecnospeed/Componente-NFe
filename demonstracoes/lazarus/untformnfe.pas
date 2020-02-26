unit untFormNFe;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  NFeX_1_0_TLB, NFeDataSetX_1_0_TLB;

type

  { TfrmDemoNFe }

  TfrmDemoNFe = class(TForm)
    btnAssinar: TButton;
    btnExportarDanfe: TButton;
    btnStatusServico: TButton;
    btnLoadConfig: TButton;
    btnGerarViaDataset: TButton;
    btnPreverDanfe: TButton;
    btnEnviarSincrono: TButton;
    mmXml: TMemo;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure btnLoadConfigClick(Sender: TObject);
    procedure btnStatusServicoClick(Sender: TObject);
    procedure btnGerarViaDatasetClick(Sender: TObject);
    procedure btnPreverDanfeClick(Sender: TObject);
    procedure btnAssinarClick(Sender: TObject);
    procedure btnEnviarSincronoClick(Sender: TObject);
    procedure btnExportarDanfeClick(Sender: TObject);
  private
    spdNFeX : IspdNFeX;
    spdNFeDatasetsX: IspdNFeDataSetX;
  public

  end;

var
  frmDemoNFe: TfrmDemoNFe;

implementation

{$R *.lfm}

{ TfrmDemoNFe }

procedure TfrmDemoNFe.FormCreate(Sender: TObject);
begin
  spdNFeX := CospdNFeX.Create;
  spdNFeDatasetsX := CospdNFeDataSetX.Create;
end;

procedure TfrmDemoNFe.FormDestroy(Sender: TObject);
begin
  spdNFeX := nil;
  spdNFeDatasetsX := nil;
end;

procedure TfrmDemoNFe.FormShow(Sender: TObject);
begin
  spdNFeX.LoadConfig('nfeConfig.ini');

  spdNFeDataSetsX.VersaoEsquema := 'pl_009';
  spdNFeDataSetsX.DicionarioXML := 'C:\Program Files\TecnoSpeed\NFe\arquivos\Templates\vm60\Conversor\NFeDataSets.xml';
end;

procedure TfrmDemoNFe.btnLoadConfigClick(Sender: TObject);
begin
  spdNFeX.LoadConfig('nfeConfig.ini');
end;

procedure TfrmDemoNFe.btnStatusServicoClick(Sender: TObject);
begin
  mmXml.text := spdNFeX.StatusDoServico;
end;

procedure TfrmDemoNFe.btnGerarViaDatasetClick(Sender: TObject);
var
  _NrNota : String;
  _I : integer;
begin
  Randomize;
  _NrNota := IntToStr(Random(10000)); // Gera um Número Randomico de NF para Demonstração

  spdNFeDataSetsX.Incluir;

  spdNFeDataSetsX.SetCampo('versao_A02=4.00');

  spdNFeDataSetsX.SetCampo('cUF_B02=41');
  spdNFeDataSetsX.SetCampo('cNF_B03=04640329');
  spdNFeDataSetsX.SetCampo('natOp_B04=VENDA DE MERCADORIA ADQ. DE TERCEIRO - PF E PJ NAO CONTRIBUI');
  spdNFeDataSetsX.SetCampo('mod_B06=55');
  spdNFeDataSetsX.SetCampo('serie_B07=122');
  spdNFeDataSetsX.SetCampo('nNF_B08=' + _NrNota);
  spdNFeDataSetsX.SetCampo('dhEmi_B09='+FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',now) + '-03:00');
  spdNFeDataSetsX.SetCampo('dhSaiEnt_B10='+FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',now) + '-03:00');
  spdNFeDataSetsX.SetCampo('tpNF_B11=1');
  spdNFeDataSetsX.SetCampo('idDest_B11a=1');
  spdNFeDataSetsX.SetCampo('cMunFG_B12=4115200');
  spdNFeDataSetsX.SetCampo('tpImp_B21=1');
  spdNFeDataSetsX.SetCampo('tpEmis_B22=1'); //1=Normal, 4=EPEC
  spdNFeDataSetsX.SetCampo('cDV_B23=0');
  spdNFeDataSetsX.SetCampo('tpAmb_B24=2');
  spdNFeDataSetsX.SetCampo('finNFe_B25=1');
  spdNFeDataSetsX.SetCampo('indFinal_B25a=1');
  spdNFeDataSetsX.SetCampo('indPres_B25b=1');
  spdNFeDataSetsX.SetCampo('procEmi_B26=0');
  spdNFeDataSetsX.SetCampo('verProc_B27=TestesTecnoLazarus');

  //Emitente
  spdNFeDataSetsX.SetCampo('CRT_C21=3');
  spdNFeDataSetsX.SetCampo('CNPJ_C02=08187168000160');
  spdNFeDataSetsX.SetCampo('xNome_C03=TECNOSPEED');
  spdNFeDataSetsX.SetCampo('xFant_C04=TECNOSPEED');
  spdNFeDataSetsX.SetCampo('xLgr_C06=RUA DO POVO');
  spdNFeDataSetsX.SetCampo('nro_C07=711');
  spdNFeDataSetsX.SetCampo('xBairro_C09=CENTRO');
  spdNFeDataSetsX.SetCampo('cMun_C10=4115200');
  spdNFeDataSetsX.SetCampo('xMun_C11=MARINGA');
  spdNFeDataSetsX.SetCampo('UF_C12=PR');
  spdNFeDataSetsX.SetCampo('CEP_C13=87020015');
  spdNFeDataSetsX.SetCampo('cPais_C14=1058');
  spdNFeDataSetsX.SetCampo('xPais_C15=BRASIL');
  spdNFeDataSetsX.SetCampo('fone_C16=4432222222');
  spdNFeDataSetsX.SetCampo('IE_C17=9044016688');

  //Destinatario
  spdNFeDataSetsX.SetCampo('CNPJ_E02=04086596000145');
  spdNFeDataSetsX.SetCampo('idEstrangeiro_E03a=');
  spdNFeDataSetsX.SetCampo('xNome_E04=NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL');
  spdNFeDataSetsX.SetCampo('xLgr_E06=RUA JOSE CLEMENTE');
  spdNFeDataSetsX.SetCampo('nro_E07=600');
  spdNFeDataSetsX.SetCampo('xBairro_E09=ZONA 7');
  spdNFeDataSetsX.SetCampo('cMun_E10=4115200');
  spdNFeDataSetsX.SetCampo('xMun_E11=MARINGA');
  spdNFeDataSetsX.SetCampo('UF_E12=PR');
  spdNFeDataSetsX.SetCampo('CEP_E13=87020070');
  spdNFeDataSetsX.SetCampo('cPais_E14=1058');
  spdNFeDataSetsX.SetCampo('xPais_E15=BRASIL');
  spdNFeDataSetsX.SetCampo('fone_E16=445555555');
  spdNFeDataSetsX.SetCampo('indIEDest_E16a=9');
  spdNFeDataSetsX.SetCampo('IE_E17=');
  spdNFeDataSetsX.SetCampo('IM_E18A=');

  //Item
  spdNFeDataSetsX.IncluirItem;
  spdNFeDataSetsX.SetCampo('nItem_H02=1');
  spdNFeDataSetsX.SetCampo('cProd_I02=0999');
  spdNFeDataSetsX.SetCampo('cEAN_I03=SEM GTIN');
  spdNFeDataSetsX.SetCampo('xProd_I04=FICHA DE PROD. COD.BARRAS');// 'MELAO');
  spdNFeDataSetsX.SetCampo('NCM_I05=11081200');
  spdNFeDataSetsX.SetCampo('CEST_I05c=0123456');
  spdNFeDataSetsX.SetCampo('indEscala_I05d=S');
  spdNFeDataSetsX.SetCampo('CFOP_I08=5102');
  spdNFeDataSetsX.SetCampo('uCom_I09=CX');
  spdNFeDataSetsX.SetCampo('qCom_I10=1');
  spdNFeDataSetsX.SetCampo('vUnCom_I10a=0.0100');
  spdNFeDataSetsX.SetCampo('vProd_I11=0.01');
  spdNFeDataSetsX.SetCampo('cEANTrib_I12=SEM GTIN');
  spdNFeDataSetsX.SetCampo('uTrib_I13=CX');
  spdNFeDataSetsX.SetCampo('qTrib_I14=1');
  spdNFeDataSetsX.SetCampo('vUnTrib_I14a=0.0100');
  spdNFeDataSetsX.SetCampo('indTot_I17b=1');
  spdNFeDataSetsX.SetCampo('orig_N11=0');

  //ICMS
  spdNFeDataSetsX.SetCampo('CST_N12=00');
  spdNFeDataSetsX.SetCampo('modBC_N13=0');
  spdNFeDataSetsX.SetCampo('vBC_N15=0.01');
  spdNFeDataSetsX.SetCampo('pICMS_N16=12.00');
  spdNFeDataSetsX.SetCampo('vICMS_N17=0.01');
  spdNFeDataSetsX.SetCampo('vICMSDeson_N28a=0.00');

  //PIS
  spdNFeDataSetsX.SetCampo('CST_Q06=01');
  spdNFeDataSetsX.SetCampo('vBC_Q07=0.01');
  spdNFeDataSetsX.SetCampo('pPIS_Q08=1.65');
  spdNFeDataSetsX.SetCampo('vPIS_Q09=0.00');

  //COFINS
  spdNFeDataSetsX.SetCampo('CST_S06=01');
  spdNFeDataSetsX.SetCampo('vBC_S07=0.01');
  spdNFeDataSetsX.SetCampo('pCOFINS_S08=7.60');
  spdNFeDataSetsX.SetCampo('vCOFINS_S11=0.01');

  //Medicamento
  spdNFeDataSetsX.SetCampo('cProdANVISA_k01a=1234567890123');
  spdNFeDataSetsX.SetCampo('vPMC_k06=1.00');

  spdNFeDataSetsX.SalvarItem;

  //Totais
  spdNFeDataSetsX.SetCampo('vBC_W03=0.01');
  spdNFeDataSetsX.SetCampo('vICMS_W04=0.01');
  spdNFeDataSetsX.SetCampo('vICMSDeson_W04a=0.00');
  spdNFeDataSetsX.SetCampo('vFCP_W04h=0.00');
  spdNFeDataSetsX.SetCampo('vBCST_W05=0.00');
  spdNFeDataSetsX.SetCampo('vST_W06=0.00');
  spdNFeDataSetsX.SetCampo('vFCPST_W06a=0.00');
  spdNFeDataSetsX.SetCampo('vFCPSTRet_W06b=0.00');
  spdNFeDataSetsX.SetCampo('vProd_W07=0.01');
  spdNFeDataSetsX.SetCampo('vFrete_W08=0.00');
  spdNFeDataSetsX.SetCampo('vSeg_W09=0.00');
  spdNFeDataSetsX.SetCampo('vDesc_W10=0.00');
  spdNFeDataSetsX.SetCampo('vII_W11=0.00');
  spdNFeDataSetsX.SetCampo('vIPI_W12=0.00');
  spdNFeDataSetsX.SetCampo('vIPIDevol_W12a=0.00');
  spdNFeDataSetsX.SetCampo('vPIS_W13=0.00');
  spdNFeDataSetsX.SetCampo('vCOFINS_W14=0.01');
  spdNFeDataSetsX.SetCampo('vOutro_W15=0.00');
  spdNFeDataSetsX.SetCampo('vNF_W16=0.01');

  //Frete
  spdNFeDataSetsX.SetCampo('modFrete_X02=0');

  //Duplicata
  spdNFeDataSetsX.SetCampo('nFat_Y03=2000');
  spdNFeDataSetsX.SetCampo('vOrig_Y04=1000.50');
  spdNFeDataSetsX.SetCampo('vDesc_Y05=100.50');
  //spdNFeDataSetsX.SetCampo('vOrig_Y04=900.00');
  //spdNFeDataSetsX.SetCampo('vDesc_Y05=0.00');
  spdNFeDataSetsX.SetCampo('vLiq_Y06=900.00');

  //Cobrança 1
  spdNFeDataSetsX.IncluirCobranca;
  spdNFeDataSetsX.SetCampo('nDup_Y08=001');
  spdNFeDataSetsX.SetCampo('dVenc_Y09=' + FormatDateTime('YYYY-MM-DD',now));
  spdNFeDataSetsX.SetCampo('vDup_Y10=449.90');
  spdNFeDataSetsX.SalvarCobranca;

  //Cobrança 2
  spdNFeDataSetsX.IncluirCobranca;
  spdNFeDataSetsX.SetCampo('nDup_Y08=002');
  spdNFeDataSetsX.SetCampo('dVenc_Y09='+ FormatDateTime('YYYY-MM-DD', IncMonth(now)));
  spdNFeDataSetsX.SetCampo('vDup_Y10=450.10');
  spdNFeDataSetsX.SalvarCobranca;

  //Pagamento 1
  spdNFeDataSetsX.IncluirParte('YA');
  spdNFeDataSetsX.SetCampo('indPag_YA01b=0'); //0= Pagamento à Vista 1= Pagamento à Prazo
  spdNFeDataSetsX.SetCampo('tPag_YA02=01'); //01=Dinheiro
  spdNFeDataSetsX.SetCampo('vPag_YA03=0.01');
  spdNFeDataSetsX.SalvarParte('YA');

  //Pagamento 2
  spdNFeDataSetsX.IncluirParte('YA');
  spdNFeDataSetsX.SetCampo('indPag_YA01b=1'); //0= Pagamento à Vista 1= Pagamento à Prazo
  spdNFeDataSetsX.SetCampo('tPag_YA02=15');
  spdNFeDataSetsX.SetCampo('vPag_YA03=0.01');
  spdNFeDataSetsX.SalvarParte('YA');

  //Pagamento 3
  spdNFeDataSetsX.IncluirParte('YA');
  spdNFeDataSetsX.SetCampo('tPag_YA02=03'); //03=Cartão de Crédito
  spdNFeDataSetsX.SetCampo('vPag_YA03=0.01');
  spdNFeDataSetsX.SetCampo('tpIntegra_YA04a=1');
  spdNFeDataSetsX.SetCampo('CNPJ_YA05=01027058000191');
  spdNFeDataSetsX.SetCampo('tBand_YA06=02');
  spdNFeDataSetsX.SetCampo('cAut_YA07=12345678901234567890');
  spdNFeDataSetsX.SalvarParte('YA');

  spdNFeDataSetsX.SetCampo('vTroco_YA09=0.02');

  //Rastro
  spdNFeDataSetsX.IncluirParte('I80');
  spdNFeDataSetsX.SetCampo('nLote_I81=1234');
  spdNFeDataSetsX.SetCampo('qLote_I82=1.000');
  spdNFeDataSetsX.SetCampo('dFab_I83=2018-01-01');
  spdNFeDataSetsX.SetCampo('dVal_I84=2020-12-31');
  spdNFeDataSetsX.SetCampo('cAgreg_I85=');
  spdNFeDataSetsX.SalvarParte('I80');

  //Transporte
  spdNFeDataSetsX.SetCampo('modFrete_X02=0'); // Modalidade do Frete
  spdNFeDataSetsX.SetCampo('CNPJ_X04=21116176000264');// CNPJ
  spdNFeDataSetsX.SetCampo('xNome_X06=ANDRE MARCIANO'); // Razão Social ou nome
  spdNFeDataSetsX.SetCampo('IE_X07=280589948'); // Inscrição Estadual
  spdNFeDataSetsX.SetCampo('xEnder_X08=AVE PANAMA'); //Endereço completo
  spdNFeDataSetsX.SetCampo('xMun_X09=IVINHEMA'); // Nome do município
  spdNFeDataSetsX.SetCampo('UF_X10=MS'); // Sigla da UF
  spdNFeDataSetsX.SetCampo('placa_X19=ACB0908'); // Placa do veículo
  spdNFeDataSetsX.SetCampo('uf_X20=PR'); // Sigla da UF
  spdNFeDataSetsX.SetCampo('rntc_X21=123456'); // Registro Nacional do Transportador
  spdNFeDataSetsX.SetCampo('qVol_X27=1'); // Quantidade de Volumes Transportados
  spdNFeDataSetsX.SetCampo('esp_X28=ESPECIE'); // Espécie dos Volumes Transportados
  spdNFeDataSetsX.SetCampo('marca_X29=MARCA'); // Marca dos Volumes Transportados
  spdNFeDataSetsX.SetCampo('nVol_X30=1'); // Numeração dos Volumes Transportados
  spdNFeDataSetsX.SetCampo('pesoL_X31=1500'); // Peso Líquido em Kg
  spdNFeDataSetsX.SetCampo('pesoB_X32=2000'); // Peso Bruto em Kg

  for _I := 1 to 3 do
  begin
    spdNFeDataSetsX.IncluirParte('LACRE');
    spdNFeDataSetsX.SetCampo('nLacre_X34=12345' + IntToStr(_I)); // Número dos Lacres
    spdNFeDataSetsX.SalvarParte('LACRE');
  end;

  spdNFeDataSetsX.IncluirParte('OBSFISCO');
  spdNFeDataSetsX.SetCampo('xCampo_Z08=Conteudo do xCampo_Z08');
  spdNFeDataSetsX.SetCampo('xTexto_Z09=Conteudo do xTexto_Z09');
  spdNFeDataSetsX.SalvarParte('OBSFISCO');

  spdNFeDataSetsX.IncluirParte('OBSCONT');
  spdNFeDataSetsX.SetCampo('xCampo_Z05=xCampo_Z05 1#');
  spdNFeDataSetsX.SetCampo('xTexto_Z06=xTexto_Z06 1#');
  spdNFeDataSetsX.SalvarParte('OBSCONT');

  spdNFeDataSetsX.IncluirParte('OBSCONT');
  spdNFeDataSetsX.SetCampo('xCampo_Z05=xCampo_Z05 2#');
  spdNFeDataSetsX.SetCampo('xTexto_Z06=xTexto_Z06 2#');
  spdNFeDataSetsX.SalvarParte('OBSCONT');

  //*** NT 2018/005
  //Informação do Responsável Técnico NT2018/005
  spdNFeDataSetsX.SetCampo('CNPJ_ZD02=08187168000160');
  spdNFeDataSetsX.SetCampo('xContato_ZD04=Nome do Contato');
  spdNFeDataSetsX.SetCampo('email_ZD05=email@empresaficticia.com.br');
  spdNFeDataSetsX.SetCampo('fone_ZD06=41999999999');

  spdNFeX.IdCSRT := '01';
  spdNFeX.CSRT := 'G8063VRTNDMO886SFNK5LDUDEI24XJ22YIPO';

  spdNFeDataSetsX.Salvar;

  mmXml.Text := spdNFeDataSetsX.LoteNFe;
end;

procedure TfrmDemoNFe.btnPreverDanfeClick(Sender: TObject);
begin
  spdNFeX.PreverDanfe(mmXml.Text, '');
end;

procedure TfrmDemoNFe.btnAssinarClick(Sender: TObject);
begin
  mmXml.Text := spdNFeX.AssinarNota(mmXml.Text);
end;

procedure TfrmDemoNFe.btnEnviarSincronoClick(Sender: TObject);
begin
  mmXml.text := spdNFeX.EnviarNFSincrono('1', mmXml.Text, false);
end;

procedure TfrmDemoNFe.btnExportarDanfeClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
    spdNFeX.ExportarDanfe('1', mmXml.Text, '', 0, SaveDialog1.FileName);
end;

end.

