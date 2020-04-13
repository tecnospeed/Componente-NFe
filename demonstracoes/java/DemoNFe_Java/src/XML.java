import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;
import com.jacob.com.JacobException;

import java.text.NumberFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;
import java.util.Random;

/*
 * O preenchimento foi feito com base na NFe 4.0 pl_009
 */
public class XML {
    Locale ptBr = new Locale("pt", "BR");
    NumberFormat numberFormat = NumberFormat.getNumberInstance(ptBr);

    private void DadosDoNFe(ActiveXComponent spdNFeDataset){
        Random gerador = new Random();

        Dispatch.call(spdNFeDataset, "SetCampo", "versao_A02=4.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "Id_A03=");
        Dispatch.call(spdNFeDataset, "SetCampo", "cUf_B02=41");
        Dispatch.call(spdNFeDataset, "SetCampo", "cNF_B03=04640329");
        Dispatch.call(spdNFeDataset, "SetCampo", "natOp_B04=VENDA DE MERCADORIA ADQ. DE TERCEIRO - PF E PJ NAO CONTRIBUI");
        //Dispatch.call(spdNFeDataset, "SetCampo", "indPag_B05=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "mod_B06=55");
        Dispatch.call(spdNFeDataset, "SetCampo", "serie_B07=122");

        Dispatch.call(spdNFeDataset, "SetCampo", "nNF_B08=" + gerador.nextInt(99999999 - 1) + 1);
        Dispatch.call(spdNFeDataset, "SetCampo", "dhEmi_B09=" +
                LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")) + "T"
                + LocalDateTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss")) + "-03:00");
        Dispatch.call(spdNFeDataset, "SetCampo", "dhSaiEnt_B10=" +
                LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")) + "T"
                + LocalDateTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss")) + "-03:00");

        Dispatch.call(spdNFeDataset, "SetCampo", "tpNF_B11=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "idDest_B11a=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "cMunFG_B12=4115200");
        Dispatch.call(spdNFeDataset, "SetCampo", "tpImp_B21=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "tpEmis_B22=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "cDV_B23= ");
        Dispatch.call(spdNFeDataset, "SetCampo", "tpAmb_B24=2");
        Dispatch.call(spdNFeDataset, "SetCampo", "finNFe_B25=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "indFinal_B25a=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "indPres_B25b=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "procEmi_B26=0");
        Dispatch.call(spdNFeDataset, "SetCampo", "verProc_B27=TestesTecnoJava");
    }

    private void DadosDoEmitente(ActiveXComponent spdNFeDataset, ActiveXComponent spdNFe) {
        Dispatch.call(spdNFeDataset, "SetCampo", "CNPJ_C02=08187168000160");
        Dispatch.call(spdNFeDataset, "SetCampo", "xNome_C03=TECNOSPEED");
        Dispatch.call(spdNFeDataset, "SetCampo", "xFant_C04=TECNOSPEED");
        Dispatch.call(spdNFeDataset, "SetCampo", "xLgr_C06=RUA DO POVO");
        Dispatch.call(spdNFeDataset, "SetCampo", "nro_C07=711");
        Dispatch.call(spdNFeDataset, "SetCampo", "xBairro_C09=CENTRO");
        Dispatch.call(spdNFeDataset, "SetCampo", "cMun_C10=4115200");
        Dispatch.call(spdNFeDataset, "SetCampo", "xMun_C11=MARINGA");
        Dispatch.call(spdNFeDataset, "SetCampo", "UF_C12=PR");
        Dispatch.call(spdNFeDataset, "SetCampo", "CEP_C13=87020015");
        Dispatch.call(spdNFeDataset, "SetCampo", "cPais_C14=1058");
        Dispatch.call(spdNFeDataset, "SetCampo", "xPais_C15=BRASIL");
        Dispatch.call(spdNFeDataset, "SetCampo", "fone_C16=4432222222");
        Dispatch.call(spdNFeDataset, "SetCampo", "IE_C17=9044016688");
        Dispatch.call(spdNFeDataset, "SetCampo", "CRT_C21=3");
    }

    private void DadosDoDestinatario(ActiveXComponent spdNFeDataset, ActiveXComponent spdNFe) {
        Dispatch.call(spdNFeDataset, "SetCampo", "CNPJ_E02=04086596000145");
        Dispatch.call(spdNFeDataset, "SetCampo", "xNome_E04=NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL");
        Dispatch.call(spdNFeDataset, "SetCampo", "xLgr_E06=RUA JOSÉ CLEMENTE");
        Dispatch.call(spdNFeDataset, "SetCampo", "nro_E07=600");
        //Dispatch.call(spdNFeDataset, "SetCampo", "xCpl_E08=TESTE");
        Dispatch.call(spdNFeDataset, "SetCampo", "xBairro_E09=ZONA 7");
        Dispatch.call(spdNFeDataset, "SetCampo", "cMun_E10=4115200");
        Dispatch.call(spdNFeDataset, "SetCampo", "xMun_E11=MARINGA");
        Dispatch.call(spdNFeDataset, "SetCampo", "UF_E12=PR");
        Dispatch.call(spdNFeDataset, "SetCampo", "CEP_E13=87020070");
        Dispatch.call(spdNFeDataset, "SetCampo", "cPais_E14=1058");
        Dispatch.call(spdNFeDataset, "SetCampo", "xPais_E15=BRASIL");
        Dispatch.call(spdNFeDataset, "SetCampo", "fone_E16=445555555");
        Dispatch.call(spdNFeDataset, "SetCampo", "IndIEDest_E16a=9");
        Dispatch.call(spdNFeDataset, "SetCampo", "IE_E17=");
        Dispatch.call(spdNFeDataset, "SetCampo", "email_E19=");
    }

    private void DadosDoItem(ActiveXComponent spdNFeDataset) {
        Dispatch.call(spdNFeDataset, "IncluirItem");

        Dispatch.call(spdNFeDataset, "SetCampo", "nItem_H02=1");

        Dispatch.call(spdNFeDataset, "SetCampo", "cProd_I02=0999");
        Dispatch.call(spdNFeDataset, "SetCampo", "cEAN_I03=SEM GTIN");
        Dispatch.call(spdNFeDataset, "SetCampo", "xProd_I04=MELAO");
        Dispatch.call(spdNFeDataset, "SetCampo", "NCM_I05=11081200");
        Dispatch.call(spdNFeDataset, "SetCampo", "CEST_I05c=0123456");
        Dispatch.call(spdNFeDataset, "SetCampo", "indEscala_I05d=S");

        Dispatch.call(spdNFeDataset, "SetCampo", "CFOP_I08=5102");
        Dispatch.call(spdNFeDataset, "SetCampo", "uCom_I09=CX");
        Dispatch.call(spdNFeDataset, "SetCampo", "qCom_I10=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "vUnCom_I10a=0.0100");
        Dispatch.call(spdNFeDataset, "SetCampo", "vProd_I11=0.01");
        Dispatch.call(spdNFeDataset, "SetCampo", "cEANTrib_I12=SEM GTIN");
        Dispatch.call(spdNFeDataset, "SetCampo", "uTrib_I13=CX");
        Dispatch.call(spdNFeDataset, "SetCampo", "qTrib_I14=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "vUnTrib_I14a=0.0100");
        Dispatch.call(spdNFeDataset, "SetCampo", "indTot_I17b=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "infAdProd_V01=infAdProd Observações do produto infAdProd");

        //ICMS
        Dispatch.call(spdNFeDataset, "SetCampo", "orig_N11=0");
        Dispatch.call(spdNFeDataset, "SetCampo", "CST_N12=00");
        Dispatch.call(spdNFeDataset, "SetCampo", "modBC_N13=0");
        Dispatch.call(spdNFeDataset, "SetCampo", "vBC_N15=0.01");
        Dispatch.call(spdNFeDataset, "SetCampo", "pICMS_N16=12.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vICMS_N17=0.01");
        Dispatch.call(spdNFeDataset, "SetCampo", "vICMSDeson_N28a=0.00");

//        Dispatch.call(spdNFeDataset, "SetCampo", "cEnq_O06=999");

        //PIS
        Dispatch.call(spdNFeDataset, "SetCampo", "CST_Q06=01");
        Dispatch.call(spdNFeDataset, "SetCampo", "vBC_Q07=0.01");
        Dispatch.call(spdNFeDataset, "SetCampo", "pPIS_Q08=1.65");
        Dispatch.call(spdNFeDataset, "SetCampo", "vPIS_Q09=0.00");

        //COFINS
        Dispatch.call(spdNFeDataset, "SetCampo", "CST_S06=01");
        Dispatch.call(spdNFeDataset, "SetCampo", "vBC_S07=0.01");
        Dispatch.call(spdNFeDataset, "SetCampo", "pCOFINS_S08=7.60");
        Dispatch.call(spdNFeDataset, "SetCampo", "vCOFINS_S11=0.01");

        //Medicamento
        //Dispatch.call(spdNFeDataset, "SetCampo", "cProdANVISA_k01a=1234567890123");
        //Dispatch.call(spdNFeDataset, "SetCampo", "vPMC_k06=1.00");

        Dispatch.call(spdNFeDataset, "SalvarItem");
    }

    private void DadosTotalizadores(ActiveXComponent spdNFeDataset) {
        Dispatch.call(spdNFeDataset, "SetCampo", "vBC_W03=0.01");
        Dispatch.call(spdNFeDataset, "SetCampo", "vICMS_W04=0.01");
        Dispatch.call(spdNFeDataset, "SetCampo", "vICMSDeson_W04a=0.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vFCP_W04h=0.00");

        Dispatch.call(spdNFeDataset, "SetCampo", "vBCST_W05=0.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vST_W06=0.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vFCPST_W06a=0.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vFCPSTRet_W06b=0.00");

        Dispatch.call(spdNFeDataset, "SetCampo", "vProd_W07=0.01");
        Dispatch.call(spdNFeDataset, "SetCampo", "vFrete_W08=0.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vSeg_W09=0.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vDesc_W10=0.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vII_W11=0.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vIPI_W12=0.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vIPIDevol_W12a=0.00");

        Dispatch.call(spdNFeDataset, "SetCampo", "vPIS_W13=0.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vCOFINS_W14=0.01");
        Dispatch.call(spdNFeDataset, "SetCampo", "vOutro_W15=0.00");
        Dispatch.call(spdNFeDataset, "SetCampo", "vNF_W16=0.01");
    }

    private void DadosDoTransporte(ActiveXComponent spdNFeDataset) {
        Dispatch.call(spdNFeDataset, "SetCampo", "modFrete_X02=9");
    }

    private void DadosPagamento(ActiveXComponent spdNFeDataset) {
        //Duplicata
        Dispatch.call(spdNFeDataset, "SetCampo", "nFat_Y03=2000");
        Dispatch.call(spdNFeDataset, "SetCampo", "vOrig_Y04=1000.50");
        Dispatch.call(spdNFeDataset, "SetCampo", "vDesc_Y05=100.50");
        Dispatch.call(spdNFeDataset, "SetCampo", "vLiq_Y06=900");

        //Cobrança
        Dispatch.call(spdNFeDataset, "IncluirCobranca");
        Dispatch.call(spdNFeDataset, "SetCampo", "nDup_Y08=001");
        Dispatch.call(spdNFeDataset, "SetCampo", "dVenc_Y09="+ LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
        Dispatch.call(spdNFeDataset, "SetCampo", "vDup_Y10=900.00");
        Dispatch.call(spdNFeDataset, "SalvarCobranca");

//        //Cobrança 1
//        Dispatch.call(spdNFeDataset, "IncluirCobranca");
//        Dispatch.call(spdNFeDataset, "SetCampo", "nDup_Y08=001");
//        Dispatch.call(spdNFeDataset, "SetCampo", "dVenc_Y09="+ LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
//        Dispatch.call(spdNFeDataset, "SetCampo", "vDup_Y10=449.90");
//        Dispatch.call(spdNFeDataset, "SalvarCobranca");
//
//        //Cobrança 2
//        Dispatch.call(spdNFeDataset, "IncluirCobranca");
//        Dispatch.call(spdNFeDataset, "SetCampo", "nDup_Y08=002");
//        Dispatch.call(spdNFeDataset, "SetCampo", "dVenc_Y09="+ LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
//        Dispatch.call(spdNFeDataset, "SetCampo", "vDup_Y10=450.10");
//        Dispatch.call(spdNFeDataset, "SalvarCobranca");

        //Pagamento 1
        Dispatch.call(spdNFeDataset, "IncluirParte", "YA");
        Dispatch.call(spdNFeDataset, "SetCampo", "indPag_YA01b=0");
        Dispatch.call(spdNFeDataset, "SetCampo", "tPag_YA02=01");
        Dispatch.call(spdNFeDataset, "SetCampo", "vPag_YA03=0.01");
        Dispatch.call(spdNFeDataset, "SalvarParte", "YA");

        //Pagamento 2
        Dispatch.call(spdNFeDataset, "IncluirParte", "YA");
        Dispatch.call(spdNFeDataset, "SetCampo", "indPag_YA01b=0");
        Dispatch.call(spdNFeDataset, "SetCampo", "tPag_YA02=15");
        Dispatch.call(spdNFeDataset, "SetCampo", "vPag_YA03=0.01");
        Dispatch.call(spdNFeDataset, "SalvarParte", "YA");

        //Pagamento 3
        Dispatch.call(spdNFeDataset, "IncluirParte", "YA");
        Dispatch.call(spdNFeDataset, "SetCampo", "tPag_YA02=03");
        Dispatch.call(spdNFeDataset, "SetCampo", "vPag_YA03=0.01");
        Dispatch.call(spdNFeDataset, "SetCampo", "tpIntegra_YA04a=1");
        Dispatch.call(spdNFeDataset, "SetCampo", "CNPJ_YA05=01027058000191");
        Dispatch.call(spdNFeDataset, "SetCampo", "tBand_YA06=02");
        Dispatch.call(spdNFeDataset, "SetCampo", "cAut_YA07=12345678901234567890");
        Dispatch.call(spdNFeDataset, "SalvarParte", "YA");

        Dispatch.call(spdNFeDataset, "SetCampo", "vTroco_YA09=0.02");

    }

    private void DadosResponsavelTecnico(ActiveXComponent spdNFeDataset) {
        Dispatch.call(spdNFeDataset, "SetCampo", "CNPJ_ZD02=08187168000160");
        Dispatch.call(spdNFeDataset, "SetCampo", "xContato_ZD04=Nome do Contato");
        Dispatch.call(spdNFeDataset, "SetCampo", "email_ZD05=email@empresaficticia.com.br");
        Dispatch.call(spdNFeDataset, "SetCampo", "fone_ZD06=41999999999");
    }

     public String GerarXML(ActiveXComponent spdNFe) {
        ActiveXComponent spdNFeDataSet = new ActiveXComponent("NFeDataSetX.spdNFeDataSetX");
        String diretorio_xml = Dispatch.call(spdNFe, "DiretorioTemplates") + "Conversor\\NFeDataSets.xml";
        Dispatch.put(spdNFeDataSet, "VersaoEsquema", "pl_009");
        Dispatch.put(spdNFeDataSet, "DicionarioXML", diretorio_xml);

        try{
            spdNFeDataSet.invoke("Incluir");
            DadosDoNFe(spdNFeDataSet);
            DadosDoEmitente(spdNFeDataSet, spdNFe);
            DadosDoDestinatario(spdNFeDataSet, spdNFe);
            DadosDoItem(spdNFeDataSet);
            DadosTotalizadores(spdNFeDataSet);
            DadosDoTransporte(spdNFeDataSet);
            DadosPagamento(spdNFeDataSet);
            DadosResponsavelTecnico(spdNFeDataSet);
            //System.out.println(Dispatch.call(spdNFeDataSet, "GetCampo", "pCOFINS_S08").getClass().getName());
            spdNFeDataSet.invoke("Salvar");
        }
        catch (JacobException e) {
            System.out.println(e.getMessage());
        }

        return Dispatch.call(spdNFeDataSet, "LoteNFe").toString();
    }
}
