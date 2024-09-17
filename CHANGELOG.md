## [13.1.87.6552]

**Novidades**

- DSML-1041 - Disponibilizado metodo para envio do evento de Conciliação Financeira - [ECONF](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/25919395222295)
- DSML-1042 - Disponibilizado metodo para envio de Cancelamento do evento de Conciliação Financeira - [ECONF](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/26018545520535)

**Correções**

* [DSML-1386](https://tecnospeed.atlassian.net/browse/DSML-1386) - Ajustes no log para notas denegadas;

## [13.1.86.6538]

**Correções**

DSML-1355 alterado idNFe para pegar a sequencia para validar com o do XML

## [13.1.85.6537]

**Novidades**

* DSML-1302 - Disponibilizado os metódos: EnviarInsucessoEntrega, CancelarInsucessoEntrega, GerarXMLInsucessoEntregaDestinatario e GerarXMLCancelamentoInsucessoEntregaDestinatario na spdNFELib, compatibilização da LIB com a [Nota Técnica 2023.005 v.1.02](https://blog.tecnospeed.com.br/nf-e-nota-tecnica-2023-005-evento-insucesso-na-entrega-da-nf-e/)

* DSML-1335 - Possibilidade de informar a sequência de eventos na manifestação do destinatário conforme a NT 2020.001 v 1.50


## [13.1.84.6536]

**Correções**
DEP-522 - (Nota Técnica 2024.001 V1.10) - Correção na validação de inclusão de valor no campo CRT_C21

## [13.1.84.6532]

**Novidades**

* DSML-1288 - Informe técnico 2024.002 V1.01

## [13.1.83.6530]

**Novidades**

* DSML-1045 - Disponibilizado os metódos EnviarInsucessoEntrega e CancelarInsucessoEntrega para compatibilizar o componente com a [Nota Técnica 2023.005 v.1.02](https://blog.tecnospeed.com.br/nf-e-nota-tecnica-2023-005-evento-insucesso-na-entrega-da-nf-e/)

* DSML-971 - Alterado o espaço do arquivo.rtm quando a propriedade "MensagemFCP" estiver ativada.

## [13.1.82.6528]

**Correções**

- DSML-1252 alterado no campos do xsd e do dataset o valor de cAut para 128 caracteres
- DSML-1251 Alterado método EscapeCaracteres para desconsiderar a formatação dos catacteres '< >' quando tiver o CDATA

## [13.1.81.6525]

**Correções**

* DSML-1224 - correção da geração da tag comb na pl_009n e pl_009m;

## [13.1.81.6523]

**Correção**
DEP-389 - HotFix - Correção no RTM paisagem da DANFE que pode ocorrer em não apresentar o codigo do produto.

## [13.1.81.6522]

**Novidades**

* DSML-899 - Adequado informações complementares na DANFE referente ao valor de aliquota do ICMS monofásico
* DSML-1163 - Nova regra para gerar a tag idEstrangeiro quando o indicador da IE do destinatário "indIEDest" for igual a 9 e a IE do destinatário não for informada.
* DSML-1213 -  Ajustado logotipo padrão da NFe na DANFE

## [13.1.80.6520]

**Correção**

- DSML-1207 - HotFix- Falha no Cancelameto da NFe com a nova PL 009n

## [13.1.80.6518]

**Novidades**

* DSML-1081 - Nova versão de esquema pl009m, compatível com a Nota Técnica 2019.001 v.1.60, foi criado um novo grupo para as informações do crédito presumido e novo campo para as informações do [cbenef](https://blog.tecnospeed.com.br/cbenef/);

* DSML-1045 - compatibilizado componente com a [Nota Técnica 2023.004 v.1.10](https://blog.tecnospeed.com.br/nf-e-e-nfc-e-nota-tecnica-2023-004-evento-de-conciliacao-financeira-econf-outros-campos-e-regras);

* DSML-899 - Adequado as informações complementares ao valor de alíquota do ICMS Monofásico.

* DSML-1012 - Compatibilizado intalador com o Delphi 12 Athenas

* DSML-1173 - compatibilizado componente com a [Nota Técnica 2019.001 v.1.62](https://blog.tecnospeed.com.br/nt-2019-001-nfe) e nova versão de esquema pl009n;

## [13.1.79.6511]

**Novidades**

* DSML-1004 - Alterado endereços dos servidores de homologação para a Sefaz Virtual Ambiente Nacional ([SVAN](https://hom.nfe.fazenda.gov.br/Portal/webServices.aspx?tipoConteudo=OUC/YVNWZfo=#SVAN)) na UF MA;

* DSML-944 - disponibilizado novos campos tpEvento e xMotivo na impressão da CCe;
* DSP4G-770 - integração por arquivo no formato JSON para o metodo [ConverterLoteParaXml ](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360011422094);

**Correções**
* DSML-952 - Correção no arquivo "nfeServidoresHom", preenchido link de consulta cadastro corretamente nas UF'S RN e AC;
* DSML-988 - Correção da fonte reduzida no campo `Endereço do Destinatário` do RTM;
* DSML-942 - Correção da impressão do DANFE para imprimir o número do logradouro do campo Endereço de Entrega.

## [13.1.78.6504]

**Novidades**

* DSML-1004 - Alterado endereços dos servidores de homologação para a Sefaz Virtual Ambiente Nacional ([SVAN](https://hom.nfe.fazenda.gov.br/Portal/webServices.aspx?tipoConteudo=OUC/YVNWZfo=#SVAN)) na UF MA;

* DSML-944 - disponibilizado novos campos tpEvento e xMotivo na impressão da CCe;

**Correções**
* DSML-952 - Correção no arquivo "nfeServidoresHom", preenchido link de consulta cadastro corretamente nas UF'S RN e AC;

## [13.1.78.6501]

**Novidades**

* DSML-914 - Adicionado os campos `pCredSN` e `vCredICMSSN` para impressão no DataSet `DadosItens` dos RTMs;

**Melhorias**
* DSML-912 - Adicionado o campo `Complemento` de endereço do destinatário na impressão através do RTM RetratoSimplificadoEtiqueta;

## [13.1.77.6499]

**Novidades**

* DSML-914 - Adicionado os campos `pCredSN` e `vCredICMSSN` para impressão no DataSet `DadosItens` dos RTMs;
* DSML-823 - Adicionado a propriedade `NA - ICMS UF Destinatario` no DataSet `TXmldataSetNFe` 

## [12.1.77.6496]

**Correção**
- DSML-742 - Enviar e-mail- Propriedade "EmailDestinatario" acumulando valor ao utilizar "SBB" ativado

## [12.1.76.6495]

**Correções**

-DSML-363 - Impressão da DANFE cortando algumas informações

**Novidades**

-DSP4G-1027 - Disponibilizada nova propriedade de Impressão "[MensagemIcmsMonofasico](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360006172613)" para exibir a mensagem do ICMS Monofásico nas informações complementares do DANFE. 

## [12.1.75.6493]

**Correções**
* DSML-648 Erro ao gerar NF-e com marca d'agua de cancelamento

## [12.1.75.6488]

* **Novidades**
* DSML-613 NF-e Componente - NT 2023.001 Versão 1.20 
* DSP4G-993 - NT2023.001 - atualização de schemas publicados 29/03/2023
* DSP4G-406 - Disponibilizado novo método [VerificaStatusLicenseAPI ](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/13755224843159)para verificar o status da API de Licença (Versões TecnoAccount).


## [[12.1.74.6480]


**Novidades**

* DSP4G-914 - compatibilizado com NT2022.003 - para mais detalhes consulte o [dicionário de dados](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/4423079221143-Dicion%C3%A1rio-de-dados-NF-e)

* DSP4G-943 - compatibilizando com NT2023.001 - para mais detalhes [consulte](https://blog.tecnospeed.com.br/nf-e-e-nfc-e-nota-tecnica-2023-001-tributacao-monofasica-sobre-combustiveis/)

## [12.1.74.6471]

#leiame

**Novidades**
* DSP4G-758 - Compatibilizado com atualizações do componente indy

## [12.1.74.6469]

**Novidades**

* DSP4G-595: Implementação dos métodos públicos do componente na DLL da lib "spdNFeLib.dll" que havia sido descontinuada. Agora a mesma está disponível para uso.
* DSP4G-666 - Correção para o nome do campo "ImprimirVlrTotalDanfeSimplificado" no Dataset de configuração da impressão (renomeado para "ImprimirVlrTotalDanfeSimplific").

## [12.1.74.6468]

* DSP4G-480 - Melhoria na implementação ao SetupLicense para que execute apenas quando necessário (quando for comunicar com sefaz) evitando assim inumeras requisições de verificação de licença sem necessidade como estava ocorrendo

## [12.1.74.6463]

*Novidades*
- DSP4G-498 Disponibilizado campos para personalização de rtm: ItemCBarra -> tag cBarra e ItemCBarraTributada -> tag cBarraTrib. Para mais detalhes [consulte documentação](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360019420793)


## [12.1.74.6457]
**Novidades*
* DSP4G-399 - Adicionado ao pacote de instalação do componente o arquivo "IDs_LIBs_NFe.ini" contendo os ID´s das OCXs.

## [12.1.74.6456]
**Correções**
* DSML-270 - Correção do escape de caracteres na tag infAdProd

## [12.1.74.6451]
**Novidades**
* DSP4G-266 disponibilizado método ConsultarGTIN referente a NT2022.001 v1.0. Para mais detalhes de como utilizar [ConsultarGTIN](https://tecnospeed.zendesk.com/knowledge/articles/6932687741847/pt-br?brand_id=360000386474)
* DSP4G-327: Disponibilizado método GetNomeCertificadoViaCaminho para obter o nome do certificado informando o caminho e a senha dele. Para mais detalhes de como utilizar [GetNomeCertificadoViaCaminho](https://tecnospeed.zendesk.com/knowledge/articles/7652357569431/pt-br?brand_id=360000386474)
* DSP4G-324 - ajustado para que o arquivo de log Licensex.Log seja salvo no mesmo diretorio de log do componente "diretorioLog"
* DSP4G-143 - Adicionado no menu do Windows a opção de desinstalação do pacote de dependências.

## [12.1.74.6446]
**Novidades**
* DSP4G-327: Disponibilizado método GetNomeCertificadoViaCaminho para obter o nome do certificado informando o caminho e a senha dele. Para mais detalhes de como utilizar GetNomeCertificadoViaCaminho

## [12.1.74.6442]
**Novidades**
* DSP4G-266 - NT 2022.001 v 1.0
## [12.1.74.6441]
**Correções**
* DSML-186 - Retorno de Validação de Licenças
## [12.1.74.6438]
**Correções**
* DSML-97 - Retorno de Validação de Licenças
* DSML-119 - propriedade USETLS em VB6

## [12.1.74.6436]
**Novidades:**
* DSP4G-141 - Padronizar os AppId dos arquivos *.iss do componentes

## [12.1.74.6434]
**Novidades:**
* DCIT-917 - Compatibilizado o componente NFe com as NTs 2021.004 v1.00, 2021.004 v1.10 e 2021.004 v1.20 [https://blog.tecnospeed.com.br/nota-tecnica-2021-004-da-nfe-e-nfce/]
* DSP4G-2 - Validação de evento quando tpEmis da chave nfe for diferente de 1,2,4,5,6,7. Conforme NT 2020.001 versão 1.10 e 1.120

## [12.1.74.6428]
**Correções**
* DCIT-1107 - Componentes - Links quebrados no arquivo "leiame.txt"
* DCIT-1100 - Componente / eDoc - NFe - Substituição Web Services de Homologação do Ambiente Nacional
* DCIT-1083 - Componente - NFe - Padronizar exibição da frase de contingência dos RTMs
* DCIT-1103 - Alterado o retorno do método DescompactarXMLZip para UTF-8.

**Novidades:**
* DCIT-1060 - Foram adicionadas as propriedades QtdeTentativasEmail e UseTLS nas configurações de E-mail, podendo ser configurado via propriedade ou por ini.
* DCIT-1108 - propriedade ImprimirFrenteVerso ajustada para que os DANFE retrato/paisagem exiba conforme manual do contribuinte Item 3.4 50% pagina verso

## [12.1.74.6418]
**Correções**
- DCIT-1013 - troca do caráter En Dash não suportado pela Sefaz por Hífen no envio de CCe.
- DCIT-1054 - Ajustes no envio de e-mail com SBB (SecureBlackBox).

**Novidades**
- DCIT-1032 - Alteração na forma do preenchimento do campo idEstrangeiro no destinatário.
OBS: Será preenchido idEstrangeiro vazio somente quando não vier preenchido os campos CNPJ ou CPF ou o próprio idEstrangeiro do destinatário e quando for operação com o exterior (idDest=3) ou o destinatário for do exterior (UF=EX).
- DCIT-1040 - Disponibilizar a propriedade EmailUseSecureBlackBox na OCX do componente, para permitir a opção de enviar email com o SBB (SecureBlackBox) nas linguagens que utilizam Activex ou a TLB.
- DCIT-1042 - Melhorias no método TestarEmailConfig.
Para maiores informações acesse: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360019133553
- DCIT-1067 - Atualizar o Validador NFe com a nova forma de preenchimento do idEstrangeiro.
- DCIT-1033 - Ajustes no componente para que possa ser utilizado em Windows com formato de moeda diferente de PT-BR.


## [12.1.74.6409]
**Correções**
- DCIT-551 - Componente NFe - Ajustes no instalador (Retirada versão trial do componente).
- DCIT-996 - correção na extração de placa e uf da tag infcpl

**Novidades**
- DCIT-947 - Opção de configurar o Soap da Consulta Cadastro por UF no ini.
- DCIT-889 - Adicionadas as propriedades CnpjSoftwareHouse, TokenSoftwareHouse. Adicionada a
  propriedade DiagnosticMode no arquivo ini.

## [12.1.74.6402]
**Correções**
- DCIT-909 - ajuste na impressão de xml com quebra de acentuação de caracteres ASCII.
- DCIT-843 - atualização do endereço WebService CadConsultaCadastro4 para Minas Gerais.
- DCIT-957 - ajuste na rotina para escapar o caractere & contemplando entidades HTML.
- DCIT-529 - Criar automaticamente pasta de saída da telemetria.

**Novidades**
- DCIT-893 - Disponibilizado no grupo DadosVeiculosNovos os campos cCorDENATRAN e lota (RTM de impressão).
- DCIT-923 - Alterado URL dos webservices de homologação e produção do CE para as URL do webservice SVRS.

## [12.1.74.6398]
**Novidades**
 - DCIT-893 - Disponibilizado no grupo DadosVeiculosNovos os campos cCorDENATRAN e lota (RTM de impressão).
**Correções**
 - DCIT-909 - ajuste na impressão de xml com quebra de acentuação de caracteres ASCII.
 - DCIT-843 - atualização do endereço WebService CadConsultaCadastro4 para Minas Gerais.

## [12.1.74.6393]

**Novidades**
 - DCIT-565 - Nova propriedade de impressão EmailEmitente onde permite-se configurar o E-mail do Emitente no DANFE.
 - DCIT-868 - Alteração url dos webservices de homologação do CE para as URL do webservice SVRS.

**Correções**
 - DCIT-883 - Correção na soma de totais de base de calculo quando gera separador de milhar (campos específicos de RTM)
 - DCIT-877 - Correção para informar o DiretorioLogErro nas exceptions


 
## [12.1.74.6385]

**Novidades**
- DCIT-702: Atualização componente NFe Delphi Alexandria.
- DCIT-458: novo método CalcularCodigoBarrasNFeOffline. 
- DC-3210 - Ajustes no componente para que extraia mais informações do xml e possibilite personalização de danfe (.rtm)
- DC-3293 - Disponibilizado propriedade que permite a impressão do xml resumido.
- DC-3640 - Permitir que seja informado apenas o nome do arquivo rtm nas propriedade de impressão de DANFE.
- DC-3662 - Compatibilizado o Validador NFe com as NTs 2020.005 v1.00, 2020.005 v1.10 e 2020.005 v1.20.
- DCIT-458 - Novo método CalcularCodigoBarrasNFeOffline que permite a geração do código de barras da NFe offline.
- DCIT-769 - Disponibilizado totalizadores de base calculo dos impostos para ser utilizado nas impressões.
- DCIT-612 - Atualizar o ConsultaCadastro para a UF do ES.
- DCIT-832 - Permitir envio de inutilização para Emissor com Cpf.

**Correções**
- DICT-756 - Melhoria nos dados do emitente  Layout padrão - retrato.
- DCIT-769 - Disponibilizado totalizadores de base calculo dos impostos para ser utilizado nas impressões.
- DCIT-612 - Alterações na rotina ConsultarCadastro, para ter opção de utilizar o CadConsulta3 na vm50a.
    Correção de links das UFs que não funcionam.
- DC-3612 - correção do erro indexHTML.html não foi localizado no método ShowHtml do validador.
- DC-3730 - Correção na impressão em lote para carregar corretamente a informação da tarja cancelada para o NF-e correto.
- DICT-756 - Melhoria na impressão dos dados do emitente, Layout retrato da DANFe.
- DCIT-781 - Melhoria na impressão dos dados do emitente, Layout paisagem, RetratoSimplificado, RetratoVeicNovos, PaisagemMedicamento, RetratoMedicamento.
- DCIT-136 - correção no escape caracteres das tag de descrição.




## [12.1.74.6365]

**Correções**

- DC-3327: tratativa para suportar nome de certificado com caractere não reconhecido ??.
- DC-2588: Adicionado na impressão da NFe - informações complementares - os campos peso liquido e quantidade.
- DC-3350: Suporte para provedor HOSTGATOR no envio de e-mail - envio de e-mail configurado com TLS 1.0 1.1 e 1.2;
- DC-3077:  Alteração da validação tag pincode quando certificado A1
- DC-3431:  Correção para extrair header XML com todas tags presentes na rotina de exportar PDF
- DC-2867:  Ajuste para não gerar diretórios padrões sem necessidade, quando personalizado diretórios

**Novidades**

- DC-3392 - Compatibilizado componente NFe com NT2020.005 v1.0, v1.10 e v1.20.

## [12.1.73.6346]

 **Novidades**
* DC-2567: Compatibilizado o validador com a Nota Técnica 2020.006 v1.20.
* DC-2890: Compatibilizado com a Nota Técnica 2020.006 v1.20.
    Documentação: https://blog.tecnospeed.com.br/nota-tecnica-2020-006-da-nfe-e-nfce/
* DC-2792: Desfazer alteração que impedia gerar ICMSST para o CE, voltando a ficar de acordo com a NT 2016.002 v.1.30 - Pág. 48.
* DC-3144: Compatibilizado o componente com a Nota Técnica 2021.001 v1.00. Foram implementados os métodos do evento Comprovante de Entrega da NF-e.
  ** Para maiores informações:
    https://blog.tecnospeed.com.br/nota-tecnica-2021-001-da-nf-e/

  ** Documentações do métodos:
    https://atendimento.tecnospeed.com.br/hc/pt-br/articles/4402106952727
    https://atendimento.tecnospeed.com.br/hc/pt-br/articles/4402107135383
    https://atendimento.tecnospeed.com.br/hc/pt-br/articles/4402114989079
    https://atendimento.tecnospeed.com.br/hc/pt-br/articles/4402749596439

 **Correções**
 * DC-3060: Corrigido o namespace ID="IDXXXXXX" do xml destinatário da NFe na tag InfProt.
 * DC-2955: Correção do encoding (UTF8) na geração do XML destinatário.
 * DC-2631: Correção no encoding (UTF8) do retorno das notas destinadas pelo componente no método TratarXMLRetornoDFe.
 * DC-2811: Validação das configurações do email no componente antes de enviar email

## [12.1.72.6341]

 **Novidades**
* DC-2425: Correção de erro ao exportar PDF de CCe informando um arquivo XML de CCe com acentos no caminho.
* DC-2567: Compatibilizado o validador com a NT 2020/006 v1.20.
* DC-2483 - Ajuste na coluna do NCM dos itens para imprimir o NCM SH quando o campo EXTIPI estiver preenchido.
* DC-2890 - Compatibilizado com a Nota Técnica 2020.006 v1.20.
  Documentação: https://blog.tecnospeed.com.br/nota-tecnica-2020-006-da-nfe-e-nfce/
* DC-2435 - Implementado nos métodos do evento Comprovante de Entrega da NF-e.
  Documentações:
    ** https://atendimento.tecnospeed.com.br/hc/pt-br/articles/4402106952727
    ** https://atendimento.tecnospeed.com.br/hc/pt-br/articles/4402107135383
    ** https://atendimento.tecnospeed.com.br/hc/pt-br/articles/4402114989079

* DC-3060 - Corrigido o namespace ID="IDXXXXXX" do xml destinatário da NFe na tag InfProt.

## [12.1.71.6338]

 **Novidades**

* DC-2565: Compatibilizado componente com NT 2020/006 v1.20. Documentação: https://blog.tecnospeed.com.br/nota-tecnica-2020-006-da-nfe-e-nfce/
* DC-2833: Ajustes na geração do XML Destinatário para gravar com encoding UTF-8 sem BOM (Byte-Order-Mark).
* DC-2919: Ajustes na geração do XML Destinatário de CCe para gravar com encoding UTF-8 sem BOM (Byte-Order-Mark).

**Correções**

* DC-2792: Desfeita a alteração que impedia gerar ICMSST para o CE, voltando a ficar de acordo com a NT 2016.002 v.1.30 - Pág. 48.
 
## [12.1.70.6333]

 **Correções**

* DC-2434: Correção na impressão dos dados das faturas das DANFEs, ao imprimir em lote.
* DC-2506: Correção na forma de suportar escape de caracteres via TX2.
* DC-2207: Correção das regras N17c-10 e N27d-10 em relação as casas decimais.
* DC-2490: Correção de erros na impressão de CCe ao usar XML com encoding UTF-8 com BOM (Byte Order Mark).
* DC-2576: Correção da regra BA02-30, para validar a chave de acesso referenciada com CNPJ/CPF inválido de acordo com a série utilizada.

## [12.1.69.6331]
 
 **Novidades**

* DC-2182 - Compatibilizado o validador NFe com a NT 2020/006 v1.00.
* DC-2180 - Compatibilizado o componente com a NT 2020/006 v1.00. [Maiores informações sobre a NT](https://blog.tecnospeed.com.br/nota-tecnica-2020-006-da-nfe-e-nfce/)  
* Para quem preenche a nota via Dataset ou TX2, os campos adicionados foram indIntermed_B25c, CNPJ_YB02 e idCadIntTran_YB03.
* DC-1679 - Compatibilizado o componente com a NT 2020/007 v1.00a.[Maiores informações sobre a NT](https://blog.tecnospeed.com.br/nota-tecnica-2020-007-da-nfe/)  
* Documentações: 
* [Enviar Ator Interessado na NF-e (Transportador) com geração do XML de envio](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/1500002702742)
* [Enviar Ator Interessado na NF-e (Transportador)](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360062979293)
* DC-2313 - Compatibilizado o validador NFe com a NT 2020/006 v1.10.

**Correções**

* DC-1845 - Acerto da regra C18-14 para considerar exceção a critério da UF.
* DC-2028 - Correção do erro de comparação com casas decimais da regra GY10-10.
* DC-2153 - Desativada a regra de validação N23d-10 devido a funcionar por critério da UF.

 ## [12.1.68.6311]

**Correções**

* DC-1845 - Acerto da regra C18-14 para considerar exceção a critério da UF.

## [11.1.67.6295]

**Correções**

* DC-1569 - Criada mensagem de exceção mais informativa no método ConsultarCadastro. Necessário para casos onde a UF não possuir Web Services desta operação definido.
* DC-1637 - Correção da regra NA01-20 (Rejeição 694) para o caso de exceção 6 conforme manual da SEFAZ.

## [11.1.66.6290]

**Novidades**

* DC-1280 - Atualização da NT 2019.001 v.1.20a no Validador NF-e.

* DC-1319 - Correção da regra N23-10 no Validador NF-e. 

## [11.1.65.6282]

**Correções**

* DC-1001 - Adicionado o Ceará na regra da CST 60 para não gerar a tag ICMSST e sim a ICMS60.

* DC-922 - Adicionada propriedade MensagemIcmsDesonerado, que permite habilitar ou não a mensagem com valor do icms desonerado nas informações complementares da Danfe.

* DC-1178 - Removida a integração do Nota Segura do componente NFe.

* DC-1154 - Alterar funções que estavam sem retorno padrão.

**Novidades**

* DC-1250 - Disponibilizado o modelo de rtm "DANFE Simplificado – Etiqueta" para compatibilizar com a NT 2020.004 v.1.00. [Documentação ](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360006172613)


## [11.1.64.6271]

**Novidades**

* DC-647 - Disponibilizado instalação manual do componente no pacote full sources.
* DC-675 - Disponibilizada a impressão nota denegada.

## [11.1.63.6265]

**Novidades**
* DC-599 - Corrigido problema com a regra 552 no Auditor Fiscal.

* DC-612 - Corrigido problema com a regra 607 no Auditor Fiscal.

* DC-583 - Correção de encode no método DescompactarXMLZip.

* DC-582 - Alteração na impressão das informações complementares para não ocorrer quebra de linha no meio de palavra.

* DC-550 - Compatibilizado com Delphi Sydney 10.4.

* DC-615 - Alteração para salvar o xml da NF-e na pasta de log após executar o método MontarXmlEPEC.

* DC-698 - Adicionada a propriedade infCplQuebrarLinhaAut para configuração da quebra de linha automática na Danfe em informações complementares. [Documentação das propriedades de impressão](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360006172613)

* DC-676 - Alteração para mostrar os dados do reboque na Danfe quando não encontrar veiculo trator.

* DC-646 - Alterado o nome do documento enviado a impressora ao imprimir.

* DC-644 - Disponibilizadas as propriedades ConfigTextoRodapeEsq e ConfigTextoRodapeDir para a configuração de texto no rodapé da Danfe. [Documentação das propriedades de impressão](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360006172613)

## [11.1.62.6240]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.62.6239]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.62.6232]

Correções:
*   Corrigido problema com distribuição de ocx do validador client x64. 

## [11.1.62.6222]

Novidades:

* DC-315 - Compatibilizado componente com NT 2020/001 que permite emitente com CPF enviar Manifestação do Destinatário: [Documentação](https://blog.tecnospeed.com.br/nota-tecnica-2020-001/).
* DC-294 - Adicionado o método TratarXMLRetornoDFe. Este método recebe o XML de retorno do método ConsultarDistribuicaoDFe, faz o tratamento de cada XML compactado e os salva no diretório desejado: [Documentação](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360044882013). 
* DC-257 - Alteração na impressão CCe para mostrar sempre o maior nSeqEvento.
* DC-291 - Disponibilizado os métodos Edit e Post no componente DatasetX. Para quem utiliza o componente via Activex conseguir editar informações já preenchidas no DatasetX. **Exemplo de uso**: 
```pascal
  spdNFeDataSetsX.LoteNFe := '';
  spdNFeDataSetsX.FindDataSet('E').Edit;
  spdNFeDataSetsX.SetCampo('xNome_E04=NOME DO DESTINATARIO EDITADO');
  spdNFeDataSetsX.FindDataSet('E').Post;
```

Correções:

* DC-139 - Correção no envio de notas com compactação de XML e no método ConverteXmlParaDataSet que não estava convertendo o grupo infRespTec.

## [11.1.61.6220]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.61.6219]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.61.6214]

### Novidades:
   - DC-242 - Alterado modo de utilização do Nota Segura, [**exemplos de utilização**](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360006286894).

### Correções:
   - DC-139 - Correção no envio de notas com compactação de XML e no método ConverteXmlParaDataSet que não estava convertendo o grupo infRespTec.

## [11.1.60.6211]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6210]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6209]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6208]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6207]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6206]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6205]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6204]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6203]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6202]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.0.60.6187]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6185]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6182]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6181]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6180]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6179]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [11.1.60.6169]

### Novidades:
  - IND-101 - Disponibilizado no dataset os (campos vBCSTRet_N26 e vICMSSubstituto_N26b) para ser impresso no DANFE.
  - INDK-24 - Alteração no DANFE para imprimir a unidade comercial e tributada com o tamanho máximo de caracteres.
  - INDK-74 - Disponibilizado as dezenas da nota premiada MS.

### Correções:
  - INDK-92 - Correção para concatentar as dezenas da nota premiada MS no xml destinatario, quando gerado pela consulta por chave ou envio síncrono.

### Correções:
  - INDK-78 - Correção no envio de notas com compactação de XML. Essa opção existe ao informar o parâmetro aCompactada=True nos métodos EnviarNF e EnviarNFSincrono.

## [11.1.60.6168]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [10.1.59.6074]
### Novidades:
  - IND-87 - Atualizado rtm RetratoMedicamento/PaisagemMedicamento para que seja impresso os dados de entrega e retirada.

### Correções:
  - IND-18 - Correção de erro que afetava a utilização de diretórios em rede na configuração do componente.

  - IND-141 - Corrigido geração do XML destinatário de CCe.

  - IND-88 - Corrigido impressão da CCe para que possa imprimir várias quebras de linha.

  - IND-93 - Correção de erro ao validar campo vProd_I11 (rejeições 629 e 630).

## [10.1.58.6059]
Novidade:
  - #24193 - Adicionado recurso para preenchimento com Dataset Tipado no componente Delphi, através da classe spdNFeDatasetTipado.

### Correções:
  - #24149 - Correção na validação de XML não assinados no Auditor Fiscal do componente NFe.

  - #24518 - Corrigido problema na impressão do número do endereço de entrega no DANFE.

  - IND-13 - Corrigido impressão do Local de Entrega e Retirada quando a tag CNPJ/CPF é vazia.

  - IND-19 - Corrigido problema na conversão do campo tpViaTransp_I23a quando utilizado com os valores 11 (Courier) e 12 (Handcarry).

  - IND-30 - Compatibilizado com a NT 2019.001 v1.20a.

  - IND-18 - Correção de erro que afetava a utilização de diretórios em rede na configuração do componente.

  - IND-141 - Corrigido geração do XML destinatário de CCe.

  - IND-140 - Correção no método ConverteXmlParaDataSet que não estava convertendo o grupo UB.

## [10.1.57.6035]
### Novidades:
  - #23929 - Disponibilizados os links para Demonstrações de Uso e Dicionário de Dados, veja no início deste documento.
             Removidas as Demonstrações de Uso do instalador, sendo possível acessar pelo link https://github.com/tecnospeed/Componente-NFe
             Atualizado os termos de uso do componente (EULA), sendo possível acessar pelo link http://eula.tecnospeed.com.br
             Adicionada opção para configurar o path dos fontes do componente no Library Path do Delphi.

  - #23928 - Arquivos xml das pasta Templates foram incorporados aos fontes do componente, isto vai facilitar a instalação nos clientes.
             A partir desta versão não serão mais enviados arquivos de Templates e Esquemas anteriores a vm50a.
             O método ValidarLoteItem foi alterado para deprecated, podendo ser utilizado ValidarLoteParaEnvio ou AuditarXml.

### Correções:
  - IND-16 - Limpando impressora padrão no método VisualizarDanfe.
  - #23825 - Atualizado envelope SOAP para o método ConsultaCadastro no Distrito Federal.

  - #23948 - Correção de erro ao validar um XML sem assinatura no Auditor Fiscal em modo Local.

  - #23951 - Corrigida a impressão de notas canceladas, onde os novos campos da impressão (Local de entrega e retidada) ficavam acima da tarja de cancelamento.

### Correções:
  - #23825 - Atualizado envelope SOAP para o método ConsultaCadastro no Distrito Federal.
  - #23822 - Correção de impressão de XML de Cancelamento com caracteres especiais na justificativa.
## [10.1.56.6035]

### Novidades:
  - #22745 - Foram alterados alguns métodos para deprecated, são eles VisualizarDanfeLog, ConsultarNFeDestinadas e DownloadNFe.

  - #22780 - Adicionado o método GetVencimentoCertificadoDataHora na ocx NFex.dll, que retornará a data e hora 
             do vencimento do certificado digital configurado.
	     
## [10.1.55.6031]

### Novidades:
  - #22921 - Disponibilizado um novo modelo de DANFE Simplificado, seu nome é para RetratoSimplificado80mm.rtm.
             Foi configurado com largura compatível para impressoras térmicas com papel de 80 milimetros.
  
  - #23224 - Compatibilizado componente com NT 2018/005 v1.10.
             Documentação: https://blog.tecnospeed.com.br/nota-tecnica-2018-005-v1-10/

  - #22750 - Disponibilizado o método ObterCodigoUF, que retorna o código IBGE da UF passando como parâmetro Sigla da UF.
             Exemplo de utilização -> spdNfe.ObterCodigoUF('PR') retornará 41.

  - #22711 - Componente compatibilizado com o Delphi 10.3 Rio.

  - #23504 - Compatibilizado componente com NT 2018/005 v1.20.
             Documentação: https://blog.tecnospeed.com.br/nt-2018-005-v1-20/

  - #22745 - Foram alterados alguns métodos para deprecated, são eles VisualizarDanfeLog, ConsultarNFeDestinadas e DownloadNFe.

  - #22780 - Adicionado o método GetVencimentoCertificadoDataHora na ocx NFex.dll, que retornará a data e hora 
             do vencimento do certificado digital configurado.

## [10.1.54.6019]

### Novidades:
  - #22164 - Alteração na estrutura de pastas do auditor, para que utilize os esquemas e templates do componente.
  - #22167 - Alterado o método CancelarNF como deprecated, o método correto a ser utilizar é o CancelarNFeEvento.
  - #22017 - Criada verificação para saber se a versão da spdGovX é compatível com a versão do NF-e. Caso não esteja, será gravada no nfe_exception.log
             informação sobre o procedimento para atualizar a GOV, conforme a documentação do link abaixo:
             https://atendimento.tecnospeed.com.br/hc/pt-br/community/posts/360018557694-Como-atualizar-a-Gov
  - #22153 - Disponibilizado link para o Guia de primeiros passos do componente.
  - #22821 - Compatibilizado componente com NT 2018/005.
             Documentação: https://blog.tecnospeed.com.br/nota-tecnica-2018-005/
  - #22636 - Disponibilizado o dataset de Declarações de Importação (campos do grupo DI e ADI) para ser impresso na DANFE.
  - #22701 - Alteração para evitar problema de informar caminho de rede na propriedade DiretorioXmlDestinatario, que ocorria em alguns cenários utilizando OCX no Windows 10.
  - #22949 - Compatibilizado os modelos retrato e paisagem da DANFE com a NT 2018/005.

### Correções:
  - #22465 - Foi corrigida impressão da UF da Transportadora, pois quando no xml tem a UF do Veículo e não tem UF da Transportadora, 
             estava sendo impressa a UF da Transportadora incorretamente.

## [10.1.53.5250]
### Novidades:
  - #21645 - Melhorias no método LoadConfig com relação a propriedade DiretorioLogErro, para que ao ocorrer algum erro no momento 
             em que estiver executando o mesmo, não seja exibida a exception por não poder criar o arquivo de LogErro.

### Correções:
  - #22014 - Correção para permitir cancelamento com o componente instalado na versão Trial.

## [10.1.52.4457]

### Correções:
  - #21673 - Correção de problema ao utilizar componente com Delphi Berlin.
  - #21644 - Corrigido problema ao utilizar certificado por arquivo e alterar o caminho do mesmo em tempo de execução.

## [10.0.51.3907]
### Novidades:
  - #21379 - Disponibilizado o método CalculaChaveInutilizacao que pode ser utilizado para retornar a chave da inutilização.
             Documentação: http://docs.tecnospeed.com.br/nfe/Metodos/CalculaChaveInutilizacao/
  - #21378 - Disponibilizado o dataset de pagamentos e o campo vTroco para ser impresso na DANFE.
  - #21215 - Foram adicionados exemplos de Importação de XML da NF-e e Consulta de Distribuição DF-e nas 
             demonstrações Delphi6, CSharp e VB 6 que acompanham o instalador do componente.
  - #21222 - Atualizado o link para o manual do componente. 
  - #21001 - Disponibilizada a propriedade AtualizarArquivoServidores, para indicar se o componente deve 
             atualizar os arquivos nfeServidoresHom.ini e nfeServidoresProd.ini automaticamente.
             
## [9.7.50.2312]
### Novidades:
  - #21593 - Alteração para sempre popular os campos da fatura na impressão do DANFE, independente do valor da propriedade ImprimirDuplicata.
  - #21025 - Compatibilizado Auditor Fiscal com NT 2016/002 1.60.
  - #21024 - Compatibilizado componente com NT 2016/002 1.60.
             Documentação: http://tsdn.tecnospeed.com.br/blog-da-tecnospeed/post/o-que-mudou-na-versao-1-60-da-nota-tecnica-2016-002
  - #21076 - Melhoria na exibição do grupo Fatura das DANFEs, quando utilizar ImprimirDuplicata=1 e o xml não possuir informações de fatura o grupo Fatura não será exibido.
  - #20862 - Disponibilizada a propriedade ImprimirFrenteVerso na seção DanfeSettings do componente.
  - #20623 - Compatibilizado componente com NT 2018/001 que permite emitente com CPF, a partir desta versão o componente aceitará tanto CNPJ como CPF para o Emitente.
             Para maiores informações: http://tsdn.tecnospeed.com.br/blog-da-tecnospeed/post/publicada-nota-tecnica-2018-001-da-nf-e-que-permite-informar-cpf-para-identificacao-do-emitente

### Correções:
  - #20970 - Corrigido problema com a regra 610 no Auditor Fiscal.
  - #21028 - Corrigido problema ao alternar entre versões manuais, por exemplo da vm60 para vm50a.

## [9.7.49.1421]
### Novidades:
  - #20372 - Foram atualizadas as demonstrações Delphi, CSharp e VB 6 que acompanham o instalador do componente.
  - #20694 - Melhoria no DANFE de medicamentos para imprimir os itens mesmo não tendo informação de medicamento ou rastro.
  - #20720 - Melhoria na mensagem de erro que é exibida ao montar a chave informando parâmetro incorreto, por exemplo com letra.
  - #20721 - Melhoria no Auditor Fiscal para exibir mensagem de erro ao tentar validar xml com tags não fechadas.

### Correções:
  - #20528 - Corrigido problema com as regras 799 e 800 no Auditor Fiscal.
  - #20620 - Correção no método ConverteXmlParaDataSet que não preenchia corretamente informações de rastro de cada item.
  - #20621 - Corrigido problema com regra 869 em algumas notas.

## [9.7.48.100]
### Novidades:
  - #18722 - Alteradas as tags Incluir/Salvar para aceitar maiúsculo e minúsculo e implementada a remoção dos espaços antes e depois dos valores das tags
  - #19658 - Compatibilizado componente spdNFe e Auditor Fiscal com NT 2017.001 1.10.
  - #19892 - Compatibilizado componente spdNFe e Auditor Fiscal com NT 2016/002 1.42.
  - #20157 - Alterada a exibição do campo Alíquota de ICMS no DANFE modelo paisagem quando informado com mais de 2 casas decimais.
  - #20097 - Implementado método ConfigurarSoftwareHouse, este método deve ser utilizado logo após instanciar o componente spdNFe, 
             afim de informar os dados da SoftwareHouse. 
  - #20360 - Adicionado o método GetValidadeInicialCertificado que retornará a data inicial da validade do certificado digital configurado.
  - #20510 - Alteração para desconsiderar valor passado paras as propriedades AuditorCodigoProduto e AuditorEstagio, 
             a partir de agora não existe a necessidade de informar estes 2 campos.
  - #20632 - Compatibilizado Auditor Fiscal com NT 2016/002 1.50.
  - #20627 - Compatibilizado componente com NT 2016/002 1.50.
             Documentação: http://tsdn.tecnospeed.com.br/blog-da-tecnospeed/post/o-que-mudou-na-versao-1-50-da-nota-tecnica-2016-002
### Correções:
  - #18565 - Corrigida a mensagem de erro na tentativa de exportação, impressão e visualização de um EPEC com XML inválido.
  - #19674 - Corrigido para validar corretamente o XML, REC ou TX2 caso informado a tag <Manager> no Auditor Fiscal.

## [9.7.47.63621]
### Novidades:

  - #19644 - Disponibilizado novo método chamado TestarEmailConfig afim de testar as configurações de e-mail através de um envio com sucesso.
             Link: http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-nfe-testar-configuracoes-de-e-mail
  - #18679 - Ocultado o bloco de "Cálculo do ISSQN" nos RTM's quando a informação inexiste.             
  
### Correções:

  - #19500 - Corrigida regra de validação 805 no Auditor Fiscal.
  - #19418 - Corrigidas regras de validação 602 e 860 no Auditor Fiscal.
  - #19513 - Corrigido método ConverteXmlparaDataSet na conversão do grupo DI e ADI.
  - #19500 - Removida regra facultativa 805 do validador.
  - #19501 - Corrigido problema de cálculo na regra 793.
  - #18670 - Compatibilizado Auditor Fiscal com REC 4.0.
  - #19651 - Compatibilizado componente spdNFe com NT 2017.001.
  - #19675 - Alterada forma de informar o campo vTroco_YA09. Agora, quando existir, ele não deverá mais ser informado dentro 
             do INCLUIRPARTE=YA e SALVARPARTE=YA.
             Link: http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/campo-vtroco-ya09-na-nf-e-4-0-deve-ser-informado-no-contexto-global

## [9.7.46.62339]
### Novidades:
  - #18669 - Compatibilizado formato de integração REC com versão 4.00 do xml da NF-e.
            Para maiores informações: http://docs.tecnospeed.com.br/nfe/rec4.00
  - #19107, #19108, #19109, #19110, #19111 - Compatibilizadas as regras de validação e rejeição com a NT 2016.002 v.1.31.
  - #19303, #19287 - Compatibilizado componente com a NT 2016/002 v 1.40.

### Correções:
  - #19302 - Corrigida impressão de FCP nos itens para CST=00.
  - #19344 - Corrigida regra de validação 865 no Auditor Fiscal.
  - #19339 - Corrigida regra de validação 603 no Auditor Fiscal.
  - #19343 - Corrigida regra de validação 629 e 630 no Auditor Fiscal.
  - #19379 - Corrigido o endereço do webservice de consulta em ambiente de homologação para o estado de São Paulo.
  - #19419 - Corrigido tamanho dos campos pGLP_LA03a e pGNn_LA03b e pGNi_LA03c.
  
## [9.7.45.59731]
### Novidades:
  - #18946 - Publicado método CalculaSegCodBarra no Activex, que possibilita obter o código de barras utilizado no envio de notas em FSDA.
  - #18947 - Disponibilizado campo CEST_I05c como ItemCEST na edição do RTM.
  - #18948 - Disponibilizado xCampo_Z05 como IdentCampo e xTexto_Z06 como ContCampo na edição do RTM.
  - #18715 - Corrigidos os RTM's para impressão do grupo de faturas na NFe 6.0.
  - #18718 - Disponibilizadas as informações do Fundo de Combate à Pobreza na impressão dos RTM's.
             Para maiores informações : http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-tecnospeed-nfe-propriedade-mensagemfcp
  - #19051 - Corrigido validação do auditor fiscal referente rejeição 602 e 603 removendo a tolerância na somatória dos itens para com os totalizadores (PIS e CONFINS).
  - #18307 - Modelo de impressão  RetratoMedicamentos.rtm atualizado conforme o padrão de Impressão TecnoSpeed.
  - #18311 - Modelo de impressão  PaisagemMedicamentos.rtm atualizado conforme o padrão de Impressão TecnoSpeed.

## [9.7.44.59307]
### Novidades:
  - #18904 - A propriedade ModoOperacao no spdNFeX passa a ser tipada facilitando assim o seu uso.
  - #18459 - Atualizado os termos de uso do componente (EULA).

### Correções:
  - #17863 - Corrigida a descrição do campo "VALOR TOTAL DOS IMPOSTOS" para "VALOR APROX. DOS TRIBUTOS" conforme a NT 2013.003_v1.00a_Lei_Transparencia item 06.
             Danfe, página 7 / 7, na impressão da NF-e, modelo retrato e modelo Paisagem.
  - #18077 - Corrigido validação do auditor fiscal referente rejeição 372 quando informado letras maiúsculas 
             na tag "idEstrangeiro".
  - #18080 - Corrigido problema ao tentar exportar um xml de cancelamento quando pasta Templates não estava no diretório
             raiz e informado caminho do rtm por paramêtro.
  - #18818 - Tratado retorno de SOAP envelopado no evento de cancelamento.
  - #18804 - Corrigido problema que ocorria ao montar o XML para o evento EPEC, quando o campo idEstrangeiro_E03a era preenchido.
  - #18902 - Corrigido a geração do bloco <ICMSST> para quando atributo "CST_N12 = 60" e código ANP do produto informado na sessão combustível estiver na listagem contido na Norma Técnica 2016.002 v.1.30, pág 48.

  
## [9.7.43.58041]
### Novidades:
  - #18360 - Criada documentação para padronização do modelo retrato.rtm e paisagem.rtm.
             Link: http://tsdn.tecnospeed.com.br/blog-da-tecnospeed/post/danfe-tecnospeed
  - #18447 - Método de Inutilização de NFe agora gera um xml destinatário de inutilização.
  
### Correções:
  - #18325 - Atenção: O campo nDraw_I51 pode ser informado no XML com TagVazia(</nDraw>) porém, como o campo não é obrigatório(Ocor.: 0-1) na NF-e, caso este
             não seja informado no DataSet ou TX2 com valor diferente de vazio ele não será apresentado no XML da NF-e.
  - #18317 - Corrigido seleção de campos exclusivos CNPJ_F02 ou CPF_F02a para o grupo G (entrega) do XML.
             Somente um deles devem ser informado, e caso nenhum seja informado a Tag CNPJ deve ser gerada vazia.  
  - #18364 - Corrigido problema na impressão de notas que possui campos que contém CDATA no XML.
  - #18265 - Corrigido regra de validação N17 (Rejeição 528) para não ser aplicada para notas com a tag finNFe com valor 3.
  - #18186 - Corrigido o problema da regra E14_04, que não ignorava os zeros a esquerda do código ao validar o campo cPais_e14. 
  - #18266 - Corrigido problema ao tentar converter xml para dataset(ConverteXmlparaDataSet) quando não informado a pl.
  - #18480 - Corrigido problema da falta de data de entrada e saída na impressão do DANFE, para vm60. 
  - #17999 - Compatibilizado componente com o Delphi 10.2 Tokyo.

## [8.7.42.56989]
### Correções:
  - #18212 - Corrigido seleção de campos exclusivos CNPJ_G02 ou CPF_G02a para o grupo G (entrega) do XML.
             Somente um deles devem ser informado, e caso nenhum seja informado a Tag CNPJ deve ser gerada vazia.

  - #18114 - Aumentado o tamanho na impressão do DANFE dos campos de endereço do Emitente e Destinatário. Assim cobrimos o espaço total reservado para esses campos.				
  - #18079 - Corrigido problema da regra GW04a-10 que estava retornando exceção em alguns casos que o cálculo estava informado
             de forma correta no XML da NF-e.
  - #18084 - Corrigido problema com regra GNA11-10 que estava acusando a rejeição na validação de forma equivocada.
  - #18324 - Atenção: O campo nDraw_I29a pode ser informado no XML com TagVazia(</nDraw>) porém, como o campo não é obrigatório(Ocor.: 0-1) na NF-e, caso este
             não seja informado no DataSet ou TX2 com valor diferente de vazio ele não será apresentado no XML da NF-e.
  - #18317 - Corrigido seleção de campos exclusivos CNPJ_F02 ou CPF_F02a para o grupo G (entrega) do XML.
             Somente um deles devem ser informado, e caso nenhum seja informado a Tag CNPJ deve ser gerada vazia.			 

## [8.7.41.56376]
### Novidades:
  - #17872 - Compatibilizado componente com Delphi 10.1 Berlin update 2.
  - #18034 - Compatibilizado componente com NT2016/002 v1.20.
             Documentação: http://tsdn.tecnospeed.com.br/blog-da-tecnospeed/post/saiba-o-que-muda-com-a-versao-4-00-do-nf-e
  - #18145 - Agora no método ConsultarDistribuicaoDFeChave, o XML retornado compactado da SEFAZ será descompactado automaticamente pelo
             componente NFe e salvo no diretório de downloads configurado (TspdNFe.DiretorioDownloads).
             - Não foi alterado o retorno do método, somente adicionado esse novo comportamento.

### Correções:
  - #18016 - Corrigido problema ao tentar converter um XML para dataset, contendo mais de uma ocorrência do grupo autXML.

## [8.7.40.55204]
### Novidades:
  - #17498 - O componente NFe agora é assinado digitalmente, garantindo maior segurança e confiabilidade.

### Correções:
  - #17432 - Corrigido o método: EnviarManifestacaoDestinatario na lib, o parâmetro aOrgao não era respeitado quando informado.

## [8.7.39.54136]
### Novidades:
  - #16997 - Compatibilizado o componente NFe com a nota técnica: NT 2014.002 v1.02.
             Adicionado no componente um método para consulta de distribuição pela chave:
             Documentação: http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-nfe-consulta-distribuicao-df-e
             Parecer Técnico: http://tsdn.tecnospeed.com.br/blog-da-tecnospeed/post/divulgada-a-versao-1-02-da-nota-tecnica-2014-002-da-nf-e-e-nfc-e

  - #17374 - Auditor Fiscal compatibilizado com a regra de validação NA11-10, que considera o ano da NF
             referenciada nas operações de devolução ou com CFOP de retorno de mercadorias.

  - #16844 - Compatibilizada a impressão do DANFe para que seja exibido o label CST ou CSOSN corretamente.

  - #17428 - Corrigido regras 698,699 e 798 no Auditor Fiscal.
  - #17300 - Disponibilizada a propriedade UltimoLogReciboInutilizacao na ocx NFex.dll.
  
             Documentação: http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-tecnospeed-nfe-utilizando-a-propriedade-ultimo-log-da-ocx-nfe  

  - #17246 - Disponibilizada a propriedade ModeloRetratoCancelamento para que seja possível definir qual rtm será utilizado para impressão de um cancelamento.
             Documentação: http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-tecnospeed-nfe-propriedades-do-componente

## [8.7.38.53483]
### Novidades:
  - #17251- Compatibilizado o componente NFe com a nota técnica: 2015.003 - v 1.91.
    Adicionado/Atualizado regras de validação : E12-40, E12-60, E12-50, E16a-30, N12-70, N12-80, N16-04,
      N16-20, N23-10, NA01-20, NA01-30, NA09-30.
  
  - #17018 - Implementada nova forma como é listado os certificados digitais, agora os certificados estão acompanhados do número de série no final.
             Essa modificação foi feita para atender clientes que possuem dois ou mais certificados com o mesmo nome impossibilitando assim a diferenciação dos mesmos.	  
 
Correcões
  - #17267 - Corrigido problemas no Auditor Fiscal:
             - Validar nota com muitos itens não apresenta mais erro.
             - Agora é possível validar lote gerado direto pelo componente (tx2 e xml).
             - Códigos de países com 3 digitos, agora podem ser informados sem apresentar problema de validação da regra 377.

## [8.7.37.52946]
### Novidades:

  - #16931 - Disponibilizado o campo cEANTrib na edição da impressão. (Nome do campo: ItemEANTributada)
  - #16883 - Disponibilizado a propriedade do DANFE ImprimirObsCont.
             Documentação: http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-tecnospeed-nfe-propriedade-imprimirobscont
  - #16995 - Compatibilizado o componente NFe com a nota técnica: 2015.002 - v 1.41 - Adicionado regras de validação : U05-10, U14-10, X04-10, ZX01-10. 
             Documentação: http://tsdn.tecnospeed.com.br/blog-da-tecnospeed/post/divulgada-a-versao-1-41-da-nota-tecnica-2015-002-da-nf-e-e-nfc-e

### Correções:
  - #17086 - Corrigido conversão de REC para XML no cenário de Exportação.
             Problema: Não eram convertidos todos os grupos DetExport e ExportInd informados no REC.
  - #16854 - Corrigida regra 365 do Auditor Fiscal.
             Regra de Validação[365]: Total de outras retenções (id:W22c) difere do somatório dos itens (id:U08)

## [8.7.36.52182]
### Novidades:

   - #14571 - Compatibilizado o componente NFe com a nota técnica: 2015.003 - v 1.80 - Alterado regras de validação.
              Documentação: http://tsdn.tecnospeed.com.br/blog-da-tecnospeed/post/divulgada-a-versao-1-80-da-nota-tecnica-2015-003-da-nf-e-e-nfc-e

   - #16661 - Compatibilizado o componente NFe com a nota técnica: 2015.002 - v 1.41 - Adicionado regras de validação.
              Documentação: http://tsdn.tecnospeed.com.br/blog-da-tecnospeed/post/divulgada-a-versao-1-41-da-nota-tecnica-2015-002-da-nf-e-e-nfc-e

   - #16249 - Disponibilizada a impressão do DANFE completo para notas canceladas.
              Documentações: http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-tecnospeed-nfe-exportar-danfe
                             http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-tecnospeed-nfe-imprimir-danfe
                             http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-tecnospeed-nfe-editar-danfe    

### Correções:
  
  - #16777 - Corrigido erro ao converter xml para dataset quando a tag NFe não é informada.
  - #16846 - Corrigida regra 388 do Auditor Fiscal.

## [8.7.35.55477]
### Correções:

 - #16720 - Realizado correção na regra de validação 694 do Auditor Fiscal.
 - #16672 - Atualizado a vigência da regra 471 no Auditor Fiscal (a regra foi retirada de vigência pela SEFAZ na data de 01/04/2016).
 - #16776 - Corrigido problema no encoding do XML Destinatário gerado no Download de NFes. Agora as notas são baixadas 
            com os acentos e outros caracteres especiais corretos.
 - #16748 - Corrigido erro durante a validação de tx2 de importação com o Auditor Fiscal.

### Novidades:
  - #16716 - Criado propriedade TimeOut no Componente Auditor Fiscal. 
    Documentação : https://ciranda.me/tsdn/base-de-conhecimento/post/componente-nfe-validadorclient-propriedade-time-out


## [8.7.34.50577]
### Novidades:
 - #16023 - Compatibilizado Componente NFe com Delphi 10.1 Berlin.


## [8.7.33.49873]
### Novidades:
 
 - #16362 - Disponibilizado o campo nItemPed (ItemNumeroPed no Dataset de impressão) para ser utilizado quando desejado na impressão do DANFE.

### Correções:

 - #16497 - Realizado correção na regra de validação 698 do auditor fiscal. 
 - #16470 - Realizado correção na regra de validação 327 do auditor fiscal.


## [8.7.33.49873]
### Correções:

 - #16235 - Corrigindo problema da tag idestrangeiro na conversão de REC para xml
 - #16197 - Corrigido problema ao imprimir, exportar, visualizar xml que não tem "encoding="UTF-8".


## [7.7.32.49169]
### Correções:
 - #16071 - Realizado correção das regras 523 e 327 no validador NFe.
 - #16072 - Realizado correção ao utilizar o método ConverteXmlparaDataSet, onde não estava sendo gerado corretamente o grupo de NREF (NFe referenciadas) , e o grupo EXPORTIND.
 - #16115 - Realizado correção na propriedade totalRejeicoes do componente Auditor.


## [7.7.31.47853]
### Novidades:

 - #15418 - Compatibilizado Componente com NT 2015/002 v1.40
 - #15276 - Disponibilizado campo totalizador vICMSDeson_W04a para edição e impressão do DANFE.
 - #15519 - Compatibilizado Componente com NT 2015/003 v1.70

### Correções:

 - #15526 - Realizado correção no método: GerarXMLEnvioDestinatario, agora é realizado a verificação tanto do DigVal, quanto do cStat.
 - #15372 - Corrigido problema com pastas do Auditor, quando não eram instaladas as demonstrações. 
 - #15371 - Corrigido problema no arquivo paisagem.rtm, que existia na não exibição do campo orig na composição da impressão da CST do ICMS nos dados dos itens. 

## [7.7.30.47270]
### Novidades:

 - #14985 - Adicionado propriedade mensagemPartilhaAutomatica, na sessão: DanfeSettings do componente. 
Documentação: https://ciranda.me/tsdn/base-de-conhecimento/post/componente-tecnospeed-nfe-propriedade-mensagempartilhaautomatica
 - #15064 - Correção nas regras de validação: LA16_10 para não ocorrer problema de conversão do campo, quando informado mais de 3 casas decimais.


### Correções:
 - #15355 - Corrigido conflito que havia quando se instalava o componente spdNFe juntamente com o componente indy10.

## [7.7.29.46427]
### Novidades:
 - #14571 - Compatibilizado o componente NFe com a nota técnica: 2015-001 - Adicionado dois novos métodos: EnviarPedidoProrrogacao e CancelarPedidoProrrogacao.
            Documentação: https://ciranda.me/tsdn/base-de-conhecimento/post/utilizacao-do-componente-tecnospeed-nfe-cancelar-pedido-de-prorrogacao
            https://ciranda.me/tsdn/base-de-conhecimento/post/utilizacao-do-componente-tecnospeed-nfe-enviar-pedido-de-prorrogacao
 - #15156 - Compatibilizado o componente NFe com Manual REC versão 3.10.1 .

### Correções:
 - #14967 - Corrigido erro na regra de validação NA12a-70.
 - #15089 - Corrigido erro no calculo da chave ao Importar XML pelo Dataset Nota Avulsa na pl_008h.
 - #15060 - Corrigido Auditor Fiscal : Erro ao validar xml com o campo vFCPUFDest.

## [7.7.28.45580]
Novidades
 - #14836 - Compatibilizado o componente com as regras de validação da Nota técnica 2015-002 versao 1.3 
 - #14838 - Compatibilizado o componente com as regras de validação da nota técnica 2015-003 versão 1.6
 - #14837 - Compatibilizado o validador com as regras de validação da NT 2015/002 versão 1.3
 - #14839 - Compatibilizado o validador com as regras de validação da NT 2015/003 versão 1.6  
 - #14827 - Corrigido problema onde não aparecia no DANFE, as informações dos campos: xCampo_Z08, xTexto_Z09 do dataset OBSCONT.
 - #14865 - Disponibilizada a impressão, exportação, visualização e edição de XML's de cancelamento destinatário.
            Que se dão através dos métos spdNFe.ImprimirDanfe, spdNFe.ExportarDanfe, spdNFe.VisualizarDanfe e spdNFe.EditarModeloDanfe.
            Documentações:
            https://ciranda.me/tsdn/base-de-conhecimento/post/componente-tecnospeed-nfe-editar-danfe
            https://ciranda.me/tsdn/base-de-conhecimento/post/componente-tecnospeed-nfe-imprimir-danfe
            https://ciranda.me/tsdn/base-de-conhecimento/post/componente-tecnospeed-nfe-exportar-danfe  
            https://ciranda.me/tsdn/base-de-conhecimento/post/componente-tecnospeed-nfe-visualizar-danfe

### Correções:
 - #14840 - Corrigido problemas ao utilizar o auditor com validação local. 

A demonstração que acompanha o produto já possui o fluxo utilizando o Auditor Fiscal. Qualquer dúvida ou acompanhamento nesta migração, entre em contato com nossa consultoria técnica.

Segue documentação sobre integração com nosso auditor:

 - https://ciranda.me/tsdn/blog-da-tecnospeed/post/auditor-fiscal-da-tecnospeed

 - https://ciranda.me/tsdn/blog-da-consultoria-tecnica-tecnospeed/post/utilizando-o-componente-auditor-fiscal

 - https://ciranda.me/tsdn/blog-da-consultoria-tecnica-tecnospeed/post/utilizando-o-componente-auditor-fiscal-vb6

## [7.7.27.45027]
Novidades
 - #14801 - Compatibilizado o componente com o modo de envio REC com a nota técnica 2015-003 e 2015-002. Documentacação:
            https://ciranda.me/tsdn/base-de-conhecimento/post/alteracoes-e-impactos-para-seu-erp-causados-pela-nt-2015-003-v1-20-1-30-e-1-40-2

 - #14833 - Compatibilizado o componente com as regras de validação da nota técnica 2015-003 versão 1.5

 
ATENÇÃO:
Atualmente o Componente NFe possui os métodos ValidaRegrasNegocio e ValidaRegrasNegocioTecno. Esses métodos 
possuem a mesma função da validação de Regra de Negócio que nosso Auditor Fiscal desempenha. 

Porém, a validação do Auditor possui vantagens em comparação com as duas nativas do componente, por exemplo: 
Validação mais precisa e mais detalhada descrevendo os pontos exatos do XML onde o erro ocorre, interface feita 
em HTML de melhor integração ao ERP e, principalmente, rápida atualização e manutenção, pois não é necessário 
aguardar a liberação de novos pacotes do produto para ter as regras atualizadas.

Neste sentindo, a Tecnospeed informa que a partir da versão do Componente NFe 7.7.28.X de 20 de Fevereiro de 2016, 
não iremos mais atualizar os métodos ValidaRegrasNegocio e ValidaRegrasNegocioTecno, somente nosso Auditor Fiscal 
será mantido e atualizado com as próxmas Notas Técnicas.

A Notas Técnicas 2015/003 será a última repassada a eles, por isto, solicitamos a todos nossos clientes que utilizam 
os dois métodos citados que realizem a alteração em seus sistemas mudando a validação de Regra de Negócio dos 
métodos ValidaRegrasNegocio e ValidaRegrasNegocioTecno para o Auditor Fiscal:

spdNFe.AuditarXML

## [7.7.26.44138]
### Novidades:
- #14440 - Compatibilizado componente spdNFe com Delphi 10 Seattle.
- #14578 - Realizado alterações das regras de validação da NT 2015-003 versão 1.10, 1.30 e 1.40.

Correcões:
- #14464 - Adicinado o campo infAdProd nas impressões de NFe.
- #14702 - Solucionado problema ao instânciar a OCX do componente, no visual studio.
- #14744 - Corrigido erro ao informar o valor na propriedade do validador, este não era respeitado. caso a propriedade seja vazia, será 
           verificado do componente NFe.

## [7.7.25.44138]==
### Novidades:
- #13862 - Redimencionado os campos Código ANTT e Quantidade, da seção de Transportes, para que comporte o número máximo de caracteres
- #13821 - Foi iniciada a compatibilização com a NT2015/001, porém por motivo de falta de informações e esquemas por conta da SEFAZ
           os métodos spdNFe.EnviarPedidoProrrogacao e spdNFe.CancelarPedidoProrrogacao estão liberados ainda em fase beta. Assim que
           a SEFAZ liberar os arquivos necessários a compatibilização será finalizada.
- #14563 - Foram atualizados os esquemas e templates para atender a nova pl_008h. Porém até o momento os web services da SEFAZ não estão 
           preparados para aceitar os xml's contendo os novos campos.
- #14737 - Compatibilizado as regras de validação com a NT 2015-003- versao 1.20.
       
### Correções:
- #14489 - Corrigido erro ao importar Dataset com CPF no Emitente.

## [7.7.24.42833]==
### Novidades:
-  #14171 - Atualizado componente NFe de acordo com a NT: 2015/003 - versão 1.0 - itens realizados:
            - Adicionado uma nova versão Manual: Pl_008g
            - Adicionado novos campos: vICMSUFDest_W04b e vICMSUFRemet_W04c,  no grupo (W) - grupo dos totais  
            - Adicionado novo campo: CEST_I05w no grupo(I) - grupo dos produtos. 
            - Criado novo grupo não obrigatório: (NA) - (Este grupo deve ser informado nas vendas interestaduais para 
              consumidor final, não contribuinte de ICMS) Os campos deste grupo são: vBCUFDest_NA03, pICMSUFDest_NA05, 
              pICMSInter_NA07, pICMSInterPart_NA09, vICMSUFDest_NA11, vICMSUFRemet_NA13.
            - Adicionado nos dados adicionais a impressão do campo: vICMSUFDest, Quando informado será impresso desta forma: 
              "Total do ICMS de partilha para a UF do destinatário: 5.0000,00"  
              Obs. Os novos campos não estão disponíveis para integração via rec, pois a SEFAZ não disponibilizou um novo manual REC para o mesmo.  
              
            - Este novo grupo possui mais dois campos sendo eles pFCPUFDest_NA04 e vFCPUFDest_NA10 que não estão contidos na NT liberada pela SEFAZ,
              ao questionar a mesma sobre a cobrança desses campos na validação de esquema sendo que a NT 2015/003 não os possui, nos foi informado que a NT 2015/003
              está sendo rediscutida no CONFAZ. Por conta disso as alterações nos WebServices de homologação prevista para 01/10/15 ainda não foram implementadas,
              e estão aguardando o posicionamento do CONFAZ para fazê-las. Com isso há a possibilidade de termos de alterar a interface pública liberada nessa versão
              no que diz respeito à NT 2015/003.

-  #13980 - Propriedade UltimoLogEnvio pode ser usada para envio Síncrono.    
-  #14047 - Compatibilizado o componente spdNFe com a NT2015/002
            Obs. Os novos campos não estão disponíveis para integração via rec, pois a SEFAZ não disponibilizou um novo manual REC para o mesmo.
-  #14210 - Atualizado as regras de validação de acordo com a NT2015/003. OBS: As rejeições estão conforme a Nota técnica. rejeição: XXX.
            Será atualizada posteriormente. 
-  #14348 - Ajustado o retorno de inutilização para todos os estados, onde a primeira tag é: retInutNFe.	
-  #14048 - Compatibilizado Validador com a NT 2015/002. OBS: Ainda não é compatibilizado com o formato REC pois a SEFAZ não disponibilizou o manual de integração do mesmo.

### Correções:
- 14269 - Corrigido problema com o campo dhSaiEnt na impressão de lote de notas.

## [$7.7.23.41513]

### Novidades:
- #13784 - Os links dos WebServices da UF de RS foram atualizados conforme documentação, para assim que não ter impactos no envio de notas.
           Documentações:
           Links: https://www.sefaz.rs.gov.br/site/MontaDuvidas.aspx?al=l_rel_end_ws_nfe
           Documentação TSDN: https://ciranda.me/tsdn/blog-da-tecnospeed/post/atencao-ambiente-antigo-de-autorizacao-de-documentos-fiscais-eletronicos-do-rs-sera-desativado
           Notícia: https://www.sefaz.rs.gov.br/Site/NoticiaDetalhes.aspx?NoticiaId=5491
- #13570 - Atualizado o arquivo midas.dll default da instalação, para 32 bits.
- #13774 - Quando alterado o valor das propriedades infcplmaxCOL e infcplmaxROW para 0, o componente utilizará o valor defaut da
           propriedade: infcplmaxCOL = 68 e infcplmaxROW = 7

Correções
- #13752 - Corrigido geração do XML de EPEC, a IE do destinatário não estava sendo gerada.
- #13665 - Corrigido problema com activex imprimindo com caracter "?" ao invés dos caracteres com acentos, em ambientes C#.

## [6.7.22.40350]
### Novidades:
- #13295 - Alterado o fluxo do DownloadRegras utilizado no método AuditarXML. Agora se por algum motivo o download não puder ser feito,
           o componente spdNFe verifica se há uma cópia do arquivo Regras.txt, mesmo que antigo no diretório, ele utiliza o mesmo para a validação.
           Ele faz esta verificação até que o problema entre a máquina e o servidor do validador seja solucionado, e o mesmo seja atualizado na máquina.
            
### Correções:
- #13199 - Corrigido erro na impressão de CCe, logotipo default não estava funcionando.
- #13283 - Corrigido problema que ocorria quando alguns diretórios, por exemplo diretório log erro, não existiam.
           O diretório logerro, quando não configurado será criado em um subdiretório na raiz da aplicação: App\logErro\
           O mesmo só é criado quando o componente necessita adicionar e salvar algum erro no log.   
- #13293 - Disponibilizado o campo: indIEDest para impressão, seguindo a nomenclatura padrão dos campos de destinatário: DestIndIE	
- #13178 - Correção da Regra de validação: 328 - Rejeição: CFOP de devolução de mercadoria para NF-e que não tem finalidade de 
           devolução de mercadoria. 

Erros conhecidos:
- #13295 - A propriedade diretorio de regras do validador, não esta sendo respeitada. 
## [6.7.21.39577]
### Novidades:
- #12913 - Padronizada a nomenclatura dos links dos servidores de produção e homologação
- #13030 - Afim de manter a compatibilidade com o leiaute do rec, também foi disponibilizado o campo vIPI, na terceira posição do grupo O07|
- #12025 - Modificado o local do desinstalador de dependências para o diretório padrão de instalação em Arquivos de Programas:
           Ex: C:\Arquivos de Programas\Tecnospeed\NFe\Unins000.exe
           Documentação: https://ciranda.me/tsdn/base-de-conhecimento/post/desinstalador-de-dependencia-dos-componentes-nova-estrutura-de-pastas
- #13004 - Criado nova estrura de pasta, para os arquivos .ini, templates e esquemas. Agora pertencem a pasta Arquivos, localizada 
           no diretório padrão de instalação: Exemplo: C:\Arquivos de Programas\tecnospeed\NFe\Arquivos
           Documentação:  https://ciranda.me/tsdn/base-de-conhecimento/post/componente-nfe-nova-estrutura-de-pastas	
- #12946 - Componente NFe compatbilizado com a versão Delphi XE8.		   


### Correções:
- #13023 - Corrigido nomeclatura do campo REC de BA para BA02, este campo é referente ao campo refNFe.
- #13007 - Incluido o campo  REC Q05, referente ao campo vPIS_Q09 (Foi identificado a falha no Manual, onde a SEFAZ não aceita sem esse campo). NT que foi identificado a falha: Manual_REC 3.1.0 24/11/2014.
- #13003 - Atualizada a regra GN12_1 para atender as valiações da 2013/005 v1.22.
- #13031 - Feito correção das impressões das duplicatas, agora são impressas de acordo com a ordem do XML, e impressão das faturas estão de acordo com a impressão do emissor gratuito.
           Documentação: https://ciranda.me/tsdn/base-de-conhecimento/post/componente-nf-e-modificacao-na-impressao-da-danfe
- #13126 - Corrigido problema ao enviar lote de notas de envio exterior e envio normal no mesmo lote.
- #13400 - Ajustado impressão para quando o campo Valor do ICMS Desonerado for igual a 0,00 não é impresso.
- #13358 - Corrigido problema com a remoção de caracteres especiais do xml.

## [6.7.20.38505]
### Novidades:
- #13006 - Agora todos logs salvam no formato UTF8 sem BOM, com exceção de linguagens que utilizam oxc que salvam formato padrão.
           Para garantir, foi feito tratamento em todos métodos de impressão que removem o BOM antes de qualquer impressão.
- #12916 - Atualizado links dos servidores de produção e homologação.
- #12789, #12823, #12790 - Compatibilizado Componente NFe e Validador Fiscal com a NT 2013/005 v1.22.
           
### Correções:
- #13001 - Correção da regra E03a_10 no validador.
- #13008 - Correção com problemas encontrados ao utilizar o componente spdNFe com DataSnap.
- #12915 - Corrigido problemas no método spdNFe.SaveConfig que, não atualizava o arquivo nfeconfig.ini com as propriedades alteradas através do object inspector.
- #12968 - Corrigido problema de impressão dos itens, que não estavam de acordo com a sequência do XML.
- #12971 - Corrigido problema de impressão da listagens dos itens, para impressão em modo paisagem.
- #13026 - Corrigida regra de validação GN17_2 no validador.
- #12987 - Corrigido e Compatibilizado a impressão de fatura e duplicata da VM50a do Componente NFe com o Emissor Gratuito da SEFAZ.
- #13176 - Corrigido problema de compatibilidade entre o componente NFe e NFCe para Delphi XE7 em relação ao componente Nota Segura.
           
## [6.7.19.37810]
### Correções:
- #12423 - Corrigido problema com falha no campo CNPJ_B20d ao efetuar uma validação.
- #12483 - Corrigido problema com validação de notas de importação e exportação.
- #12551 - Corrigido problema com validação de notas que contivessem a rejeição 794.
- #12619 - Corrigido problema com validação de notas que contivessem a rejeição 710.
  #12697 - Corrigido o campo: NVE_105a, para: NVE_I05a. (Foi identificado a falha na NT, que informa o mesmo campo com diferentes nomenclaturas). Feita a correção
  do campo, seguindo a nomenclatura padrão, identificação pelo grupo que o campo percente: campo:NVE_I05a grupo: I.
  NT que foi identificado a falha: NT2013.005_v1.21.pdf
- #12797 - Corrigido problema ao gerar XML por DataSet com o grupo Formas de Pagamento, validando regras de negócio.
- #12552 - Corrigido e compatibilizado logs de comunicação, alguns estavam com UTF8 e Bom.
- #12718 - Corrigido no validador erro ao validar XML com Frete, regra facultativa.

### Novidades:
- #12192 - Alterado a formatação do campo CEP, conforme o emissor: 00000-000, alterado o campo endereço do destinatário para que não fique justificado a direita. Alterações realidas para VM50a
- #12023 - Criado tratamento para a propriedade logotipoEmitente, caso setado uma imagem inexistente, a impressão ocorre normalmente sem a logo.
  #12540 - Alterado retorno da consulta recibo, seguindo modelo da Sefaz
  #12546 - Alterado os parâmetros: aContentLogPedCanc, aContentLogRetCanc da função: GerarXMLCancelamentoDestinatario, para aceitar o conteúdo, ou o diretório onde está o arquivo.
  #12000 - Disponibilizado campo do xml: vICMSDeson para impressão: nome do campo: ItemVIcmsDesonerado, disposto no grupo: DadosItens.
  #12316 - Disponibilizado a propriedade UltimoLogConsultarDFe na ocx NFex.dll.
           Documentação: https://ciranda.me/tsdn/base-de-conhecimento/post/componente-tecnospeed-nfe-utilizando-a-propriedade-ultimo-log-da-ocx-nfe
  #12790 - Compatibilizado a impressão com a NT 2013/005 v1.22, disponibilizado o campo vICMSDeson para impressão das informações complementares da NFe.
  
## [6.7.18.36917]

### Correções:
- #11751 - Retirado Demo C# das opções no instalador.
- #12190 - Corrigido erro ao converter XML versão 1.10 para dataset em OCX.
- #12121 - Corrigido problema ao converter XML em DataSet no C#.
- #11215 - Retirado os manuais e notas técnicas antigas do instalador.
- #12180 - Corrigido problema na geração de chave do CCe, ao seguir o fluxo montarXmlCCe, AssinarCCe e EnviarCCe.
- #12322 - Adicionado novo link de inutilização para produção em 3.10 no estado de MG.
- #12058 - Corrigido problema com DiretorioLogErro do componente spdNFeDataSets 
- #12371 - Corrigido campo PDevol para que aceite até 6 caracteres.
- #12441 - Corrigido ordenação dos campos ao emitir uma nota informando os grupos impostoDevol e infAdProd.
- #12714 - Corrigido problema ao assinar notas com caracteres especiais.

### Novidades:
- #10951 - Componente NFe compatbilizado com a versão Delphi XE7.
- #11966 - Atualização do Cadastro Contribuinte NFe 3.10 no arquivo de nfeServidoresProd.ini.
- #12247 - Compatibilizado validador com regra GW16_1 da NT2013/005.
- #12205 - Adicionado opção de importar o "midas.dll" na instalação do componente.

## [6.7.17.35981]

Observações:
- A partir da versão 6.7.17.XXXXX do componente o Nota Segura não estará disponível para "Drop" no Data Module do Delphi. Será usado somente através da criação de nova instância.
- Para clientes que possuem o componente NFe com Nota Segura integrado (anteriores a 6.7.17.XXXXX) e desejam utilizar também o componente NFCe a partir da versão 3.7.17.XXXXX, necessitam fazer uma 
  atualização do componente NFe para uma versão a partir da 6.7.17.XXXXX.

### Correções:
- #11691 - Correção do método ConverteXmlparaDataSet quando passado caracteres com acento.
- #11649 - Corrigido regra de validacao do cálculo de fretes.
- #11652 - Corrigido regra no Auditor quando o campo indIeDest está com tamanho igual a 2 ou 9.
- #11856 - Corrigido problema ao imprimir lote de notas.
- #12013 - Corrigido problema de não atualizar o valor do campo mensagem no método EnviarEmailCCe.
- #12069 - Corrigido na rotina do método MontarEPEC, erro no valor da tag vICMS.
- #11576 - Correções e alterações que facilitam o uso do componente:
  1º Remoçao de todas as dcu´s para o pacote full source do diretório  C:\Arquivos de programas\TecnoSpeed\NFe\Fontes.
  2° Setaado corretamente os arquivos dentro do spdNFE_D7.dpk:
     spdNotaSeguraX_TLB in 'spdNotaSeguraX_TLB.pas',
      ValidadorClientX_TLB in 'ValidadorClientX_TLB.pas';
  3° Remoção das units spdException.pas, spdutils.pas e spdXmlutils.pas pois estavam dando problemas na compilação.
  4° Alteração nos instaladores: criado diretório DCU na pasta raiz do componente.
- #12255 - Corrigido problema de Falha ao carregar o módulo "s" ao término da instalação das dependencias.

### Novidades:
- #11659 - Compatibilizado componente com as Regras de Validação da Nota Tecnica 2013/005 v 1.10
- #11660 - Compatibilizado o Auditor Fiscal com as Regras de Validação da Nota Tecnica 2013/005 v 1.10
- #11757 - Compatibilizado componente com a Nota Tecnica 2014/002 - Documentação: https://ciranda.me/tsdn/base-de-conhecimento/post/componente-nfe-consulta-distribuicao-df-e
- #11666 - Adicionado novas regras, e atualizado regras já existente de acordo com as NTS 2013/005 v 1.20/1.21.
- #11776 - Atualizado componente de acordo com a NT 2014/004 v1.10, que prevê atualização quanto ao campo NCM_I05  
- #11668 - Adicionado novas regras no auditor fiscal, e atualizado regras já existente de acordo com as NTS 2013/005 v 1.20/1.21 
- #11777 - Compatibilizado o Auditor Fiscal com regras de validação da Nota Técnica 2014/004 v1.10. 

Problemas conhecidos:
- #11856 - Ao imprimir um lote que contenha duas notas iguais, a impressão desta nota repetida sairá errada, com itens duplicados

## [6.7.16.34939]
### Correções:
- #11691 - Correção do método ConverteXmlparaDataSet quando passado caracteres com acento.
- #11649 - Corrigido regra de validacao do cálculo de fretes.
- #11652 - Corrigido regra no Auditor quando o campo indIeDest está com tamanho igual a 2 ou 9.
- #12069 - Corrigido na rotina do método MontarEPEC, erro no valor da tag vICMS.

### Novidades:
- #11659 - Compatibilizado componente com as Regras de Validação da Nota Tecnica 2013/005 v 1.10
- #11660 - Compatibilizado o Auditor Fiscal com as Regras de Validação da Nota Tecnica 2013/005 v 1.10
- #11757 - Compatibilizado componente com a Nota Tecnica 2014/002 - Documentação: https://ciranda.me/tsdn/base-de-conhecimento/post/componente-nfe-consulta-distribuicao-df-e

## [5.7.15.34939]

Observações:
- A partir da versão 6.7.17.XXXXX do componente o Nota Segura não estará disponível para "Drop" no Data Module do Delphi. Será usado somente através da criação de nova instância.
- Para clientes que possuem o componente NFe com Nota Segura integrado (anteriores a 6.7.17.XXXXX) e desejam utilizar também o componente NFCe a partir da versão 3.7.17.XXXXX, necessitam fazer uma 
  atualização do componente NFe para uma versão a partir da 6.7.17.XXXXX.

### Correções:
- #11691 - Correção do método ConverteXmlparaDataSet quando passado caracteres com acento.
- #11649 - Corrigido regra de validacao do cálculo de fretes.
- #11652 - Corrigido regra no Auditor quando o campo indIeDest está com tamanho igual a 2 ou 9.
- #11856 - Corrigido problema ao imprimir lote de notas.
- #12013 - Corrigido problema de não atualizar o valor do campo mensagem no método EnviarEmailCCe.
- #12069 - Corrigido na rotina do método MontarEPEC, erro no valor da tag vICMS.
- #11576 - Correções e alterações que facilitam o uso do componente:
  1º Remoçao de todas as dcu´s para o pacote full source do diretório  C:\Arquivos de programas\TecnoSpeed\NFe\Fontes.
  2° Setaado corretamente os arquivos dentro do spdNFE_D7.dpk:
     spdNotaSeguraX_TLB in 'spdNotaSeguraX_TLB.pas',
      ValidadorClientX_TLB in 'ValidadorClientX_TLB.pas';
  3° Remoção das units spdException.pas, spdutils.pas e spdXmlutils.pas pois estavam dando problemas na compilação.
  4° Alteração nos instaladores: criado diretório DCU na pasta raiz do componente.
- #12255 - Corrigido problema de Falha ao carregar o módulo "s" ao término da instalação das dependencias.

### Novidades:
- #11659 - Compatibilizado componente com as Regras de Validação da Nota Tecnica 2013/005 v 1.10
- #11660 - Compatibilizado o Auditor Fiscal com as Regras de Validação da Nota Tecnica 2013/005 v 1.10
- #11757 - Compatibilizado componente com a Nota Tecnica 2014/002 - Documentação: https://ciranda.me/tsdn/base-de-conhecimento/post/componente-nfe-consulta-distribuicao-df-e
- #11666 - Adicionado novas regras, e atualizado regras já existente de acordo com as NTS 2013/005 v 1.20/1.21.
- #11776 - Atualizado componente de acordo com a NT 2014/004 v1.10, que prevê atualização quanto ao campo NCM_I05  
- #11668 - Adicionado novas regras no auditor fiscal, e atualizado regras já existente de acordo com as NTS 2013/005 v 1.20/1.21 
- #11777 - Compatibilizado o Auditor Fiscal com regras de validação da Nota Técnica 2014/004 v1.10. 


## [5.7.15.33616]

### Correções:
  - #11511 - Auditor Fiscal validando regra GN16 para NF-e 3.10. Problema de utilizar dEmi invés de dhEmi corrigido.
  - #11357 - Corrigido Links de Produção e Homologação para Consulta Cadastro.
  - #11351 - Corrigido erro exibido ao utilizar o componente NFeX no Visual FoxPro.
  - #11472 - Links de serviços Web de ES e RN atualizados conforme SEFAZ RN e SEFAZ ES. (Homologação e Produção)
  - #11489 - Corrigida regra W03-10 da NT2013.005 (GW03) que deveria ignorar o ICMS 51 para versão NFe 3.10.
  - #11582 - Atualizado arquivos xsd da Versão Manual 5.0a, problema com parte NVE resolvido.
  - #11413 - Corrigido problema do grupo detExport não gerar se a com tag nDraw estivesse vazia.
  - #11287 - Corrigido problema na formatação do campo CNPJ/CPF do destinatário no arquivo RetratoVeicNovos.rtm.
  - #11681 - Corrigido impressão com erro passando o campo ObsCont.
  - #11383 - Corrigido problema com informação incorreta na exception sobre o vencimento do certificado.
  - #11558 - Corrigido problema com a utilização do spdNFe juntamente com DataSnap no Delphi XE5.
  - #11719 - Corrigido problema com vírgulas decimais na impressão do campo xTexto do grupo ObsCont.
  
### Novidades:
  - #11322 - Componente NFe compatibilizado com Manual de integração REC 3.10. Documentação:
             http://ciranda.me/tsdn/base-de-conhecimento/post/utulizacao-do-componente-tecnospeed-nfe-nota-segura
  - #11510 - Template SOAP de inutilização adaptado às alteraçoes da SEFAZ da Bahia.
  - #11385 - XML Destinatário de cancelamento por evento adaptado ao esquema.
  - #11401, #11539 - Atualizado métodos publicos do componente NFe na dll spdNFelib.dll:
             Métodos atualizados: ExportarPreverDanfe,ImprimirDanfeXmlDiretorio, AuditarXml, ValidarLoteParaEnvio,
             ValidarTamanhoArquivoEnvio, ConverteXmlparaDataSet, GerarXMLManifestoDestinatario, MontarEPEC,
             AssinarEPEC, EnviarEPEC, GerarIdCCe, MontarXmlCCe, AssinarCCe, LoadTemplate, ValidarLoteItem.
  - #11414 - Componente agora compatibilizado com aplicações FireMonkey, compila normalmente ao ser dropado.
  - #11303 - Validação de REC e TX2 pelo Auditor Fiscal do Componente NF-e. Basta utilizar o spdNFe.AuditarXml passando
             um arquivo .rec ou .tx2 por parâmetro.
  
## [5.7.14.31935]
### Novidades:
  - #11029 - Disponibilizado na edição de DANFE os campos vICMSDeson e motDesICMS.
             Ficam dentro do grupo "DadosItens" com os nomes: ItemMotivoDesoneracaoICMS e ItemVIcmsDesonerado.

  - #11112 - Componente NFe compatibilizado com NT2014.002 - Distribuição DF-e
             Documentação: http://ciranda.me/tsdn/base-de-conhecimento/post/componente-nfe-consulta-distribuicao-df-e

  - #10932 - Criados métodos para impressão, visualização e exportação de EPEC que são:
             spdNFe.ImprimirEPEC, spdNFe.VisualizarEPEC e spdNFe.ExportarEPEC.
  - #10867 - Atualização do layout de impressão para melhor visualização do campo Razão Social, tanto para
             vm50 quanto para vm50a.
  - #11103 - Adaptadas as operações com estado da BAHIA que retornavam erro de SOAP.
  - #11192 - ComponenteAuditor utilizado pelo NFe foi compatibilizado com NFe 3.10.
  - #11208 - Melhorado performance dos métodos de impressão.

### Correções:
  - #11379 - Corrigido validação de xml em lote.
  - #10835 - Grupo de ISSQN é gerado somente uma vez no TX2. Problema de gerar duas vezes foi corrigido.
  - #10823 - Quando possui dois certificados com o mesmo nome, o componente utiliza o certificado que não
             esta vencido.
  - #11094 - Correção do caminho dos arquivos do Nota Segura para a pasta "fontes" para assim ser compilado
             apenas com um único path.
  - #11194 - Corrigido problema de o certificado digital não ser listado no componente quando instalado em modo local(LocalMachine).
  - #11071 - Corrigido erro na impressão do DANFE de SVC-AN onde não aparecia as tags nProt e dhRecbto
  - #10958 - Corrigindo problema ao validar xml sem assinatura localmente.
  - #11203 - Correção na validação de regras da SEFAZ em notas referenciadas.

Problemas conhecidos:
  - Não está sendo gravado corretamente no Log o erro reportado ao suporte nos canais seguros(está gravando a seguinte frase: Erro
    ao consultar o status do serviço: Forbidden (403).
  - Estão faltando alguns métodos públicos do spdNFe.pas na dll da lib, são eles: AuditarXml, ValidarLoteParaEnvio,
    ValidarTamanhoArquivoEnvio,ValidarLoteItem, ConverteXmlparaDataSet, GerarIdCCe, MontarEPEC, AssinarEPEC, EnviarEPEC.
  - Ao utilizar o validador pelo componente nfe, as notas com arquivos em extensão tx2 e rec, trás como retorno um AV.

## [5.7.13.30762]
### Correções:
  - #10681 - Corrigido a propriedade DiretorioLogErro para que os arquivos de erros sejam direcionados para a determinada pasta da propriedade.
  - #10744 - Corrigido da verificação do idlote ao assinar o EPEC, se o idlote estiver vazio ele passa como default 1
  - #10672 - Corrigido problema com validação de contrato para CNPJ nas distribuições full e full_sources ao utilizar a bpl/dcp dos mesmos.
  - #10646 - Corrigido problema que ocorria ao informar o caracter &#39; no tx2, não desescapava ao imprimir.
  - #10409 - Corrigido problema ao listar os componentes Nota Segura e Validador Client no data module do Delphi.
             Documentação TSDN - http://ciranda.me/tsdn/base-de-conhecimento/post/atualizacao-do-componente-nfe-metodo-de-uso-dos-tspdnotasegurax-e-tspdvalidadorclientx

### Novidades:
  - #10801 - Adicionado PL008e para versão VM50a, e PL006u para versão VM50.
  - #10665 - Disponibilizado método para geração do xml destinatário do evento EPEC. Para maiores informações acesse:
            http://ciranda.me/tsdn/base-de-conhecimento/post/componente-nfe-gerando-xml-destinatario-do-evento-epec

Melhorias:
  - #10266 - Foram feitas melhorias nas partes das impressões de paisagem e retrato:
            - No cabeçalho o campo data hora de autorização não estava formatado.
            - Estava mostrando o cabeçalho da fatura sem possuir valor.

  - #10651 - Atualizados os links dos servidores de Homologação e Produção.
  - #10640 - Compatibilizado componente com última versão Security black.

## [5.7.12.29286 ========================================
### Correções:
  - #10303 - Corrigido problema nos métodos ImprimirDanfe e VisualizarDanfe do componente NFe para o OCX(NFeX).
             Antes quando passava "m²" na nota ela retornava "mÂ²".
  - #10296 - Adicionado Link de nfeConsultaNFDest para todas as UF's nos arquivos .ini dos servidores
  - #10288 - Tratamento no instalador para não fechar aplicações quando instalar, nem solicitar reinicialização.
  - #10258 - Corrigido problema ao consultar chave, dentre outros métodos na versão manual 3.0(vm30).

### Novidades:
  - #10378 - Compatibilizado com a NT 2014/004.
             -O Web Service ainda não foi atualizado com os novos Schemas.-
  - #10339 - Disponibilizado para Impressão o campo do Percentual da margem de valor Adicionado do ICMS ST(ItemPercMargemValorAdiICMSST - "pMVAST_N19").
  - #10289 - Adicionado novos campos na Impressão de CCe. Campos adicionados: Número da Nota, Série, Modelo e Data de Emissão m(Mês/Ano).
  - #10445 - Atualizada as demonstrações VB6 e Delphi com evento EPEC.

## [5.7.11.28812 ========================================
### Novidades:
  - #10258 - Criado um documento apresentando os arquivos inclusos no pacote de dependencias e apresentando também os arquivos em comum entre
             os componentes NFe, NFCe e MDFe.
  - #10015 - Atualizados arquivos de esquemas, de acordo com a nova NT2013/005.
  - #10016 - Criado novos campos e atualizado os já existentes conforme exigidos pela NT2013/005.
             OBS: Confira os campos que foram alterados nesta release com as exigências da NT2013/005,
             seu TX2 e ou Datasets devem ser ajustados para gerar corretamente o xml segue abaixo a relação de como era e como deve ser a partir de agora.
             vm50a(antiga)  |vm50a(nova)    |Descrição do campo
             CNPJ_G51       |CNPJ_GA02      |CNPJ Autorizado
             CPF_G52        |CPF_GA03       |CPF Autorizado
             xPed_I30       |xPed_I60       |Numero do Pedido de Compra
             nItemPed_I31   |nItemPed_I61   |Item do Pedido de Compra
             cProdANP_L102  |cProdANP_LA02  |Codigo de produto da ANP
             pMixGN_L102a   |pMixGN_LA03    |Percentual de Gás Natural para o produto GLP
             CODIF_L103     |CODIF_LA04     |Codigo de Autorizacao / registro CODIF
             qTemp_L104     |qTemp_LA05     |Quantidade combustivel faturada a temperatura ambiente
             qBCProd_L106   |qBCProd_LA08   |BC da CIDE
             vAliqProd_L107 |vAliqProd_LA09 |Valor da aliquota da CIDE
             vCIDE_L108     |vCIDE_LA10     |Valor da CIDE
             UFCons_L120    |UFCons_LA06    |Sigla da UF de consumo
             nRECOPI_L109   |nRECOPI_LB01   |Número do RECOPI

  - #10196 - Adicionado propriedades e métodos do Nota Segura e do Auditor Fiscal existentes do componente NFe para o OCX(NFeX).
             Documentação : http://ciranda.me/tsdn/base-de-conhecimento/post/utilizando-o-nota-segura-e-o-auditor-fiscal-em-ocx-nfex
  - #9910  - Componente NFe compatbilizado com a versão Delphi XE6.
  - #10017 - Criadas as novas regras de validação exigidas pela NT2013/005.
  - #10151 - Implementado envio de EPEC(Evento prévio de emissão em contingência) conforme NT2014/001.

### Correções:
  - #10050 - Corrigido tamanho do Campo Item Descrição na impressão no modo paisagem.
  - #10084 - Corrigido problema da propriedade CaracteresRemoverAcentos não remover @ e -.
  - #10301 - Corrigido Arquivo NfeDataSetExportacao, para os campos CNPJ_E02 e IE_E17 não irem no Xml.
  - #10282 - Tratado retorno de soap envelopado de envio de evento.
  - #10165 - Adicionado grupo "UA. Tributos Devolvidos" para nfe 3.10 que não estava presente no DatasetNFe.
  - #10259 - Métodos de Envio atualizados na Demo DLL (spdNFeLib.dll).
  - #10144 - Corrigido problema durante a geração do xml quando CNPJ_G02 não era informado, estava sendo gerado com tag de fechamento dele.
  - #10201 - Tratado exceção quando é utilizado uma versão manual que não condiz com a versão esquema nas conversões do componente.
  - #10267 - Corrigido falha na geração da tag PIS E COFINS, quando se utilizava o CST_Q06 e CST_S06 com o valor '05'.
  - #10312 - Adicionado campo NVE_105a que não existia no dataset.
             Para utiliza-lo basta incluir uma nova parte dentro do incluir item podendo ter 0 à 8 NVE para cada item, exemplo:
               INCLUIRPARTE=NVE
                 NVE_105a=AB1201
               SALVARPARTE=NVE
  - #10274 - Corrigido problema na função FindDataSet da OCX NFeDataSetX utilizando C#.
  - #10456 - Corrigido problema na geração da tag "idEstrangeiro" no DataSet de exportação.

## [5.7.10.27532]
### Novidades:
  - #10046 - Criado novo Componente Nota Segura em Activex, implementado junto ao componente NFe e terá também um instalador somente para o Nota Segura.
             Sobre o Activex para compilações em outras linguagens, o NFeX por enquanto não possuirá as propriedades ComponenteNotaSegura e EntregaXML, mas vale ressaltar
             que para a próxima versão o NFeX já estará com estas propriedades, o Nota Segura possui um Activex próprio podendo ser instanciado por ele mesmo para utilizar suas
             propriedades.
  - #10022 - Adicionado Novo Componente Validador para a paleta do Componente NFe, agora o Validador Client fará parte dos Componentes que o NFe possui.
             Sobre o Validador por enquanto não estará compatibilizado em x64, apenas em x86.
             Sobre o Activex para compilações em outras linguagens, o NFeX por enquanto não possuirá a propriedade ComponenteAuditor, mas vale ressaltar que para a
             próxima versão o NFeX já estará com esta propriedade, o Validador Client possui um Activex próprio podendo ser instanciado por ele mesmo para utilizar suas propriedades.

### Correções:
  - #10135 - Atualizado base do componente (spdGov) para corrigir problemas ao carregar certificados A3.
  - #10176 - Corrigido problema ao enviar NFe em DPEC com destinatário sendo pessoa fisíca.
  - #10023 - Corrigido problema ao auditar XML com falha de esquema.
  - #9778 - Ajustado Componente para utilizar links corretos nos arquivos .ini de servidores.
            Agora ao utilizar a versão Manual 5.0a o componente utiliza todos os links 3 dos arquivos
            nfeServidoresHom.ini e nfeServidoresProd.ini.
            Ex: NfeRecepcao3=https://homologacao.nfe.fazenda.pr.gov.br/nfe/NFeAutorizacao3?wsdl

  - #9899 - Adicionado fontes dos projetos das Lib's do spdNFe na distribuição nfe_full_sources.
  - #9863 - Corrigida a impressão dos campos de número do protocolo e data e hora de autorização para notas emitidas em contingência SVC.
  - #9974 - Corrigido problema da impressão com informações adicionais do produto sobrescrevendo a descrição do mesmo no DANFE.

## [5.7.9.26225]
### Novidades:
  - #9716 - Corrigido links dos Web Services de Homologação e Produção para os seguintes estados: AM, BA, GO, MT, MS, MG, PR, PE, RS, SP, ES, e AN(Ambiente Nacional).
  - #9321 - Disponibilizado o campo EXTIPI para ser impresso no DANFE, o mesmo se encontra na seção DadosItens com o nome ItemEX_TIPI.
  - #7646 - Envio de Emails com Mensagem no Formato HTML. Basta alterar a propriedade ConteudoHtml para True e Enviar.
            Documentação: http://ciranda.me/tsdn/base-de-conhecimento/post/componente-nfe-enviando-e-mail-com-mensagem-em-html
Correção:
  - #8951 - Corrigido problema ao utilizar o caracter # na propriedade CaracteresRemoverAcentos.
  - #9382 - Caracter & imprimindo corretamente na Impressão de CCe.
  - #8852 - Corrigido erro ao cancelar instalação do componente.
  - #9658 - Corrigido problema com instalação do componente em Windows Server 2003.
  - #9388 - Corrigido problema dos métodos não ecoarem as exceções no arquivo nfe_exception.log.

## [5.7.8.25612]
### Novidades:
  - #8796 - Agora com o novo critério para seleção do certificado ao ter dois certificados da mesma empresa (Um vencido e outro não),
            é usado nas funcionalidades o certificado que não estiver vencido.
  - #8575 - Novo método de ExportarPreverDanfe, agora é possível exportar um PDF de previsão de um XML Assinado.
            Documentação:http://ciranda.me/tsdn/base-de-conhecimento/post/componente-nfe-exportando-pdf-de-previsao-do-danfe
  - #6443 - Disponibilizado os seguintes campos no .rtm: (Dados: IdentCampo, e ContCampo).
           (Itens: ItemIIvBC, ItemIIvDespAdu, ItemIIvII, ItemIIvIOF, ItemVDesc, ItemVSeg, ItemVFrete, ItemVOutro).

### Correções:
  - #9434 - Corrigido seleção de certificados com o mesmo nome, agora é resolvido o conflito de nomes e selecionado o certificado
            correto.
  - #9529 - Campos para referenciar notas foram atualizados e ajustados na nova versão manual 5.0a (NF-e 3.10).
  - #9013 - ExportarDanfe agora respeita o Cancelamento e não aceita nome do arquivo vazio.
  - #8795 - Corrigido problema na impressão do DANFE com vários itens (estava imprimindo colunas e quebrando a descrição dos itens).
  - #8793 - Adicionado parâmetro tpEmis no CancelarNFeEvento para spdNfeLib.dll, para instanciar o componente TspdNFeScan.
            Passar tpEmis = 1 para Modo Normal e tpEmis = 2 para Modo Scan.
            Ex: CancelarNFeEvento(aNotaID: PChar; aNumProtocolo: PChar; aJustificativa:PChar; aDataHoraEvento:PChar; aFusoHorario:PChar; aConfigFilePath:PChar; aSequenciaEvento: integer; tpEmis : Integer): PWideChar;

                      Retorno := CancelarNFeEvento(PAnsiChar(Chave),
                                 pAnsiChar(Protocolo),
                                 PAnsichar(Justificativa),
                                 PAnsichar(DataHora),
                                 PAnsichar(Fuso),
                                 PChar(NFeConfig), 1, 2);

## [5.7.7.24853]
### Novidades:
  - #8934 - Adicionando função de Gerar o ID da CCe no componente.
            Documentação: http://ciranda.me/tsdn/base-de-conhecimento/post/componente-nfe-gerando-o-id-da-cce-carta-de-correcao-eletronica

### Correções:
  - #9339 - Alterado modo de instanciar a base do componente (spdGov) para somente quando for usa-la. Isso garante que o
            componente possa ser dropado sem possuir a spdGovX2.ocx na máquina.
  - #9242 - Corrigido campo CST na impressão, exportação e visualização de NF-e para versão Manual 5.0 e 5.0a.
  - #8927 - Para utilizar uma conta de email que não realiza a autenticação por SSL, deixe a propriedade Autenticação (prevista na EmailSettings) como FALSE.
            Nesse cenário, identificamos também e corrigimos um problema de inválidar e-mails que possuem subdominios com números. Ex: abc@123a.com.br
  - #9267 - Disponibilizado o campo ModeloRTMCCe para ser configurado via .INI

## [5.7.6.24327]
### Novidades:
  - #8874 - Compatibilizado o Componente NFe com a Nota Tecnica 2013/007 Contingência SVC - SEFAZ VIRTUAL DE CONTINGÊNCIA.
            Foi criado uma nova propriedade chamada "ModoOperacao" que suporte os valores moNormal, moSVCAN ou moSVCRS
            (também em formato string 'Normal', 'SVCAN' ou 'SVCRS'). Este método basicamente define o modo que o componente
            irá trabalhar, se Normal ou se na contingência SVC. Existem dois servidores virtuais SVC:
                                  SVC-AN - SEFAZ Virtual do Ambiente Nacional;
                                  SVC-RS - SEFAZ Virtual do Rio Grande do Sul.

            Para efetuar o envio de notas em SVC basta apenas três simples passos:
                                  - Alterar a propriedade Modo Operação para o respectivo servidor virtual;
                                  - Alterar o campo tpEmis_B22 do arquivo TX2 ou DataSet para os valores
                                    "6" (SVC-AN) ou "7" (SVC-RS); e
                                  - Preencher os campos dhCont_B28 e xJust_B29.

            -- O ambiente SVC-RS aceita tanto a versão 2.00 quanto a 3.10 de NFe, já o ambiente SVC-AN aceita somente
               a versão 2.00.

            Documentação: http://ciranda.me/tsdn/base-de-conhecimento/post/componente-nfe-contingencia-svc

  - #8925 - Corrigido problema de carregar certificados com a propriedade CN (CommonName) vazia e adicionado verificação
            de certificados com o mesmo nome.

  - #8668 - Compatibilizado componente NFe com o delphi XE5 versão 32 e 64 bits.

### Correções:
  - #9266 - Corrigido problema do saveconfig ao passar o caminho e nome do arquivo.
  - #9218 - Correções dos seguintes casos:
            - Problema ao gerar nota usando o valor 99 no campo CST_Q06.
            - Problema na leitura do log quando acontece duplicidade de NF-e.
  - #9281 - Corrigido problema de validação quando o campo "dSaintEnt_B10" estava sem ser preenchido.
  - #9326 - Correção do NameSpace para CC-e do estado de GO.
  - #9325 - Correção do problema de impressão de Danfe usando acentuação em versões do Delphi que não são UNICODE.
  - #9337 - Correção no envio de CL-e na versão FULL.
  - #9281 - Correção do problema ao validar Data utilizando NF-e 3.10.

## [5.7.5.23643]
### Novidades:
 NT2013.005 - NF-e 3.10
  - #8213 - Componente compatibilizado com novo leiaute.
  - #8211 - Criado novo método para envio de NF no modo Síncrono: EnviarNFSincrono(aNumLote, aLoteNota, aCompactado);
              onde:
                  - aNumLote: Número do Lote de envio;
                  - aLoteNota: Lote XML para envio síncrono. No envio síncrono só é permitido o envio de somente uma nota por lote;
                  - aCompactado: Define se o envio da NF deve ser compactada ou não (nova regra da NT2013.005).

  - #8215 - Adaptado o envio de NF (EnviarNF) com a mensagem compactada no padrão GZip convertido para Base64 (nova regra da NT2013.005).
            A chamada do método ficou da seguinte maneira: EnviarNF(aNumLote, aLoteNotas, aCompactado);

            Onde o parâmetro aCompactado possui como valor padrão "FALSE", não interferindo assim nas chamadas deste método já existentes
            no formato BPL. Porém em OCX não é possível definir um valor padrão para o método, sendo necessário percorrer manualmente o código
            adicionando um valor para este novo parâmetro (true ou false).

  - #8216 - Adaptado o retorno do método de envio Assincrono de NFe conforme NT2013.005.

  - #8217 - Adaptado a versão dos layouts das mensagens utilizadas para comunicação. A versão mudou de 2.00 para 3.10 conforme NT2013.005.

  - #8214 - Adicionado novas regras de validação e alterado conforme NT2013.005.

  - #8245 - Para a compatibilização do componente NFe com a versão 3.10, foi criado uma nova Versão Manual para controle dos esquemas e templates, chamada
            de vm50a (5.0a) compatível com a pl_008a.
            Outra alteração importante na versão 3.10 é o nome e formato dos campos Data de Emissão do Documento Fiscal e Data/Hora de Saída ou de Entrada
            da Mercadoria. A data de emissão, passou de dEmi para dhEmi e a Data de Saída passou de dSaiEnt e hSaiEnt para somente dhSaiEnt e o
            formato desses campos passou de AAAA-MM-DD (por exemplo 2013-12-01) para AAAA-MM-DDThh:mm:ssTZD (exemplo: 2013-12-01T10:10:10-03:00).

  - #7873 - Disponibilizados os campos (nome do campo no .rtm): xPed_ZB03 (ItemPedido), vII_W11 (VII),
            CRT_C21 (emitCRT) e CMT_J13 (CMT) para serem adicionados no DANFE.
            Alterado o DANFE para suportar 9 dígitos no campos Quantidade do Item.
  - #8406 - Retirando cabeçalho Soap do retorno de CCe para GO.
            O servidor de Goiás retorna o xml com um namespace diferente do esperado, portanto,
            foi criada uma configuração nos arquivos .ini de servidores para ser adicionado qual namespace
            será retornado pelo servidor, desta forma, o componente saberá tratar o XML e retirar o cabeçalho SOAP.
            Neste caso a propriedade ficou assim:
              Na seção de Goiás no arquivo ini de servidores foi adicionada a seguinte linha.
              TargetNamespaceCCe=http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcaoEvento
  - #7530 - Adicionada propriedade para geração dos Arquivos de exception e Arquivos Temporários
  - #5260 - Compatibilizado o componente com plataforma 64 bits
            Obs.
            Não é possível dropar as versões x64 em forms e afins. Ou seja, para utilizá-los basta instanciar as respectivas classes.
            dcu's x86 estão em: \spdNFCe\Fontes\
            dcu's x64 estão em: \spdNFCe\Fontes_64\
            dll e ocx x32 estão em: \windows\sysWOW64\
            dll e ocx x64 estão em: \windows\system32\

  - #8555 - Alterado método listar certificados para retornar todos os dados do certificado.
            Mesmo alterando a forma de listar o certificado, o componente aceita a configuração da propriedade nomecertificado
            das 3 formas que ja foram listados até hoje. Segue exemplo:
              - CN=TECNOSPEED TECNOLOGIA DE INFORMACAO LTDA:08187168000160, OU=AR SERASA, OU=RFB e-CNPJ A1, OU=Secretaria da Receita Federal do Brasil - RFB, O=ICP-Brasil, L=MARINGA, S=PR, C=BR
              - TECNOSPEED TECNOLOGIA DE INFORMACAO LTDA:08187168000160
              - CN=TECNOSPEED TECNOLOGIA DE INFORMACAO LTDA:08187168000160, OU=AR SERASA, O=ICP-Brasil, C=BR, S=PR, L=MARINGA, E=
  - #7290 - Adicionado paramêtro aExportacao (boolean) no método ConverterLoteParaXML para utilizar
       automaticamente o arquivo NFeDataSets_Exportacao.xml na conversão. Na DLL (NFeX.dll) foi adicionado
       o método ConverterLoteParaXMLExportacao com os mesmo paramêtros do ConverterLoteParaXML mais o
       paramêtro aExportacao.
  - #8663 - Disponibilizado o método UltimoLogCancelamento para captura dos Logs de Cancelamento.
  - #9168 - Alterado a interface do método ConverteXmlParaDatasetX, foi adicionado um novo parâmetro para a versão esquema utilizada na conversão.
            Alteração necessária para o uso da NF-e 3.10 e correta conversão de esquemas anteriores a pl006s para versão NF-e 2.00
            Agora o método possui a seguinte assinatura:
              procedure ConverterXmlParaDataSet(const aConteudoXml: WideString; const aVersaoEsquema: WideString)
            Onde: aConteudoXml é o Xml de NF-e no qual se deseja a conversão
                  aVersaoEsquema é a versão do esquema do manual do qual se deseja a conversão
            Obs: Configurar corretamente a versão manual vm50 e anteriores para NF-e 2.00 e vm50a para NF-e 3.10

### Correções:
  - #9069 - Correção das letras acentuadas na impressão do DANFE.
  - #8398 - Corrigido problema de não poder imprimir lote de notas com mais de 10 notas.
  - #8102 - Corrigido o instalador de dependências para não criar as pastas da GOV no c:\
  - #7970 - Corrigido modelo de impressão para CCe para quebrar linhas com pelo delimitador configurado no componente.
  - #6935 - Corrigido problema ao imprimir XML com caracteres especiais (<, >, &, " e ')
  - #8564 - Corrigido o problema de criação da pasta de Xml Destinatário de Evento automaticamente.
  - #8652 - Corrigido o problema de que impedia a captura dos dados do log de cancelamento por evento, utilizando o evento OnLog.
  -       - Corrigido método ConverteXmlparaDataSet, para gerar corretamente os campos de duplicatas.
  - #8671 - Corrigido problema ao usar o componente com certificado que utiliza pincode.
  - #8853 - Corrigido problema com instaladores de dependências para se comportarem de acordo com suas respectivas distribuições.
  - #8979 - Corrigido problema com retorno do servidor de eventos/produção para o estado de GO.
  - #9168 - Corrigido problema no método ConverteXmlParaDatasetX no tratamento da versão manual e esquema.
  - #9124 - Ajustado componente para funcionar com CSOSN na emissão de NF-e.
  - #9218 - Correções dos seguintes casos:
             - Prever danfe com caracter especial "&"
             - Encode do XmlDestinatario do CCe para versões do Delphi menores que 2009
             - Importação da unit spdCLe
             - Correção no Caminho relativo na MDe (Manifestação destinatário) e na importação do XML e ini de servidores de produção.
             - Correção do caminho da pasta MDe.
             - Correção do uso das regras GN28_2, GN17, GE10_2 e GE14 de validação usando vm50.

## [4.6.4.20818]
Obs: A versão 4.6.1.X, 4.6.2.X, 4.6.3.X do componente foi liberado para uso interno da Tecnospeed.

### Novidades:
  - #7882 - Adicionado propriedade ImprimirUnidadeTributada que possibilita discriminar unidade,
    quantidade e valor comercial de tributado na DANFe

### Correções:
  - #8369 - Corrigida problema de não chamar evento onlog para envio de CCE

## [4.6.50.20075]
### Correções:
  - #6937 - Corrigida função CaracteresRemoverAcentos.

### Novidades:
  - #8080 - Adaptando componente com novo esquema pl_006s, campos nFCI_I70.
  - #8081 - Adicionado novo valor para o campo orig_N11 conforme a nova NT 2013.006
  - #8079 - Atualizado a regra GN16 (retirado exceção 2) conforme a nova NT 2013.006
  - #7285 - Compatibilizado componente com Delphi XE4.
  - #7915 - Adicionado propriedades para configurar certificado por caminho do .pfx
  - #7871 - Adicionado campos de valor de pis e cofins para os dados de items no rtm de paisagem da vm 50

## [4.6.49.19333]
### Correções:
  - #7481 - Corrigido a impressão de XML em lote.
  - #7034 - Corrigido problema de impressão com a impressora Matricial LX300 setada como padrão.
  - #7655 - Corrigido problema com instalação do componente spdNFe via -.dpk para Delphi XE.
            Documentação: http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-nf-e-instalando-o-componente-nf-e-manualmente

### Novidades:
  - #7364 - Alterado instaladores para chamar o instalador da GOV 1.6
  - #7284 - Implementado geração do Xml Destinatário de Manifestação.
  - #6245 - Implementado método de impressão de xmls contidos em uma determinada pasta.
  - #7643 - Problema com o método listar certificados em ocx foi corrigido.

## [4.6.47.18619]
### Novidades:
  - #7127 - Substituída a spdGOV 1.5 para a versão 1.6
  - #7122 - Adicionado suporte para o Delphi XE3 32bits

  Problemas conhecidos:
  - Impressão com caracteres acentuados.

## [4.5.46.17951]
### Novidades:
  - #7094 - Componente NFe compatibilizado com novos esquemas XML do Pacote de Liberação No. 6r.
  - #7095 - Adicionado novos campos da NT2013/003 no NFeDataSets.
  - #7096 - Disponibilizado novos campos da NT2013/003 para edição do .rtm do Danfe.
  - #7098 - Adicionado validação de regras da NT2013/003.
  - #7097 - Alterado layout dos arquivos -.rtm. Afim de incorporar ao DANFE, os novos campos contidos na NT2013/003.
  - #7168 - Implementado exceção 6 à regra GN16 e alterado exceção 1 da mesma
  - #7005 - Adicionadas as propriedades ImprimirVolume e ImprimirDuplicatas no NFeX

## [4.5.45.17625]
### Correções:
  - #7010 - Corrigido instalador de dependências, onde não copiava as DLL's CCeRB.dll e CCeRBUnicode.dll.

### Novidades:
  - #5432 - Anexando a impressão da CCe ao enviar e-mail se a opção AnexarDanfePDF estiver ativada.
  - #5772 - Adicionado parâmetro opcional aIdLote para o método CancelarNFeEvento onde é passado o ID do lote da nota a ser cancelada.
      Obs.: Para a biblioteca spdNFELib.dll e para o ActiveX NFeX.dll foi criado um novo método chamado CancelarNFeEventoIdLote.
  - #7009 - Alterado os links dos servidores de produção e homologação do Rio Grande do Norte [RN].
  - #7011 - Compatibilizado o XML Destinatário do cancelamento por evento de acordo com o Esquema da SEFAZ.

## [4.5.44.16872]
### Correções:
  - #5805 - Retirado espaços e tabulações do arquivo "envio.soap" de cada estado, pois apresentava problemas no cancelamento por evento.
  - #6244 - Retirada a criação automatica da pasta XMLDestinatário na raiz do aplicativo.
  - #6055 - Corrigido problema com a validação do código do município Bom Princípio do Piauí.
  - #6243 - Corrigido a linguagem do Report Builder para Português(Brasil).
  - #6056 - Corrigido um problema no componente que causava travamento da aplicação quando o método de imprimir era usado com um XML contendo
            espaços extras dentro da tag XML
  - #5679 - Corrigida Regra GN17 para não ser validada quando nota for de ajuste(finNFe = 3)

### Novidades:
  - #6476 - Adicionado paramêtro aCOrgao para forçar os métodos EnviarManifestacaoDestinatario e DownloadNFe enviar dados para ambiente Nacional.
  - #6140 - Adicionado campo CPFCNPJDest no DataSet de impressão de CCe.
  - #6376 - Acrescentadas as exceções 4 e 5 para a regra de validação GN16 (NT2012/005).
  - #5425 - Os objetos spdNFeDPECX e spdNFeSCAN consumidos da NFeX.dll agora são depuráveis em Visual Basic 6.
  - #4207 - Método EnviarCCeDestinatario passa a aceitar tanto o caminho do Xml Destinatário quanto apenas a chave da nota no parâmetro aCCe.
  - #6509 - Adicionado capacidade de fazer consulta de cadastro para o servidor de uma UF diferente da do solicitante

  - #5681 - Incorporado o Componente CCe ao Componente NFe.
    - Novos métodos: EnviarCCe, GerarXMLCCeDestinatario, EnviarCCeDestinatario, ImprimirCCe, VisualizarCCe, EditarModeloCCe, ExportarCCe.
    - Como utilizar os métodos do CCe:
        http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-nfe-enviando-cce-carta-de-correcao-eletronica
        http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-nfe-exportando-imprimindo-visualizando-e-editando-modelo-de-cce-carta-de-correcao-eletronica
      Obs.: Agora o método EnviarCCe monta o XML, assina, envia ao WebService e gera o XML destinatário, não sendo mais necessário os antigos métodos.
  - #6477 - Adicionado novos campos de PIS e COFINS no DataSet de impressão do DANFE.
    (PIS: CST_Q06,qBCProd_Q10,vAliqProd_Q11    COFINS: CST_S06, qBCProd_S09, vAliqProd_S10)

  - #5682 - Componente CLe incorporado no instalador do componente NFe (Incluindo ActiveX e Lib).
    - Métodos do CLe: EnviarCLe, MontarXmlCLe, ImprimirCLe, VisualizarCLe, EditarModeloCLe, ExportarCLe.
    - Como utilizar os métodos do CLe:
        http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-cle-enviando-cle-capa-de-lote-eletronica
        http://tsdn.tecnospeed.com.br/base-de-conhecimento/post/componente-cle-imprimindo-exportando-visualizando-e-editando-modelo-cle

## [4.5.43.16295]
### Correções:
  - #6412 - Corrigido o problema ao gerar xml destinatário de um cancelamento por evento que tinha o cStat igual a 155.

### Novidades:
  - #6199 - Adicionada a exceção 3 da regra de validação GN16.
  - #4803 - Adicionado a propriedade CaracteresRemoverAcentos para escolher quais caracteres o componente deve retirar o acento.

## [4.5.42.15651]
### Correções:
  - #5678 - Corrigido problema na regra de validação GB09.1 por meio de emissão no modo SCAN (Exibia rejeição de Data de Emissão muito atrasada).
  - #5424 - Corrigido problema na regra de validação GN12 para notas de exportação no regime Simples Nacional (A regra recusava CSOSN 300).
  - #5423 - Corrigido problema na regra de validação GW04 (Estava totalizando ICMS para os CSTS 40,41 e 50 em alguns casos).

### Novidades:
  - #4302 - Implementado o método RetornaNomeArquivoConfig para evitar erro de abstração.
  - #5311 - Implementado novo método na interface da Lib, GetUltimoErro, que retorna o nome e a classe da última exceção.
  - #5696 - Disponibilizados novos campos na edição de DANFEs (arquivo RTM): País do Emitente, Fantasia do Emitente,
      País do Destinatário, Email do Destinatário e Justificativa de contingência.
  - #4022 - Adicionado método ConverterXmlParaDataSet na dll NFeDataSetX.dll
  - #5516 - Disponibilizados campos pertencentes às notas referenciadas na edição de DANFEs (arquivo RTM).

## [4.5.41.15213]
### Novidades:
  - #5749 - Componente NFe compatibilizado com novos esquemas XML do Pacote de Liberação No. 6q.
  - #5750 - Implementado nova regra de validação GN16 (NT2012/005).
  - #5793 - Disponibilizado o método DownloadNFe para todos os estados.

## [4.5.40.14526]
### Novidades:
  - #5599 - Componente NFe compatibilizado com novos esquemas XML do Pacote de Liberação No. 6p.
  - #5620 - Implementado o Cancelamento de NFe por Evento em SCAN.

## [4.5.39.14038]
### Novidades:
  - #5197 - Implementado o Envio de Email de Xml de Cancelamento por Evento (método EnviarNotaCanceladaDestinatario).
  - #5261 - Adicionado os templates (evento_downloadNFe.soap, evento_downloadNFe.xml e resposta_eventoDownloadNFe.xml) para todas as UFs.
  - #5250 - O método GerarXMLCancelamentoDestinatario foi adaptado para também gerar XML destinatário de cancelamento por evento.
  - #5121 - Compatível com esquemas XML NF-e Manifestação Destinatário v1.02.
  - #5337 - Disponibilizado os projetos ActiveX NFeX e spdMalX.

## [4.5.38.13615]

### Correções:
  - #5198 - Corrigido problema de certificado não encontrado para cancelamento por evento.

### Novidades:
  - #5124 - Atualizados os templates para consulta de nf-e para versão manual 5.0.
      Obs.: A Validação de Equema para Consultas de NF-e foi temporariamente retirada pois os Esquemas fornecidos
    pela SEFAZ não estão compatíveis com a Nota Técnica referente.

## [3.5.37.12754]

### Novidades:
  - #4594 - Acrescentados novos status para autorização e cancelamento de NF-e fora de prazo (150 e 151) na verificação de respostas da SEFAZ.
  - #4595 - Acrescentadas as novas regras de validação da NT 2012/003.

## [3.5.36.12440]

### Correções:
  - #4763 - Corrigido problema do evento ao setar as propriedades via código.
  - #4764 - Corrigido problema de não gerar XML destinatário ao cancelar por evento.
  - #4734 - Corrigido problema ao montar o XML DPEC com nota de produto rural referenciada.
  - #4637 - Corrigido problema no método saveConfig que não estava obedecendo o diretório passado como parâmetro.

### Novidades:
  - #4851 - Publicado a propriedade DiretorioDownloads no ActiveX.

## [3.5.35.12365 =======================================

### Correções:
  - #3978 - Corrigido problema na compilação de packages derivados do spdNFe.
  - #4636 - Corrigido problema de o Cancelamento por evento não gerar XML destinatário.
  - #4635 - Eventos do componente NFe não funcionam quando carrega propriedades via código.

### Novidades:
  - #4324 - Liberado os códigos do spdEmailX na instalação Full Source.

## [3.5.35.x]
### Correções:
  - #3787 - Corrigida a geração do XML de notas denegadas nos métodos ConsultarRecibo e ConsultarNFe.
  - #3402 - Correção do problema ao setar a propriedade PINCODE via código.
  - #2469 - Compatível com Delphi XE2 32Bits

## [3.5.34.x]
### Correções:
  - #3594 - Corrigido a geração do XML de notas denegadas(Metódo spdNFe.GerarXMLEnvioDestinatario)
  - #3654 - Corrigido problema ao carregar Esquemas/Templates dos Eventos.

## [3.5.33.x]
### Novidades:
  - #3007 - Adicionado o serviço de download de NF da NT 2012/002, para que fazer o download de uma determinada nota.
  - #3392 - Adicionado nas Demos Delphi as funcionalidades dos eventos do destinatário ( manifestação, consulta e download) e cancelamento por evento.
  - #3393 - Adicionado na Demo DLL as funcionalidades dos eventos do destinatário ( manifestação, consulta e download) e cancelamento por evento.
  - #3394 - Adicionado na Demo VB as funcionalidades dos eventos do destinatário ( manifestação, consulta e download) e cancelamento por evento.
  - #3395 - Adicionado na Demo C# as funcionalidades dos eventos do destinatário ( manifestação, consulta e download) e cancelamento por evento.
  - #3398 - Adicionado a implementação de cancelamento por evento no componente NFe.
  - #3445 - Implementado compatibilidade do componente NFe e CCe com a classe spdEventos.

 ### Correções:
  - #2909 - Corrigido função VirgulaDecimal no spdNFeDanfe.
  - #3482 - Corrigido Incompatibilidade entre o componente NFe e componete CCe.

## [3.5.32.x]
### Novidades:
  - #3005 - Criado Evento de Manifestação do Destinatário(EnviarManifestacaoDestinatario)
      - #3006 - Criado Evento de Consulta da Relação de Documentos Destinados(ConsultarNFDestinadas)

  obs.: Funcionalidades novas criadas conforme NT2012-002.
## [3.5.31.x]
 ### Correções:
  - #2906 - Corrigido problemas de "classe não registrada" no instalador de dependências do método
    EnviarNotaCanceladaDestinatario.

## [3.5.30.x]
 ### Novidades:
  - #2520 - Atualizadas Versões do Produto nos arquivos DLL.
        - #2521 - Certificado "A3 Pronova ACOS5" adicionado no arquivo Certificado.txt.
        - #2642 - Melhorado controle Trial para que o componente expire após o tempo de utilização.

 ### Correções:
  - #2523 - Corrigido Access Violation ao executar algum método sem informar o caminho correto
                  dos servidores na demonstração em C#.
        - #2941 - Corrigida visualização de DANFE Simplificado em modo SCAN.

## [3.5.29.x]
 ### Novidades:
  - #2832 - Adicionada propriedade "DanfeSimplificado" para o usuário escolher se deseja
                    fazer impressão usando o Modelo RTM do mesmo.
                  Adicionado "DanfeSettings.ModeloDanfeSimplificado" para configurar o caminho
                    do Modelo RTM Danfe Simplificado.
                  Obs.: Em caso de uso do Componente CCe, CLe junto com o NFe no mesmo computador
                    o NFe deve ser instalado por primeiro.

## [3.5.28.x]
 ### Novidades:
  - #712 - Criado recurso para importar arquivos XML para DataSet (Funciona somente em Delphi 7 até Delphi XE).

 ### Correções:
  - #2633 - Correção do problema da consulta da Data de Vencimento do Certificado na dll.
  - #2611 - Correção de problema ao gerar DANFE no Windows 7 (Campo endereço do Emitente era cortado).

## [3.5.27.x]
 ### Novidades:
  - #2653 - Implementado Danfe simplificado em retrato especificado pela NT 2012-001.

 ### Correções:
  - #2515 - Correção da Versão Trial do NFe não instalar no Delphi XE.
  - #2525 - Corrigido problema da Rejeição 528 ao gerar xml de uma nota complementar
  - #2610 - Correção do problema na validação de regra de negócio "hSaiEnt"
        - #2608 - Correção do problema geração dos campos Xcampo_z08 e xTexto_z09 do Fisco

## [3.5.26.x]
 ### Correções:
  - #2454 - Corrigido problema de compatibilidade dos componentes spdNFe e spdCCe.

## [3.5.25.x]
 ### Correções:
  - #2203 - Corrigido erro na validação do campo dSaiEnt_B10 quando está vazio

## [3.5.24.x]
 ### Novidades:
  - #1826 - Integração com novo componente License ActiveX
  - #1583 - Integração com novo componente spdMail ActiveX
  - #1308 - Criado documentação sobre dependências do NFe
  - #1987 - Parametrizado impressão de Volumes no DANFE

 ### Correções:
  - #1102 - Corrigido problema de LoadConfig no DPEC em C#

## [3.5.23.x]
 ### Novidades:
  - #1096 - Melhoria na mensagem de validação do XML
  - #1570 - Criado verificação do código EAN pelo componente NFe
  - #1738 - A impressão dos dados de Volume no DANFE, quando for mais de um, passa a ser nas
      informações complementares

 ### Correções:
  - #1587 - Corrigido bloqueio de licença
  - #1639 - Corrigido visualização do DANFE (NFe Suframa)
  - #1643 - Corrigido visualização da consulta da Data de Vencimento do Certificado na versão DLL

## [3.5.22.x]
 ### Novidades:
  - Atualizado versão dos esquemas para PL_006j-Sem Âncora.

## [3.5.21.x]
 ### Correções:
  - #800 - Corrigido problemas na impressão de DANFE com indPag_B05
  - #921 - Corrigido problemas com Scape onde aparecia o caracter ao invés do código Parser no XML

 ### Novidades:
  - #1288 - A impressão de Volumes (transportadora), quando for mais que um item é impresso
      nas informações complementares
  - #1607, #1609 - Atualizado schemas, regras de negócio e regras de validações para atender a
    NT2011-005 (pl_006j)

## [3.5.20.x]
 ### Correções:
  - #1300 - Correção no método PreverDanfe em DPEC
  - #1514 - Correção na visualização de Danfe com muitas duplicatas

## [3.5.19.x]
 ### Correções:
  - #1560 - Correção ao setar a pl_006i em OCX
  - #1513 - Atualizado arquivos nfeServidoresHom.ini e nfeServidoresProd.ini com os endereços
      dos estados que fazem consulta de cadastro
  - #1479 - Corrigido exportação do Danfe em lote
  - #1478 - Corrigido problema de não permitir a emissão de notas após retornar uma rejeição de
      campo obrigatório

 ### Novidades:
  - #718  - Publicada a Função GetVencimentoCertificado na DLL
  - #1475 - Alterado mensagem do Danfe para "Continuação das Informações Complementares"

## [3.5.18.x]
 ### Novidades:
  - #1356, #1359, #1357, #1361, #1360 - Adequação do Componente NFe a Nota Técnica 2011.004

 ### Correções:
  - #1293 - Correção do campo CNPJ e UF da tag resNFe, que passam a ser do destinatário da nota.
      Correção do campo vICMS que passa a ser do total de ICMS da nota.

## [3.5.17.x]
 ### Novidades:
  - #1200 - Aceita notas referenciadas que não sejam do emitente
  - #1203 - Verifica a existência do diretório XMLDestinatario antes de gravar algum arquivo no mesmo

 ### Correções:
  - #1213 - Correção na quebra de informações complementares do DANFE
  - #1252 - Correção nos métodos MaxCol e MaxRow

## [3.5.16.x]

 ### Novidades:

  - #622 - Compatível com Delphi XE
  - #1038 - Disponibilizado o log de situação em ActiveX através da propriedade UltimoLogConsRecibo

 ### Correções:
  - #1014 - Corrigido problema ao gerar log de cancelamento
  - #968 - Correção na codificação de XML no padrão UTF-8

## [2.5.15.x]

 Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.5

 ### Correções:

   - #795, ID HelpDesk #1888 - Corrigido problema com o scape &quot (não estava sendo substituido pelo caracater ").


## [2.5.14.x]

 ### Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.5

 ### Novidade:

  - #536 - Implementados novos modelos de DANFE, para obter comportamento igual ao emissor do SEFAZ gratuito. Onde
     Conforme o conteúdo do campo indPag_B05 é impresso "A prazo" ou "A vista".
     (Os arquivos RTM não foram alterados,caso o cliente queira utilizar essa implementação, deverá solicitá-la à
     equipe de suporte técnico).

 ### Correções:
 
   #### Clientes:

      - #537 - Corrigido problema ao gerar xml com vários lotes de medicamentos para o mesmo ítem.

   #### Equipe Tecnospeed:

       - #585 - Correção na visualização de algumas notas, com atributo ID e Versão invertidos.


## [2.5.13.x]

 Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.5

 ### Correções:

    #### Clientes:

  - #482 - Tratada a Mensagem quando campo dSaiEnt_B10 não era preenchido.

  - #481 - Corrigido erro de chave inválida quando ValidaRegraNegocio ativo para notas referenciadas.

  - #434 - Agora o conteúdo do campo infAdFisco_Z02 está sendo impresso junto ao campo infCpl_Z03 no DANFE.

  - #354 - Campo CST estava sendo cortado ao imprimir conteúdo do CSOSN.

  - #429 - Corrigido problema de conflitos entre NFe e NFSe durante a impressão (Danfe,RPS e NFSe).

 ### Mudanças:

    #### Clientes: Componente atendendo a nova NT 2011/002 referente a dados padrão do destinatário (CNPJ, Razão Social,
    IE) para envio de notas em Homologação.

 ### Arquivos afetados:

    - Demonstrações foram alteradas para atender a NT 2011/002
    - Para as correções dos tickets #434 e #354 foram alterados todos os arquivos .rtm da pasta Templates\vm40\Danfe
      (Retrato.rtm, RetratoMedicamento.rtm, RetratoVeicNovos.rtm, Paisagem.rtm, PaisagemMedicamento.rtm).

## [2.5.12.x]

 Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.5

 ### Correções:

    #### Clientes:

  - #367 - Corrigido problema na regra GN17 do método ExpressaoDeValidacao.

 ### Mudanças:

    #### Clientes:

        - #355 - Foi gerado um novo XML Dicionário (nfeDataSets_Exportacao.xml) na pasta Templates\vm40\Conversor
           para atender os clientes que emitem NFe de Exportação.

        - #378 - Adicionado um método para consulta de cadastro nos Web Services 2.0, acessado por
          spdNfe.consultaCadastro(const aDocumento : String; aTpDocumento : String = 'CNPJ'; aUF : String = '');

 #### Arquivos afetados:

    - Templates dos Estados

## [2.5.11.x]

 ### Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.5

 ### Correções:

    ##### Clientes:

        - [386] #3002 - Ao utilizar o método ConvertetLoteParaXML através do NFeX, o mesmo apresentava
                        a mensagem "Não foi possível converter a Linha: [0] teste.tx2Erro: Campo  não
                        encontrado", devido a não publicação do parametro VersaoEsquema.

        - #1778 - Problemas ao utilizar o componente NFe num cenário de Proxy (fedora) com autenticação.


    #### Equipe Tecnospeed:

        - #1708 - Após finalizar a instalação do componente, caso o mesmo não tenha leitor de PDF
                  instalado, o instalador não apresenta mais a mensagem de erro.

        - #3020 - Publicadas as propriedades: TimeOUt, EmailCC, EmailCCo no NFeX

        - #3041 - Refatorada Demo nova C#.

 ### Mudanças:

    #### Sugeridas por Clientes:

          [199] #2236 - Publicado campo Logradouro (sem número concatenado) para Emitente e Destinatario
          na danfe.

          [253] #2282 - Padronizado parametros para as funções de GerarXMlEnvioDestinatario e
                        GerarXmlCancelamentoDestinatario, podendo agora em qualquer um dos mesmo passar
                        tanto o nome dos arquivos de log quanto seus conteúdos.

### Equipe Tecnospeed:

       * #2643 - Criado método ValidarArquivoXmlDestinatario para Checar a integridade do arquivo
                 XMLDestinatario, onde são realizadas verificações de:
                 - Validade da Assinatura, baseada no XmlEnviado
                 - Checagem da tag DigVal presente nos logs concatenados
                 - Aplicação do XSD para validar esquema

        * #3039 - Removidos os RTMs de Danfe referentes a Impressora Matricial do instalador, porém, estarão
                 disponíveis para download no fórum.


### Arquivos afetados:

    - Templates dos Estados
    - Modelos de Danfe
    - NfeDataSet.xml

## [2.4.10.x]

 ### Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.4
         - CTe  - 1.4.11.x (Conhecimento de Transporte Eletronico)
         - NFSe - 1.4.17.x (NOta Fiscal de Serviço Eletronica)

 ### Correções:

    #### Clientes:

        - [256] #2325 - Caso a nota seja de um modelo de XML 2.0, o componente concatenará a frase
                        de contingência padrão configurada no componente com a justificativa definida
                        na tag xJust do XML.
        - [292] #2547 - Implementada regra GN17, responsável pela validação do Valor do ICMS no item


        - [304] #2573 - Erro ao consultar NF no ambiente 3.0:
                        EspdNFeXmlDestinatario with message 'NFe Id: XXXXX não encontrada no Log : XXX
                        POis o componente procurava a mesma tag (protNFe) para montar o XmlDestinatario,
                        tanto nos casos de consulta pela chave ou por numero de recibo. Porém a consulta
                        pela chave da nota retorna a tag (infProt).


        - [298, 299] #2490 - Retirada obrigatoriedade do campo CEP_E13 e colocada obrigatoriedade no campo
                       NCM para versão 4.0.



    #### Equipe de Testes (Tecnospeed):

        - #2434 - Correções identificadas na conversão de Arquivos TXT padrão do Sefaz (REC)
        - #2466 - Aumento no espaço para impressão de Frase de Contingência
        - #2537 #2538 #2539 - Atualização dos endereços de servidores tanto de Homologação quanto
                  de Produção.
        - #2677 - Atualizados os templates para o estado de GO devido a implementação das regras de
                  namespace e espaços.
        - #2597 - O servidor do MS passou a validar espaços na tag SignatureValue não aplicada por nenhum
                  outro estado até o momento. Decorrência disso, a rejeição: 588.


 ### Mudanças:

    #### Comportamento:

        - #2376 #2375 - Implementada validação que confronta o dígito validador de assinatura no xml
                        de envio com o xml de processamento, para evitar possível geração de xml
                        destinatário inválido.


    #### Arquivos:
         - nfeServidoresHom.ini
         - nfeServidoresProd.ini
         - Templates\Danfe\-
         - Templates\Conversor\-
         - Templates\ESTADO\envioxml_dest.xml


## [2.4.9.x]

 Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.4
         - CTe  - 1.4.10.x (Conhecimento de Transporte Eletronico)
         - NFSe - 1.4.15.x (NOta Fiscal de Serviço Eletronica)

 ### Correções:

    ##### Clientes:

        - [228] #2220 - Erro ao gerar XMlDestinatário (versão 2.0) utilizando o método ConsultarNF.
        - [233] #2260 - Problema ao utilizar o arquivo nfeConfig.ini numa pasta diferente da pasta
                        do executável

    ##### Equipe de Testes (Tecnospeed):

        - #2173,#2175 - Removidos caracteres de quebra de linha nos templates pedido_enviarnfe.soap e
                        pedido_consultadpecnfe.soap

 Mudanças:

       - Atualizados os arquivos nfeServidoresHom.ini e NfeServidoresProd.ini com os novos endereços
         dos servidores de Homologação/Produção do estado de PE.


## [2.4.8.x]

 Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.4
         - CTe  - 1.4.10.x (Conhecimento de Transporte Eletronico)
         - NFSe - 1.4.15.x (NOta Fiscal de Serviço Eletronica)

 Novidade: Implementadas as primeiras regras de negócio da Tecnospeed, com o intuito agregar uma
           inteligência maior no componente spdNFeDataSets, quanto aos dados informados, que serão
           convertidos em XML. Essa implementação é reutilizada nas conversões REC e TX2 do spdNFe.
           Ex: Caso a UF=EX (exportação) o componente exige que a tag CNPJ seja vazia e o CPF
               seja nulo, deixando assim o desenvolvedor livre de usar 2 xmls de dicionário.
           Essas implementações, não invalidam as implementações anteriores e podem ser desativadas
           pelo usuário (desenvolvedor).
           Para mais detalhes, verifique o Manual ou tenha as descrições de cada uma das regras no
           help.html.

 ### Correções:

        - #2072 - Assinatura DPEC, passou a remover os espaços, pois o servidor de DPEC implementou
                  regra que não permite espaços entre tags.
        - #2067 - LoadConfig/SaveConfig, propriedades Proxy, Senha, Usuário, Timeout, não estavam
                  sendo carregadas nem salvas no nfeconfig.ini
        - #2064, #2025, #2026 - A conversão PWideChar em algumas versões do delphi causava AV. Corrigido na
                  demonstração também.
        - #2004 - Publicada propriedade PINCODE no NFeX.dll
        - #1879 - Após regularização do servidor de consulta do DPEC, pudemos corrigir a chamada
                  soap. Onde utilizávamos "SOAP-ENV:Envelope" trocamos por "soap12:Envelope".
        - #1795 - Correção na Regra GX05, que faz validação no CPF do destinatário.
        - #2022 - Publicado o método EnviarNotaDestinatarioAnexos na spdNFeLib.dll
        - #2007, #2008, #2009 - Algumas correções nas novas demonstrações Delphi, C# e VB6
        - #2018 - Problema no cancelamento com o WebService do AM
        - #2074 - DPEC correção no auto complete do componente, para as propriedades diretórios
                  Templates e Esquemas
        - #1956 - Correção na conversão de arquivos REC em cenários diversos, levantados pelos
                  testes unitários.
        - #1958 - Alterada a maneira de calcular as Observações complementares quando extrapolar
                  o tamanho permitido para impressão no espaçõ reservado na primeira página.
        - #2076 - Exposto campo "cilin" na danfe, tendo em vista que o mesmo está presente no
                  XML 4.0 de veículos novos.


 Mudanças:

       - Atualizados todos os modelos RTM para se comportar de acordo com a correção #1958.
       - Criado nOvo campo na Danfe (ContinuaObsContribuinte) que tem como objetivo imprimir o complemento
         das informações complementares do Contribuinte, utilizado na tag InfCpl.
         Para auxiliar no cálculo da quantidade de informações que dever ser impressas na primeira
         página (Dados Adicionais) e quanto deve ser colocado nas observações que devem ser impressas
         após os itens, foram criadas 2 novas propriedades em spdNFe.DanfeSettings, chamdas InfCplMaxCol e
         InfCplMaxRow. Verifique o manual para obter mais detalhes de utilização dessas propriedades.


## [2.4.7.x]

 Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.4
         - CTe  - 1.4.9.x (Conhecimento de Transporte Eletronico)
         - NFSe - 1.4.14.x (NOta Fiscal de Serviço Eletronica)


 Novidade: Compatibilidade com arquivos TXT da Receita (REC) versão 2.0, liberada pela Sefaz de SP

 Mudanças:
          a - LoadConfig - A Assinatura do método mudou, permitindo passar como parâmetro o arquivo
                           que deseja carregar. (somente o nome do arquivo ou path completo).
          b - SaveConfig - A Assinatura do método mudou, permitindo passar como parâmetro o arquivo
                           que deseja Salvar. (somente o nome do arquivo ou path completo).
          c - NFeDataSets.xml, possui identificador de campos REC.

 ### Correções:

          a - #1520 - spdNFeRules que estava fazendo validação de CNPJ num campo onde a validação
                      deveria ser realizada por CPF.
          b - #1537 - Xml inválido ao informar caracteres especiais na justificativa da Inutilização.
          c - #1666 - Erro ao cancelar registro utilizando spdNFeDataSets
          d - #1740 - Falha ao realizar cancelamento no servidor do MS
          e - #1699 - Rejeição: 588 gerada pelo servidor de SP devido a caracteres inválidos na
                      tag "KeyInfo". (somente servidor de SP possui essa validação).
          f - #1611 - Correção realizada na GOV porém reportada por clientes do NFe, onde o acesso
                      ao certificado pelo index gerado pela CAPICOM era divergente do índice de
                      acesso pelo sistema Operacional, causando conflito em determinados modelos de
                      certificados, quando instalados juntos.
          g - #1764 - Problemas com NameSpace no xml de comunicação com servidor de ambiente Nacional.
                      Estados afetados (ES,MA,PA,PI,RN).
          h - Hora de Saída da Danfe não estava buscando do XML


 Arquivos:

    1) Atualizado arquivo NfeServidoresProd.ini
    2) retrato.rtm e paisagem.rtm da pasta Templates\vm40\Danfe



## [1.4.6.x]

 Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.3
         - CTe  - 1.1.007.x (Conhecimento de Transporte Eletronico)
         - NFSe - 1.1.012.x (NOta Fiscal de Serviço Eletronica)


 Mudanças:
          a - Exposta a propriedade TimeOut dentro de EmailSettings
          b - Versão Compilada com a GOV 1.3
          c - Nova modalidade de comercialização por CNPJ
          d - Retirado obrigarotiedade dos campos CEP e cPais do NFeDataSets.xml e
              NFeDataSets_exportacao.xml para a conersão 3.0, conforme Manual de Integração.

 ### Correções:

          a - Nesse build o diretório de arquivos nfeServidores.ini pode ser diferente do diretório
              do executável. #1294

          b - Corrigido problema na geração do XML utilizando spdNFeDataSets quanto a notas Referenciadas

          c - Impressão da CST ou CSOSN na Danfe

          d - O LineDelimiter, utilizado para quebrar linha na Danfe, só funcionava para a primeira
              marcação encontrada.

          e - Correção nas publicações dos métodos abaixo da spdLibNFe.dll
               - GerarCancelamentoDestinatario  - #1458
               - EnviarNotaCanceladaDestinatario - #1473

          f - Correção da mensage "Field value required", que não especificava qual campo requerido
              estava vazio - #1498

          g - Corrigida declaração do método ConsultarCadastro na demonstraçãoDLL híbrida.

          h - Corrigido problema na geração do IMCS41 do componente spdNFeDataSets



 Arquivos:

    1) Atualizado manual de Migração




## [1.4.5.x]

 Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.2
         - CTe  - 1.0.4 e 1.0.5 (Conhecimento de Transporte Eletronico)
         - NFSe - 1.1.6 e 1.1.7 (NOta Fiscal de Serviço Eletronica)

 ### Novidades:

    1) Novas demonstrações:

       Novas demonstrações que utilizam todos os recursos do componente (Versão do Manual de integração 4.0),
       incluíndo contingências (FS/FSDA/SCAN/DPEC).
       Essas novas demonstrações estão em: VB6, C# e Delphi 7 a 2010.


 ### Correções:

          a - Método: "EnviarNotaDestinatário" em DPEC, levantava exception dizendo que o protocolo
              de DPEC não foi informado, porém ficou nessa caso a Nota já estava autorizada no Sefaz
              estadual com o protocolo de Autorização (estadual).
          b - Importação de arquivos REC estava com problema na parte de notas referenciadas
          c - Correção do "Roteiro_de_migracao.pdf" com relação a parte de notas referenciadas.


 Arquivos:

    1) Removidos os arquivos XML (modelo) da pasta Utils.




## [1.4.4.x]

 Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.2
         - CTe  - 1.0.4 e 1.0.5 (Conhecimento de Transporte Eletronico)
         - NFSe - 1.1.6 e 1.1.7 (NOta Fiscal de Serviço Eletronica)

 ### Novidades:

    1) Implementação das Validações das Regras de Negócios da NFe descritas no manual de integração 4.0 (pág 34 a 43).
       O Objetivo dessas validações é informar ao usuário de forma mais amigável as regras que são de responsabilidade
       dos webservices estaduais, mas que em sua grande maioria não são implementadas. Isso acarreta uma série
       de falhas como "Erro não catalogado" que deixam o usuário sem uma posição clara do problema identificado na nota.


    2) Atualização da Nova Demonstração específica para versão 4.0, com todos os modelos de tributações implementados

    3) Implementado Evento OnXmlCanDestinatário, que é disparado sempre que o arquivo XmlDestinatário é criado na pasta. #606



 Mudanças na Interface do Componente spdNFeDataSets:

          a - Nova Propriedade: ValidaRegrasNegocio
          b - Nova Propriedade: ExcecoesDeRegras


 ### Correções:
          a - Coloado Nome da Empresa (Emitente) no Romaneio do Danfe #879
          b - Publicação do métodos SaveConfig e EnviarNotaDestinatarioAnexos no NFEX.dll
          c - Publicação das propriedades MaxSizeLoteEnvio e IgnoreInvalidCertificate no NFeX.dll


 Arquivos:
    1) Atualizados os arquivos RTM de layout da Danfe




## [1.4.3.x]

 Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.2
         - CTe  - 1.0.4 e 1.0.5 (Conhecimento de Transporte Eletronico)
         - NFSe - 1.1.6 e 1.1.7 (NOta Fiscal de Serviço Eletronica)

 ### Novidades:

    1) Atendimento a regulamentação da Nota Técnica 005/2010 disponível em PDF na pasta Utils

           a - Novas CST para PIS/COFINS, sendo elas:

    49 - Outras Operações de Saída
    50 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
      51 - Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno
      52 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação
      53 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
      54 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
      55 - Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
      56 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
      60 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno
      61 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
      62 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação
      63 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
      64 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
      65 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
      66 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de   Exportação
      67 - Crédito Presumido - Outras Operações
      70 - Operação de Aquisição sem Direito a Crédito
      71 - Operação de Aquisição com Isenção
      72 - Operação de Aquisição com Suspensão
      73 - Operação de Aquisição a Alíquota Zero
      74 - Operação de Aquisição sem Incidência da Contribuição
      75 - Operação de Aquisição por Substituição Tributária
      98 - Outras Operações de Entrada
      99 - Outras Operações



           b - Implementado suporte a pl_005f e pl_006g no spdNFeDataSets


    2) Atualização da Nova Demonstração específica para versão 4.0
    3) Implementado método PreverDanfe, onde é possível visualizar a danfe antes de enviá-la ao Sefaz, somente com XMLAssinado. #605
    4) Implementado Evento OnXmlDestinatário, que é disparado sempre que o arquivo XmlDestinatário é criado na pasta. #606


 ### Correções:
          a - LoadConfig do componente não carregava a propriedade QtdeCopias #789
          b - Envio Cancelamento Destinatário por Email #803

 Mudanças:
    1) As dll's NFeX.dll e NFeDataSetX.dll passam a ser compiladas com Delphi2010 para compatibilizar outras linguagens como com C# .Net

 Arquivos:
    1) PDF da nota técnica 005/2010 na pasta utils
    2) Atualizados os arquivos de Esquemas conforme pl_005f e pl_006g


## [1.4.2.x]

 Compatibilidade: Produtos da Tecnospeed que utilizam pacote GOV 1.2
         - CTe  - 1.0.4.x (Conhecimento de Transporte Eletronico)
         - NFSe - 1.1.6.x (NOta Fiscal de Serviço Eletronica)

 ### Novidades:

    1) Atendimento a regulamentação da Nota Técnica 004/2010 disponível em PDF na pasta Utils
           a - Identificador dos campos (IE_B20f, mod_B20f, serie_B20g, nNF_B20h) para (IE_B20f, mod_B20g, serie_B20h, nNF_B20ha).
           b - Enumerado para o campo VIN
           c - CST=41 para o grupo ICMSST
           d - atualização do pacote de esquemas para pl_006f
           e - Atualização dos modelos de Danfe no campo "Frete por Conta", conforme Nota técnica 004/10 pág. 12.
               Caso o desenvolvedor queira reaproveitar a Danfe já personalizada, deve utilizar o campo "TraDescMod" no espaço para
               a Modalidade de Frete.
           f - Validação para qtde mínima de dígitos da Justificativa para entrada em contingência, Nota técnica 004/10 pág. 3.

    2) Nova Demonstração específica para versão 4.0

    3) Quebra de linha no campos Observação da Danfe. Utilizar a propriedade DanfeSettings.LineDelimiter para indicar qual caracter
       deve ser interpretado como quebra de linha.

    4) Propriedade "Versao", que indica a versão do componente instalada. (ObjectInspector)


 Mudanças:

    1) Arquivos temporários
          a - Arquivos de Nota (pdf e XML) que são enviados ao Destinatário por e-mail são gerados na pasta ApplicationData
          b - Arquivos de Cancelamento (XML) que são enviados ao Destinatário por e-mail são gerados na pasta ApplicationData

    2) Implementado método para "escapar" xml antes da assinatura. Isso evita que caracteres especiais falhem a assinatura.
    3) Método "ConverterLoteParaXML" utilizado no spdNFeLib.dll e spdNFeLibUnicode.dll possui um novo parametro que indica
       a versão do esquema utilizado. Caso passe "vazio" o componente utiliza a versão do Manual de integração ativa no componente.

 Arquivos:
    1) PDF da nota técnica 004/2010 na pasta utils
    2) Roteiro de Migração.pdf na pasta Utils



