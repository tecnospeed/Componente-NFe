namespace WindowsFormsApplication1
{
    partial class frmIPITributado
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
            this.gbCalculoIPI = new System.Windows.Forms.GroupBox();
            this.rbValorUnidade = new System.Windows.Forms.RadioButton();
            this.rbAliquota = new System.Windows.Forms.RadioButton();
            this.lblCigBebida = new System.Windows.Forms.Label();
            this.lblCNPJ = new System.Windows.Forms.Label();
            this.lblCodSelo = new System.Windows.Forms.Label();
            this.lblquantSelo = new System.Windows.Forms.Label();
            this.lblCodEnquad = new System.Windows.Forms.Label();
            this.lblcodSitTrib = new System.Windows.Forms.Label();
            this.lblValorBC = new System.Windows.Forms.Label();
            this.lblValorUnidade = new System.Windows.Forms.Label();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblQuantTotal = new System.Windows.Forms.Label();
            this.lblValor = new System.Windows.Forms.Label();
            this.btnGravar = new System.Windows.Forms.Button();
            this.cboCSTIPITrib = new System.Windows.Forms.ComboBox();
            this.txtclEnqIPITrib = new System.Windows.Forms.TextBox();
            this.txtCNPJProdIPITrib = new System.Windows.Forms.TextBox();
            this.txtcSeloIPITrib = new System.Windows.Forms.TextBox();
            this.txtqSeloIPITrib = new System.Windows.Forms.TextBox();
            this.txtcEnqIPITrib = new System.Windows.Forms.TextBox();
            this.txtvBCIPITrib = new System.Windows.Forms.TextBox();
            this.txtIPITrib = new System.Windows.Forms.TextBox();
            this.txtqUnidIPITrib = new System.Windows.Forms.TextBox();
            this.txtvUnidIPITrib = new System.Windows.Forms.TextBox();
            this.txtvIPITrib = new System.Windows.Forms.TextBox();
            this.gbCalculoIPI.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbCalculoIPI
            // 
            this.gbCalculoIPI.Controls.Add(this.rbValorUnidade);
            this.gbCalculoIPI.Controls.Add(this.rbAliquota);
            this.gbCalculoIPI.Location = new System.Drawing.Point(8, 7);
            this.gbCalculoIPI.Name = "gbCalculoIPI";
            this.gbCalculoIPI.Size = new System.Drawing.Size(318, 49);
            this.gbCalculoIPI.TabIndex = 0;
            this.gbCalculoIPI.TabStop = false;
            this.gbCalculoIPI.Text = "Cálculo do IPI";
            // 
            // rbValorUnidade
            // 
            this.rbValorUnidade.AutoSize = true;
            this.rbValorUnidade.Location = new System.Drawing.Point(191, 19);
            this.rbValorUnidade.Name = "rbValorUnidade";
            this.rbValorUnidade.Size = new System.Drawing.Size(108, 17);
            this.rbValorUnidade.TabIndex = 1;
            this.rbValorUnidade.Text = "Valor por unidade";
            this.rbValorUnidade.UseVisualStyleBackColor = true;
            // 
            // rbAliquota
            // 
            this.rbAliquota.AutoSize = true;
            this.rbAliquota.Checked = true;
            this.rbAliquota.Location = new System.Drawing.Point(17, 19);
            this.rbAliquota.Name = "rbAliquota";
            this.rbAliquota.Size = new System.Drawing.Size(65, 17);
            this.rbAliquota.TabIndex = 0;
            this.rbAliquota.TabStop = true;
            this.rbAliquota.Text = "Alíquota";
            this.rbAliquota.UseVisualStyleBackColor = true;
            this.rbAliquota.CheckedChanged += new System.EventHandler(this.rbAliquota_CheckedChanged);
            // 
            // lblCigBebida
            // 
            this.lblCigBebida.AutoSize = true;
            this.lblCigBebida.Location = new System.Drawing.Point(12, 75);
            this.lblCigBebida.Name = "lblCigBebida";
            this.lblCigBebida.Size = new System.Drawing.Size(153, 13);
            this.lblCigBebida.TabIndex = 1;
            this.lblCigBebida.Text = "Enquadramento Cig. e Babidas";
            // 
            // lblCNPJ
            // 
            this.lblCNPJ.AutoSize = true;
            this.lblCNPJ.Location = new System.Drawing.Point(182, 75);
            this.lblCNPJ.Name = "lblCNPJ";
            this.lblCNPJ.Size = new System.Drawing.Size(34, 13);
            this.lblCNPJ.TabIndex = 2;
            this.lblCNPJ.Text = "CNPJ";
            // 
            // lblCodSelo
            // 
            this.lblCodSelo.AutoSize = true;
            this.lblCodSelo.Location = new System.Drawing.Point(12, 133);
            this.lblCodSelo.Name = "lblCodSelo";
            this.lblCodSelo.Size = new System.Drawing.Size(79, 13);
            this.lblCodSelo.TabIndex = 3;
            this.lblCodSelo.Text = "Código do Selo";
            // 
            // lblquantSelo
            // 
            this.lblquantSelo.AutoSize = true;
            this.lblquantSelo.Location = new System.Drawing.Point(182, 133);
            this.lblquantSelo.Name = "lblquantSelo";
            this.lblquantSelo.Size = new System.Drawing.Size(101, 13);
            this.lblquantSelo.TabIndex = 4;
            this.lblquantSelo.Text = "Quantidade de Selo";
            // 
            // lblCodEnquad
            // 
            this.lblCodEnquad.AutoSize = true;
            this.lblCodEnquad.Location = new System.Drawing.Point(12, 184);
            this.lblCodEnquad.Name = "lblCodEnquad";
            this.lblCodEnquad.Size = new System.Drawing.Size(133, 13);
            this.lblCodEnquad.TabIndex = 5;
            this.lblCodEnquad.Text = "Código de Enquadramento";
            // 
            // lblcodSitTrib
            // 
            this.lblcodSitTrib.AutoSize = true;
            this.lblcodSitTrib.Location = new System.Drawing.Point(182, 184);
            this.lblcodSitTrib.Name = "lblcodSitTrib";
            this.lblcodSitTrib.Size = new System.Drawing.Size(120, 13);
            this.lblcodSitTrib.TabIndex = 6;
            this.lblcodSitTrib.Text = "Código da Sit. Tributária";
            // 
            // lblValorBC
            // 
            this.lblValorBC.AutoSize = true;
            this.lblValorBC.Location = new System.Drawing.Point(12, 239);
            this.lblValorBC.Name = "lblValorBC";
            this.lblValorBC.Size = new System.Drawing.Size(63, 13);
            this.lblValorBC.TabIndex = 7;
            this.lblValorBC.Text = "Valor da BC";
            // 
            // lblValorUnidade
            // 
            this.lblValorUnidade.AutoSize = true;
            this.lblValorUnidade.Location = new System.Drawing.Point(182, 294);
            this.lblValorUnidade.Name = "lblValorUnidade";
            this.lblValorUnidade.Size = new System.Drawing.Size(92, 13);
            this.lblValorUnidade.TabIndex = 8;
            this.lblValorUnidade.Text = "Valor por Unidade";
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(182, 239);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(47, 13);
            this.lblAliquota.TabIndex = 9;
            this.lblAliquota.Text = "Alíquota";
            // 
            // lblQuantTotal
            // 
            this.lblQuantTotal.AutoSize = true;
            this.lblQuantTotal.Location = new System.Drawing.Point(12, 294);
            this.lblQuantTotal.Name = "lblQuantTotal";
            this.lblQuantTotal.Size = new System.Drawing.Size(89, 13);
            this.lblQuantTotal.TabIndex = 10;
            this.lblQuantTotal.Text = "Quantidade Total";
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(12, 341);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 11;
            this.lblValor.Text = "Valor";
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(248, 354);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 12;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // cboCSTIPITrib
            // 
            this.cboCSTIPITrib.FormattingEnabled = true;
            this.cboCSTIPITrib.Items.AddRange(new object[] {
            "Entrada com recuperação de crédito",
            "Outras Entradas",
            "Saídas tributadas",
            "Outras saídas"});
            this.cboCSTIPITrib.Location = new System.Drawing.Point(176, 200);
            this.cboCSTIPITrib.Name = "cboCSTIPITrib";
            this.cboCSTIPITrib.Size = new System.Drawing.Size(147, 21);
            this.cboCSTIPITrib.TabIndex = 13;
            this.cboCSTIPITrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // txtclEnqIPITrib
            // 
            this.txtclEnqIPITrib.Location = new System.Drawing.Point(15, 91);
            this.txtclEnqIPITrib.Name = "txtclEnqIPITrib";
            this.txtclEnqIPITrib.Size = new System.Drawing.Size(150, 20);
            this.txtclEnqIPITrib.TabIndex = 14;
            this.txtclEnqIPITrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCNPJProdIPITrib
            // 
            this.txtCNPJProdIPITrib.Location = new System.Drawing.Point(176, 91);
            this.txtCNPJProdIPITrib.Name = "txtCNPJProdIPITrib";
            this.txtCNPJProdIPITrib.Size = new System.Drawing.Size(150, 20);
            this.txtCNPJProdIPITrib.TabIndex = 15;
            this.txtCNPJProdIPITrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtcSeloIPITrib
            // 
            this.txtcSeloIPITrib.Location = new System.Drawing.Point(15, 149);
            this.txtcSeloIPITrib.Name = "txtcSeloIPITrib";
            this.txtcSeloIPITrib.Size = new System.Drawing.Size(150, 20);
            this.txtcSeloIPITrib.TabIndex = 16;
            this.txtcSeloIPITrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtqSeloIPITrib
            // 
            this.txtqSeloIPITrib.Location = new System.Drawing.Point(176, 149);
            this.txtqSeloIPITrib.Name = "txtqSeloIPITrib";
            this.txtqSeloIPITrib.Size = new System.Drawing.Size(150, 20);
            this.txtqSeloIPITrib.TabIndex = 17;
            this.txtqSeloIPITrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtcEnqIPITrib
            // 
            this.txtcEnqIPITrib.Location = new System.Drawing.Point(15, 200);
            this.txtcEnqIPITrib.Name = "txtcEnqIPITrib";
            this.txtcEnqIPITrib.Size = new System.Drawing.Size(150, 20);
            this.txtcEnqIPITrib.TabIndex = 18;
            this.txtcEnqIPITrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCIPITrib
            // 
            this.txtvBCIPITrib.Location = new System.Drawing.Point(15, 255);
            this.txtvBCIPITrib.Name = "txtvBCIPITrib";
            this.txtvBCIPITrib.Size = new System.Drawing.Size(150, 20);
            this.txtvBCIPITrib.TabIndex = 19;
            this.txtvBCIPITrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtIPITrib
            // 
            this.txtIPITrib.Location = new System.Drawing.Point(176, 255);
            this.txtIPITrib.Name = "txtIPITrib";
            this.txtIPITrib.Size = new System.Drawing.Size(150, 20);
            this.txtIPITrib.TabIndex = 20;
            this.txtIPITrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtqUnidIPITrib
            // 
            this.txtqUnidIPITrib.Enabled = false;
            this.txtqUnidIPITrib.Location = new System.Drawing.Point(15, 310);
            this.txtqUnidIPITrib.Name = "txtqUnidIPITrib";
            this.txtqUnidIPITrib.Size = new System.Drawing.Size(150, 20);
            this.txtqUnidIPITrib.TabIndex = 21;
            this.txtqUnidIPITrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvUnidIPITrib
            // 
            this.txtvUnidIPITrib.Enabled = false;
            this.txtvUnidIPITrib.Location = new System.Drawing.Point(176, 310);
            this.txtvUnidIPITrib.Name = "txtvUnidIPITrib";
            this.txtvUnidIPITrib.Size = new System.Drawing.Size(150, 20);
            this.txtvUnidIPITrib.TabIndex = 22;
            this.txtvUnidIPITrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvIPITrib
            // 
            this.txtvIPITrib.Location = new System.Drawing.Point(15, 357);
            this.txtvIPITrib.Name = "txtvIPITrib";
            this.txtvIPITrib.Size = new System.Drawing.Size(150, 20);
            this.txtvIPITrib.TabIndex = 23;
            this.txtvIPITrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // frmIPITributado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(335, 392);
            this.Controls.Add(this.txtvIPITrib);
            this.Controls.Add(this.txtvUnidIPITrib);
            this.Controls.Add(this.txtqUnidIPITrib);
            this.Controls.Add(this.txtIPITrib);
            this.Controls.Add(this.txtvBCIPITrib);
            this.Controls.Add(this.txtcEnqIPITrib);
            this.Controls.Add(this.txtqSeloIPITrib);
            this.Controls.Add(this.txtcSeloIPITrib);
            this.Controls.Add(this.txtCNPJProdIPITrib);
            this.Controls.Add(this.txtclEnqIPITrib);
            this.Controls.Add(this.cboCSTIPITrib);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblQuantTotal);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblValorUnidade);
            this.Controls.Add(this.lblValorBC);
            this.Controls.Add(this.lblcodSitTrib);
            this.Controls.Add(this.lblCodEnquad);
            this.Controls.Add(this.lblquantSelo);
            this.Controls.Add(this.lblCodSelo);
            this.Controls.Add(this.lblCNPJ);
            this.Controls.Add(this.lblCigBebida);
            this.Controls.Add(this.gbCalculoIPI);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmIPITributado";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "IPI Tributado";
            this.gbCalculoIPI.ResumeLayout(false);
            this.gbCalculoIPI.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox gbCalculoIPI;
        private System.Windows.Forms.Label lblCigBebida;
        private System.Windows.Forms.Label lblCNPJ;
        private System.Windows.Forms.Label lblCodSelo;
        private System.Windows.Forms.Label lblquantSelo;
        private System.Windows.Forms.Label lblCodEnquad;
        private System.Windows.Forms.Label lblcodSitTrib;
        private System.Windows.Forms.Label lblValorBC;
        private System.Windows.Forms.Label lblValorUnidade;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblQuantTotal;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.ComboBox cboCSTIPITrib;
        public System.Windows.Forms.TextBox txtclEnqIPITrib;
        public System.Windows.Forms.TextBox txtCNPJProdIPITrib;
        public System.Windows.Forms.TextBox txtcSeloIPITrib;
        public System.Windows.Forms.TextBox txtqSeloIPITrib;
        public System.Windows.Forms.TextBox txtcEnqIPITrib;
        public System.Windows.Forms.TextBox txtvBCIPITrib;
        public System.Windows.Forms.TextBox txtIPITrib;
        public System.Windows.Forms.TextBox txtqUnidIPITrib;
        public System.Windows.Forms.TextBox txtvUnidIPITrib;
        public System.Windows.Forms.TextBox txtvIPITrib;
        public System.Windows.Forms.RadioButton rbValorUnidade;
        public System.Windows.Forms.RadioButton rbAliquota;
    }
}