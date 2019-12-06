namespace WindowsFormsApplication1
{
    partial class frmICMS51
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
            this.lblModalidade = new System.Windows.Forms.Label();
            this.txtValorICMS51 = new System.Windows.Forms.TextBox();
            this.txtAliquotaICMS51 = new System.Windows.Forms.TextBox();
            this.txtValorBCICMS51 = new System.Windows.Forms.TextBox();
            this.txtCSTICMS51 = new System.Windows.Forms.TextBox();
            this.cboModalidadeICMS51 = new System.Windows.Forms.ComboBox();
            this.cboOrigemICMS51 = new System.Windows.Forms.ComboBox();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblbcICMS = new System.Windows.Forms.Label();
            this.lblTrbICMS = new System.Windows.Forms.Label();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.lblpRedBC = new System.Windows.Forms.Label();
            this.txtpRedBCICMS51 = new System.Windows.Forms.TextBox();
            this.txtvICMSOp51 = new System.Windows.Forms.TextBox();
            this.lblvICMSOp51 = new System.Windows.Forms.Label();
            this.edtvICMS51Dif = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.edtPercentualDifICMS51 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtpFCP51 = new System.Windows.Forms.TextBox();
            this.lblpFCP51 = new System.Windows.Forms.Label();
            this.txtvBCFCP51 = new System.Windows.Forms.TextBox();
            this.lblvBCFCP51 = new System.Windows.Forms.Label();
            this.txtvFCP51 = new System.Windows.Forms.TextBox();
            this.lblvFCP51 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(270, 285);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 26;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // lblModalidade
            // 
            this.lblModalidade.AutoSize = true;
            this.lblModalidade.Location = new System.Drawing.Point(9, 56);
            this.lblModalidade.Name = "lblModalidade";
            this.lblModalidade.Size = new System.Drawing.Size(62, 13);
            this.lblModalidade.TabIndex = 4;
            this.lblModalidade.Text = "Modalidade";
            // 
            // txtValorICMS51
            // 
            this.txtValorICMS51.Location = new System.Drawing.Point(12, 154);
            this.txtValorICMS51.Name = "txtValorICMS51";
            this.txtValorICMS51.Size = new System.Drawing.Size(153, 20);
            this.txtValorICMS51.TabIndex = 13;
            this.txtValorICMS51.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtAliquotaICMS51
            // 
            this.txtAliquotaICMS51.Location = new System.Drawing.Point(200, 114);
            this.txtAliquotaICMS51.Name = "txtAliquotaICMS51";
            this.txtAliquotaICMS51.Size = new System.Drawing.Size(144, 20);
            this.txtAliquotaICMS51.TabIndex = 11;
            this.txtAliquotaICMS51.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtValorBCICMS51
            // 
            this.txtValorBCICMS51.Location = new System.Drawing.Point(12, 113);
            this.txtValorBCICMS51.Name = "txtValorBCICMS51";
            this.txtValorBCICMS51.Size = new System.Drawing.Size(153, 20);
            this.txtValorBCICMS51.TabIndex = 9;
            this.txtValorBCICMS51.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCSTICMS51
            // 
            this.txtCSTICMS51.Location = new System.Drawing.Point(200, 31);
            this.txtCSTICMS51.Name = "txtCSTICMS51";
            this.txtCSTICMS51.Size = new System.Drawing.Size(144, 20);
            this.txtCSTICMS51.TabIndex = 3;
            this.txtCSTICMS51.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboModalidadeICMS51
            // 
            this.cboModalidadeICMS51.FormattingEnabled = true;
            this.cboModalidadeICMS51.Items.AddRange(new object[] {
            "Margem Valor Agregado",
            "Pauta",
            "Preço Tabelado Máximo",
            "Valor da Operação"});
            this.cboModalidadeICMS51.Location = new System.Drawing.Point(12, 71);
            this.cboModalidadeICMS51.Name = "cboModalidadeICMS51";
            this.cboModalidadeICMS51.Size = new System.Drawing.Size(153, 21);
            this.cboModalidadeICMS51.TabIndex = 5;
            this.cboModalidadeICMS51.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // cboOrigemICMS51
            // 
            this.cboOrigemICMS51.FormattingEnabled = true;
            this.cboOrigemICMS51.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMS51.Location = new System.Drawing.Point(12, 31);
            this.cboOrigemICMS51.Name = "cboOrigemICMS51";
            this.cboOrigemICMS51.Size = new System.Drawing.Size(153, 21);
            this.cboOrigemICMS51.TabIndex = 1;
            this.cboOrigemICMS51.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(9, 138);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 12;
            this.lblValor.Text = "Valor";
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(197, 98);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(47, 13);
            this.lblAliquota.TabIndex = 10;
            this.lblAliquota.Text = "Alíquota";
            // 
            // lblbcICMS
            // 
            this.lblbcICMS.AutoSize = true;
            this.lblbcICMS.Location = new System.Drawing.Point(12, 97);
            this.lblbcICMS.Name = "lblbcICMS";
            this.lblbcICMS.Size = new System.Drawing.Size(107, 13);
            this.lblbcICMS.TabIndex = 8;
            this.lblbcICMS.Text = "Valor da BC do ICMS";
            // 
            // lblTrbICMS
            // 
            this.lblTrbICMS.AutoSize = true;
            this.lblTrbICMS.Location = new System.Drawing.Point(197, 11);
            this.lblTrbICMS.Name = "lblTrbICMS";
            this.lblTrbICMS.Size = new System.Drawing.Size(102, 13);
            this.lblTrbICMS.TabIndex = 2;
            this.lblTrbICMS.Text = "Tributação do ICMS";
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(9, 11);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // lblpRedBC
            // 
            this.lblpRedBC.AutoSize = true;
            this.lblpRedBC.Location = new System.Drawing.Point(197, 56);
            this.lblpRedBC.Name = "lblpRedBC";
            this.lblpRedBC.Size = new System.Drawing.Size(147, 13);
            this.lblpRedBC.TabIndex = 6;
            this.lblpRedBC.Text = "Percentual de redução de BC";
            // 
            // txtpRedBCICMS51
            // 
            this.txtpRedBCICMS51.Location = new System.Drawing.Point(201, 72);
            this.txtpRedBCICMS51.Name = "txtpRedBCICMS51";
            this.txtpRedBCICMS51.Size = new System.Drawing.Size(143, 20);
            this.txtpRedBCICMS51.TabIndex = 7;
            this.txtpRedBCICMS51.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvICMSOp51
            // 
            this.txtvICMSOp51.Location = new System.Drawing.Point(201, 155);
            this.txtvICMSOp51.Name = "txtvICMSOp51";
            this.txtvICMSOp51.Size = new System.Drawing.Size(144, 20);
            this.txtvICMSOp51.TabIndex = 15;
            // 
            // lblvICMSOp51
            // 
            this.lblvICMSOp51.AutoSize = true;
            this.lblvICMSOp51.Location = new System.Drawing.Point(198, 139);
            this.lblvICMSOp51.Name = "lblvICMSOp51";
            this.lblvICMSOp51.Size = new System.Drawing.Size(125, 13);
            this.lblvICMSOp51.TabIndex = 14;
            this.lblvICMSOp51.Text = "Valor ICMS da Operação";
            // 
            // edtvICMS51Dif
            // 
            this.edtvICMS51Dif.Location = new System.Drawing.Point(12, 195);
            this.edtvICMS51Dif.Name = "edtvICMS51Dif";
            this.edtvICMS51Dif.Size = new System.Drawing.Size(153, 20);
            this.edtvICMS51Dif.TabIndex = 17;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 179);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(99, 13);
            this.label2.TabIndex = 16;
            this.label2.Text = "Valor ICMS Diferido";
            // 
            // edtPercentualDifICMS51
            // 
            this.edtPercentualDifICMS51.Location = new System.Drawing.Point(200, 196);
            this.edtPercentualDifICMS51.Name = "edtPercentualDifICMS51";
            this.edtPercentualDifICMS51.Size = new System.Drawing.Size(144, 20);
            this.edtPercentualDifICMS51.TabIndex = 19;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(197, 180);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(129, 13);
            this.label3.TabIndex = 18;
            this.label3.Text = "Percentual do Diferimento";
            // 
            // txtpFCP51
            // 
            this.txtpFCP51.Location = new System.Drawing.Point(200, 239);
            this.txtpFCP51.Name = "txtpFCP51";
            this.txtpFCP51.Size = new System.Drawing.Size(144, 20);
            this.txtpFCP51.TabIndex = 23;
            // 
            // lblpFCP51
            // 
            this.lblpFCP51.AutoSize = true;
            this.lblpFCP51.Location = new System.Drawing.Point(198, 223);
            this.lblpFCP51.Name = "lblpFCP51";
            this.lblpFCP51.Size = new System.Drawing.Size(81, 13);
            this.lblpFCP51.TabIndex = 22;
            this.lblpFCP51.Text = "Percentual FCP";
            // 
            // txtvBCFCP51
            // 
            this.txtvBCFCP51.Location = new System.Drawing.Point(12, 238);
            this.txtvBCFCP51.Name = "txtvBCFCP51";
            this.txtvBCFCP51.Size = new System.Drawing.Size(153, 20);
            this.txtvBCFCP51.TabIndex = 21;
            // 
            // lblvBCFCP51
            // 
            this.lblvBCFCP51.AutoSize = true;
            this.lblvBCFCP51.Location = new System.Drawing.Point(9, 222);
            this.lblvBCFCP51.Name = "lblvBCFCP51";
            this.lblvBCFCP51.Size = new System.Drawing.Size(71, 13);
            this.lblvBCFCP51.TabIndex = 20;
            this.lblvBCFCP51.Text = "Valor BC FCP";
            // 
            // txtvFCP51
            // 
            this.txtvFCP51.Location = new System.Drawing.Point(12, 285);
            this.txtvFCP51.Name = "txtvFCP51";
            this.txtvFCP51.Size = new System.Drawing.Size(153, 20);
            this.txtvFCP51.TabIndex = 25;
            // 
            // lblvFCP51
            // 
            this.lblvFCP51.AutoSize = true;
            this.lblvFCP51.Location = new System.Drawing.Point(9, 269);
            this.lblvFCP51.Name = "lblvFCP51";
            this.lblvFCP51.Size = new System.Drawing.Size(69, 13);
            this.lblvFCP51.TabIndex = 24;
            this.lblvFCP51.Text = "Valor do FCP";
            // 
            // frmICMS51
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(363, 321);
            this.Controls.Add(this.txtvFCP51);
            this.Controls.Add(this.lblvFCP51);
            this.Controls.Add(this.txtpFCP51);
            this.Controls.Add(this.lblpFCP51);
            this.Controls.Add(this.txtvBCFCP51);
            this.Controls.Add(this.lblvBCFCP51);
            this.Controls.Add(this.edtPercentualDifICMS51);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.edtvICMS51Dif);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtvICMSOp51);
            this.Controls.Add(this.lblvICMSOp51);
            this.Controls.Add(this.txtpRedBCICMS51);
            this.Controls.Add(this.lblpRedBC);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.lblModalidade);
            this.Controls.Add(this.txtValorICMS51);
            this.Controls.Add(this.txtAliquotaICMS51);
            this.Controls.Add(this.txtValorBCICMS51);
            this.Controls.Add(this.txtCSTICMS51);
            this.Controls.Add(this.cboModalidadeICMS51);
            this.Controls.Add(this.cboOrigemICMS51);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblbcICMS);
            this.Controls.Add(this.lblTrbICMS);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMS51";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS51";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        private System.Windows.Forms.Label lblModalidade;
        public System.Windows.Forms.TextBox txtValorICMS51;
        public System.Windows.Forms.TextBox txtAliquotaICMS51;
        public System.Windows.Forms.TextBox txtValorBCICMS51;
        public System.Windows.Forms.TextBox txtCSTICMS51;
        public System.Windows.Forms.ComboBox cboModalidadeICMS51;
        public System.Windows.Forms.ComboBox cboOrigemICMS51;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblbcICMS;
        private System.Windows.Forms.Label lblTrbICMS;
        private System.Windows.Forms.Label lblOrigem;
        private System.Windows.Forms.Label lblpRedBC;
        public System.Windows.Forms.TextBox txtpRedBCICMS51;
        public System.Windows.Forms.TextBox txtvICMSOp51;
        private System.Windows.Forms.Label lblvICMSOp51;
        public System.Windows.Forms.TextBox edtvICMS51Dif;
        private System.Windows.Forms.Label label2;
        public System.Windows.Forms.TextBox edtPercentualDifICMS51;
        private System.Windows.Forms.Label label3;
        public System.Windows.Forms.TextBox txtpFCP51;
        private System.Windows.Forms.Label lblpFCP51;
        public System.Windows.Forms.TextBox txtvBCFCP51;
        private System.Windows.Forms.Label lblvBCFCP51;
        public System.Windows.Forms.TextBox txtvFCP51;
        private System.Windows.Forms.Label lblvFCP51;

    }
}