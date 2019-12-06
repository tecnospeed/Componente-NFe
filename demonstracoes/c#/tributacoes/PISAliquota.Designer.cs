namespace WindowsFormsApplication1
{
    partial class frmPISAliquota
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
            this.txtvPISPISAliq = new System.Windows.Forms.TextBox();
            this.txtpPISPISAliq = new System.Windows.Forms.TextBox();
            this.txtvBCPISAliq = new System.Windows.Forms.TextBox();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblVBasCalc = new System.Windows.Forms.Label();
            this.lblCodSitTrib = new System.Windows.Forms.Label();
            this.cboCSTPISAliq = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(259, 108);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 19;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // txtvPISPISAliq
            // 
            this.txtvPISPISAliq.Location = new System.Drawing.Point(185, 73);
            this.txtvPISPISAliq.Name = "txtvPISPISAliq";
            this.txtvPISPISAliq.Size = new System.Drawing.Size(149, 20);
            this.txtvPISPISAliq.TabIndex = 18;
            this.txtvPISPISAliq.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpPISPISAliq
            // 
            this.txtpPISPISAliq.Location = new System.Drawing.Point(12, 73);
            this.txtpPISPISAliq.Name = "txtpPISPISAliq";
            this.txtpPISPISAliq.Size = new System.Drawing.Size(149, 20);
            this.txtpPISPISAliq.TabIndex = 17;
            this.txtpPISPISAliq.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCPISAliq
            // 
            this.txtvBCPISAliq.Location = new System.Drawing.Point(185, 24);
            this.txtvBCPISAliq.Name = "txtvBCPISAliq";
            this.txtvBCPISAliq.Size = new System.Drawing.Size(149, 20);
            this.txtvBCPISAliq.TabIndex = 16;
            this.txtvBCPISAliq.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(9, 57);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(47, 13);
            this.lblAliquota.TabIndex = 15;
            this.lblAliquota.Text = "Alíquota";
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(182, 57);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 14;
            this.lblValor.Text = "Valor";
            // 
            // lblVBasCalc
            // 
            this.lblVBasCalc.AutoSize = true;
            this.lblVBasCalc.Location = new System.Drawing.Point(182, 8);
            this.lblVBasCalc.Name = "lblVBasCalc";
            this.lblVBasCalc.Size = new System.Drawing.Size(126, 13);
            this.lblVBasCalc.TabIndex = 13;
            this.lblVBasCalc.Text = "Valor da Base de Cálculo";
            // 
            // lblCodSitTrib
            // 
            this.lblCodSitTrib.AutoSize = true;
            this.lblCodSitTrib.Location = new System.Drawing.Point(12, 9);
            this.lblCodSitTrib.Name = "lblCodSitTrib";
            this.lblCodSitTrib.Size = new System.Drawing.Size(91, 13);
            this.lblCodSitTrib.TabIndex = 20;
            this.lblCodSitTrib.Text = "Cód. Sit Tributária";
            // 
            // cboCSTPISAliq
            // 
            this.cboCSTPISAliq.FormattingEnabled = true;
            this.cboCSTPISAliq.Items.AddRange(new object[] {
            "Operação Tributável=alíquota normal",
            "Operação tributável=alíquota diferenciada"});
            this.cboCSTPISAliq.Location = new System.Drawing.Point(12, 25);
            this.cboCSTPISAliq.Name = "cboCSTPISAliq";
            this.cboCSTPISAliq.Size = new System.Drawing.Size(149, 21);
            this.cboCSTPISAliq.TabIndex = 21;
            this.cboCSTPISAliq.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // frmPISAliquota
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(348, 141);
            this.Controls.Add(this.cboCSTPISAliq);
            this.Controls.Add(this.lblCodSitTrib);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtvPISPISAliq);
            this.Controls.Add(this.txtpPISPISAliq);
            this.Controls.Add(this.txtvBCPISAliq);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblVBasCalc);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmPISAliquota";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PIS Alíquota";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox txtvPISPISAliq;
        public System.Windows.Forms.TextBox txtpPISPISAliq;
        public System.Windows.Forms.TextBox txtvBCPISAliq;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblVBasCalc;
        private System.Windows.Forms.Label lblCodSitTrib;
        public System.Windows.Forms.ComboBox cboCSTPISAliq;
    }
}