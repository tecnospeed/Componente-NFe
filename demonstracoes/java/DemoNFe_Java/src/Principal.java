import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.swing.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * Demonstração de utilização do componente NFe com Java, foi testado usando a versão community 2019.3.4 x64 do IntelliJ IDEA
 * É necessário adicionar as dlls do Jacob nas pastas do Windows (jacob-1.18-x64.dll na System32 e jacob-1.18-x86.dll na SysWOW64)
 * O jacob.jar deve ser adicionado nas libraries do projeto para ser reconhecida
 * Atenção a classe Configuraçoes.java pois nela tem algumas configurações de diretórios que devem estar corretas para funcionar
 */
public class Principal extends JFrame{
    private JButton btnConfigurar;
    private JPanel rootPanel;
    private JComboBox cbCertificados;
    private JTextArea txtRetorno;
    private JButton btnGerarXML;
    private JButton btnAssinar;
    private JButton btnEnviar;
    private JButton btnConsultarRecibo;
    private JButton btnGerarPDF;
    private JButton btnEmail;
    private JButton btnCancelar;
    private JButton btnGerarPDFCAn;
    private JTextField txtRecibo;
    private JTextField txtChave;
    private JTextField txtProtocolo;
    private JButton btnPreverDanfe;

    ActiveXComponent spdNFe = new ActiveXComponent("NFeX.spdNFeX");
    Configuracoes configurar = new Configuracoes();
    String[] certificados;
    XML DataSet = new XML();

