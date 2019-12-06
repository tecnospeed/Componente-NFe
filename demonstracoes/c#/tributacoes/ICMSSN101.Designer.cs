namespace WindowsFormsApplication1
{
    partial class frmICMSSN101
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
            this.txtpCredSNICMSN101 = new System.Windows.Forms.TextBox();
            this.cboOrigemICMSSN101 = new System.Windows.Forms.ComboBox();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.txtCSOSNICMSN101 = new System.Windows.Forms.TextBox();
            this.lblCodSitOp = new System.Windows.Forms.Label();
            this.txtvCredICMSSNICMSN101 = new System.Windows.Forms.TextBox();
            this.lblvCredIcms = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(252, 100);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 8;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // txtpCredSNICMSN101
            // 
            this.txtpCredSNICMSN101.Location = new System.Drawing.Point(12, 74);
            this.txtpCredSNICMSN101.Name = "txtpCredSNICMSN101";
            this.txtpCredSNICMSN101.Size = new System.Drawing.Size(144, 20);
            this.txtpCredSNICMSN101.TabIndex = 5;
            this.txtpCredSNICMSN101.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboOrigemICMSSN101
            // 
            this.cboOrigemICMSSN101.FormattingEnabled = true;
            this.cboOrigemICMSSN101.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMSSN101.Location = new System.Drawing.Point(12, 27);
            this.cboOrigemICMSSN101.Name = "cboOrigemICMSSN101";
            this.cboOrigemICMSSN101.Size = new System.Drawing.Size(144, 21);
            this.cboOrigemICMSSN101.TabIndex = 1;
            this.cboOrigemICMSSN101.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(9, 58);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(47, 13);
            this.lblAliquota.TabIndex = 4;
            this.lblAliquota.Text = "Alíquota";
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(9, 11);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // txtCSOSNICMSN101
            // 
            this.txtCSOSNICMSN101.Location = new System.Drawing.Point(183, 28);
            this.txtCSOSNICMSN101.Name = "txtCSOSNICMSN101";
            this.txtCSOSNICMSN101.Size = new System.Drawing.Size(144, 20);
            this.txtCSOSNICMSN101.TabIndex = 3;
            this.txtCSOSNICMSN101.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblCodSitOp
            // 
            this.lblCodSitOp.AutoSize = true;
            this.lblCodSitOp.Location = new System.Drawing.Point(180, 12);
            this.lblCodSitOp.Name = "lblCodSitOp";
            this.lblCodSitOp.Size = new System.Drawing.Size(110, 13);
            this.lblCodSitOp.TabIndex = 2;
            this.lblCodSitOp.Text = "Cód. sit. da Operação";
            // 
            // txtvCredICMSSNICMSN101
            // 
            this.txtvCredICMSSNICMSN101.Location = new System.Drawing.Point(183, 74);
            this.txtvCredICMSSNICMSN101.Name = "txtvCredICMSSNICMSN101";
            this.txtvCredICMSSNICMSN101.Size = new System.Drawing.Size(144, 20);
            this.txtvCredICMSSNICMSN101.TabIndex = 7;
            this.txtvCredICMSSNICMSN101.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblvCredIcms
            // 
            this.lblvCredIcms.AutoSize = true;
            this.lblvCredIcms.Location = new System.Drawing.Point(180, 58);
            this.lblvCredIcms.Name = "lblvCredIcms";
            this.lblvCredIcms.Size = new System.Drawing.Size(111, 13);
            this.lblvCredIcms.TabIndex = 6;
            this.lblvCredIcms.Text = "Valor Crédito do ICMS";
            // 
            // frmICMSSN101
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(344, 133);
            this.Controls.Add(this.txtvCredICMSSNICMSN101);
            this.Controls.Add(this.lblvCredIcms);
            this.Controls.Add(this.txtCSOSNICMSN101);
            this.Controls.Add(this.lblCodSitOp);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtpCredSNICMSN101);
            this.Controls.Add(this.cboOrigemICMSSN101);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMSSN101";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS SN 101";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox txtpCredSNICMSN101;
        public System.Windows.Forms.ComboBox cboOrigemICMSSN101;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblOrigem;
        public System.Windows.Forms.TextBox txtCSOSNICMSN101;
        private System.Windows.Forms.Label lblCodSitOp;
        public System.Windows.Forms.TextBox txtvCredICMSSNICMSN101;
        private System.Windows.Forms.Label lblvCredIcms;
    }
}