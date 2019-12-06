namespace WindowsFormsApplication1
{
    partial class frmICMS30
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
            this.cboModSTICMS30 = new System.Windows.Forms.ComboBox();
            this.txtpRedBCSTICMS30 = new System.Windows.Forms.TextBox();
            this.txtpICMSSTICMS30 = new System.Windows.Forms.TextBox();
            this.txtvICMSSTICMS30 = new System.Windows.Forms.TextBox();
            this.txtvBCSTICMS30 = new System.Windows.Forms.TextBox();
            this.txtpMVASTICMS30 = new System.Windows.Forms.TextBox();
            this.lblValorICMSST = new System.Windows.Forms.Label();
            this.lblValorVBICMSST = new System.Windows.Forms.Label();
            this.lblPercRedBCICMSST = new System.Windows.Forms.Label();
            this.lblAliquotaICMSST = new System.Windows.Forms.Label();
            this.lblPercICMSST = new System.Windows.Forms.Label();
            this.lblBCICMSST = new System.Windows.Forms.Label();
            this.txtCSTICMS30 = new System.Windows.Forms.TextBox();
            this.cboOrigemICMS30 = new System.Windows.Forms.ComboBox();
            this.lblTrbICMS = new System.Windows.Forms.Label();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.cbMotivoDesonICMS30 = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.edtvICMS30Deson = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.lblvBCFCPST30 = new System.Windows.Forms.Label();
            this.txtvBCFCPST30 = new System.Windows.Forms.TextBox();
            this.txtpFCPST30 = new System.Windows.Forms.TextBox();
            this.lblpFCPST30 = new System.Windows.Forms.Label();
            this.txtvFCPST30 = new System.Windows.Forms.TextBox();
            this.lblvFCPST30 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(275, 343);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 26;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // cboModSTICMS30
            // 
            this.cboModSTICMS30.FormattingEnabled = true;
            this.cboModSTICMS30.Items.AddRange(new object[] {
            "Preço tabelado ou máximo sugerido",
            "Lista Negativa",
            "Lista Positiva",
            "Lista Neutra",
            "Margem Valor Agregado",
            "Pauta"});
            this.cboModSTICMS30.Location = new System.Drawing.Point(18, 89);
            this.cboModSTICMS30.Name = "cboModSTICMS30";
            this.cboModSTICMS30.Size = new System.Drawing.Size(153, 21);
            this.cboModSTICMS30.TabIndex = 5;
            this.cboModSTICMS30.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // txtpRedBCSTICMS30
            // 
            this.txtpRedBCSTICMS30.Location = new System.Drawing.Point(18, 143);
            this.txtpRedBCSTICMS30.Name = "txtpRedBCSTICMS30";
            this.txtpRedBCSTICMS30.Size = new System.Drawing.Size(153, 20);
            this.txtpRedBCSTICMS30.TabIndex = 9;
            this.txtpRedBCSTICMS30.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpICMSSTICMS30
            // 
            this.txtpICMSSTICMS30.Location = new System.Drawing.Point(18, 195);
            this.txtpICMSSTICMS30.Name = "txtpICMSSTICMS30";
            this.txtpICMSSTICMS30.Size = new System.Drawing.Size(153, 20);
            this.txtpICMSSTICMS30.TabIndex = 13;
            this.txtpICMSSTICMS30.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvICMSSTICMS30
            // 
            this.txtvICMSSTICMS30.Location = new System.Drawing.Point(206, 195);
            this.txtvICMSSTICMS30.Name = "txtvICMSSTICMS30";
            this.txtvICMSSTICMS30.Size = new System.Drawing.Size(144, 20);
            this.txtvICMSSTICMS30.TabIndex = 15;
            this.txtvICMSSTICMS30.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCSTICMS30
            // 
            this.txtvBCSTICMS30.Location = new System.Drawing.Point(206, 143);
            this.txtvBCSTICMS30.Name = "txtvBCSTICMS30";
            this.txtvBCSTICMS30.Size = new System.Drawing.Size(144, 20);
            this.txtvBCSTICMS30.TabIndex = 11;
            this.txtvBCSTICMS30.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpMVASTICMS30
            // 
            this.txtpMVASTICMS30.Location = new System.Drawing.Point(206, 89);
            this.txtpMVASTICMS30.Name = "txtpMVASTICMS30";
            this.txtpMVASTICMS30.Size = new System.Drawing.Size(144, 20);
            this.txtpMVASTICMS30.TabIndex = 7;
            this.txtpMVASTICMS30.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblValorICMSST
            // 
            this.lblValorICMSST.AutoSize = true;
            this.lblValorICMSST.Location = new System.Drawing.Point(203, 179);
            this.lblValorICMSST.Name = "lblValorICMSST";
            this.lblValorICMSST.Size = new System.Drawing.Size(92, 13);
            this.lblValorICMSST.TabIndex = 14;
            this.lblValorICMSST.Text = "Valor do ICMS ST";
            // 
            // lblValorVBICMSST
            // 
            this.lblValorVBICMSST.AutoSize = true;
            this.lblValorVBICMSST.Location = new System.Drawing.Point(203, 127);
            this.lblValorVBICMSST.Name = "lblValorVBICMSST";
            this.lblValorVBICMSST.Size = new System.Drawing.Size(109, 13);
            this.lblValorVBICMSST.TabIndex = 10;
            this.lblValorVBICMSST.Text = "Valor da BC ICMS ST";
            // 
            // lblPercRedBCICMSST
            // 
            this.lblPercRedBCICMSST.AutoSize = true;
            this.lblPercRedBCICMSST.Location = new System.Drawing.Point(15, 127);
            this.lblPercRedBCICMSST.Name = "lblPercRedBCICMSST";
            this.lblPercRedBCICMSST.Size = new System.Drawing.Size(168, 13);
            this.lblPercRedBCICMSST.TabIndex = 8;
            this.lblPercRedBCICMSST.Text = "Percentual Redução BC ICMS ST";
            // 
            // lblAliquotaICMSST
            // 
            this.lblAliquotaICMSST.AutoSize = true;
            this.lblAliquotaICMSST.Location = new System.Drawing.Point(15, 179);
            this.lblAliquotaICMSST.Name = "lblAliquotaICMSST";
            this.lblAliquotaICMSST.Size = new System.Drawing.Size(93, 13);
            this.lblAliquotaICMSST.TabIndex = 12;
            this.lblAliquotaICMSST.Text = "Alíquota ICMS ST";
            // 
            // lblPercICMSST
            // 
            this.lblPercICMSST.AutoSize = true;
            this.lblPercICMSST.Location = new System.Drawing.Point(203, 73);
            this.lblPercICMSST.Name = "lblPercICMSST";
            this.lblPercICMSST.Size = new System.Drawing.Size(159, 13);
            this.lblPercICMSST.TabIndex = 6;
            this.lblPercICMSST.Text = "Percentual da margem ICMS ST";
            // 
            // lblBCICMSST
            // 
            this.lblBCICMSST.AutoSize = true;
            this.lblBCICMSST.Location = new System.Drawing.Point(15, 73);
            this.lblBCICMSST.Name = "lblBCICMSST";
            this.lblBCICMSST.Size = new System.Drawing.Size(125, 13);
            this.lblBCICMSST.TabIndex = 4;
            this.lblBCICMSST.Text = "Modalidade BC ICMS ST";
            // 
            // txtCSTICMS30
            // 
            this.txtCSTICMS30.Location = new System.Drawing.Point(206, 35);
            this.txtCSTICMS30.Name = "txtCSTICMS30";
            this.txtCSTICMS30.Size = new System.Drawing.Size(144, 20);
            this.txtCSTICMS30.TabIndex = 3;
            this.txtCSTICMS30.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboOrigemICMS30
            // 
            this.cboOrigemICMS30.FormattingEnabled = true;
            this.cboOrigemICMS30.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMS30.Location = new System.Drawing.Point(18, 35);
            this.cboOrigemICMS30.Name = "cboOrigemICMS30";
            this.cboOrigemICMS30.Size = new System.Drawing.Size(153, 21);
            this.cboOrigemICMS30.TabIndex = 1;
            this.cboOrigemICMS30.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblTrbICMS
            // 
            this.lblTrbICMS.AutoSize = true;
            this.lblTrbICMS.Location = new System.Drawing.Point(203, 19);
            this.lblTrbICMS.Name = "lblTrbICMS";
            this.lblTrbICMS.Size = new System.Drawing.Size(102, 13);
            this.lblTrbICMS.TabIndex = 2;
            this.lblTrbICMS.Text = "Tributação do ICMS";
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(15, 19);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // cbMotivoDesonICMS30
            // 
            this.cbMotivoDesonICMS30.FormattingEnabled = true;
            this.cbMotivoDesonICMS30.Items.AddRange(new object[] {
            "Utilitários e Motocicletas das Áreas de Livre Comércio",
            "SUFRAMA",
            "Outros"});
            this.cbMotivoDesonICMS30.Location = new System.Drawing.Point(18, 247);
            this.cbMotivoDesonICMS30.Name = "cbMotivoDesonICMS30";
            this.cbMotivoDesonICMS30.Size = new System.Drawing.Size(153, 21);
            this.cbMotivoDesonICMS30.TabIndex = 17;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 231);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(119, 13);
            this.label1.TabIndex = 16;
            this.label1.Text = "Motivo da desoneração";
            // 
            // edtvICMS30Deson
            // 
            this.edtvICMS30Deson.Location = new System.Drawing.Point(206, 247);
            this.edtvICMS30Deson.Name = "edtvICMS30Deson";
            this.edtvICMS30Deson.Size = new System.Drawing.Size(144, 20);
            this.edtvICMS30Deson.TabIndex = 19;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(203, 231);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(136, 13);
            this.label2.TabIndex = 18;
            this.label2.Text = "Valor do ICMS Desonerado";
            // 
            // lblvBCFCPST30
            // 
            this.lblvBCFCPST30.AutoSize = true;
            this.lblvBCFCPST30.Location = new System.Drawing.Point(15, 283);
            this.lblvBCFCPST30.Name = "lblvBCFCPST30";
            this.lblvBCFCPST30.Size = new System.Drawing.Size(88, 13);
            this.lblvBCFCPST30.TabIndex = 20;
            this.lblvBCFCPST30.Text = "Valor BC FCP ST";
            // 
            // txtvBCFCPST30
            // 
            this.txtvBCFCPST30.Location = new System.Drawing.Point(18, 299);
            this.txtvBCFCPST30.Name = "txtvBCFCPST30";
            this.txtvBCFCPST30.Size = new System.Drawing.Size(153, 20);
            this.txtvBCFCPST30.TabIndex = 21;
            // 
            // txtpFCPST30
            // 
            this.txtpFCPST30.Location = new System.Drawing.Point(206, 299);
            this.txtpFCPST30.Name = "txtpFCPST30";
            this.txtpFCPST30.Size = new System.Drawing.Size(144, 20);
            this.txtpFCPST30.TabIndex = 23;
            // 
            // lblpFCPST30
            // 
            this.lblpFCPST30.AutoSize = true;
            this.lblpFCPST30.Location = new System.Drawing.Point(203, 283);
            this.lblpFCPST30.Name = "lblpFCPST30";
            this.lblpFCPST30.Size = new System.Drawing.Size(98, 13);
            this.lblpFCPST30.TabIndex = 22;
            this.lblpFCPST30.Text = "Percentual FCP ST";
            // 
            // txtvFCPST30
            // 
            this.txtvFCPST30.Location = new System.Drawing.Point(18, 345);
            this.txtvFCPST30.Name = "txtvFCPST30";
            this.txtvFCPST30.Size = new System.Drawing.Size(153, 20);
            this.txtvFCPST30.TabIndex = 25;
            // 
            // lblvFCPST30
            // 
            this.lblvFCPST30.AutoSize = true;
            this.lblvFCPST30.Location = new System.Drawing.Point(15, 329);
            this.lblvFCPST30.Name = "lblvFCPST30";
            this.lblvFCPST30.Size = new System.Drawing.Size(71, 13);
            this.lblvFCPST30.TabIndex = 24;
            this.lblvFCPST30.Text = "Valor FCP ST";
            // 
            // frmICMS30
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(371, 392);
            this.Controls.Add(this.txtvFCPST30);
            this.Controls.Add(this.lblvFCPST30);
            this.Controls.Add(this.txtpFCPST30);
            this.Controls.Add(this.lblpFCPST30);
            this.Controls.Add(this.txtvBCFCPST30);
            this.Controls.Add(this.lblvBCFCPST30);
            this.Controls.Add(this.edtvICMS30Deson);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cbMotivoDesonICMS30);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.cboModSTICMS30);
            this.Controls.Add(this.txtpRedBCSTICMS30);
            this.Controls.Add(this.txtpICMSSTICMS30);
            this.Controls.Add(this.txtvICMSSTICMS30);
            this.Controls.Add(this.txtvBCSTICMS30);
            this.Controls.Add(this.txtpMVASTICMS30);
            this.Controls.Add(this.lblValorICMSST);
            this.Controls.Add(this.lblValorVBICMSST);
            this.Controls.Add(this.lblPercRedBCICMSST);
            this.Controls.Add(this.lblAliquotaICMSST);
            this.Controls.Add(this.lblPercICMSST);
            this.Controls.Add(this.lblBCICMSST);
            this.Controls.Add(this.txtCSTICMS30);
            this.Controls.Add(this.cboOrigemICMS30);
            this.Controls.Add(this.lblTrbICMS);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMS30";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS30";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        private System.Windows.Forms.Label lblValorICMSST;
        private System.Windows.Forms.Label lblValorVBICMSST;
        private System.Windows.Forms.Label lblPercRedBCICMSST;
        private System.Windows.Forms.Label lblAliquotaICMSST;
        private System.Windows.Forms.Label lblPercICMSST;
        private System.Windows.Forms.Label lblBCICMSST;
        private System.Windows.Forms.Label lblTrbICMS;
        private System.Windows.Forms.Label lblOrigem;
        public System.Windows.Forms.ComboBox cboModSTICMS30;
        public System.Windows.Forms.TextBox txtpRedBCSTICMS30;
        public System.Windows.Forms.TextBox txtpICMSSTICMS30;
        public System.Windows.Forms.TextBox txtvICMSSTICMS30;
        public System.Windows.Forms.TextBox txtvBCSTICMS30;
        public System.Windows.Forms.TextBox txtpMVASTICMS30;
        public System.Windows.Forms.TextBox txtCSTICMS30;
        public System.Windows.Forms.ComboBox cboOrigemICMS30;
        public System.Windows.Forms.ComboBox cbMotivoDesonICMS30;
        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.TextBox edtvICMS30Deson;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblvBCFCPST30;
        public System.Windows.Forms.TextBox txtvBCFCPST30;
        public System.Windows.Forms.TextBox txtpFCPST30;
        private System.Windows.Forms.Label lblpFCPST30;
        public System.Windows.Forms.TextBox txtvFCPST30;
        private System.Windows.Forms.Label lblvFCPST30;
    }
}