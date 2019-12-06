namespace WindowsFormsApplication1
{
    partial class frmICMSSN202
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
            this.txtCSOSNICMSSN202 = new System.Windows.Forms.TextBox();
            this.lblCodSitOpe = new System.Windows.Forms.Label();
            this.txtpMVASTICMSSN202 = new System.Windows.Forms.TextBox();
            this.lblPercICMSST = new System.Windows.Forms.Label();
            this.btnGravar = new System.Windows.Forms.Button();
            this.cboModSTICMSSN202 = new System.Windows.Forms.ComboBox();
            this.txtpRedBCSTICMSSN202 = new System.Windows.Forms.TextBox();
            this.txtpICMSSTICMSSN202 = new System.Windows.Forms.TextBox();
            this.txtvICMSSTICMSSN202 = new System.Windows.Forms.TextBox();
            this.txtvBCSTICMSSN202 = new System.Windows.Forms.TextBox();
            this.lblValorICMSST = new System.Windows.Forms.Label();
            this.lblValorVBICMSST = new System.Windows.Forms.Label();
            this.lblPercRedBCICMSST = new System.Windows.Forms.Label();
            this.lblAliquotaICMSST = new System.Windows.Forms.Label();
            this.lblBCICMSST = new System.Windows.Forms.Label();
            this.cboOrigemICMSSN202 = new System.Windows.Forms.ComboBox();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.txtvBCFCPST202 = new System.Windows.Forms.TextBox();
            this.txtpFCPST202 = new System.Windows.Forms.TextBox();
            this.lblpFCPST202 = new System.Windows.Forms.Label();
            this.lblvBCFCPST202 = new System.Windows.Forms.Label();
            this.txtvFCPST202 = new System.Windows.Forms.TextBox();
            this.lblvFCPST202 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtCSOSNICMSSN202
            // 
            this.txtCSOSNICMSSN202.Location = new System.Drawing.Point(190, 28);
            this.txtCSOSNICMSSN202.Name = "txtCSOSNICMSSN202";
            this.txtCSOSNICMSSN202.Size = new System.Drawing.Size(144, 20);
            this.txtCSOSNICMSSN202.TabIndex = 3;
            this.txtCSOSNICMSSN202.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblCodSitOpe
            // 
            this.lblCodSitOpe.AutoSize = true;
            this.lblCodSitOpe.Location = new System.Drawing.Point(187, 11);
            this.lblCodSitOpe.Name = "lblCodSitOpe";
            this.lblCodSitOpe.Size = new System.Drawing.Size(112, 13);
            this.lblCodSitOpe.TabIndex = 2;
            this.lblCodSitOpe.Text = "Cód. Sit. da Operação";
            // 
            // txtpMVASTICMSSN202
            // 
            this.txtpMVASTICMSSN202.Location = new System.Drawing.Point(190, 70);
            this.txtpMVASTICMSSN202.Name = "txtpMVASTICMSSN202";
            this.txtpMVASTICMSSN202.Size = new System.Drawing.Size(144, 20);
            this.txtpMVASTICMSSN202.TabIndex = 7;
            this.txtpMVASTICMSSN202.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblPercICMSST
            // 
            this.lblPercICMSST.AutoSize = true;
            this.lblPercICMSST.Location = new System.Drawing.Point(187, 56);
            this.lblPercICMSST.Name = "lblPercICMSST";
            this.lblPercICMSST.Size = new System.Drawing.Size(104, 13);
            this.lblPercICMSST.TabIndex = 6;
            this.lblPercICMSST.Text = "Percentual ICMS ST";
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(259, 231);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 22;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // cboModSTICMSSN202
            // 
            this.cboModSTICMSSN202.FormattingEnabled = true;
            this.cboModSTICMSSN202.Items.AddRange(new object[] {
            "Preço tabelado ou máximo sugerido",
            "Lista Negativa",
            "Lista Positiva",
            "Lista Neutra",
            "Margem Valor Agregado",
            "Pauta"});
            this.cboModSTICMSSN202.Location = new System.Drawing.Point(11, 69);
            this.cboModSTICMSSN202.Name = "cboModSTICMSSN202";
            this.cboModSTICMSSN202.Size = new System.Drawing.Size(144, 21);
            this.cboModSTICMSSN202.TabIndex = 5;
            this.cboModSTICMSSN202.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // txtpRedBCSTICMSSN202
            // 
            this.txtpRedBCSTICMSSN202.Location = new System.Drawing.Point(10, 111);
            this.txtpRedBCSTICMSSN202.Name = "txtpRedBCSTICMSSN202";
            this.txtpRedBCSTICMSSN202.Size = new System.Drawing.Size(144, 20);
            this.txtpRedBCSTICMSSN202.TabIndex = 9;
            this.txtpRedBCSTICMSSN202.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpICMSSTICMSSN202
            // 
            this.txtpICMSSTICMSSN202.Location = new System.Drawing.Point(11, 152);
            this.txtpICMSSTICMSSN202.Name = "txtpICMSSTICMSSN202";
            this.txtpICMSSTICMSSN202.Size = new System.Drawing.Size(144, 20);
            this.txtpICMSSTICMSSN202.TabIndex = 13;
            this.txtpICMSSTICMSSN202.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvICMSSTICMSSN202
            // 
            this.txtvICMSSTICMSSN202.Location = new System.Drawing.Point(190, 152);
            this.txtvICMSSTICMSSN202.Name = "txtvICMSSTICMSSN202";
            this.txtvICMSSTICMSSN202.Size = new System.Drawing.Size(144, 20);
            this.txtvICMSSTICMSSN202.TabIndex = 15;
            this.txtvICMSSTICMSSN202.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCSTICMSSN202
            // 
            this.txtvBCSTICMSSN202.Location = new System.Drawing.Point(190, 111);
            this.txtvBCSTICMSSN202.Name = "txtvBCSTICMSSN202";
            this.txtvBCSTICMSSN202.Size = new System.Drawing.Size(144, 20);
            this.txtvBCSTICMSSN202.TabIndex = 11;
            this.txtvBCSTICMSSN202.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblValorICMSST
            // 
            this.lblValorICMSST.AutoSize = true;
            this.lblValorICMSST.Location = new System.Drawing.Point(187, 137);
            this.lblValorICMSST.Name = "lblValorICMSST";
            this.lblValorICMSST.Size = new System.Drawing.Size(92, 13);
            this.lblValorICMSST.TabIndex = 14;
            this.lblValorICMSST.Text = "Valor do ICMS ST";
            // 
            // lblValorVBICMSST
            // 
            this.lblValorVBICMSST.AutoSize = true;
            this.lblValorVBICMSST.Location = new System.Drawing.Point(187, 95);
            this.lblValorVBICMSST.Name = "lblValorVBICMSST";
            this.lblValorVBICMSST.Size = new System.Drawing.Size(109, 13);
            this.lblValorVBICMSST.TabIndex = 10;
            this.lblValorVBICMSST.Text = "Valor da BC ICMS ST";
            // 
            // lblPercRedBCICMSST
            // 
            this.lblPercRedBCICMSST.AutoSize = true;
            this.lblPercRedBCICMSST.Location = new System.Drawing.Point(7, 95);
            this.lblPercRedBCICMSST.Name = "lblPercRedBCICMSST";
            this.lblPercRedBCICMSST.Size = new System.Drawing.Size(168, 13);
            this.lblPercRedBCICMSST.TabIndex = 8;
            this.lblPercRedBCICMSST.Text = "Percentual Redução BC ICMS ST";
            // 
            // lblAliquotaICMSST
            // 
            this.lblAliquotaICMSST.AutoSize = true;
            this.lblAliquotaICMSST.Location = new System.Drawing.Point(8, 135);
            this.lblAliquotaICMSST.Name = "lblAliquotaICMSST";
            this.lblAliquotaICMSST.Size = new System.Drawing.Size(93, 13);
            this.lblAliquotaICMSST.TabIndex = 12;
            this.lblAliquotaICMSST.Text = "Alíquota ICMS ST";
            // 
            // lblBCICMSST
            // 
            this.lblBCICMSST.AutoSize = true;
            this.lblBCICMSST.Location = new System.Drawing.Point(8, 52);
            this.lblBCICMSST.Name = "lblBCICMSST";
            this.lblBCICMSST.Size = new System.Drawing.Size(125, 13);
            this.lblBCICMSST.TabIndex = 4;
            this.lblBCICMSST.Text = "Modalidade BC ICMS ST";
            // 
            // cboOrigemICMSSN202
            // 
            this.cboOrigemICMSSN202.FormattingEnabled = true;
            this.cboOrigemICMSSN202.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMSSN202.Location = new System.Drawing.Point(11, 27);
            this.cboOrigemICMSSN202.Name = "cboOrigemICMSSN202";
            this.cboOrigemICMSSN202.Size = new System.Drawing.Size(144, 21);
            this.cboOrigemICMSSN202.TabIndex = 1;
            this.cboOrigemICMSSN202.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(8, 10);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // txtvBCFCPST202
            // 
            this.txtvBCFCPST202.Location = new System.Drawing.Point(11, 193);
            this.txtvBCFCPST202.Name = "txtvBCFCPST202";
            this.txtvBCFCPST202.Size = new System.Drawing.Size(144, 20);
            this.txtvBCFCPST202.TabIndex = 17;
            // 
            // txtpFCPST202
            // 
            this.txtpFCPST202.Location = new System.Drawing.Point(191, 193);
            this.txtpFCPST202.Name = "txtpFCPST202";
            this.txtpFCPST202.Size = new System.Drawing.Size(144, 20);
            this.txtpFCPST202.TabIndex = 19;
            // 
            // lblpFCPST202
            // 
            this.lblpFCPST202.AutoSize = true;
            this.lblpFCPST202.Location = new System.Drawing.Point(188, 176);
            this.lblpFCPST202.Name = "lblpFCPST202";
            this.lblpFCPST202.Size = new System.Drawing.Size(98, 13);
            this.lblpFCPST202.TabIndex = 18;
            this.lblpFCPST202.Text = "Percentual FCP ST";
            // 
            // lblvBCFCPST202
            // 
            this.lblvBCFCPST202.AutoSize = true;
            this.lblvBCFCPST202.Location = new System.Drawing.Point(8, 176);
            this.lblvBCFCPST202.Name = "lblvBCFCPST202";
            this.lblvBCFCPST202.Size = new System.Drawing.Size(103, 13);
            this.lblvBCFCPST202.TabIndex = 16;
            this.lblvBCFCPST202.Text = "Valor da BC FCP ST";
            // 
            // txtvFCPST202
            // 
            this.txtvFCPST202.Location = new System.Drawing.Point(11, 234);
            this.txtvFCPST202.Name = "txtvFCPST202";
            this.txtvFCPST202.Size = new System.Drawing.Size(144, 20);
            this.txtvFCPST202.TabIndex = 21;
            // 
            // lblvFCPST202
            // 
            this.lblvFCPST202.AutoSize = true;
            this.lblvFCPST202.Location = new System.Drawing.Point(11, 217);
            this.lblvFCPST202.Name = "lblvFCPST202";
            this.lblvFCPST202.Size = new System.Drawing.Size(86, 13);
            this.lblvFCPST202.TabIndex = 20;
            this.lblvFCPST202.Text = "Valor do FCP ST";
            // 
            // frmICMSSN202
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(350, 265);
            this.Controls.Add(this.txtvFCPST202);
            this.Controls.Add(this.lblvFCPST202);
            this.Controls.Add(this.txtvBCFCPST202);
            this.Controls.Add(this.txtpFCPST202);
            this.Controls.Add(this.lblpFCPST202);
            this.Controls.Add(this.lblvBCFCPST202);
            this.Controls.Add(this.txtCSOSNICMSSN202);
            this.Controls.Add(this.lblCodSitOpe);
            this.Controls.Add(this.txtpMVASTICMSSN202);
            this.Controls.Add(this.lblPercICMSST);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.cboModSTICMSSN202);
            this.Controls.Add(this.txtpRedBCSTICMSSN202);
            this.Controls.Add(this.txtpICMSSTICMSSN202);
            this.Controls.Add(this.txtvICMSSTICMSSN202);
            this.Controls.Add(this.txtvBCSTICMSSN202);
            this.Controls.Add(this.lblValorICMSST);
            this.Controls.Add(this.lblValorVBICMSST);
            this.Controls.Add(this.lblPercRedBCICMSST);
            this.Controls.Add(this.lblAliquotaICMSST);
            this.Controls.Add(this.lblBCICMSST);
            this.Controls.Add(this.cboOrigemICMSSN202);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMSSN202";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS SN 202";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.TextBox txtCSOSNICMSSN202;
        private System.Windows.Forms.Label lblCodSitOpe;
        public System.Windows.Forms.TextBox txtpMVASTICMSSN202;
        private System.Windows.Forms.Label lblPercICMSST;
        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.ComboBox cboModSTICMSSN202;
        public System.Windows.Forms.TextBox txtpRedBCSTICMSSN202;
        public System.Windows.Forms.TextBox txtpICMSSTICMSSN202;
        public System.Windows.Forms.TextBox txtvICMSSTICMSSN202;
        public System.Windows.Forms.TextBox txtvBCSTICMSSN202;
        private System.Windows.Forms.Label lblValorICMSST;
        private System.Windows.Forms.Label lblValorVBICMSST;
        private System.Windows.Forms.Label lblPercRedBCICMSST;
        private System.Windows.Forms.Label lblAliquotaICMSST;
        private System.Windows.Forms.Label lblBCICMSST;
        public System.Windows.Forms.ComboBox cboOrigemICMSSN202;
        private System.Windows.Forms.Label lblOrigem;
        public System.Windows.Forms.TextBox txtvBCFCPST202;
        public System.Windows.Forms.TextBox txtpFCPST202;
        private System.Windows.Forms.Label lblpFCPST202;
        private System.Windows.Forms.Label lblvBCFCPST202;
        public System.Windows.Forms.TextBox txtvFCPST202;
        private System.Windows.Forms.Label lblvFCPST202;
    }
}