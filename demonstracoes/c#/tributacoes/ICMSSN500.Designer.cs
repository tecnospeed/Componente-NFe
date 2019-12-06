namespace WindowsFormsApplication1
{
    partial class frmICMSSN500
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
            this.txtCSOSNICMSSN500 = new System.Windows.Forms.TextBox();
            this.lblCodSitOpe = new System.Windows.Forms.Label();
            this.btnGravar = new System.Windows.Forms.Button();
            this.cboOrigemICMSSN500 = new System.Windows.Forms.ComboBox();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.txtvBCSTRetICMSSN500 = new System.Windows.Forms.TextBox();
            this.lblvBCICMSSTret = new System.Windows.Forms.Label();
            this.txtvICMSSTRetICMSSN500 = new System.Windows.Forms.TextBox();
            this.lblvICMSSTRetido = new System.Windows.Forms.Label();
            this.txtvBCFCPSTRet500 = new System.Windows.Forms.TextBox();
            this.lblvBCFCPSTRet500 = new System.Windows.Forms.Label();
            this.txtpFCPSTRet500 = new System.Windows.Forms.TextBox();
            this.lblpFCPSTRet500 = new System.Windows.Forms.Label();
            this.txtvFCPSTRet500 = new System.Windows.Forms.TextBox();
            this.lblvFCPSTRet500 = new System.Windows.Forms.Label();
            this.txtpST500 = new System.Windows.Forms.TextBox();
            this.lblpST500 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtCSOSNICMSSN500
            // 
            this.txtCSOSNICMSSN500.Location = new System.Drawing.Point(191, 28);
            this.txtCSOSNICMSSN500.Name = "txtCSOSNICMSSN500";
            this.txtCSOSNICMSSN500.Size = new System.Drawing.Size(144, 20);
            this.txtCSOSNICMSSN500.TabIndex = 3;
            this.txtCSOSNICMSSN500.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblCodSitOpe
            // 
            this.lblCodSitOpe.AutoSize = true;
            this.lblCodSitOpe.Location = new System.Drawing.Point(188, 12);
            this.lblCodSitOpe.Name = "lblCodSitOpe";
            this.lblCodSitOpe.Size = new System.Drawing.Size(112, 13);
            this.lblCodSitOpe.TabIndex = 2;
            this.lblCodSitOpe.Text = "Cód. Sit. da Operação";
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(260, 185);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 16;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // cboOrigemICMSSN500
            // 
            this.cboOrigemICMSSN500.FormattingEnabled = true;
            this.cboOrigemICMSSN500.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMSSN500.Location = new System.Drawing.Point(12, 27);
            this.cboOrigemICMSSN500.Name = "cboOrigemICMSSN500";
            this.cboOrigemICMSSN500.Size = new System.Drawing.Size(144, 21);
            this.cboOrigemICMSSN500.TabIndex = 1;
            this.cboOrigemICMSSN500.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
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
            // txtvBCSTRetICMSSN500
            // 
            this.txtvBCSTRetICMSSN500.Location = new System.Drawing.Point(12, 70);
            this.txtvBCSTRetICMSSN500.Name = "txtvBCSTRetICMSSN500";
            this.txtvBCSTRetICMSSN500.Size = new System.Drawing.Size(144, 20);
            this.txtvBCSTRetICMSSN500.TabIndex = 5;
            this.txtvBCSTRetICMSSN500.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblvBCICMSSTret
            // 
            this.lblvBCICMSSTret.AutoSize = true;
            this.lblvBCICMSSTret.Location = new System.Drawing.Point(9, 54);
            this.lblvBCICMSSTret.Name = "lblvBCICMSSTret";
            this.lblvBCICMSSTret.Size = new System.Drawing.Size(128, 13);
            this.lblvBCICMSSTret.TabIndex = 4;
            this.lblvBCICMSSTret.Text = "Valor BC ICMS ST Retido";
            // 
            // txtvICMSSTRetICMSSN500
            // 
            this.txtvICMSSTRetICMSSN500.Location = new System.Drawing.Point(191, 113);
            this.txtvICMSSTRetICMSSN500.Name = "txtvICMSSTRetICMSSN500";
            this.txtvICMSSTRetICMSSN500.Size = new System.Drawing.Size(144, 20);
            this.txtvICMSSTRetICMSSN500.TabIndex = 11;
            this.txtvICMSSTRetICMSSN500.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblvICMSSTRetido
            // 
            this.lblvICMSSTRetido.AutoSize = true;
            this.lblvICMSSTRetido.Location = new System.Drawing.Point(188, 97);
            this.lblvICMSSTRetido.Name = "lblvICMSSTRetido";
            this.lblvICMSSTRetido.Size = new System.Drawing.Size(126, 13);
            this.lblvICMSSTRetido.TabIndex = 10;
            this.lblvICMSSTRetido.Text = "Valor do ICMS ST Retido";
            // 
            // txtvBCFCPSTRet500
            // 
            this.txtvBCFCPSTRet500.Location = new System.Drawing.Point(12, 113);
            this.txtvBCFCPSTRet500.Name = "txtvBCFCPSTRet500";
            this.txtvBCFCPSTRet500.Size = new System.Drawing.Size(144, 20);
            this.txtvBCFCPSTRet500.TabIndex = 9;
            // 
            // lblvBCFCPSTRet500
            // 
            this.lblvBCFCPSTRet500.AutoSize = true;
            this.lblvBCFCPSTRet500.Location = new System.Drawing.Point(9, 97);
            this.lblvBCFCPSTRet500.Name = "lblvBCFCPSTRet500";
            this.lblvBCFCPSTRet500.Size = new System.Drawing.Size(115, 13);
            this.lblvBCFCPSTRet500.TabIndex = 8;
            this.lblvBCFCPSTRet500.Text = "Valor da BC FCP retido";
            // 
            // txtpFCPSTRet500
            // 
            this.txtpFCPSTRet500.Location = new System.Drawing.Point(191, 155);
            this.txtpFCPSTRet500.Name = "txtpFCPSTRet500";
            this.txtpFCPSTRet500.Size = new System.Drawing.Size(144, 20);
            this.txtpFCPSTRet500.TabIndex = 15;
            // 
            // lblpFCPSTRet500
            // 
            this.lblpFCPSTRet500.AutoSize = true;
            this.lblpFCPSTRet500.Location = new System.Drawing.Point(188, 139);
            this.lblpFCPSTRet500.Name = "lblpFCPSTRet500";
            this.lblpFCPSTRet500.Size = new System.Drawing.Size(127, 13);
            this.lblpFCPSTRet500.TabIndex = 14;
            this.lblpFCPSTRet500.Text = "Percentual FCP ST retido";
            // 
            // txtvFCPSTRet500
            // 
            this.txtvFCPSTRet500.Location = new System.Drawing.Point(12, 155);
            this.txtvFCPSTRet500.Name = "txtvFCPSTRet500";
            this.txtvFCPSTRet500.Size = new System.Drawing.Size(144, 20);
            this.txtvFCPSTRet500.TabIndex = 13;
            // 
            // lblvFCPSTRet500
            // 
            this.lblvFCPSTRet500.AutoSize = true;
            this.lblvFCPSTRet500.Location = new System.Drawing.Point(9, 139);
            this.lblvFCPSTRet500.Name = "lblvFCPSTRet500";
            this.lblvFCPSTRet500.Size = new System.Drawing.Size(115, 13);
            this.lblvFCPSTRet500.TabIndex = 12;
            this.lblvFCPSTRet500.Text = "Valor da FCP ST retido";
            // 
            // txtpST500
            // 
            this.txtpST500.Location = new System.Drawing.Point(191, 70);
            this.txtpST500.Name = "txtpST500";
            this.txtpST500.Size = new System.Drawing.Size(144, 20);
            this.txtpST500.TabIndex = 7;
            // 
            // lblpST500
            // 
            this.lblpST500.AutoSize = true;
            this.lblpST500.Location = new System.Drawing.Point(188, 54);
            this.lblpST500.Name = "lblpST500";
            this.lblpST500.Size = new System.Drawing.Size(159, 13);
            this.lblpST500.TabIndex = 6;
            this.lblpST500.Text = "Alíq. suportada Consumidor final";
            // 
            // frmICMSSN500
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(350, 231);
            this.Controls.Add(this.txtpST500);
            this.Controls.Add(this.lblpST500);
            this.Controls.Add(this.txtvFCPSTRet500);
            this.Controls.Add(this.lblvFCPSTRet500);
            this.Controls.Add(this.txtpFCPSTRet500);
            this.Controls.Add(this.lblpFCPSTRet500);
            this.Controls.Add(this.txtvBCFCPSTRet500);
            this.Controls.Add(this.lblvBCFCPSTRet500);
            this.Controls.Add(this.txtvICMSSTRetICMSSN500);
            this.Controls.Add(this.lblvICMSSTRetido);
            this.Controls.Add(this.txtvBCSTRetICMSSN500);
            this.Controls.Add(this.lblvBCICMSSTret);
            this.Controls.Add(this.txtCSOSNICMSSN500);
            this.Controls.Add(this.lblCodSitOpe);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.cboOrigemICMSSN500);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMSSN500";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS SN 500";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.TextBox txtCSOSNICMSSN500;
        private System.Windows.Forms.Label lblCodSitOpe;
        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.ComboBox cboOrigemICMSSN500;
        private System.Windows.Forms.Label lblOrigem;
        public System.Windows.Forms.TextBox txtvBCSTRetICMSSN500;
        private System.Windows.Forms.Label lblvBCICMSSTret;
        public System.Windows.Forms.TextBox txtvICMSSTRetICMSSN500;
        private System.Windows.Forms.Label lblvICMSSTRetido;
        public System.Windows.Forms.TextBox txtvBCFCPSTRet500;
        private System.Windows.Forms.Label lblvBCFCPSTRet500;
        public System.Windows.Forms.TextBox txtpFCPSTRet500;
        private System.Windows.Forms.Label lblpFCPSTRet500;
        public System.Windows.Forms.TextBox txtvFCPSTRet500;
        private System.Windows.Forms.Label lblvFCPSTRet500;
        public System.Windows.Forms.TextBox txtpST500;
        private System.Windows.Forms.Label lblpST500;
    }
}