## [1.4.1.3678]

 ### Novidades:
    1) Compatibilidade com as versões 3.0 e 4.0 do manual de integração.
    2) Novos recursos para validação de Dados antes que o componente passe pela validação de Esquema.
    3) Compatibilidade com os componentes NFSe e CTe da Tecnospeed TI.

 Mudanças no componente:  spdNFe

  1) Propriedades

      1.1) "VersaoManual" = (vm2.02,vm30,vm40), que tem por finalidade indicar em que versão o componente spdNFe está operando.

      1.2) "DiretorioTemplates", "DiretorioEsquemas", "ModeloRetrato", "ModeloPaisagem", devem ser configuradas de acordo com a
           propriedade VersaoManual. Note que as Pastas possuem subPastas com a separação das versões.

  2) Métodos
      2.1) "CalculaChave", implementado overload da função que satisfaz as mudanças para a versão 4.0
      Obs: Esse método deve ser utilizado por clientes que geram o XML.

      2.2) "GerarXMLCancelamentoDestinatario", utilizado para gerar XML de Cancelamento regulamentado pelo manual 4.0
      Obs: Esse método deve ser utilizado para gerar documentos anteriores a versão atualizada, tendo em vista que o
                 componente gerar o arquivo XML de cancelamento automaticamente na pasta XMLDestinatário com identificador "canc".

      2.3) "InutilizarNF", alteração prevista no Manual de integração no parametro "ID".
            Obs: O primeiro parametro do método InutilizarNF, deve ser "vazio" para que o componente assuma o comportamento
                 adequado sem causar impacto na implementação.

      2.4) "ConverterLoteParaXML", o modelo de conversão por "DIC" está obsoleto.

      2.5) "ConsultaCadatro" passa a aceitar consulta por CNPJ ou CPF ou IE. (verificar assinatura do método)

   3) Arquivos

      3.1) Modelo de Impressão da Danfe adaptado ao regulamentado pelo manual 4.0, porém os modelos personalizados pelos clientes podem
           ser reaproveitados.

      3.2) Arquivos de Esquemas atualizados para as últimas versões liberadas de acordo com a versão do manual sendo:
           Manual 3.0 = pl005_d (2009)
           Manual 4.0 = pl006_f (2010)

      3.3) São copais 2 arquivos de Danfe para a pasta system32 sendo DanfeRb.dll e DanfeRBUnicode.dll para solucionar problemas de
           compatibilidade de exceptions entre versões de Delphi e outras linguagens como C#,VB6, etc. A escolha de uso é transparente
           para o desenvolvedor que não precisa selecionar nada.
           Estes mesmos arquivos são criados a partir do instalador de Dependencias, para não dar impacto nas instalações dos usuários finais.


   4) Comportamento

      4.1) No momento da assinatura o componente valida se Novos Campos de Contingência foram ou não informados de acordo com o tpEmis
           da NFe. (versao 4.0)

      4.2) Caso o campo hSaiEnt_B10a seja informado no XML a Danfe assumirá esse valor na impressão (versão 4.0)

      4.3) A Danfe passa a obedecer o valor do campo "xJust_B29" do XML e não o valor setado na propriedade "FraseContigencia" (versão 4.0).


 Mudanças no componente:  spdNFeDataSet

   1) Propriedades e Recursos

      1.1) Novos valores para "VersaoEsquema" = pl006_e, pl_006f, para suportar modelo 4.0. O Ideal é Ultilizar o último tendo em vista correções implementadas pelo sefaz.

      1.2) Validações amigáveis caso o usuário não preencha campos requeridos, com uma "dica" que pode ser personalizada no arquivo NFeDataSets.xml.

      1.3) Validações amigáveis para campos "enumerados" descritos no manual de integração. Também exibe o recurso "dica".

      1.4) Novos campos descritos nos Manuais de integração 3.0 e 4.0 foram atualizados no NFeDataSets.xml (dicionário de dados) e estão disponíveis para utilização via spdNFeDataSet.

      1.5) Os dados de Fatura não precisam mais ser repetidos conforma as duplicatas, tendo em vista a separação do DataSet de duplicatas da parte "Y".



   2) Métodos
      2.1) "IncluirCobranca" tem o mesmo comportamento de IncluirParte('DUP') ou IncluirParte=DUP utilizado no Tx2.

      2.2) As Notas referenciadas não podem mais ser Incluídas utilizando IncluirParte('B'), hava visto que foi criado um DataSet específico para ela,
           pois as opções de notas referenciadas aumentaram (CTe, NFe, NF, Produto Rural ...).
           Para utilizar o refenciamento de Notas use o método IncluirParte('NREF') no DataSet ou IncluirParte=NREF no Tx2.

   3) Comportamento

      3.1) De acordo com a Versão de Esquema setado no spdNFEDataSet ele converte a Chave da NFe, sendo até a pl_005d = Manual 3.0 e as demais Manual 4.0.
      3.2) Os impostos ICMS,IPI,II não podem ser inclusos no mesmo item que tenha ISSQN, sendo que a ordem de geração do ISSQN também mudou.


