namespace WindowsFormsApplication1
{
    partial class frmICMS20
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
            this.txtpRedBCSTICMS20 = new System.Windows.Forms.TextBox();
            this.txtvBCSTICMS20 = new System.Windows.Forms.TextBox();
            this.lblValorVBICMSST = new System.Windows.Forms.Label();
            this.lblPercRedBCICMSST = new System.Windows.Forms.Label();
            this.lblModalidade = new System.Windows.Forms.Label();
            this.txtValorICMS20 = new System.Windows.Forms.TextBox();
            this.txtAliquotaICMS20 = new System.Windows.Forms.TextBox();
            this.txtCSTICMS20 = new System.Windows.Forms.TextBox();
            this.cboModalidadeICMS20 = new System.Windows.Forms.ComboBox();
            this.cboOrigemICMS20 = new System.Windows.Forms.ComboBox();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblTrbICMS = new System.Windows.Forms.Label();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.edtvICMS20Deson = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.cbMotivoDesonICMS20 = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtvBCFCP20 = new System.Windows.Forms.TextBox();
            this.lblvBCFCP20 = new System.Windows.Forms.Label();
            this.txtpFCP20 = new System.Windows.Forms.TextBox();
            this.lblpFCP20 = new System.Windows.Forms.Label();
            this.txtvFCP20 = new System.Windows.Forms.TextBox();
            this.lblvFCP20 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(291, 323);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 24;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // txtpRedBCSTICMS20
            // 
            this.txtpRedBCSTICMS20.Location = new System.Drawing.Point(214, 79);
            this.txtpRedBCSTICMS20.Name = "txtpRedBCSTICMS20";
            this.txtpRedBCSTICMS20.Size = new System.Drawing.Size(153, 20);
            this.txtpRedBCSTICMS20.TabIndex = 7;
            this.txtpRedBCSTICMS20.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCSTICMS20
            // 
            this.txtvBCSTICMS20.Location = new System.Drawing.Point(25, 125);
            this.txtvBCSTICMS20.Name = "txtvBCSTICMS20";
            this.txtvBCSTICMS20.Size = new System.Drawing.Size(153, 20);
            this.txtvBCSTICMS20.TabIndex = 9;
            this.txtvBCSTICMS20.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblValorVBICMSST
            // 
            this.lblValorVBICMSST.AutoSize = true;
            this.lblValorVBICMSST.Location = new System.Drawing.Point(22, 109);
            this.lblValorVBICMSST.Name = "lblValorVBICMSST";
            this.lblValorVBICMSST.Size = new System.Drawing.Size(109, 13);
            this.lblValorVBICMSST.TabIndex = 8;
            this.lblValorVBICMSST.Text = "Valor da BC ICMS ST";
            // 
            // lblPercRedBCICMSST
            // 
            this.lblPercRedBCICMSST.AutoSize = true;
            this.lblPercRedBCICMSST.Location = new System.Drawing.Point(210, 63);
            this.lblPercRedBCICMSST.Name = "lblPercRedBCICMSST";
            this.lblPercRedBCICMSST.Size = new System.Drawing.Size(168, 13);
            this.lblPercRedBCICMSST.TabIndex = 6;
            this.lblPercRedBCICMSST.Text = "Percentual Redução BC ICMS ST";
            // 
            // lblModalidade
            // 
            this.lblModalidade.AutoSize = true;
            this.lblModalidade.Location = new System.Drawing.Point(22, 63);
            this.lblModalidade.Name = "lblModalidade";
            this.lblModalidade.Size = new System.Drawing.Size(62, 13);
            this.lblModalidade.TabIndex = 4;
            this.lblModalidade.Text = "Modalidade";
            // 
            // txtValorICMS20
            // 
            this.txtValorICMS20.Location = new System.Drawing.Point(25, 172);
            this.txtValorICMS20.Name = "txtValorICMS20";
            this.txtValorICMS20.Size = new System.Drawing.Size(153, 20);
            this.txtValorICMS20.TabIndex = 13;
            this.txtValorICMS20.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtAliquotaICMS20
            // 
            this.txtAliquotaICMS20.Location = new System.Drawing.Point(213, 125);
            this.txtAliquotaICMS20.Name = "txtAliquotaICMS20";
            this.txtAliquotaICMS20.Size = new System.Drawing.Size(153, 20);
            this.txtAliquotaICMS20.TabIndex = 11;
            this.txtAliquotaICMS20.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCSTICMS20
            // 
            this.txtCSTICMS20.Location = new System.Drawing.Point(213, 35);
            this.txtCSTICMS20.Name = "txtCSTICMS20";
            this.txtCSTICMS20.Size = new System.Drawing.Size(153, 20);
            this.txtCSTICMS20.TabIndex = 3;
            this.txtCSTICMS20.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboModalidadeICMS20
            // 
            this.cboModalidadeICMS20.FormattingEnabled = true;
            this.cboModalidadeICMS20.Items.AddRange(new object[] {
            "Margem Valor Agregado",
            "Pauta",
            "Preço Tabelado Máximo",
            "Valor da Operação"});
            this.cboModalidadeICMS20.Location = new System.Drawing.Point(25, 79);
            this.cboModalidadeICMS20.Name = "cboModalidadeICMS20";
            this.cboModalidadeICMS20.Size = new System.Drawing.Size(153, 21);
            this.cboModalidadeICMS20.TabIndex = 5;
            this.cboModalidadeICMS20.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // cboOrigemICMS20
            // 
            this.cboOrigemICMS20.FormattingEnabled = true;
            this.cboOrigemICMS20.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMS20.Location = new System.Drawing.Point(25, 35);
            this.cboOrigemICMS20.Name = "cboOrigemICMS20";
            this.cboOrigemICMS20.Size = new System.Drawing.Size(153, 21);
            this.cboOrigemICMS20.TabIndex = 1;
            this.cboOrigemICMS20.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(22, 156);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 12;
            this.lblValor.Text = "Valor";
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(210, 109);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(47, 13);
            this.lblAliquota.TabIndex = 10;
            this.lblAliquota.Text = "Alíquota";
            // 
            // lblTrbICMS
            // 
            this.lblTrbICMS.AutoSize = true;
            this.lblTrbICMS.Location = new System.Drawing.Point(210, 15);
            this.lblTrbICMS.Name = "lblTrbICMS";
            this.lblTrbICMS.Size = new System.Drawing.Size(102, 13);
            this.lblTrbICMS.TabIndex = 2;
            this.lblTrbICMS.Text = "Tributação do ICMS";
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(22, 15);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // edtvICMS20Deson
            // 
            this.edtvICMS20Deson.Location = new System.Drawing.Point(25, 224);
            this.edtvICMS20Deson.Name = "edtvICMS20Deson";
            this.edtvICMS20Deson.Size = new System.Drawing.Size(153, 20);
            this.edtvICMS20Deson.TabIndex = 17;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(22, 208);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(121, 13);
            this.label1.TabIndex = 16;
            this.label1.Text = "Valor ICMS Desonerado";
            // 
            // cbMotivoDesonICMS20
            // 
            this.cbMotivoDesonICMS20.FormattingEnabled = true;
            this.cbMotivoDesonICMS20.Items.AddRange(new object[] {
            "Produtor Agropecuário",
            "Outros",
            "Orgão de fomento e dev. Agropecuário"});
            this.cbMotivoDesonICMS20.Location = new System.Drawing.Point(214, 172);
            this.cbMotivoDesonICMS20.Name = "cbMotivoDesonICMS20";
            this.cbMotivoDesonICMS20.Size = new System.Drawing.Size(153, 21);
            this.cbMotivoDesonICMS20.TabIndex = 15;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(211, 156);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(119, 13);
            this.label2.TabIndex = 14;
            this.label2.Text = "Motivo da desoneração";
            // 
            // txtvBCFCP20
            // 
            this.txtvBCFCP20.Location = new System.Drawing.Point(214, 224);
            this.txtvBCFCP20.Name = "txtvBCFCP20";
            this.txtvBCFCP20.Size = new System.Drawing.Size(153, 20);
            this.txtvBCFCP20.TabIndex = 19;
            // 
            // lblvBCFCP20
            // 
            this.lblvBCFCP20.AutoSize = true;
            this.lblvBCFCP20.Location = new System.Drawing.Point(211, 208);
            this.lblvBCFCP20.Name = "lblvBCFCP20";
            this.lblvBCFCP20.Size = new System.Drawing.Size(71, 13);
            this.lblvBCFCP20.TabIndex = 18;
            this.lblvBCFCP20.Text = "Valor BC FCP";
            // 
            // txtpFCP20
            // 
            this.txtpFCP20.Location = new System.Drawing.Point(25, 276);
            this.txtpFCP20.Name = "txtpFCP20";
            this.txtpFCP20.Size = new System.Drawing.Size(153, 20);
            this.txtpFCP20.TabIndex = 21;
            // 
            // lblpFCP20
            // 
            this.lblpFCP20.AutoSize = true;
            this.lblpFCP20.Location = new System.Drawing.Point(22, 260);
            this.lblpFCP20.Name = "lblpFCP20";
            this.lblpFCP20.Size = new System.Drawing.Size(81, 13);
            this.lblpFCP20.TabIndex = 20;
            this.lblpFCP20.Text = "Percentual FCP";
            // 
            // txtvFCP20
            // 
            this.txtvFCP20.Location = new System.Drawing.Point(214, 276);
            this.txtvFCP20.Name = "txtvFCP20";
            this.txtvFCP20.Size = new System.Drawing.Size(153, 20);
            this.txtvFCP20.TabIndex = 23;
            // 
            // lblvFCP20
            // 
            this.lblvFCP20.AutoSize = true;
            this.lblvFCP20.Location = new System.Drawing.Point(211, 260);
            this.lblvFCP20.Name = "lblvFCP20";
            this.lblvFCP20.Size = new System.Drawing.Size(69, 13);
            this.lblvFCP20.TabIndex = 22;
            this.lblvFCP20.Text = "Valor do FCP";
            // 
            // frmICMS20
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(385, 358);
            this.Controls.Add(this.txtvFCP20);
            this.Controls.Add(this.lblvFCP20);
            this.Controls.Add(this.txtpFCP20);
            this.Controls.Add(this.lblpFCP20);
            this.Controls.Add(this.txtvBCFCP20);
            this.Controls.Add(this.lblvBCFCP20);
            this.Controls.Add(this.cbMotivoDesonICMS20);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.edtvICMS20Deson);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtpRedBCSTICMS20);
            this.Controls.Add(this.txtvBCSTICMS20);
            this.Controls.Add(this.lblValorVBICMSST);
            this.Controls.Add(this.lblPercRedBCICMSST);
            this.Controls.Add(this.lblModalidade);
            this.Controls.Add(this.txtValorICMS20);
            this.Controls.Add(this.txtAliquotaICMS20);
            this.Controls.Add(this.txtCSTICMS20);
            this.Controls.Add(this.cboModalidadeICMS20);
            this.Controls.Add(this.cboOrigemICMS20);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblTrbICMS);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMS20";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS20";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        private System.Windows.Forms.Label lblValorVBICMSST;
        private System.Windows.Forms.Label lblPercRedBCICMSST;
        private System.Windows.Forms.Label lblModalidade;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblTrbICMS;
        private System.Windows.Forms.Label lblOrigem;
        public System.Windows.Forms.TextBox txtpRedBCSTICMS20;
        public System.Windows.Forms.TextBox txtvBCSTICMS20;
        public System.Windows.Forms.TextBox txtValorICMS20;
        public System.Windows.Forms.TextBox txtAliquotaICMS20;
        public System.Windows.Forms.TextBox txtCSTICMS20;
        public System.Windows.Forms.ComboBox cboModalidadeICMS20;
        public System.Windows.Forms.ComboBox cboOrigemICMS20;
        public System.Windows.Forms.TextBox edtvICMS20Deson;
        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.ComboBox cbMotivoDesonICMS20;
        private System.Windows.Forms.Label label2;
        public System.Windows.Forms.TextBox txtvBCFCP20;
        private System.Windows.Forms.Label lblvBCFCP20;
        public System.Windows.Forms.TextBox txtpFCP20;
        private System.Windows.Forms.Label lblpFCP20;
        public System.Windows.Forms.TextBox txtvFCP20;
        private System.Windows.Forms.Label lblvFCP20;
    }
}