namespace WindowsFormsApplication1
{
    partial class frmICMSSN102
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
            this.txtCSOSNICMSN102 = new System.Windows.Forms.TextBox();
            this.lblCodSitOp = new System.Windows.Forms.Label();
            this.cboOrigemICMSSN102 = new System.Windows.Forms.ComboBox();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.btnGravar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtCSOSNICMSN102
            // 
            this.txtCSOSNICMSN102.Location = new System.Drawing.Point(187, 35);
            this.txtCSOSNICMSN102.Name = "txtCSOSNICMSN102";
            this.txtCSOSNICMSN102.Size = new System.Drawing.Size(144, 20);
            this.txtCSOSNICMSN102.TabIndex = 3;
            this.txtCSOSNICMSN102.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblCodSitOp
            // 
            this.lblCodSitOp.AutoSize = true;
            this.lblCodSitOp.Location = new System.Drawing.Point(184, 19);
            this.lblCodSitOp.Name = "lblCodSitOp";
            this.lblCodSitOp.Size = new System.Drawing.Size(110, 13);
            this.lblCodSitOp.TabIndex = 2;
            this.lblCodSitOp.Text = "Cód. sit. da Operação";
            // 
            // cboOrigemICMSSN102
            // 
            this.cboOrigemICMSSN102.FormattingEnabled = true;
            this.cboOrigemICMSSN102.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMSSN102.Location = new System.Drawing.Point(16, 34);
            this.cboOrigemICMSSN102.Name = "cboOrigemICMSSN102";
            this.cboOrigemICMSSN102.Size = new System.Drawing.Size(144, 21);
            this.cboOrigemICMSSN102.TabIndex = 1;
            this.cboOrigemICMSSN102.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(13, 18);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(243, 76);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 4;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // frmICMSSN102
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(348, 111);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtCSOSNICMSN102);
            this.Controls.Add(this.lblCodSitOp);
            this.Controls.Add(this.cboOrigemICMSSN102);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMSSN102";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS SN 102, 300 ou 400";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.TextBox txtCSOSNICMSN102;
        private System.Windows.Forms.Label lblCodSitOp;
        public System.Windows.Forms.ComboBox cboOrigemICMSSN102;
        private System.Windows.Forms.Label lblOrigem;
        private System.Windows.Forms.Button btnGravar;
    }
}