## [1.3.1.1538]
### Atualizações:
        1) Refatoração na estrutura.

### Correções:
        1) Correção de memory leaks.
## [1.3.1.980]

### Atualizações:
        1) #1287 - Impressão de DPEC, apresenta o Número de Registro Dpec.
        2) #1294 - Envio de email com Copia Oculta (cco).
        3) #1293 - Impressão de danfe em lotes, de XML Destinatário.
        4) #1083 - Nomeclatura do XML Destinatário, agora com sufixo -nfe.
        5) #1480 - DanfeRb agora utilizando o ReportBuilder 11.
        6) #1483 - Adicionado no cabeçalho do template XML Destinatario, a tag de encode UTF-8.
                   ( Necessários para a importação no sistema Emissor Sefaz ).
        7) Logotipo do emitente, que aparece na DANFE agora com suporte a imagens em formato JPG
        8) Alteramos o diretório padrão da instalação para, c:\Arquivos de programas\Tecnospeed\NFe.


### Correções:
        1) #1282 - O dataset não estava interpretando corretamente o campo retTransp.
        2) #1174 - Utilização de endereço de rede, nas propriedades de diretório.
        3) #1414 - Em alguns cenários, ao editar o modelo do danfe, ocorria o erro "System Error. Code 1400".
        4) #1321 - A propriedade QtdeCopias, não estava como pública para os usuários de Visual Basic.



