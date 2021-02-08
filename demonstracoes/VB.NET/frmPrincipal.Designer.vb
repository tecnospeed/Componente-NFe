Imports NFeX
Imports NFeDataSetX



<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class frmPrincipal
    Inherits System.Windows.Forms.Form

    'Descartar substituições de formulário para limpar a lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Exigido pelo Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'OBSERVAÇÃO: o procedimento a seguir é exigido pelo Windows Form Designer
    'Pode ser modificado usando o Windows Form Designer.  
    'Não o modifique usando o editor de códigos.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.edtNumNota = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.edtNumProt = New System.Windows.Forms.TextBox()
        Me.edtNumRec = New System.Windows.Forms.TextBox()
        Me.edtNota = New System.Windows.Forms.TextBox()
        Me.edtCNPJ = New System.Windows.Forms.TextBox()
        Me.edtUF = New System.Windows.Forms.TextBox()
        Me.cbCertificados = New System.Windows.Forms.ComboBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.RbAssincrono = New System.Windows.Forms.RadioButton()
        Me.rbSincrono = New System.Windows.Forms.RadioButton()
        Me.btImprimir = New System.Windows.Forms.Button()
        Me.btConsultarNota = New System.Windows.Forms.Button()
        Me.btConsultarRec = New System.Windows.Forms.Button()
        Me.btnEnviarNFe = New System.Windows.Forms.Button()
        Me.btnAssinarXML = New System.Windows.Forms.Button()
        Me.btGerarXML = New System.Windows.Forms.Button()
        Me.btStatus = New System.Windows.Forms.Button()
        Me.btLoad = New System.Windows.Forms.Button()
        Me.tcPrincipal = New System.Windows.Forms.TabControl()
        Me.tpXML = New System.Windows.Forms.TabPage()
        Me.mmXML = New System.Windows.Forms.RichTextBox()
        Me.tpEnvio = New System.Windows.Forms.TabPage()
        Me.mmEnvio = New System.Windows.Forms.RichTextBox()
        Me.TpRetorno = New System.Windows.Forms.TabPage()
        Me.mmRetorno = New System.Windows.Forms.RichTextBox()
        Me.btnEnviarEmail = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.tcPrincipal.SuspendLayout()
        Me.tpXML.SuspendLayout()
        Me.tpEnvio.SuspendLayout()
        Me.TpRetorno.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.GroupBox2)
        Me.GroupBox1.Location = New System.Drawing.Point(6, 10)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(286, 223)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "NFe"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Label7)
        Me.GroupBox2.Controls.Add(Me.edtNumNota)
        Me.GroupBox2.Controls.Add(Me.Label6)
        Me.GroupBox2.Controls.Add(Me.Label5)
        Me.GroupBox2.Controls.Add(Me.Label4)
        Me.GroupBox2.Controls.Add(Me.Label3)
        Me.GroupBox2.Controls.Add(Me.Label2)
        Me.GroupBox2.Controls.Add(Me.edtNumProt)
        Me.GroupBox2.Controls.Add(Me.edtNumRec)
        Me.GroupBox2.Controls.Add(Me.edtNota)
        Me.GroupBox2.Controls.Add(Me.edtCNPJ)
        Me.GroupBox2.Controls.Add(Me.edtUF)
        Me.GroupBox2.Location = New System.Drawing.Point(8, 19)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(269, 198)
        Me.GroupBox2.TabIndex = 2
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Dados"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(154, 65)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(67, 13)
        Me.Label7.TabIndex = 11
        Me.Label7.Text = "Número NFe"
        '
        'edtNumNota
        '
        Me.edtNumNota.Location = New System.Drawing.Point(157, 81)
        Me.edtNumNota.Name = "edtNumNota"
        Me.edtNumNota.Size = New System.Drawing.Size(101, 20)
        Me.edtNumNota.TabIndex = 10
        Me.edtNumNota.Text = "6001"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(7, 151)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(67, 13)
        Me.Label6.TabIndex = 9
        Me.Label6.Text = "Nº Protocolo"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(7, 104)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(56, 13)
        Me.Label5.TabIndex = 8
        Me.Label5.Text = "Nº Recibo"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(45, 26)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(44, 13)
        Me.Label4.TabIndex = 7
        Me.Label4.Text = "ID Nota"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(7, 65)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(34, 13)
        Me.Label3.TabIndex = 6
        Me.Label3.Text = "CNPJ"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(7, 26)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(21, 13)
        Me.Label2.TabIndex = 5
        Me.Label2.Text = "UF"
        '
        'edtNumProt
        '
        Me.edtNumProt.Location = New System.Drawing.Point(10, 167)
        Me.edtNumProt.Name = "edtNumProt"
        Me.edtNumProt.Size = New System.Drawing.Size(249, 20)
        Me.edtNumProt.TabIndex = 4
        '
        'edtNumRec
        '
        Me.edtNumRec.Location = New System.Drawing.Point(10, 120)
        Me.edtNumRec.Name = "edtNumRec"
        Me.edtNumRec.Size = New System.Drawing.Size(249, 20)
        Me.edtNumRec.TabIndex = 3
        '
        'edtNota
        '
        Me.edtNota.Location = New System.Drawing.Point(48, 42)
        Me.edtNota.Name = "edtNota"
        Me.edtNota.Size = New System.Drawing.Size(211, 20)
        Me.edtNota.TabIndex = 2
        '
        'edtCNPJ
        '
        Me.edtCNPJ.Location = New System.Drawing.Point(10, 81)
        Me.edtCNPJ.Name = "edtCNPJ"
        Me.edtCNPJ.Size = New System.Drawing.Size(141, 20)
        Me.edtCNPJ.TabIndex = 1
        '
        'edtUF
        '
        Me.edtUF.Location = New System.Drawing.Point(10, 42)
        Me.edtUF.Name = "edtUF"
        Me.edtUF.Size = New System.Drawing.Size(32, 20)
        Me.edtUF.TabIndex = 0
        '
        'cbCertificados
        '
        Me.cbCertificados.FormattingEnabled = True
        Me.cbCertificados.Location = New System.Drawing.Point(6, 33)
        Me.cbCertificados.Name = "cbCertificados"
        Me.cbCertificados.Size = New System.Drawing.Size(326, 21)
        Me.cbCertificados.TabIndex = 0
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(10, 17)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(57, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Certificado"
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.btnEnviarEmail)
        Me.GroupBox3.Controls.Add(Me.RbAssincrono)
        Me.GroupBox3.Controls.Add(Me.rbSincrono)
        Me.GroupBox3.Controls.Add(Me.btImprimir)
        Me.GroupBox3.Controls.Add(Me.Label1)
        Me.GroupBox3.Controls.Add(Me.btConsultarNota)
        Me.GroupBox3.Controls.Add(Me.cbCertificados)
        Me.GroupBox3.Controls.Add(Me.btConsultarRec)
        Me.GroupBox3.Controls.Add(Me.btnEnviarNFe)
        Me.GroupBox3.Controls.Add(Me.btnAssinarXML)
        Me.GroupBox3.Controls.Add(Me.btGerarXML)
        Me.GroupBox3.Controls.Add(Me.btStatus)
        Me.GroupBox3.Controls.Add(Me.btLoad)
        Me.GroupBox3.Location = New System.Drawing.Point(298, 12)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(338, 221)
        Me.GroupBox3.TabIndex = 3
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Ações"
        '
        'RbAssincrono
        '
        Me.RbAssincrono.AutoSize = True
        Me.RbAssincrono.Checked = True
        Me.RbAssincrono.Location = New System.Drawing.Point(90, 188)
        Me.RbAssincrono.Name = "RbAssincrono"
        Me.RbAssincrono.Size = New System.Drawing.Size(79, 17)
        Me.RbAssincrono.TabIndex = 10
        Me.RbAssincrono.TabStop = True
        Me.RbAssincrono.Text = "Assíncrono"
        Me.RbAssincrono.UseVisualStyleBackColor = True
        '
        'rbSincrono
        '
        Me.rbSincrono.AutoSize = True
        Me.rbSincrono.Location = New System.Drawing.Point(15, 188)
        Me.rbSincrono.Name = "rbSincrono"
        Me.rbSincrono.Size = New System.Drawing.Size(69, 17)
        Me.rbSincrono.TabIndex = 9
        Me.rbSincrono.Text = "Síncrono"
        Me.rbSincrono.UseVisualStyleBackColor = True
        '
        'btImprimir
        '
        Me.btImprimir.Location = New System.Drawing.Point(175, 159)
        Me.btImprimir.Name = "btImprimir"
        Me.btImprimir.Size = New System.Drawing.Size(152, 23)
        Me.btImprimir.TabIndex = 8
        Me.btImprimir.Text = "7 - Imprimir Nota"
        Me.btImprimir.UseVisualStyleBackColor = True
        '
        'btConsultarNota
        '
        Me.btConsultarNota.Location = New System.Drawing.Point(175, 130)
        Me.btConsultarNota.Name = "btConsultarNota"
        Me.btConsultarNota.Size = New System.Drawing.Size(152, 23)
        Me.btConsultarNota.TabIndex = 6
        Me.btConsultarNota.Text = "6 - Consultar Nota"
        Me.btConsultarNota.UseVisualStyleBackColor = True
        '
        'btConsultarRec
        '
        Me.btConsultarRec.Location = New System.Drawing.Point(175, 101)
        Me.btConsultarRec.Name = "btConsultarRec"
        Me.btConsultarRec.Size = New System.Drawing.Size(152, 23)
        Me.btConsultarRec.TabIndex = 5
        Me.btConsultarRec.Text = "6 - Consultar Recibo"
        Me.btConsultarRec.UseVisualStyleBackColor = True
        '
        'btnEnviarNFe
        '
        Me.btnEnviarNFe.Location = New System.Drawing.Point(175, 72)
        Me.btnEnviarNFe.Name = "btnEnviarNFe"
        Me.btnEnviarNFe.Size = New System.Drawing.Size(152, 23)
        Me.btnEnviarNFe.TabIndex = 4
        Me.btnEnviarNFe.Text = "5 - Enviar NFe"
        Me.btnEnviarNFe.UseVisualStyleBackColor = True
        '
        'btnAssinarXML
        '
        Me.btnAssinarXML.Location = New System.Drawing.Point(15, 159)
        Me.btnAssinarXML.Name = "btnAssinarXML"
        Me.btnAssinarXML.Size = New System.Drawing.Size(152, 23)
        Me.btnAssinarXML.TabIndex = 3
        Me.btnAssinarXML.Text = "4 - Assinar XML"
        Me.btnAssinarXML.UseVisualStyleBackColor = True
        '
        'btGerarXML
        '
        Me.btGerarXML.Location = New System.Drawing.Point(15, 130)
        Me.btGerarXML.Name = "btGerarXML"
        Me.btGerarXML.Size = New System.Drawing.Size(152, 23)
        Me.btGerarXML.TabIndex = 2
        Me.btGerarXML.Text = "3 - Gerar XML"
        Me.btGerarXML.UseVisualStyleBackColor = True
        '
        'btStatus
        '
        Me.btStatus.Location = New System.Drawing.Point(15, 101)
        Me.btStatus.Name = "btStatus"
        Me.btStatus.Size = New System.Drawing.Size(152, 23)
        Me.btStatus.TabIndex = 1
        Me.btStatus.Text = "2 - Status"
        Me.btStatus.UseVisualStyleBackColor = True
        '
        'btLoad
        '
        Me.btLoad.Location = New System.Drawing.Point(15, 72)
        Me.btLoad.Name = "btLoad"
        Me.btLoad.Size = New System.Drawing.Size(152, 23)
        Me.btLoad.TabIndex = 0
        Me.btLoad.Text = "1 - Load Config"
        Me.btLoad.UseVisualStyleBackColor = True
        '
        'tcPrincipal
        '
        Me.tcPrincipal.Controls.Add(Me.tpXML)
        Me.tcPrincipal.Controls.Add(Me.tpEnvio)
        Me.tcPrincipal.Controls.Add(Me.TpRetorno)
        Me.tcPrincipal.Location = New System.Drawing.Point(6, 239)
        Me.tcPrincipal.Name = "tcPrincipal"
        Me.tcPrincipal.SelectedIndex = 0
        Me.tcPrincipal.Size = New System.Drawing.Size(630, 347)
        Me.tcPrincipal.TabIndex = 4
        '
        'tpXML
        '
        Me.tpXML.Controls.Add(Me.mmXML)
        Me.tpXML.Location = New System.Drawing.Point(4, 22)
        Me.tpXML.Name = "tpXML"
        Me.tpXML.Padding = New System.Windows.Forms.Padding(3)
        Me.tpXML.Size = New System.Drawing.Size(622, 321)
        Me.tpXML.TabIndex = 0
        Me.tpXML.Text = "XML"
        Me.tpXML.UseVisualStyleBackColor = True
        '
        'mmXML
        '
        Me.mmXML.Location = New System.Drawing.Point(6, 6)
        Me.mmXML.Name = "mmXML"
        Me.mmXML.Size = New System.Drawing.Size(609, 309)
        Me.mmXML.TabIndex = 0
        Me.mmXML.Text = ""
        '
        'tpEnvio
        '
        Me.tpEnvio.Controls.Add(Me.mmEnvio)
        Me.tpEnvio.Location = New System.Drawing.Point(4, 22)
        Me.tpEnvio.Name = "tpEnvio"
        Me.tpEnvio.Padding = New System.Windows.Forms.Padding(3)
        Me.tpEnvio.Size = New System.Drawing.Size(622, 321)
        Me.tpEnvio.TabIndex = 1
        Me.tpEnvio.Text = "Envio"
        Me.tpEnvio.UseVisualStyleBackColor = True
        '
        'mmEnvio
        '
        Me.mmEnvio.Location = New System.Drawing.Point(6, 6)
        Me.mmEnvio.Name = "mmEnvio"
        Me.mmEnvio.Size = New System.Drawing.Size(609, 309)
        Me.mmEnvio.TabIndex = 0
        Me.mmEnvio.Text = ""
        '
        'TpRetorno
        '
        Me.TpRetorno.Controls.Add(Me.mmRetorno)
        Me.TpRetorno.Location = New System.Drawing.Point(4, 22)
        Me.TpRetorno.Name = "TpRetorno"
        Me.TpRetorno.Padding = New System.Windows.Forms.Padding(3)
        Me.TpRetorno.Size = New System.Drawing.Size(622, 321)
        Me.TpRetorno.TabIndex = 2
        Me.TpRetorno.Text = "Retorno"
        Me.TpRetorno.UseVisualStyleBackColor = True
        '
        'mmRetorno
        '
        Me.mmRetorno.Location = New System.Drawing.Point(7, 6)
        Me.mmRetorno.Name = "mmRetorno"
        Me.mmRetorno.Size = New System.Drawing.Size(609, 309)
        Me.mmRetorno.TabIndex = 1
        Me.mmRetorno.Text = ""
        '
        'btnEnviarEmail
        '
        Me.btnEnviarEmail.Location = New System.Drawing.Point(175, 188)
        Me.btnEnviarEmail.Name = "btnEnviarEmail"
        Me.btnEnviarEmail.Size = New System.Drawing.Size(152, 23)
        Me.btnEnviarEmail.TabIndex = 11
        Me.btnEnviarEmail.Text = "8 - Enviar Email"
        Me.btnEnviarEmail.UseVisualStyleBackColor = True
        '
        'frmPrincipal
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(641, 589)
        Me.Controls.Add(Me.tcPrincipal)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.GroupBox1)
        Me.Name = "frmPrincipal"
        Me.Text = "Demonstração NFe"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.tcPrincipal.ResumeLayout(False)
        Me.tpXML.ResumeLayout(False)
        Me.tpEnvio.ResumeLayout(False)
        Me.TpRetorno.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents Label6 As Label
    Friend WithEvents Label5 As Label
    Friend WithEvents Label4 As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents edtNumProt As TextBox
    Friend WithEvents edtNumRec As TextBox
    Friend WithEvents edtNota As TextBox
    Friend WithEvents edtCNPJ As TextBox
    Friend WithEvents edtUF As TextBox
    Friend WithEvents cbCertificados As ComboBox
    Friend WithEvents Label1 As Label
    Friend WithEvents GroupBox3 As GroupBox
    Friend WithEvents btImprimir As Button
    Friend WithEvents btConsultarNota As Button
    Friend WithEvents btConsultarRec As Button
    Friend WithEvents btnEnviarNFe As Button
    Friend WithEvents btnAssinarXML As Button
    Friend WithEvents btGerarXML As Button
    Friend WithEvents btStatus As Button
    Friend WithEvents btLoad As Button
    Friend WithEvents RbAssincrono As RadioButton
    Friend WithEvents rbSincrono As RadioButton
    Friend WithEvents tcPrincipal As TabControl
    Friend WithEvents tpXML As TabPage
    Friend WithEvents mmXML As RichTextBox
    Friend WithEvents tpEnvio As TabPage
    Friend WithEvents mmEnvio As RichTextBox
    Friend WithEvents TpRetorno As TabPage
    Friend WithEvents mmRetorno As RichTextBox
    Friend WithEvents Label7 As Label
    Friend WithEvents edtNumNota As TextBox
    Friend WithEvents btnEnviarEmail As Button
End Class