    public Principal() {
        super("Hello World");
        setContentPane(rootPanel);

        pack();
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        txtRetorno.setLineWrap(true);
        txtRetorno.setEditable(true);
//====================== Listar Certificados ===============================================================================

        certificados = Dispatch.call(spdNFe, "ListarCertificados", "|").toString().split("\\|");

        for (int i = 0; i < certificados.length; i++) {
            cbCertificados.addItem(certificados[i]);
        }
//==========================================================================================================================

        btnConfigurar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                spdNFe = configurar.CarregarConfiguracoes(spdNFe, cbCertificados.getSelectedItem().toString());
                try {
                    txtRetorno.setText(Dispatch.call(spdNFe, "StatusDoServico").toString());
                } catch (Exception e2) {
                    JOptionPane.showMessageDialog(Principal.this, e2.getMessage());
                    e2.printStackTrace();
                }
            }
        });

        btnGerarXML.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    txtRetorno.setText(DataSet.GerarXML(spdNFe));
                    txtChave.setText(txtRetorno.getText().substring(txtRetorno.getText().indexOf("infNFe Id=") + 14, txtRetorno.getText().indexOf("infNFe Id=") + 58));
                } catch (Exception e2) {
                    JOptionPane.showMessageDialog(Principal.this, e2.getMessage());
                    e2.printStackTrace();
                }
            }
        });

        btnAssinar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    txtRetorno.setText(Dispatch.call(spdNFe, "AssinarNota", txtRetorno.getText()).toString());
                } catch (Exception e2) {
                    JOptionPane.showMessageDialog(Principal.this, e2.getMessage());
                    e2.printStackTrace();
                }
            }
        });

        btnEnviar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    txtRetorno.setText(Dispatch.call(spdNFe, "EnviarNF", "00001", txtRetorno.getText(), false).toString());

                    DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
                    DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
                    Document doc = dBuilder.parse(new InputSource(new StringReader(txtRetorno.getText())));
                    doc.getDocumentElement().normalize();

                    txtRecibo.setText(doc.getElementsByTagName("nRec").item(0).getTextContent());
                } catch (ParserConfigurationException e1) {
                    e1.printStackTrace();
                } catch (SAXException e1) {
                    e1.printStackTrace();
                } catch (IOException e1) {
                    e1.printStackTrace();
                } catch (Exception e1) {
                    e1.printStackTrace();
                }
            }
        });

        btnConsultarRecibo.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                txtRetorno.setText(Dispatch.call(spdNFe, "ConsultarRecibo", txtRecibo.getText()).toString());
                try {
                    DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
                    DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
                    Document doc = dBuilder.parse(new InputSource(new StringReader(txtRetorno.getText())));
                    doc.getDocumentElement().normalize();

                    txtProtocolo.setText(doc.getElementsByTagName("nProt").item(0).getTextContent());
                } catch (ParserConfigurationException e1) {
                    e1.printStackTrace();
                } catch (SAXException e1) {
                    e1.printStackTrace();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        });

        btnGerarPDF.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String arquivo = Dispatch.call(spdNFe, "DiretorioXmlDestinatario") + txtChave.getText() + "-nfe.xml";

                try (BufferedReader br = new BufferedReader(new FileReader(arquivo))) {

                    String sCurrentLine;

                    while ((sCurrentLine = br.readLine()) != null) {
                        arquivo = sCurrentLine;
                    }

                } catch (IOException ex) {
                    ex.printStackTrace();
                }
                String diretorio_exporta = Dispatch.call(spdNFe, "DiretorioXmlDestinatario") + "PDF\\";
                Dispatch.call(spdNFe, "ExportarDanfe", "0001", arquivo, Dispatch.call(spdNFe, "ModeloRetrato"), 1, diretorio_exporta + txtChave.getText() + ".pdf");
            }
        });

        btnEmail.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Dispatch.put(spdNFe, "EmailRemetente", "testevideonfe@gmail.com");
                Dispatch.put(spdNFe, "EmailDestinatario", "testevideonfe@gmail.com");
                Dispatch.put(spdNFe, "EmailAssunto", "Exemplo de envio de DANFE por email");
                Dispatch.put(spdNFe, "EmailMensagem", "O arquivo está anexo.");
                Dispatch.put(spdNFe, "EmailUsuario",  "testevideonfe@gmail.com");
                Dispatch.put(spdNFe, "EmailSenha", "video123mudar");
                Dispatch.put(spdNFe, "EmailAutenticacao", true);
                Dispatch.put(spdNFe, "EmailPorta", "587");

                try {
                    Dispatch.call(spdNFe, "EnviarNotaDestinatario", txtChave.getText(), "", "");
                }
                finally {
                    JOptionPane.showMessageDialog(null, "Email enviado para: " + spdNFe.getPropertyAsString("EmailDestinatario"));
                }
            }
        });

        btnCancelar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                txtRetorno.setText(Dispatch.call(spdNFe, "CancelarNFeEvento",txtChave.getText(), txtProtocolo.getText(), "Estou testando o cancelamento da NFe", LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")) + "T" + LocalDateTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss")), 1, "-03:00").toString());
            }
        });

        btnGerarPDFCAn.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String xml_can = Dispatch.call(spdNFe, "DiretorioXmlDestinatario") + txtChave.getText() + "-caneve.xml";
                Dispatch.put(spdNFe, "ModeloRetrato", Dispatch.call(spdNFe, "DiretorioTemplates") + "\\Danfe\\RetratoCanc.rtm");

                try {
                    File fileDir = new File(xml_can);

                    BufferedReader in = new BufferedReader(
                            new InputStreamReader(
                                    new FileInputStream(fileDir), "UTF8"));

                    String str;

                    while ((str = in.readLine()) != null) {
                        System.out.println(str);
                    }

                    in.close();
                }
                catch (UnsupportedEncodingException err)
                {
                    System.out.println(err.getMessage());
                }
                catch (IOException err)
                {
                    System.out.println(err.getMessage());
                }
                catch (Exception err)
                {
                    System.out.println(err.getMessage());
                }

                String diretorio_exporta = Dispatch.call(spdNFe, "DiretorioXmlDestinatario") + "PDF\\";
                Dispatch.call(spdNFe, "ExportarDanfe", "0001", xml_can, Dispatch.call(spdNFe, "ModeloRetrato"), 1, diretorio_exporta + txtChave.getText() + "-cancelado.pdf");
            }
        });

        setVisible(true);
        btnPreverDanfe.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                //O PreverDanfe não funcionou como os demais comandos, por ele abrir uma tela a chamada provavelmente será diferente
                Dispatch.call(spdNFe, "PreverDanfe", txtRetorno.getText(), Dispatch.call(spdNFe, "ModeloRetrato"));
            }
        });
    }

}