## [1.3.1.845]
### Atualizações:
        1) Xml Destinatário é gerado automaticamente, não apenas pela consulta de recibo mas também
           pela consulta da nota.

### Correções:
        1) Publicado os metodos ValidarLoteXml e ConverterParte nas versões OCX do componente.
        2) Componetne com fonte estava sendo enviado duas versões da DanfeRB.

## [1.3.1.820]
### Atualizações:
        1) Propriedade AnexarDanfePDF, que quando ativo anexa o pdf da danfe no Email Destinatario.

### Correções:
        1) Alguns casos em que a impressão apresentava erro de "not valid floating point".

## [1.3.1.780]
### Atualizações:
  1) Adaptação a Nota Técnica 2009/003, Agosto de 2009

     - Padroniza o uso de campos do grupo de medicamentos da NF-e e a geração e impressão do
             código de barras adicional no DANFE.

  2) Validação de esquema versão PL_005d.
  3) Retirado a exceção "raise" quando é executado a consulta de recibo, quando chamada mais
           de uma vez para a mesma nota.

### Correções:
  1) Cancelamento e inutilização no estado de Goias. Ocorria falha de schema.
  2) Frases de contingência e Homologação personalizaveis, não estava se comportando
           corretamente em alguns cenários.

## [1.3.1.745]

