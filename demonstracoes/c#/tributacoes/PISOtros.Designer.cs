namespace WindowsFormsApplication1
{
    partial class frmPISOtros
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
            this.gbCalculo = new System.Windows.Forms.GroupBox();
            this.rbValor = new System.Windows.Forms.RadioButton();
            this.rbPercentual = new System.Windows.Forms.RadioButton();
            this.lblCodSitTrib = new System.Windows.Forms.Label();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblAliPer = new System.Windows.Forms.Label();
            this.lblBaseCalc = new System.Windows.Forms.Label();
            this.lblqtdeVendida = new System.Windows.Forms.Label();
            this.lblAliReais = new System.Windows.Forms.Label();
            this.cboCSTPISOutr = new System.Windows.Forms.ComboBox();
            this.txtvPISOutr = new System.Windows.Forms.TextBox();
            this.txtvBCPISOutr = new System.Windows.Forms.TextBox();
            this.txtpPISPISOutr = new System.Windows.Forms.TextBox();
            this.txtqBCProdPISOutr = new System.Windows.Forms.TextBox();
            this.txtvAliqProdPISOutr = new System.Windows.Forms.TextBox();
            this.btnGravar = new System.Windows.Forms.Button();
            this.gbCalculo.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbCalculo
            // 
            this.gbCalculo.Controls.Add(this.rbValor);
            this.gbCalculo.Controls.Add(this.rbPercentual);
            this.gbCalculo.Location = new System.Drawing.Point(12, 12);
            this.gbCalculo.Name = "gbCalculo";
            this.gbCalculo.Size = new System.Drawing.Size(328, 51);
            this.gbCalculo.TabIndex = 0;
            this.gbCalculo.TabStop = false;
            this.gbCalculo.Text = "Cálculo do PIS";
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
            this.rbPercentual.CheckedChanged += new System.EventHandler(this.rbPercentual_CheckedChanged);
            // 
            // lblCodSitTrib
            // 
            this.lblCodSitTrib.AutoSize = true;
            this.lblCodSitTrib.Location = new System.Drawing.Point(12, 84);
            this.lblCodSitTrib.Name = "lblCodSitTrib";
            this.lblCodSitTrib.Size = new System.Drawing.Size(94, 13);
            this.lblCodSitTrib.TabIndex = 1;
            this.lblCodSitTrib.Text = "Cód. Sit. Tributária";
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(206, 84);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 2;
            this.lblValor.Text = "Valor";
            // 
            // lblAliPer
            // 
            this.lblAliPer.AutoSize = true;
            this.lblAliPer.Location = new System.Drawing.Point(206, 133);
            this.lblAliPer.Name = "lblAliPer";
            this.lblAliPer.Size = new System.Drawing.Size(107, 13);
            this.lblAliPer.TabIndex = 3;
            this.lblAliPer.Text = "Alíquota (Percentual)";
            // 
            // lblBaseCalc
            // 
            this.lblBaseCalc.AutoSize = true;
            this.lblBaseCalc.Location = new System.Drawing.Point(12, 133);
            this.lblBaseCalc.Name = "lblBaseCalc";
            this.lblBaseCalc.Size = new System.Drawing.Size(111, 13);
            this.lblBaseCalc.TabIndex = 4;
            this.lblBaseCalc.Text = "Valor Base de Cálculo";
            // 
            // lblqtdeVendida
            // 
            this.lblqtdeVendida.AutoSize = true;
            this.lblqtdeVendida.Location = new System.Drawing.Point(12, 183);
            this.lblqtdeVendida.Name = "lblqtdeVendida";
            this.lblqtdeVendida.Size = new System.Drawing.Size(104, 13);
            this.lblqtdeVendida.TabIndex = 5;
            this.lblqtdeVendida.Text = "Quantidade Vendida";
            // 
            // lblAliReais
            // 
            this.lblAliReais.AutoSize = true;
            this.lblAliReais.Location = new System.Drawing.Point(206, 183);
            this.lblAliReais.Name = "lblAliReais";
            this.lblAliReais.Size = new System.Drawing.Size(83, 13);
            this.lblAliReais.TabIndex = 6;
            this.lblAliReais.Text = "Alíquota (Reais)";
            // 
            // cboCSTPISOutr
            // 
            this.cboCSTPISOutr.FormattingEnabled = true;
            this.cboCSTPISOutr.Items.AddRange(new object[] {
            "Outras Operações"});
            this.cboCSTPISOutr.Location = new System.Drawing.Point(14, 100);
            this.cboCSTPISOutr.Name = "cboCSTPISOutr";
            this.cboCSTPISOutr.Size = new System.Drawing.Size(161, 21);
            this.cboCSTPISOutr.TabIndex = 7;
            this.cboCSTPISOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // txtvPISOutr
            // 
            this.txtvPISOutr.Location = new System.Drawing.Point(209, 100);
            this.txtvPISOutr.Name = "txtvPISOutr";
            this.txtvPISOutr.Size = new System.Drawing.Size(131, 20);
            this.txtvPISOutr.TabIndex = 8;
            this.txtvPISOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCPISOutr
            // 
            this.txtvBCPISOutr.Location = new System.Drawing.Point(12, 149);
            this.txtvBCPISOutr.Name = "txtvBCPISOutr";
            this.txtvBCPISOutr.Size = new System.Drawing.Size(163, 20);
            this.txtvBCPISOutr.TabIndex = 9;
            this.txtvBCPISOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpPISPISOutr
            // 
            this.txtpPISPISOutr.Location = new System.Drawing.Point(209, 149);
            this.txtpPISPISOutr.Name = "txtpPISPISOutr";
            this.txtpPISPISOutr.Size = new System.Drawing.Size(131, 20);
            this.txtpPISPISOutr.TabIndex = 10;
            this.txtpPISPISOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtqBCProdPISOutr
            // 
            this.txtqBCProdPISOutr.Enabled = false;
            this.txtqBCProdPISOutr.Location = new System.Drawing.Point(12, 199);
            this.txtqBCProdPISOutr.Name = "txtqBCProdPISOutr";
            this.txtqBCProdPISOutr.Size = new System.Drawing.Size(163, 20);
            this.txtqBCProdPISOutr.TabIndex = 11;
            this.txtqBCProdPISOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvAliqProdPISOutr
            // 
            this.txtvAliqProdPISOutr.Enabled = false;
            this.txtvAliqProdPISOutr.Location = new System.Drawing.Point(209, 199);
            this.txtvAliqProdPISOutr.Name = "txtvAliqProdPISOutr";
            this.txtvAliqProdPISOutr.Size = new System.Drawing.Size(131, 20);
            this.txtvAliqProdPISOutr.TabIndex = 12;
            this.txtvAliqProdPISOutr.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(259, 234);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(81, 24);
            this.btnGravar.TabIndex = 13;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // frmPISOtros
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(363, 270);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtvAliqProdPISOutr);
            this.Controls.Add(this.txtqBCProdPISOutr);
            this.Controls.Add(this.txtpPISPISOutr);
            this.Controls.Add(this.txtvBCPISOutr);
            this.Controls.Add(this.txtvPISOutr);
            this.Controls.Add(this.cboCSTPISOutr);
            this.Controls.Add(this.lblAliReais);
            this.Controls.Add(this.lblqtdeVendida);
            this.Controls.Add(this.lblBaseCalc);
            this.Controls.Add(this.lblAliPer);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblCodSitTrib);
            this.Controls.Add(this.gbCalculo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmPISOtros";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PISOtros";
            this.gbCalculo.ResumeLayout(false);
            this.gbCalculo.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox gbCalculo;
        private System.Windows.Forms.Label lblCodSitTrib;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblAliPer;
        private System.Windows.Forms.Label lblBaseCalc;
        private System.Windows.Forms.Label lblqtdeVendida;
        private System.Windows.Forms.Label lblAliReais;
        public System.Windows.Forms.ComboBox cboCSTPISOutr;
        public System.Windows.Forms.TextBox txtvPISOutr;
        public System.Windows.Forms.TextBox txtvBCPISOutr;
        public System.Windows.Forms.TextBox txtpPISPISOutr;
        public System.Windows.Forms.TextBox txtqBCProdPISOutr;
        public System.Windows.Forms.TextBox txtvAliqProdPISOutr;
        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.RadioButton rbValor;
        public System.Windows.Forms.RadioButton rbPercentual;
    }
}