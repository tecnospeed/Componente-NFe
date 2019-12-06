namespace WindowsFormsApplication1
{
    partial class frmCOFINSAliq
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
            this.cboCSTCOFINSAliq = new System.Windows.Forms.ComboBox();
            this.lblCodSitTrib = new System.Windows.Forms.Label();
            this.btnGravar = new System.Windows.Forms.Button();
            this.txtCOFINSAliq = new System.Windows.Forms.TextBox();
            this.txtpCOFINSAliq = new System.Windows.Forms.TextBox();
            this.txtvBCCOFINSAliq = new System.Windows.Forms.TextBox();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblValorBaseCalc = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // cboCSTCOFINSAliq
            // 
            this.cboCSTCOFINSAliq.FormattingEnabled = true;
            this.cboCSTCOFINSAliq.Items.AddRange(new object[] {
            "Operação Tributável=alíquota normal",
            "Operação Tributável=alíquota diferenciada"});
            this.cboCSTCOFINSAliq.Location = new System.Drawing.Point(8, 23);
            this.cboCSTCOFINSAliq.Name = "cboCSTCOFINSAliq";
            this.cboCSTCOFINSAliq.Size = new System.Drawing.Size(149, 21);
            this.cboCSTCOFINSAliq.TabIndex = 39;
            this.cboCSTCOFINSAliq.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblCodSitTrib
            // 
            this.lblCodSitTrib.AutoSize = true;
            this.lblCodSitTrib.Location = new System.Drawing.Point(8, 7);
            this.lblCodSitTrib.Name = "lblCodSitTrib";
            this.lblCodSitTrib.Size = new System.Drawing.Size(91, 13);
            this.lblCodSitTrib.TabIndex = 38;
            this.lblCodSitTrib.Text = "Cód. Sit Tributária";
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(255, 106);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 37;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // txtCOFINSAliq
            // 
            this.txtCOFINSAliq.Location = new System.Drawing.Point(181, 71);
            this.txtCOFINSAliq.Name = "txtCOFINSAliq";
            this.txtCOFINSAliq.Size = new System.Drawing.Size(149, 20);
            this.txtCOFINSAliq.TabIndex = 36;
            this.txtCOFINSAliq.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpCOFINSAliq
            // 
            this.txtpCOFINSAliq.Location = new System.Drawing.Point(8, 71);
            this.txtpCOFINSAliq.Name = "txtpCOFINSAliq";
            this.txtpCOFINSAliq.Size = new System.Drawing.Size(149, 20);
            this.txtpCOFINSAliq.TabIndex = 35;
            this.txtpCOFINSAliq.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCCOFINSAliq
            // 
            this.txtvBCCOFINSAliq.Location = new System.Drawing.Point(181, 22);
            this.txtvBCCOFINSAliq.Name = "txtvBCCOFINSAliq";
            this.txtvBCCOFINSAliq.Size = new System.Drawing.Size(149, 20);
            this.txtvBCCOFINSAliq.TabIndex = 34;
            this.txtvBCCOFINSAliq.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(5, 55);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(106, 13);
            this.lblAliquota.TabIndex = 33;
            this.lblAliquota.Text = "Alíquota (percentual)";
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(178, 55);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 32;
            this.lblValor.Text = "Valor";
            // 
            // lblValorBaseCalc
            // 
            this.lblValorBaseCalc.AutoSize = true;
            this.lblValorBaseCalc.Location = new System.Drawing.Point(178, 6);
            this.lblValorBaseCalc.Name = "lblValorBaseCalc";
            this.lblValorBaseCalc.Size = new System.Drawing.Size(111, 13);
            this.lblValorBaseCalc.TabIndex = 31;
            this.lblValorBaseCalc.Text = "Valor Base de Cálculo";
            // 
            // frmCOFINSAliq
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(341, 140);
            this.Controls.Add(this.cboCSTCOFINSAliq);
            this.Controls.Add(this.lblCodSitTrib);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtCOFINSAliq);
            this.Controls.Add(this.txtpCOFINSAliq);
            this.Controls.Add(this.txtvBCCOFINSAliq);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblValorBaseCalc);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmCOFINSAliq";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "COFINS Tributado pela Alíquota";
            this.Load += new System.EventHandler(this.frmCOFINSAliq_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblCodSitTrib;
        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox txtCOFINSAliq;
        public System.Windows.Forms.TextBox txtpCOFINSAliq;
        public System.Windows.Forms.TextBox txtvBCCOFINSAliq;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblValorBaseCalc;
        public System.Windows.Forms.ComboBox cboCSTCOFINSAliq;
    }
}