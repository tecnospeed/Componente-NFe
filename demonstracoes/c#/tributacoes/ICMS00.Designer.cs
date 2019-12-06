namespace WindowsFormsApplication1
{
    partial class frmICMS00
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
            this.lblOrigem = new System.Windows.Forms.Label();
            this.lblTrbICMS = new System.Windows.Forms.Label();
            this.lblModalidade = new System.Windows.Forms.Label();
            this.lblbcICMS = new System.Windows.Forms.Label();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblValor = new System.Windows.Forms.Label();
            this.cboOrigemICMS00 = new System.Windows.Forms.ComboBox();
            this.cboModalidadeICMS00 = new System.Windows.Forms.ComboBox();
            this.txtCSTICMS00 = new System.Windows.Forms.TextBox();
            this.txtValorBCICMS00 = new System.Windows.Forms.TextBox();
            this.txtAliquotaICMS00 = new System.Windows.Forms.TextBox();
            this.txtValorICMS00 = new System.Windows.Forms.TextBox();
            this.btnGravar = new System.Windows.Forms.Button();
            this.lblpFCP00 = new System.Windows.Forms.Label();
            this.txtpFCP00 = new System.Windows.Forms.TextBox();
            this.lblvFCP00 = new System.Windows.Forms.Label();
            this.txtvFCP00 = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(18, 19);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // lblTrbICMS
            // 
            this.lblTrbICMS.AutoSize = true;
            this.lblTrbICMS.Location = new System.Drawing.Point(206, 23);
            this.lblTrbICMS.Name = "lblTrbICMS";
            this.lblTrbICMS.Size = new System.Drawing.Size(102, 13);
            this.lblTrbICMS.TabIndex = 2;
            this.lblTrbICMS.Text = "Tributação do ICMS";
            // 
            // lblModalidade
            // 
            this.lblModalidade.AutoSize = true;
            this.lblModalidade.Location = new System.Drawing.Point(18, 62);
            this.lblModalidade.Name = "lblModalidade";
            this.lblModalidade.Size = new System.Drawing.Size(62, 13);
            this.lblModalidade.TabIndex = 4;
            this.lblModalidade.Text = "Modalidade";
            // 
            // lblbcICMS
            // 
            this.lblbcICMS.AutoSize = true;
            this.lblbcICMS.Location = new System.Drawing.Point(206, 65);
            this.lblbcICMS.Name = "lblbcICMS";
            this.lblbcICMS.Size = new System.Drawing.Size(107, 13);
            this.lblbcICMS.TabIndex = 6;
            this.lblbcICMS.Text = "Valor da BC do ICMS";
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(18, 105);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(47, 13);
            this.lblAliquota.TabIndex = 8;
            this.lblAliquota.Text = "Alíquota";
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(206, 105);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 10;
            this.lblValor.Text = "Valor";
            // 
            // cboOrigemICMS00
            // 
            this.cboOrigemICMS00.FormattingEnabled = true;
            this.cboOrigemICMS00.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMS00.Location = new System.Drawing.Point(21, 39);
            this.cboOrigemICMS00.Name = "cboOrigemICMS00";
            this.cboOrigemICMS00.Size = new System.Drawing.Size(153, 21);
            this.cboOrigemICMS00.TabIndex = 1;
            this.cboOrigemICMS00.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // cboModalidadeICMS00
            // 
            this.cboModalidadeICMS00.FormattingEnabled = true;
            this.cboModalidadeICMS00.Items.AddRange(new object[] {
            "Margem Valor Agregado",
            "Pauta",
            "Preço Tabelado Máximo",
            "Valor da Operação"});
            this.cboModalidadeICMS00.Location = new System.Drawing.Point(21, 81);
            this.cboModalidadeICMS00.Name = "cboModalidadeICMS00";
            this.cboModalidadeICMS00.Size = new System.Drawing.Size(153, 21);
            this.cboModalidadeICMS00.TabIndex = 5;
            this.cboModalidadeICMS00.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // txtCSTICMS00
            // 
            this.txtCSTICMS00.Location = new System.Drawing.Point(209, 39);
            this.txtCSTICMS00.Name = "txtCSTICMS00";
            this.txtCSTICMS00.Size = new System.Drawing.Size(144, 20);
            this.txtCSTICMS00.TabIndex = 3;
            this.txtCSTICMS00.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtValorBCICMS00
            // 
            this.txtValorBCICMS00.Location = new System.Drawing.Point(209, 81);
            this.txtValorBCICMS00.Name = "txtValorBCICMS00";
            this.txtValorBCICMS00.Size = new System.Drawing.Size(144, 20);
            this.txtValorBCICMS00.TabIndex = 7;
            this.txtValorBCICMS00.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtAliquotaICMS00
            // 
            this.txtAliquotaICMS00.Location = new System.Drawing.Point(21, 121);
            this.txtAliquotaICMS00.Name = "txtAliquotaICMS00";
            this.txtAliquotaICMS00.Size = new System.Drawing.Size(153, 20);
            this.txtAliquotaICMS00.TabIndex = 9;
            this.txtAliquotaICMS00.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtValorICMS00
            // 
            this.txtValorICMS00.Location = new System.Drawing.Point(209, 121);
            this.txtValorICMS00.Name = "txtValorICMS00";
            this.txtValorICMS00.Size = new System.Drawing.Size(144, 20);
            this.txtValorICMS00.TabIndex = 11;
            this.txtValorICMS00.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(278, 197);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 16;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // lblpFCP00
            // 
            this.lblpFCP00.AutoSize = true;
            this.lblpFCP00.Location = new System.Drawing.Point(18, 145);
            this.lblpFCP00.Name = "lblpFCP00";
            this.lblpFCP00.Size = new System.Drawing.Size(81, 13);
            this.lblpFCP00.TabIndex = 12;
            this.lblpFCP00.Text = "Percentual FCP";
            // 
            // txtpFCP00
            // 
            this.txtpFCP00.Location = new System.Drawing.Point(21, 162);
            this.txtpFCP00.Name = "txtpFCP00";
            this.txtpFCP00.Size = new System.Drawing.Size(153, 20);
            this.txtpFCP00.TabIndex = 13;
            // 
            // lblvFCP00
            // 
            this.lblvFCP00.AutoSize = true;
            this.lblvFCP00.Location = new System.Drawing.Point(206, 145);
            this.lblvFCP00.Name = "lblvFCP00";
            this.lblvFCP00.Size = new System.Drawing.Size(54, 13);
            this.lblvFCP00.TabIndex = 14;
            this.lblvFCP00.Text = "Valor FCP";
            // 
            // txtvFCP00
            // 
            this.txtvFCP00.Location = new System.Drawing.Point(209, 162);
            this.txtvFCP00.Name = "txtvFCP00";
            this.txtvFCP00.Size = new System.Drawing.Size(144, 20);
            this.txtvFCP00.TabIndex = 15;
            // 
            // frmICMS00
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(375, 236);
            this.Controls.Add(this.txtvFCP00);
            this.Controls.Add(this.lblvFCP00);
            this.Controls.Add(this.txtpFCP00);
            this.Controls.Add(this.lblpFCP00);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtValorICMS00);
            this.Controls.Add(this.txtAliquotaICMS00);
            this.Controls.Add(this.txtValorBCICMS00);
            this.Controls.Add(this.txtCSTICMS00);
            this.Controls.Add(this.cboModalidadeICMS00);
            this.Controls.Add(this.cboOrigemICMS00);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblbcICMS);
            this.Controls.Add(this.lblModalidade);
            this.Controls.Add(this.lblTrbICMS);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMS00";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS00";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblOrigem;
        private System.Windows.Forms.Label lblTrbICMS;
        private System.Windows.Forms.Label lblModalidade;
        private System.Windows.Forms.Label lblbcICMS;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox txtCSTICMS00;
        public System.Windows.Forms.TextBox txtValorBCICMS00;
        public System.Windows.Forms.ComboBox cboOrigemICMS00;
        public System.Windows.Forms.ComboBox cboModalidadeICMS00;
        public System.Windows.Forms.TextBox txtAliquotaICMS00;
        public System.Windows.Forms.TextBox txtValorICMS00;
        private System.Windows.Forms.Label lblpFCP00;
        public System.Windows.Forms.TextBox txtpFCP00;
        private System.Windows.Forms.Label lblvFCP00;
        public System.Windows.Forms.TextBox txtvFCP00;
    }
}