## [1.3.1.720]
### Adicionado:
   Compatibilidade com as regras do Manual de Integração 3.0
       a) Alterações no modelo DANFE
       b) Impressão em impressora matricial
       c) Identificação na DANFE, informando que foi emitida em homologação ou em contingência
             d) A Danfe reconhece pelo conteúdo do campo "tpImp" do XML se o modelo de impressão é
                Paisagem.
       e) Impressão com Novo código de Barras descrito no manual de Integração.
       f) Formatação das casas centena e milhar com ".";
             g) Quebra de Linha na Descrição do Produtos conforme tamanho.
             h) Novos campos disponíveis para personalização, como Complemento de Endereços
             i) Diferenciação automática dos modelos de impressão em Homologação, Produção e Contingência

   Geração do XML Destinatário, de forma Automatizada.

### Mudanças:
   1) Mudança nos dados informados para impressão. Ao invéz do XMl assinado, deve ser informado o XML d\o destinatário
         2) Para o método EnviarNOtaDestinatariio, pode ser passado somente o ID da NF desde que o arquivo Xml da NFe esteja
            na pasta XMlDestinatario, já que o componente gera esse arquivo automaticamente conforme as operações com o Web
            Services são realiadas. A maneira antiga também foi mantida.
         3) Impressão da Danfe em máquinas que não possuem certificado, atendendo assim a diversos cenários de implementação


