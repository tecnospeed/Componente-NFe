namespace WindowsFormsApplication1
{
    partial class frmICMS70
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnGravar = new System.Windows.Forms.Button();
            this.cboModSTICMS70 = new System.Windows.Forms.ComboBox();
            this.txtpRedBCSTICMS70 = new System.Windows.Forms.TextBox();
            this.txtpICMSSTICMS70 = new System.Windows.Forms.TextBox();
            this.txtvICMSSTICMS70 = new System.Windows.Forms.TextBox();
            this.txtvBCSTICMS70 = new System.Windows.Forms.TextBox();
            this.txtpMVASTICMS70 = new System.Windows.Forms.TextBox();
            this.lblValorICMSST = new System.Windows.Forms.Label();
            this.lblvBICMSST = new System.Windows.Forms.Label();
            this.lblPercRedBCICMSST = new System.Windows.Forms.Label();
            this.lblAliquotaICMSST = new System.Windows.Forms.Label();
            this.lblPercICMSST = new System.Windows.Forms.Label();
            this.lblBCICMSST = new System.Windows.Forms.Label();
            this.lblModalidade = new System.Windows.Forms.Label();
            this.txtValorICMS70 = new System.Windows.Forms.TextBox();
            this.txtAliquotaICMS70 = new System.Windows.Forms.TextBox();
            this.txtValorBCICMS70 = new System.Windows.Forms.TextBox();
            this.txtCSTICMS70 = new System.Windows.Forms.TextBox();
            this.cboModalidadeICMS70 = new System.Windows.Forms.ComboBox();
            this.cboOrigemICMS70 = new System.Windows.Forms.ComboBox();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblbcICMS = new System.Windows.Forms.Label();
            this.lblTrbICMS = new System.Windows.Forms.Label();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.txtpRedBCICMS70 = new System.Windows.Forms.TextBox();
            this.lblpReduBC = new System.Windows.Forms.Label();
            this.edtvICMS70Deson = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.cbmotiboICMS70Deson = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.lblvBCFCPST70 = new System.Windows.Forms.Label();
            this.txtvBCFCPST70 = new System.Windows.Forms.TextBox();
            this.txtpFCPST70 = new System.Windows.Forms.TextBox();
            this.lblpFCPST70 = new System.Windows.Forms.Label();
            this.txtvFCPST70 = new System.Windows.Forms.TextBox();
            this.lblvFCPST70 = new System.Windows.Forms.Label();
            this.txtvBCFCP70 = new System.Windows.Forms.TextBox();
            this.lblvBCFCP70 = new System.Windows.Forms.Label();
            this.lblpFCP70 = new System.Windows.Forms.Label();
            this.lblvFCP70 = new System.Windows.Forms.Label();
            this.txtvFCP70 = new System.Windows.Forms.TextBox();
            this.txtpFCP70 = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(288, 445);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 36;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // cboModSTICMS70
            // 
            this.cboModSTICMS70.FormattingEnabled = true;
            this.cboModSTICMS70.Items.AddRange(new object[] {
            "Preço tabelado ou máximo sugerido",
            "Lista Negativa",
            "Lista Positiva",
            "Lista Neutra",
            "Margem Valor Agregado",
            "Pauta"});
            this.cboModSTICMS70.Location = new System.Drawing.Point(211, 156);
            this.cboModSTICMS70.Name = "cboModSTICMS70";
            this.cboModSTICMS70.Size = new System.Drawing.Size(152, 21);
            this.cboModSTICMS70.TabIndex = 15;
            this.cboModSTICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // txtpRedBCSTICMS70
            // 
            this.txtpRedBCSTICMS70.Location = new System.Drawing.Point(211, 198);
            this.txtpRedBCSTICMS70.Name = "txtpRedBCSTICMS70";
            this.txtpRedBCSTICMS70.Size = new System.Drawing.Size(152, 20);
            this.txtpRedBCSTICMS70.TabIndex = 19;
            this.txtpRedBCSTICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpICMSSTICMS70
            // 
            this.txtpICMSSTICMS70.Location = new System.Drawing.Point(211, 239);
            this.txtpICMSSTICMS70.Name = "txtpICMSSTICMS70";
            this.txtpICMSSTICMS70.Size = new System.Drawing.Size(152, 20);
            this.txtpICMSSTICMS70.TabIndex = 23;
            this.txtpICMSSTICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvICMSSTICMS70
            // 
            this.txtvICMSSTICMS70.Location = new System.Drawing.Point(21, 281);
            this.txtvICMSSTICMS70.Name = "txtvICMSSTICMS70";
            this.txtvICMSSTICMS70.Size = new System.Drawing.Size(152, 20);
            this.txtvICMSSTICMS70.TabIndex = 25;
            this.txtvICMSSTICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCSTICMS70
            // 
            this.txtvBCSTICMS70.Location = new System.Drawing.Point(21, 240);
            this.txtvBCSTICMS70.Name = "txtvBCSTICMS70";
            this.txtvBCSTICMS70.Size = new System.Drawing.Size(152, 20);
            this.txtvBCSTICMS70.TabIndex = 21;
            this.txtvBCSTICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpMVASTICMS70
            // 
            this.txtpMVASTICMS70.Location = new System.Drawing.Point(21, 199);
            this.txtpMVASTICMS70.Name = "txtpMVASTICMS70";
            this.txtpMVASTICMS70.Size = new System.Drawing.Size(152, 20);
            this.txtpMVASTICMS70.TabIndex = 17;
            this.txtpMVASTICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblValorICMSST
            // 
            this.lblValorICMSST.AutoSize = true;
            this.lblValorICMSST.Location = new System.Drawing.Point(21, 264);
            this.lblValorICMSST.Name = "lblValorICMSST";
            this.lblValorICMSST.Size = new System.Drawing.Size(92, 13);
            this.lblValorICMSST.TabIndex = 24;
            this.lblValorICMSST.Text = "Valor do ICMS ST";
            // 
            // lblvBICMSST
            // 
            this.lblvBICMSST.AutoSize = true;
            this.lblvBICMSST.Location = new System.Drawing.Point(21, 223);
            this.lblvBICMSST.Name = "lblvBICMSST";
            this.lblvBICMSST.Size = new System.Drawing.Size(109, 13);
            this.lblvBICMSST.TabIndex = 20;
            this.lblvBICMSST.Text = "Valor da BC ICMS ST";
            // 
            // lblPercRedBCICMSST
            // 
            this.lblPercRedBCICMSST.AutoSize = true;
            this.lblPercRedBCICMSST.Location = new System.Drawing.Point(208, 181);
            this.lblPercRedBCICMSST.Name = "lblPercRedBCICMSST";
            this.lblPercRedBCICMSST.Size = new System.Drawing.Size(168, 13);
            this.lblPercRedBCICMSST.TabIndex = 18;
            this.lblPercRedBCICMSST.Text = "Percentual Redução BC ICMS ST";
            // 
            // lblAliquotaICMSST
            // 
            this.lblAliquotaICMSST.AutoSize = true;
            this.lblAliquotaICMSST.Location = new System.Drawing.Point(211, 222);
            this.lblAliquotaICMSST.Name = "lblAliquotaICMSST";
            this.lblAliquotaICMSST.Size = new System.Drawing.Size(93, 13);
            this.lblAliquotaICMSST.TabIndex = 22;
            this.lblAliquotaICMSST.Text = "Alíquota ICMS ST";
            // 
            // lblPercICMSST
            // 
            this.lblPercICMSST.AutoSize = true;
            this.lblPercICMSST.Location = new System.Drawing.Point(21, 182);
            this.lblPercICMSST.Name = "lblPercICMSST";
            this.lblPercICMSST.Size = new System.Drawing.Size(159, 13);
            this.lblPercICMSST.TabIndex = 16;
            this.lblPercICMSST.Text = "Percentual da margem ICMS ST";
            // 
            // lblBCICMSST
            // 
            this.lblBCICMSST.AutoSize = true;
            this.lblBCICMSST.Location = new System.Drawing.Point(211, 139);
            this.lblBCICMSST.Name = "lblBCICMSST";
            this.lblBCICMSST.Size = new System.Drawing.Size(125, 13);
            this.lblBCICMSST.TabIndex = 14;
            this.lblBCICMSST.Text = "Modalidade BC ICMS ST";
            // 
            // lblModalidade
            // 
            this.lblModalidade.AutoSize = true;
            this.lblModalidade.Location = new System.Drawing.Point(21, 58);
            this.lblModalidade.Name = "lblModalidade";
            this.lblModalidade.Size = new System.Drawing.Size(62, 13);
            this.lblModalidade.TabIndex = 4;
            this.lblModalidade.Text = "Modalidade";
            // 
            // txtValorICMS70
            // 
            this.txtValorICMS70.Location = new System.Drawing.Point(21, 158);
            this.txtValorICMS70.Name = "txtValorICMS70";
            this.txtValorICMS70.Size = new System.Drawing.Size(152, 20);
            this.txtValorICMS70.TabIndex = 13;
            this.txtValorICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtAliquotaICMS70
            // 
            this.txtAliquotaICMS70.Location = new System.Drawing.Point(211, 115);
            this.txtAliquotaICMS70.Name = "txtAliquotaICMS70";
            this.txtAliquotaICMS70.Size = new System.Drawing.Size(152, 20);
            this.txtAliquotaICMS70.TabIndex = 11;
            this.txtAliquotaICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtValorBCICMS70
            // 
            this.txtValorBCICMS70.Location = new System.Drawing.Point(21, 117);
            this.txtValorBCICMS70.Name = "txtValorBCICMS70";
            this.txtValorBCICMS70.Size = new System.Drawing.Size(152, 20);
            this.txtValorBCICMS70.TabIndex = 9;
            this.txtValorBCICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCSTICMS70
            // 
            this.txtCSTICMS70.Location = new System.Drawing.Point(211, 33);
            this.txtCSTICMS70.Name = "txtCSTICMS70";
            this.txtCSTICMS70.Size = new System.Drawing.Size(152, 20);
            this.txtCSTICMS70.TabIndex = 3;
            this.txtCSTICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboModalidadeICMS70
            // 
            this.cboModalidadeICMS70.FormattingEnabled = true;
            this.cboModalidadeICMS70.Items.AddRange(new object[] {
            "Margem Valor Agregado",
            "Pauta",
            "Preço Tabelado Máximo",
            "Valor da Operação"});
            this.cboModalidadeICMS70.Location = new System.Drawing.Point(21, 75);
            this.cboModalidadeICMS70.Name = "cboModalidadeICMS70";
            this.cboModalidadeICMS70.Size = new System.Drawing.Size(152, 21);
            this.cboModalidadeICMS70.TabIndex = 5;
            this.cboModalidadeICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // cboOrigemICMS70
            // 
            this.cboOrigemICMS70.FormattingEnabled = true;
            this.cboOrigemICMS70.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMS70.Location = new System.Drawing.Point(21, 33);
            this.cboOrigemICMS70.Name = "cboOrigemICMS70";
            this.cboOrigemICMS70.Size = new System.Drawing.Size(152, 21);
            this.cboOrigemICMS70.TabIndex = 1;
            this.cboOrigemICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(21, 141);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 12;
            this.lblValor.Text = "Valor";
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(211, 98);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(47, 13);
            this.lblAliquota.TabIndex = 10;
            this.lblAliquota.Text = "Alíquota";
            // 
            // lblbcICMS
            // 
            this.lblbcICMS.AutoSize = true;
            this.lblbcICMS.Location = new System.Drawing.Point(21, 100);
            this.lblbcICMS.Name = "lblbcICMS";
            this.lblbcICMS.Size = new System.Drawing.Size(107, 13);
            this.lblbcICMS.TabIndex = 8;
            this.lblbcICMS.Text = "Valor da BC do ICMS";
            // 
            // lblTrbICMS
            // 
            this.lblTrbICMS.AutoSize = true;
            this.lblTrbICMS.Location = new System.Drawing.Point(208, 16);
            this.lblTrbICMS.Name = "lblTrbICMS";
            this.lblTrbICMS.Size = new System.Drawing.Size(102, 13);
            this.lblTrbICMS.TabIndex = 2;
            this.lblTrbICMS.Text = "Tributação do ICMS";
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(21, 16);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // txtpRedBCICMS70
            // 
            this.txtpRedBCICMS70.Location = new System.Drawing.Point(211, 74);
            this.txtpRedBCICMS70.Name = "txtpRedBCICMS70";
            this.txtpRedBCICMS70.Size = new System.Drawing.Size(152, 20);
            this.txtpRedBCICMS70.TabIndex = 7;
            this.txtpRedBCICMS70.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblpReduBC
            // 
            this.lblpReduBC.AutoSize = true;
            this.lblpReduBC.Location = new System.Drawing.Point(211, 57);
            this.lblpReduBC.Name = "lblpReduBC";
            this.lblpReduBC.Size = new System.Drawing.Size(152, 13);
            this.lblpReduBC.TabIndex = 6;
            this.lblpReduBC.Text = "Percentual da Redução de BC";
            // 
            // edtvICMS70Deson
            // 
            this.edtvICMS70Deson.Location = new System.Drawing.Point(21, 445);
            this.edtvICMS70Deson.Name = "edtvICMS70Deson";
            this.edtvICMS70Deson.Size = new System.Drawing.Size(152, 20);
            this.edtvICMS70Deson.TabIndex = 29;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(22, 428);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(136, 13);
            this.label1.TabIndex = 28;
            this.label1.Text = "Valor do ICMS Desonerado";
            // 
            // cbmotiboICMS70Deson
            // 
            this.cbmotiboICMS70Deson.FormattingEnabled = true;
            this.cbmotiboICMS70Deson.Items.AddRange(new object[] {
            "Produtor Agropecuário",
            "Outros",
            "Órgão de fomento e dev Agropec."});
            this.cbmotiboICMS70Deson.Location = new System.Drawing.Point(211, 280);
            this.cbmotiboICMS70Deson.Name = "cbmotiboICMS70Deson";
            this.cbmotiboICMS70Deson.Size = new System.Drawing.Size(152, 21);
            this.cbmotiboICMS70Deson.TabIndex = 27;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(211, 263);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(119, 13);
            this.label2.TabIndex = 26;
            this.label2.Text = "Motivo da desoneração";
            // 
            // lblvBCFCPST70
            // 
            this.lblvBCFCPST70.AutoSize = true;
            this.lblvBCFCPST70.Location = new System.Drawing.Point(208, 346);
            this.lblvBCFCPST70.Name = "lblvBCFCPST70";
            this.lblvBCFCPST70.Size = new System.Drawing.Size(103, 13);
            this.lblvBCFCPST70.TabIndex = 30;
            this.lblvBCFCPST70.Text = "Valor da BC FCP ST";
            // 
            // txtvBCFCPST70
            // 
            this.txtvBCFCPST70.Location = new System.Drawing.Point(208, 363);
            this.txtvBCFCPST70.Name = "txtvBCFCPST70";
            this.txtvBCFCPST70.Size = new System.Drawing.Size(152, 20);
            this.txtvBCFCPST70.TabIndex = 31;
            // 
            // txtpFCPST70
            // 
            this.txtpFCPST70.Location = new System.Drawing.Point(21, 404);
            this.txtpFCPST70.Name = "txtpFCPST70";
            this.txtpFCPST70.Size = new System.Drawing.Size(152, 20);
            this.txtpFCPST70.TabIndex = 33;
            // 
            // lblpFCPST70
            // 
            this.lblpFCPST70.AutoSize = true;
            this.lblpFCPST70.Location = new System.Drawing.Point(21, 387);
            this.lblpFCPST70.Name = "lblpFCPST70";
            this.lblpFCPST70.Size = new System.Drawing.Size(98, 13);
            this.lblpFCPST70.TabIndex = 32;
            this.lblpFCPST70.Text = "Percentual FCP ST";
            // 
            // txtvFCPST70
            // 
            this.txtvFCPST70.Location = new System.Drawing.Point(208, 404);
            this.txtvFCPST70.Name = "txtvFCPST70";
            this.txtvFCPST70.Size = new System.Drawing.Size(152, 20);
            this.txtvFCPST70.TabIndex = 35;
            // 
            // lblvFCPST70
            // 
            this.lblvFCPST70.AutoSize = true;
            this.lblvFCPST70.Location = new System.Drawing.Point(205, 387);
            this.lblvFCPST70.Name = "lblvFCPST70";
            this.lblvFCPST70.Size = new System.Drawing.Size(86, 13);
            this.lblvFCPST70.TabIndex = 34;
            this.lblvFCPST70.Text = "Valor do FCP ST";
            // 
            // txtvBCFCP70
            // 
            this.txtvBCFCP70.Location = new System.Drawing.Point(22, 322);
            this.txtvBCFCP70.Name = "txtvBCFCP70";
            this.txtvBCFCP70.Size = new System.Drawing.Size(152, 20);
            this.txtvBCFCP70.TabIndex = 38;
            // 
            // lblvBCFCP70
            // 
            this.lblvBCFCP70.AutoSize = true;
            this.lblvBCFCP70.Location = new System.Drawing.Point(22, 305);
            this.lblvBCFCP70.Name = "lblvBCFCP70";
            this.lblvBCFCP70.Size = new System.Drawing.Size(101, 13);
            this.lblvBCFCP70.TabIndex = 37;
            this.lblvBCFCP70.Text = "Valor da BC do FCP";
            // 
            // lblpFCP70
            // 
            this.lblpFCP70.AutoSize = true;
            this.lblpFCP70.Location = new System.Drawing.Point(211, 305);
            this.lblpFCP70.Name = "lblpFCP70";
            this.lblpFCP70.Size = new System.Drawing.Size(96, 13);
            this.lblpFCP70.TabIndex = 41;
            this.lblpFCP70.Text = "Percentual do FCP";
            // 
            // lblvFCP70
            // 
            this.lblvFCP70.AutoSize = true;
            this.lblvFCP70.Location = new System.Drawing.Point(21, 346);
            this.lblvFCP70.Name = "lblvFCP70";
            this.lblvFCP70.Size = new System.Drawing.Size(69, 13);
            this.lblvFCP70.TabIndex = 39;
            this.lblvFCP70.Text = "Valor do FCP";
            // 
            // txtvFCP70
            // 
            this.txtvFCP70.Location = new System.Drawing.Point(21, 363);
            this.txtvFCP70.Name = "txtvFCP70";
            this.txtvFCP70.Size = new System.Drawing.Size(152, 20);
            this.txtvFCP70.TabIndex = 40;
            // 
            // txtpFCP70
            // 
            this.txtpFCP70.Location = new System.Drawing.Point(211, 322);
            this.txtpFCP70.Name = "txtpFCP70";
            this.txtpFCP70.Size = new System.Drawing.Size(152, 20);
            this.txtpFCP70.TabIndex = 42;
            // 
            // frmICMS70
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(386, 480);
            this.Controls.Add(this.txtpFCP70);
            this.Controls.Add(this.lblpFCP70);
            this.Controls.Add(this.txtvFCP70);
            this.Controls.Add(this.lblvFCP70);
            this.Controls.Add(this.txtvBCFCP70);
            this.Controls.Add(this.lblvBCFCP70);
            this.Controls.Add(this.txtvFCPST70);
            this.Controls.Add(this.lblvFCPST70);
            this.Controls.Add(this.txtpFCPST70);
            this.Controls.Add(this.lblpFCPST70);
            this.Controls.Add(this.txtvBCFCPST70);
            this.Controls.Add(this.lblvBCFCPST70);
            this.Controls.Add(this.cbmotiboICMS70Deson);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.edtvICMS70Deson);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblpReduBC);
            this.Controls.Add(this.txtpRedBCICMS70);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.cboModSTICMS70);
            this.Controls.Add(this.txtpRedBCSTICMS70);
            this.Controls.Add(this.txtpICMSSTICMS70);
            this.Controls.Add(this.txtvICMSSTICMS70);
            this.Controls.Add(this.txtvBCSTICMS70);
            this.Controls.Add(this.txtpMVASTICMS70);
            this.Controls.Add(this.lblValorICMSST);
            this.Controls.Add(this.lblvBICMSST);
            this.Controls.Add(this.lblPercRedBCICMSST);
            this.Controls.Add(this.lblAliquotaICMSST);
            this.Controls.Add(this.lblPercICMSST);
            this.Controls.Add(this.lblBCICMSST);
            this.Controls.Add(this.lblModalidade);
            this.Controls.Add(this.txtValorICMS70);
            this.Controls.Add(this.txtAliquotaICMS70);
            this.Controls.Add(this.txtValorBCICMS70);
            this.Controls.Add(this.txtCSTICMS70);
            this.Controls.Add(this.cboModalidadeICMS70);
            this.Controls.Add(this.cboOrigemICMS70);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblbcICMS);
            this.Controls.Add(this.lblTrbICMS);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMS70";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS70";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.ComboBox cboModSTICMS70;
        public System.Windows.Forms.TextBox txtpRedBCSTICMS70;
        public System.Windows.Forms.TextBox txtpICMSSTICMS70;
        public System.Windows.Forms.TextBox txtvICMSSTICMS70;
        public System.Windows.Forms.TextBox txtvBCSTICMS70;
        public System.Windows.Forms.TextBox txtpMVASTICMS70;
        private System.Windows.Forms.Label lblValorICMSST;
        private System.Windows.Forms.Label lblvBICMSST;
        private System.Windows.Forms.Label lblPercRedBCICMSST;
        private System.Windows.Forms.Label lblAliquotaICMSST;
        private System.Windows.Forms.Label lblPercICMSST;
        private System.Windows.Forms.Label lblBCICMSST;
        private System.Windows.Forms.Label lblModalidade;
        public System.Windows.Forms.TextBox txtValorICMS70;
        public System.Windows.Forms.TextBox txtAliquotaICMS70;
        public System.Windows.Forms.TextBox txtValorBCICMS70;
        public System.Windows.Forms.TextBox txtCSTICMS70;
        public System.Windows.Forms.ComboBox cboModalidadeICMS70;
        public System.Windows.Forms.ComboBox cboOrigemICMS70;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblbcICMS;
        private System.Windows.Forms.Label lblTrbICMS;
        private System.Windows.Forms.Label lblOrigem;
        public System.Windows.Forms.TextBox txtpRedBCICMS70;
        private System.Windows.Forms.Label lblpReduBC;
        public System.Windows.Forms.TextBox edtvICMS70Deson;
        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.ComboBox cbmotiboICMS70Deson;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblvBCFCPST70;
        public System.Windows.Forms.TextBox txtvBCFCPST70;
        public System.Windows.Forms.TextBox txtpFCPST70;
        private System.Windows.Forms.Label lblpFCPST70;
        public System.Windows.Forms.TextBox txtvFCPST70;
        private System.Windows.Forms.Label lblvFCPST70;
        public System.Windows.Forms.TextBox txtvBCFCP70;
        private System.Windows.Forms.Label lblvBCFCP70;
        private System.Windows.Forms.Label lblpFCP70;
        private System.Windows.Forms.Label lblvFCP70;
        public System.Windows.Forms.TextBox txtvFCP70;
        public System.Windows.Forms.TextBox txtpFCP70;
    }
}