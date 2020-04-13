import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;

/**
 * Atenção para configurar o diretório onde será utilizada a demo, neste exemplo ficou em "C:\Dev\DemoNFe_Java\"
 */
public class Configuracoes {

    public ActiveXComponent CarregarConfiguracoes(ActiveXComponent spdNFe, String Certificado) {
        Dispatch.call(spdNFe, "LoadConfig", "C:\\Dev\\DemoNFe_Java\\nfeConfig.ini");

        Dispatch.put(spdNFe, "Ambiente", "2");
        Dispatch.put(spdNFe, "UF", "PR");
        Dispatch.put(spdNFe, "CNPJ", "08187168000160");

        Dispatch.put(spdNFe, "ArquivoServidoresHom", "C:\\Program Files\\TecnoSpeed\\NFe\\arquivos\\nfeServidoresHom.ini");
        Dispatch.put(spdNFe, "ArquivoServidoresProd", "C:\\Program Files\\TecnoSpeed\\NFe\\arquivos\\nfeServidoresProd.ini");
        Dispatch.put(spdNFe, "DiretorioEsquemas", "C:\\Program Files\\TecnoSpeed\\NFe\\arquivos\\Esquemas\\vm60\\");
        Dispatch.put(spdNFe, "DiretorioTemplates", "C:\\Program Files\\TecnoSpeed\\NFe\\arquivos\\Templates\\vm60\\");
        Dispatch.put(spdNFe, "DiretorioLog", "C:\\Dev\\DemoNFe_Java\\Log\\");
        Dispatch.put(spdNFe, "DiretorioLogErro", "C:\\Dev\\DemoNFe_Java\\LogErro\\");
        Dispatch.put(spdNFe, "DiretorioTemporario", "C:\\Dev\\DemoNFe_Java\\Temporario\\");
        Dispatch.put(spdNFe, "DiretorioXmlDestinatario", "C:\\Dev\\DemoNFe_Java\\XmlDestinatario\\");
        Dispatch.put(spdNFe, "TipoCertificado", "1");
        Dispatch.put(spdNFe, "NomeCertificado", Certificado);
        Dispatch.put(spdNFe, "VersaoManual", "6.0");
        Dispatch.put(spdNFe, "ConexaoSegura", "true");
        Dispatch.put(spdNFe, "ValidarEsquemaAntesEnvio", "true");
        Dispatch.put(spdNFe, "MaxSizeLoteEnvio", "500");
        Dispatch.put(spdNFe, "AnexarDanfePDF", "true");
        Dispatch.put(spdNFe, "CaracteresRemoverAcentos", "áéíóúàèìòùâêîôûäëïöüãõñçÁÉÍÓÚÀÈÌÒÙÂÊÎÔÛÄËÏÖÜÃÕÑ");

        //MAIL
        Dispatch.put(spdNFe, "EmailServidor", "smtp.gmail.com");
        Dispatch.put(spdNFe, "EmailRemetente", "testedanfe@gmail.com");
        Dispatch.put(spdNFe, "EmailDestinatario", "teste@gmail.com");
        Dispatch.put(spdNFe, "EmailAssunto", "Exemplo de envio de DANFE por email");
        Dispatch.put(spdNFe, "EmailMensagem", "O arquivo está anexo.");
        Dispatch.put(spdNFe, "EmailUsuario", "testedanfe@gmail.com");
        Dispatch.put(spdNFe, "EmailSenha", "SenhaTeste");
        Dispatch.put(spdNFe, "EmailAutenticacao", "true");
        Dispatch.put(spdNFe, "EmailPorta", "587");

        //DANFE
        Dispatch.put(spdNFe, "LogotipoEmitente", "");
        Dispatch.put(spdNFe, "InfCplMaxCol", "68");
        Dispatch.put(spdNFe, "InfCplMaxRow", "7");
        Dispatch.put(spdNFe, "FraseContingencia", "Danfe em contingência - Impresso em decorrência de problemas técnicos.");
        Dispatch.put(spdNFe, "FraseHomologacao", "SEM VALOR FISCAL");
        Dispatch.put(spdNFe, "ModeloRetrato", "C:\\Program Files\\TecnoSpeed\\NFe\\arquivos\\Templates\\vm60\\Danfe\\retrato.rtm");
        Dispatch.put(spdNFe, "ModeloPaisagem", "C:\\Program Files\\TecnoSpeed\\NFe\\arquivos\\Templates\\vm60\\Danfe\\paisagem.rtm");
        Dispatch.put(spdNFe, "QtdeCopias", "1");

        return spdNFe;
    }
}