### Correções:
     Utilização do componente junto com outros componentes COM;
   Interface da inutilização, utilizando DLL;
         Correção Conversão do DataSet para campos de Observações Adicionais e Exportação (parte Z);
         Conversões do DataSet com controle de versão de Esquema.


## [1.2.1.510]
### Adicionado:
   Versão DLL com suporte ao formato TX2

### Correções:
     Problema no dataset em relação a exportação
   Chamada da função inutilizarNF da dll


## [1.2.1.395]

  - Melhoria na automatização do Componente spdNFEDataSet, onde não é mais necessário a utilização de
    templates "personalizados" para conversão dos dados que estão em memória no DataSet;

    a) O Dicionário de dados para o spdNFeDataSet passa a ser em um arquivo somente NFeDataSets que está
       na pasta "\Templates\Conversor" e deverá ser setado para a propriedade "XMLDicionario";
    b) A propriedade "ArqEstruturaXML" foi removida, pois não é mais necessária já que a conversão agora
       é feita de forma automatica.(sem Templates);

  - NOVO layout TXT de integração (independente de Dics), tornando mais simples e ágil a implementação
    EX:
  INCLUIR
  Id_A03=0
  versao_A02=1.10
  cUF_B02=35
  cNF_B03=004640327
  natOp_B04=VENDA MERC.ADQ.REC.TERC
  SALVAR

  - Correção do BUG na Exportação da Danfe em PDF, onde campos de Observação com mais de 70 caracteres
    não quebravam a linha automaticamente. Isso implicava também no EnviarNOtaDestinatário, já que ele
    também envia um PDF da Danfe em anexo.

  - Correção na conversão do PIS do Item da NFe, quando a CST = 02.

  - Primeiro parametro (aID) do método de Inutilização é opcional, ou seja, quando passar vazio o
    componente se encarrega em gerá-lo automaticamente.

  - XML de envio ao destinatário com suporte a caracteres especiais, já que alguns retornos dos WS

    continham os mesmos.

  - Carregando o valor da propriedade "LogotipoEmitente" a partir do método LoadConfig.

  - Correção LogotipoEmitente no modelo da Danfe Paisagem.


