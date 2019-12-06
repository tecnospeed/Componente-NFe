namespace WindowsFormsApplication1
{
    partial class frmPISST
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
            this.txtvAliqProdPISST = new System.Windows.Forms.TextBox();
            this.txtqBCProdPISST = new System.Windows.Forms.TextBox();
            this.txtpPISST = new System.Windows.Forms.TextBox();
            this.txtvBCPISST = new System.Windows.Forms.TextBox();
            this.txtvPISST = new System.Windows.Forms.TextBox();
            this.lblAliReais = new System.Windows.Forms.Label();
            this.lblqtdeVendida = new System.Windows.Forms.Label();
            this.lblBaseCalc = new System.Windows.Forms.Label();
            this.lblAliPer = new System.Windows.Forms.Label();
            this.lblValor = new System.Windows.Forms.Label();
            this.gbCalculo = new System.Windows.Forms.GroupBox();
            this.rbValor = new System.Windows.Forms.RadioButton();
            this.rbPercentual = new System.Windows.Forms.RadioButton();
            this.gbCalculo.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(260, 179);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(81, 24);
            this.btnGravar.TabIndex = 25;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // txtvAliqProdPISST
            // 
            this.txtvAliqProdPISST.Enabled = false;
            this.txtvAliqProdPISST.Location = new System.Drawing.Point(191, 140);
            this.txtvAliqProdPISST.Name = "txtvAliqProdPISST";
            this.txtvAliqProdPISST.Size = new System.Drawing.Size(149, 20);
            this.txtvAliqProdPISST.TabIndex = 24;
            this.txtvAliqProdPISST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtqBCProdPISST
            // 
            this.txtqBCProdPISST.Enabled = false;
            this.txtqBCProdPISST.Location = new System.Drawing.Point(12, 140);
            this.txtqBCProdPISST.Name = "txtqBCProdPISST";
            this.txtqBCProdPISST.Size = new System.Drawing.Size(163, 20);
            this.txtqBCProdPISST.TabIndex = 23;
            this.txtqBCProdPISST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpPISST
            // 
            this.txtpPISST.Location = new System.Drawing.Point(191, 90);
            this.txtpPISST.Name = "txtpPISST";
            this.txtpPISST.Size = new System.Drawing.Size(149, 20);
            this.txtpPISST.TabIndex = 22;
            this.txtpPISST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCPISST
            // 
            this.txtvBCPISST.Location = new System.Drawing.Point(12, 90);
            this.txtvBCPISST.Name = "txtvBCPISST";
            this.txtvBCPISST.Size = new System.Drawing.Size(163, 20);
            this.txtvBCPISST.TabIndex = 21;
            this.txtvBCPISST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvPISST
            // 
            this.txtvPISST.Location = new System.Drawing.Point(12, 183);
            this.txtvPISST.Name = "txtvPISST";
            this.txtvPISST.Size = new System.Drawing.Size(160, 20);
            this.txtvPISST.TabIndex = 20;
            this.txtvPISST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblAliReais
            // 
            this.lblAliReais.AutoSize = true;
            this.lblAliReais.Location = new System.Drawing.Point(188, 124);
            this.lblAliReais.Name = "lblAliReais";
            this.lblAliReais.Size = new System.Drawing.Size(83, 13);
            this.lblAliReais.TabIndex = 19;
            this.lblAliReais.Text = "Alíquota (Reais)";
            // 
            // lblqtdeVendida
            // 
            this.lblqtdeVendida.AutoSize = true;
            this.lblqtdeVendida.Location = new System.Drawing.Point(12, 124);
            this.lblqtdeVendida.Name = "lblqtdeVendida";
            this.lblqtdeVendida.Size = new System.Drawing.Size(104, 13);
            this.lblqtdeVendida.TabIndex = 18;
            this.lblqtdeVendida.Text = "Quantidade Vendida";
            // 
            // lblBaseCalc
            // 
            this.lblBaseCalc.AutoSize = true;
            this.lblBaseCalc.Location = new System.Drawing.Point(12, 74);
            this.lblBaseCalc.Name = "lblBaseCalc";
            this.lblBaseCalc.Size = new System.Drawing.Size(111, 13);
            this.lblBaseCalc.TabIndex = 17;
            this.lblBaseCalc.Text = "Valor Base de Cálculo";
            // 
            // lblAliPer
            // 
            this.lblAliPer.AutoSize = true;
            this.lblAliPer.Location = new System.Drawing.Point(188, 74);
            this.lblAliPer.Name = "lblAliPer";
            this.lblAliPer.Size = new System.Drawing.Size(107, 13);
            this.lblAliPer.TabIndex = 16;
            this.lblAliPer.Text = "Alíquota (Percentual)";
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(13, 167);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 15;
            this.lblValor.Text = "Valor";
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
            this.gbCalculo.Text = "Cálculo do PIS ST";
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
            // frmPISST
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(354, 222);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtvAliqProdPISST);
            this.Controls.Add(this.txtqBCProdPISST);
            this.Controls.Add(this.txtpPISST);
            this.Controls.Add(this.txtvBCPISST);
            this.Controls.Add(this.txtvPISST);
            this.Controls.Add(this.lblAliReais);
            this.Controls.Add(this.lblqtdeVendida);
            this.Controls.Add(this.lblBaseCalc);
            this.Controls.Add(this.lblAliPer);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.gbCalculo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmPISST";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PIS Substituição Tributária";
            this.gbCalculo.ResumeLayout(false);
            this.gbCalculo.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox txtvAliqProdPISST;
        public System.Windows.Forms.TextBox txtqBCProdPISST;
        public System.Windows.Forms.TextBox txtpPISST;
        public System.Windows.Forms.TextBox txtvBCPISST;
        public System.Windows.Forms.TextBox txtvPISST;
        private System.Windows.Forms.Label lblAliReais;
        private System.Windows.Forms.Label lblqtdeVendida;
        private System.Windows.Forms.Label lblBaseCalc;
        private System.Windows.Forms.Label lblAliPer;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.GroupBox gbCalculo;
        public System.Windows.Forms.RadioButton rbValor;
        public System.Windows.Forms.RadioButton rbPercentual;
    }
}