namespace WindowsFormsApplication1
{
    partial class frmCOFINSOutros
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
            this.rbPercentual = new System.Windows.Forms.RadioButton();
            this.txtvAliqProdCOFINSOutr = new System.Windows.Forms.TextBox();
            this.txtqBCProdCOFINSOutr = new System.Windows.Forms.TextBox();
            this.txtpCOFINSOutr = new System.Windows.Forms.TextBox();
            this.txtvCOFINSOutr = new System.Windows.Forms.TextBox();
            this.rbValor = new System.Windows.Forms.RadioButton();
            this.txtvBCCOFINSOutr = new System.Windows.Forms.TextBox();
            this.cboCSTCOFINSOutr = new System.Windows.Forms.ComboBox();
            this.lblAliReais = new System.Windows.Forms.Label();
            this.lblqtdeVendida = new System.Windows.Forms.Label();
            this.lblBaseCalc = new System.Windows.Forms.Label();
            this.lblAliPer = new System.Windows.Forms.Label();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblCodSitTrib = new System.Windows.Forms.Label();
            this.gbCalculo = new System.Windows.Forms.GroupBox();
            this.gbCalculo.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(259, 234);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(81, 24);
            this.btnGravar.TabIndex = 27;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // rbPercentual
            // 
            this.rbPercentual.AutoSize = true;
            this.rbPercentual.Checked = true;
            this.rbPercentual.Location = new System.Drawing.Point(16, 19);
            this.rbPercentual.Name = "rbPercentual";
            this.rbPercentual.Size = new System.Drawing.Size(76, 17);
            this.rbPercentual.TabIndex = 0;
            this.rbPercentual.TabStop = true;
            this.rbPercentual.Text = "Percentual";
            this.rbPercentual.UseVisualStyleBackColor = true;
            // 
            // txtvAliqProdCOFINSOutr
            // 
            this.txtvAliqProdCOFINSOutr.Enabled = false;
            this.txtvAliqProdCOFINSOutr.Location = new System.Drawing.Point(193, 199);
            this.txtvAliqProdCOFINSOutr.Name = "txtvAliqProdCOFINSOutr";
            this.txtvAliqProdCOFINSOutr.Size = new System.Drawing.Size(147, 20);
            this.txtvAliqProdCOFINSOutr.TabIndex = 26;
            this.txtvAliqProdCOFINSOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtqBCProdCOFINSOutr
            // 
            this.txtqBCProdCOFINSOutr.Enabled = false;
            this.txtqBCProdCOFINSOutr.Location = new System.Drawing.Point(12, 199);
            this.txtqBCProdCOFINSOutr.Name = "txtqBCProdCOFINSOutr";
            this.txtqBCProdCOFINSOutr.Size = new System.Drawing.Size(163, 20);
            this.txtqBCProdCOFINSOutr.TabIndex = 25;
            this.txtqBCProdCOFINSOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpCOFINSOutr
            // 
            this.txtpCOFINSOutr.Location = new System.Drawing.Point(193, 149);
            this.txtpCOFINSOutr.Name = "txtpCOFINSOutr";
            this.txtpCOFINSOutr.Size = new System.Drawing.Size(147, 20);
            this.txtpCOFINSOutr.TabIndex = 24;
            this.txtpCOFINSOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvCOFINSOutr
            // 
            this.txtvCOFINSOutr.Location = new System.Drawing.Point(193, 100);
            this.txtvCOFINSOutr.Name = "txtvCOFINSOutr";
            this.txtvCOFINSOutr.Size = new System.Drawing.Size(147, 20);
            this.txtvCOFINSOutr.TabIndex = 22;
            this.txtvCOFINSOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // rbValor
            // 
            this.rbValor.AutoSize = true;
            this.rbValor.Location = new System.Drawing.Point(197, 19);
            this.rbValor.Name = "rbValor";
            this.rbValor.Size = new System.Drawing.Size(49, 17);
            this.rbValor.TabIndex = 1;
            this.rbValor.Text = "Valor";
            this.rbValor.UseVisualStyleBackColor = true;
            // 
            // txtvBCCOFINSOutr
            // 
            this.txtvBCCOFINSOutr.Location = new System.Drawing.Point(12, 149);
            this.txtvBCCOFINSOutr.Name = "txtvBCCOFINSOutr";
            this.txtvBCCOFINSOutr.Size = new System.Drawing.Size(163, 20);
            this.txtvBCCOFINSOutr.TabIndex = 23;
            this.txtvBCCOFINSOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboCSTCOFINSOutr
            // 
            this.cboCSTCOFINSOutr.FormattingEnabled = true;
            this.cboCSTCOFINSOutr.Items.AddRange(new object[] {
            "Outras Operações"});
            this.cboCSTCOFINSOutr.Location = new System.Drawing.Point(14, 100);
            this.cboCSTCOFINSOutr.Name = "cboCSTCOFINSOutr";
            this.cboCSTCOFINSOutr.Size = new System.Drawing.Size(161, 21);
            this.cboCSTCOFINSOutr.TabIndex = 21;
            this.cboCSTCOFINSOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblAliReais
            // 
            this.lblAliReais.AutoSize = true;
            this.lblAliReais.Location = new System.Drawing.Point(190, 183);
            this.lblAliReais.Name = "lblAliReais";
            this.lblAliReais.Size = new System.Drawing.Size(83, 13);
            this.lblAliReais.TabIndex = 20;
            this.lblAliReais.Text = "Alíquota (Reais)";
            // 
            // lblqtdeVendida
            // 
            this.lblqtdeVendida.AutoSize = true;
            this.lblqtdeVendida.Location = new System.Drawing.Point(12, 183);
            this.lblqtdeVendida.Name = "lblqtdeVendida";
            this.lblqtdeVendida.Size = new System.Drawing.Size(104, 13);
            this.lblqtdeVendida.TabIndex = 19;
            this.lblqtdeVendida.Text = "Quantidade Vendida";
            // 
            // lblBaseCalc
            // 
            this.lblBaseCalc.AutoSize = true;
            this.lblBaseCalc.Location = new System.Drawing.Point(12, 133);
            this.lblBaseCalc.Name = "lblBaseCalc";
            this.lblBaseCalc.Size = new System.Drawing.Size(111, 13);
            this.lblBaseCalc.TabIndex = 18;
            this.lblBaseCalc.Text = "Valor Base de Cálculo";
            // 
            // lblAliPer
            // 
            this.lblAliPer.AutoSize = true;
            this.lblAliPer.Location = new System.Drawing.Point(190, 133);
            this.lblAliPer.Name = "lblAliPer";
            this.lblAliPer.Size = new System.Drawing.Size(107, 13);
            this.lblAliPer.TabIndex = 17;
            this.lblAliPer.Text = "Alíquota (Percentual)";
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(190, 84);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 16;
            this.lblValor.Text = "Valor";
            // 
            // lblCodSitTrib
            // 
            this.lblCodSitTrib.AutoSize = true;
            this.lblCodSitTrib.Location = new System.Drawing.Point(12, 84);
            this.lblCodSitTrib.Name = "lblCodSitTrib";
            this.lblCodSitTrib.Size = new System.Drawing.Size(94, 13);
            this.lblCodSitTrib.TabIndex = 15;
            this.lblCodSitTrib.Text = "Cód. Sit. Tributária";
            // 
            // gbCalculo
            // 
            this.gbCalculo.Controls.Add(this.rbValor);
            this.gbCalculo.Controls.Add(this.rbPercentual);
            this.gbCalculo.Location = new System.Drawing.Point(12, 12);
            this.gbCalculo.Name = "gbCalculo";
            this.gbCalculo.Size = new System.Drawing.Size(328, 51);
            this.gbCalculo.TabIndex = 14;
            this.gbCalculo.TabStop = false;
            this.gbCalculo.Text = "Cálculo da COFINS";
            // 
            // frmCOFINSOutros
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(353, 272);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtvAliqProdCOFINSOutr);
            this.Controls.Add(this.txtqBCProdCOFINSOutr);
            this.Controls.Add(this.txtpCOFINSOutr);
            this.Controls.Add(this.txtvCOFINSOutr);
            this.Controls.Add(this.txtvBCCOFINSOutr);
            this.Controls.Add(this.cboCSTCOFINSOutr);
            this.Controls.Add(this.lblAliReais);
            this.Controls.Add(this.lblqtdeVendida);
            this.Controls.Add(this.lblBaseCalc);
            this.Controls.Add(this.lblAliPer);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblCodSitTrib);
            this.Controls.Add(this.gbCalculo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmCOFINSOutros";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "COFINS Outras Operações";
            this.gbCalculo.ResumeLayout(false);
            this.gbCalculo.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox txtvAliqProdCOFINSOutr;
        public System.Windows.Forms.TextBox txtqBCProdCOFINSOutr;
        public System.Windows.Forms.TextBox txtpCOFINSOutr;
        public System.Windows.Forms.TextBox txtvCOFINSOutr;
        public System.Windows.Forms.TextBox txtvBCCOFINSOutr;
        public System.Windows.Forms.ComboBox cboCSTCOFINSOutr;
        private System.Windows.Forms.Label lblAliReais;
        private System.Windows.Forms.Label lblqtdeVendida;
        private System.Windows.Forms.Label lblBaseCalc;
        private System.Windows.Forms.Label lblAliPer;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblCodSitTrib;
        private System.Windows.Forms.GroupBox gbCalculo;
        public System.Windows.Forms.RadioButton rbPercentual;
        public System.Windows.Forms.RadioButton rbValor;
    }
}