## [1.2.1.205]

### Melhorias e Solicitações atendidas nesta versão:

  - Componente para atender Modelo de Contingência SCAN;

  - Componente para atender Modelo de Contingência DPEC;

  - Envio da NFe para Destinatário, que deve ser utilizado através do método
    "EnviarNotaDestinatario", que como o nome já diz, tem como objetivo Enviar email
     para o destinatário possuindo os seguintes anexos:
     a) Arquivo XML (padrão SEFAZ), que compreende informações do Envio e da Consulta do Recibo da NFe.
     b) Arquivo Danfe em PDF.

  - Exportação da Danfe em Modo Silencioso, que consistem exportar a Danfe setando um
    um nome para o arquivo que será gerado, inibindo assim a "Caixa de Dialogo" para
    seleção do diretório e possibilitando ao desenvolvedor gerar arquivos da Danfe em PDF,
    sem que haja interação com usuário.

  - Implementado Interpretador de caracteres especiais para a DANFE, assim como descrito
    no Manual de Integração página 69.

  - Campo ORIG no Item da Danfe, permitindo personalizar o Item conforme os Modelos A1
    emitidos anteriormente.

  - Visualização da Danfe em modo Maximizado.

  - Novo Manual de Implantação.

  - Novo Validador de Esquemas:
    a) Gera uma Lista das Falhas detectadas no XML e não uma a uma como anteriormente.
    b) Mensagens traduzidas, facilitando entendimento;
    c) Modelo de implementação na Aba Validação do Exemplo.

