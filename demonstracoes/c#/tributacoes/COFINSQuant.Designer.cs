namespace WindowsFormsApplication1
{
    partial class frmCOFINSQuant
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
            this.cboCSTCOFINSQtde = new System.Windows.Forms.ComboBox();
            this.lblCodSitTrib = new System.Windows.Forms.Label();
            this.btnGravar = new System.Windows.Forms.Button();
            this.txtvCOFINSQtde = new System.Windows.Forms.TextBox();
            this.txtvAliqProdCOFINSQtde = new System.Windows.Forms.TextBox();
            this.txtqBCProdCOFINSQtde = new System.Windows.Forms.TextBox();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblQuantVen = new System.Windows.Forms.Label();
            this.lblValor = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // cboCSTCOFINSQtde
            // 
            this.cboCSTCOFINSQtde.FormattingEnabled = true;
            this.cboCSTCOFINSQtde.Items.AddRange(new object[] {
            "Operação Tributável=quantidade vendida x alíquota por unidade de produto"});
            this.cboCSTCOFINSQtde.Location = new System.Drawing.Point(12, 31);
            this.cboCSTCOFINSQtde.Name = "cboCSTCOFINSQtde";
            this.cboCSTCOFINSQtde.Size = new System.Drawing.Size(149, 21);
            this.cboCSTCOFINSQtde.TabIndex = 47;
            this.cboCSTCOFINSQtde.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblCodSitTrib
            // 
            this.lblCodSitTrib.AutoSize = true;
            this.lblCodSitTrib.Location = new System.Drawing.Point(12, 15);
            this.lblCodSitTrib.Name = "lblCodSitTrib";
            this.lblCodSitTrib.Size = new System.Drawing.Size(91, 13);
            this.lblCodSitTrib.TabIndex = 46;
            this.lblCodSitTrib.Text = "Cód. Sit Tributária";
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(259, 114);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 45;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // txtvCOFINSQtde
            // 
            this.txtvCOFINSQtde.Location = new System.Drawing.Point(185, 79);
            this.txtvCOFINSQtde.Name = "txtvCOFINSQtde";
            this.txtvCOFINSQtde.Size = new System.Drawing.Size(149, 20);
            this.txtvCOFINSQtde.TabIndex = 44;
            this.txtvCOFINSQtde.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvAliqProdCOFINSQtde
            // 
            this.txtvAliqProdCOFINSQtde.Location = new System.Drawing.Point(12, 79);
            this.txtvAliqProdCOFINSQtde.Name = "txtvAliqProdCOFINSQtde";
            this.txtvAliqProdCOFINSQtde.Size = new System.Drawing.Size(149, 20);
            this.txtvAliqProdCOFINSQtde.TabIndex = 43;
            this.txtvAliqProdCOFINSQtde.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtqBCProdCOFINSQtde
            // 
            this.txtqBCProdCOFINSQtde.Location = new System.Drawing.Point(185, 30);
            this.txtqBCProdCOFINSQtde.Name = "txtqBCProdCOFINSQtde";
            this.txtqBCProdCOFINSQtde.Size = new System.Drawing.Size(149, 20);
            this.txtqBCProdCOFINSQtde.TabIndex = 42;
            this.txtqBCProdCOFINSQtde.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(9, 63);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(78, 13);
            this.lblAliquota.TabIndex = 41;
            this.lblAliquota.Text = "Alíquota (reais)";
            // 
            // lblQuantVen
            // 
            this.lblQuantVen.AutoSize = true;
            this.lblQuantVen.Location = new System.Drawing.Point(182, 14);
            this.lblQuantVen.Name = "lblQuantVen";
            this.lblQuantVen.Size = new System.Drawing.Size(104, 13);
            this.lblQuantVen.TabIndex = 40;
            this.lblQuantVen.Text = "Quantidade Vendida";
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(182, 63);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 48;
            this.lblValor.Text = "Valor";
            // 
            // frmCOFINSQuant
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(347, 149);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.cboCSTCOFINSQtde);
            this.Controls.Add(this.lblCodSitTrib);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtvCOFINSQtde);
            this.Controls.Add(this.txtvAliqProdCOFINSQtde);
            this.Controls.Add(this.txtqBCProdCOFINSQtde);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblQuantVen);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmCOFINSQuant";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "COFINSQuant";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblCodSitTrib;
        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox txtvCOFINSQtde;
        public System.Windows.Forms.TextBox txtvAliqProdCOFINSQtde;
        public System.Windows.Forms.TextBox txtqBCProdCOFINSQtde;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblQuantVen;
        private System.Windows.Forms.Label lblValor;
        public System.Windows.Forms.ComboBox cboCSTCOFINSQtde;

    }
}