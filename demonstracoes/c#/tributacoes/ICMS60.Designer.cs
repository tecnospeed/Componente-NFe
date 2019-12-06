namespace WindowsFormsApplication1
{
    partial class frmICMS60
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
            this.txtCSTICMS60 = new System.Windows.Forms.TextBox();
            this.cboOrigemICMS60 = new System.Windows.Forms.ComboBox();
            this.lblTrbICMS = new System.Windows.Forms.Label();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.lblValorBCICMSRet = new System.Windows.Forms.Label();
            this.lblValorICMSSTret = new System.Windows.Forms.Label();
            this.txtvBCSTRetICMS60 = new System.Windows.Forms.TextBox();
            this.txtvICMSSTRetICMS60 = new System.Windows.Forms.TextBox();
            this.txtvBCFCPSTRet60 = new System.Windows.Forms.TextBox();
            this.txtpST60 = new System.Windows.Forms.TextBox();
            this.lblpFCPSTRet60 = new System.Windows.Forms.Label();
            this.lblpST60 = new System.Windows.Forms.Label();
            this.txtvFCPSTRet60 = new System.Windows.Forms.TextBox();
            this.txtpFCPSTRetICMS60 = new System.Windows.Forms.TextBox();
            this.lblvFCPSTRet60 = new System.Windows.Forms.Label();
            this.lblpFCPSTRetICMS60 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(268, 187);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 16;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // txtCSTICMS60
            // 
            this.txtCSTICMS60.Location = new System.Drawing.Point(199, 28);
            this.txtCSTICMS60.Name = "txtCSTICMS60";
            this.txtCSTICMS60.Size = new System.Drawing.Size(144, 20);
            this.txtCSTICMS60.TabIndex = 3;
            this.txtCSTICMS60.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboOrigemICMS60
            // 
            this.cboOrigemICMS60.FormattingEnabled = true;
            this.cboOrigemICMS60.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMS60.Location = new System.Drawing.Point(11, 28);
            this.cboOrigemICMS60.Name = "cboOrigemICMS60";
            this.cboOrigemICMS60.Size = new System.Drawing.Size(153, 21);
            this.cboOrigemICMS60.TabIndex = 1;
            this.cboOrigemICMS60.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblTrbICMS
            // 
            this.lblTrbICMS.AutoSize = true;
            this.lblTrbICMS.Location = new System.Drawing.Point(196, 12);
            this.lblTrbICMS.Name = "lblTrbICMS";
            this.lblTrbICMS.Size = new System.Drawing.Size(102, 13);
            this.lblTrbICMS.TabIndex = 2;
            this.lblTrbICMS.Text = "Tributação do ICMS";
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(8, 12);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // lblValorBCICMSRet
            // 
            this.lblValorBCICMSRet.AutoSize = true;
            this.lblValorBCICMSRet.Location = new System.Drawing.Point(8, 53);
            this.lblValorBCICMSRet.Name = "lblValorBCICMSRet";
            this.lblValorBCICMSRet.Size = new System.Drawing.Size(106, 13);
            this.lblValorBCICMSRet.TabIndex = 4;
            this.lblValorBCICMSRet.Text = "Valor BC ICMS retido";
            // 
            // lblValorICMSSTret
            // 
            this.lblValorICMSSTret.AutoSize = true;
            this.lblValorICMSSTret.Location = new System.Drawing.Point(196, 53);
            this.lblValorICMSSTret.Name = "lblValorICMSSTret";
            this.lblValorICMSSTret.Size = new System.Drawing.Size(106, 13);
            this.lblValorICMSSTret.TabIndex = 6;
            this.lblValorICMSSTret.Text = "Valor ICMS ST retido";
            // 
            // txtvBCSTRetICMS60
            // 
            this.txtvBCSTRetICMS60.Location = new System.Drawing.Point(13, 70);
            this.txtvBCSTRetICMS60.Name = "txtvBCSTRetICMS60";
            this.txtvBCSTRetICMS60.Size = new System.Drawing.Size(151, 20);
            this.txtvBCSTRetICMS60.TabIndex = 5;
            this.txtvBCSTRetICMS60.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvICMSSTRetICMS60
            // 
            this.txtvICMSSTRetICMS60.Location = new System.Drawing.Point(199, 70);
            this.txtvICMSSTRetICMS60.Name = "txtvICMSSTRetICMS60";
            this.txtvICMSSTRetICMS60.Size = new System.Drawing.Size(144, 20);
            this.txtvICMSSTRetICMS60.TabIndex = 7;
            this.txtvICMSSTRetICMS60.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCFCPSTRet60
            // 
            this.txtvBCFCPSTRet60.Location = new System.Drawing.Point(199, 111);
            this.txtvBCFCPSTRet60.Name = "txtvBCFCPSTRet60";
            this.txtvBCFCPSTRet60.Size = new System.Drawing.Size(144, 20);
            this.txtvBCFCPSTRet60.TabIndex = 11;
            // 
            // txtpST60
            // 
            this.txtpST60.Location = new System.Drawing.Point(13, 111);
            this.txtpST60.Name = "txtpST60";
            this.txtpST60.Size = new System.Drawing.Size(151, 20);
            this.txtpST60.TabIndex = 9;
            // 
            // lblpFCPSTRet60
            // 
            this.lblpFCPSTRet60.AutoSize = true;
            this.lblpFCPSTRet60.Location = new System.Drawing.Point(196, 94);
            this.lblpFCPSTRet60.Name = "lblpFCPSTRet60";
            this.lblpFCPSTRet60.Size = new System.Drawing.Size(117, 13);
            this.lblpFCPSTRet60.TabIndex = 10;
            this.lblpFCPSTRet60.Text = "Valor BC FCP ST retido";
            // 
            // lblpST60
            // 
            this.lblpST60.AutoSize = true;
            this.lblpST60.Location = new System.Drawing.Point(12, 94);
            this.lblpST60.Name = "lblpST60";
            this.lblpST60.Size = new System.Drawing.Size(93, 13);
            this.lblpST60.TabIndex = 8;
            this.lblpST60.Text = "Alíquota ICMS ST";
            // 
            // txtvFCPSTRet60
            // 
            this.txtvFCPSTRet60.Location = new System.Drawing.Point(199, 152);
            this.txtvFCPSTRet60.Name = "txtvFCPSTRet60";
            this.txtvFCPSTRet60.Size = new System.Drawing.Size(144, 20);
            this.txtvFCPSTRet60.TabIndex = 15;
            // 
            // txtpFCPSTRetICMS60
            // 
            this.txtpFCPSTRetICMS60.Location = new System.Drawing.Point(13, 152);
            this.txtpFCPSTRetICMS60.Name = "txtpFCPSTRetICMS60";
            this.txtpFCPSTRetICMS60.Size = new System.Drawing.Size(151, 20);
            this.txtpFCPSTRetICMS60.TabIndex = 13;
            // 
            // lblvFCPSTRet60
            // 
            this.lblvFCPSTRet60.AutoSize = true;
            this.lblvFCPSTRet60.Location = new System.Drawing.Point(196, 135);
            this.lblvFCPSTRet60.Name = "lblvFCPSTRet60";
            this.lblvFCPSTRet60.Size = new System.Drawing.Size(100, 13);
            this.lblvFCPSTRet60.TabIndex = 14;
            this.lblvFCPSTRet60.Text = "Valor FCP ST retido";
            // 
            // lblpFCPSTRetICMS60
            // 
            this.lblpFCPSTRetICMS60.AutoSize = true;
            this.lblpFCPSTRetICMS60.Location = new System.Drawing.Point(8, 135);
            this.lblpFCPSTRetICMS60.Name = "lblpFCPSTRetICMS60";
            this.lblpFCPSTRetICMS60.Size = new System.Drawing.Size(127, 13);
            this.lblpFCPSTRetICMS60.TabIndex = 12;
            this.lblpFCPSTRetICMS60.Text = "Percentual FCP ST retido";
            // 
            // frmICMS60
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(361, 224);
            this.Controls.Add(this.txtvFCPSTRet60);
            this.Controls.Add(this.txtpFCPSTRetICMS60);
            this.Controls.Add(this.lblvFCPSTRet60);
            this.Controls.Add(this.lblpFCPSTRetICMS60);
            this.Controls.Add(this.txtvBCFCPSTRet60);
            this.Controls.Add(this.txtpST60);
            this.Controls.Add(this.lblpFCPSTRet60);
            this.Controls.Add(this.lblpST60);
            this.Controls.Add(this.txtvICMSSTRetICMS60);
            this.Controls.Add(this.txtvBCSTRetICMS60);
            this.Controls.Add(this.lblValorICMSSTret);
            this.Controls.Add(this.lblValorBCICMSRet);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtCSTICMS60);
            this.Controls.Add(this.cboOrigemICMS60);
            this.Controls.Add(this.lblTrbICMS);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMS60";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS60";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox txtCSTICMS60;
        public System.Windows.Forms.ComboBox cboOrigemICMS60;
        private System.Windows.Forms.Label lblTrbICMS;
        private System.Windows.Forms.Label lblOrigem;
        private System.Windows.Forms.Label lblValorBCICMSRet;
        private System.Windows.Forms.Label lblValorICMSSTret;
        public System.Windows.Forms.TextBox txtvBCSTRetICMS60;
        public System.Windows.Forms.TextBox txtvICMSSTRetICMS60;
        public System.Windows.Forms.TextBox txtvBCFCPSTRet60;
        public System.Windows.Forms.TextBox txtpST60;
        private System.Windows.Forms.Label lblpFCPSTRet60;
        private System.Windows.Forms.Label lblpST60;
        public System.Windows.Forms.TextBox txtvFCPSTRet60;
        public System.Windows.Forms.TextBox txtpFCPSTRetICMS60;
        private System.Windows.Forms.Label lblvFCPSTRet60;
        private System.Windows.Forms.Label lblpFCPSTRetICMS60;
    }
}