### Usuários D7, D2006, D2007 e D2009

  - O Componente SpeedLabs NFe passou a se chamar TecnoSpeed NFe,
    sendo assim os desenvolvedores em D7, D2006, D2007 e D2009 terão
    uma paleta chamada TecnoSpeed NFe com os seguintes componentes
    (spdNFe, spdNFeSCAN, spdNFeDPEC, spdNFeDataSet).

###  Novas Funcionalidades:

  - spNFeSCAN  - Criado para atender o Modelo de Contingência SCAN
    da NFe, o componente é uma extensão do componente spdNFe, mais
    implementações específicas para essa modalidade. O Desenvolvedor
    deve ficar atento à:

    - Configurar as propriedades "Serie", podendo ser utilizada a faixa
      de numeração entre (900 a 999);

    - O campo "tpEmis" tem por valor padrão "2" conforme descrito no Manual
      de Integração "Vs. 2.0.2", mas poderá ser alterada a qualquer momento
      pelo próprio desenvolvedor em caso de alteração na legislação.

    - A forma de Utilização do spdNFeSCAN é semelhante a utilização do spdNFe
      SALVO o método "AssinarNota", que ao ser acionado, transforma a NFe
      em uma NFe padrão para o SCAN. Nessa transformação o XML da NFe enviado
      para assinatura, recebe a "série" indicada além do "tpEmis" e consequentemente a
      nova CHAVE para NFE. Caso o Desenvolvedor esteja armazenando a CHAVE da NFe,
      é imprescindível que capture a Chave após o processo de assinatura no modelo SCAN.

    - As Propriedades que apontam para os servidores de Homologação e Produção do
      componente spdNFeSCAN deverão apontar para arquivos INI com os endereços do
      Servidores SCAN Nacional.
      Para Ambiente de homologação enviamos o arquivo "nfeServidoresHomSCAN.ini".


  - spNFeDPEC  - Criado para atender o Modelo de Contingência DPEC da NFe,
    o componente spdNFeDPEC tem como métodos Públicos (AssinarDPEC, EnviarDPEC e
    ConsultarDPEC). A Comunicação é feita com WebServices específicos e seu padrão
    de XML a ser enviado é diferente dos modelos NFe e NFeScan.

    - Na pasta "\Utils\Modelos XML" segue arquivo XML Modelo que deverá ser gerado
      pelo desenvolvedor.

    - O spNFeDPEC, assim como o spdNFe e spdNFeSCAN, possui propriedade de Servidores
       de Homologação e Produção.
      Para Ambiente de homologação enviamos o arquivo "nfeServidoresHomDPEC.ini".




### Usuários D6 e VB6

  - A NFeX.dll agora possui possui componentes específicos para SCAN e DPEC.
  - A NFeDataSetX, componente facilitador na geração dos arquivos XML.


### Modificações que podem implicar em alterações no Código do Desenvolvedor:

  - Utilizar a Interface: IspdNFeX;

  - Acesso direto as propriedades do componte spdNFeX, antes realizadas a partir dos
    métodos GET e SET.

    - Exemplo Método SET
        Versão Anterior: SetAmbiente(1);
        Versão Atual...: Ambiente := 1;


  - Propriedade "ConfigINI", onde os desenvolvedores podem setar de qual arquivo INI
    o componente vai carregar as configurações quando o método "LoadConfig" for executado.

  - Publicadas as propriedades "Proxy" e "Usuario";



###  Novas Funcionalidades:

  - Componente spdNFeDataSetX que recebe os dados da NFe em forma de String e
    converte para padrão XML, conforme exemplos:

     D6:
        nfedatasetx.SetCampo('xNome_C03=ACME LTDA'); // Razao Social ou Nome do Emitente

     VB6:
        nfedatasetx.SetCampo("xNome_C03=ACME LTDA"); // Razao Social ou Nome do Emitente

    O Aplicativo Demo possui exemplo de implementação de uma Nfe Básica utilizando
    spdNFeDataSetX, tanto com VB como D6.


  - spNFeSCANX  - Criado para atender o Modelo de Contingência SCAN
    da NFe, o componente é uma extensão do componente spdNFeX, mais
    implementações específicas para essa modalidade. O Desenvolvedor
    deve ficar atento à:

    - Configurar as propriedades "Serie", podendo ser utilizada a faixa
      de numeração entre (900 a 999);

    - O campo "tpEmis" tem por valor padrão "2" conforme descrito no Manual
      de Integração "Vs. 2.0.2", mas poderá ser alterada a qualquer momento
      pelo próprio desenvolvedor em caso de alteração na legislação.

    - A forma de Utilização do spdNFeSCANX é semelhante a utilização do spdNFeX
      SALVO o método "AssinarNota", que ao ser acionado, transforma a NFe
      em uma NFe padrão para o SCAN. Nessa transformação o XML da NFe enviado
      para assinatura, recebe a "série" indicada além do "tpEmis" e consequentemente a
      nova CHAVE para NFE. Caso o Desenvolvedor esteja armazenando a CHAVE da NFe,
      é imprescindível que capture a Chave após o processo de assinatura no modelo SCAN.

    - As Propriedades que apontam para os servidores de Homologação e Produção do
      componente spdNFeSCANX deverão apontar para arquivos INI com os endereços do
      Servidores SCAN Nacional.
      Para Ambiente de homologação enviamos o arquivo "nfeServidoresHomSCAN.ini".

  - spNFeDPECX  - Criado para atender o Modelo de Contingência DPEC da NFe,
    o componente spdNFeDPECX tem como métodos Públicos (AssinarDPEC, EnviarDPEC e
    ConsultarDPEC). A Comunicação é feita com WebServices específicos e seu padrão
    de XML a ser enviado é diferente dos modelos NFe e NFeScan.

    - Na pasta "\Utils\Modelos XML" segue arquivo XML Modelo que deverá ser gerado
      pelo desenvolvedor.

    - O spNFeDPEC, assim como o spdNFeX e spdNFeSCANX, possui propriedade de Servidores
       de Homologação e Produção.
      Para Ambiente de homologação enviamos o arquivo "nfeServidoresHomDPEC.ini".





























































