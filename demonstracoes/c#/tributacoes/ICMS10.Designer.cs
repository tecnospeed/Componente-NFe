namespace WindowsFormsApplication1
{
    partial class frmICMS10
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
            this.txtValorICMS10 = new System.Windows.Forms.TextBox();
            this.txtAliquotaICMS10 = new System.Windows.Forms.TextBox();
            this.txtValorBCICMS10 = new System.Windows.Forms.TextBox();
            this.txtCSTICMS10 = new System.Windows.Forms.TextBox();
            this.cboModalidadeICMS10 = new System.Windows.Forms.ComboBox();
            this.cboOrigemICMS10 = new System.Windows.Forms.ComboBox();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblbcICMS = new System.Windows.Forms.Label();
            this.lblTrbICMS = new System.Windows.Forms.Label();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.lblModalidade = new System.Windows.Forms.Label();
            this.lblBCICMSST = new System.Windows.Forms.Label();
            this.lblPercICMSST = new System.Windows.Forms.Label();
            this.lblAliquotaICMSST = new System.Windows.Forms.Label();
            this.lblPercRedBCICMSST = new System.Windows.Forms.Label();
            this.lblValorVBICMSST = new System.Windows.Forms.Label();
            this.lblValorICMSST = new System.Windows.Forms.Label();
            this.txtpMVASTICMS10 = new System.Windows.Forms.TextBox();
            this.txtvBCSTICMS10 = new System.Windows.Forms.TextBox();
            this.txtvICMSSTICMS10 = new System.Windows.Forms.TextBox();
            this.txtpICMSSTICMS10 = new System.Windows.Forms.TextBox();
            this.txtpRedBCSTICMS10 = new System.Windows.Forms.TextBox();
            this.cboModSTICMS10 = new System.Windows.Forms.ComboBox();
            this.btnGravar = new System.Windows.Forms.Button();
            this.txtvBCFCP10 = new System.Windows.Forms.TextBox();
            this.lblvBCFCP10 = new System.Windows.Forms.Label();
            this.txtpFCP10 = new System.Windows.Forms.TextBox();
            this.lblpFCP10 = new System.Windows.Forms.Label();
            this.txtvBCFCPST10 = new System.Windows.Forms.TextBox();
            this.lblvBCFCPST = new System.Windows.Forms.Label();
            this.txtvFCP10 = new System.Windows.Forms.TextBox();
            this.lblvFCP10 = new System.Windows.Forms.Label();
            this.txtpFCPST10 = new System.Windows.Forms.TextBox();
            this.lblpFCPST10 = new System.Windows.Forms.Label();
            this.txtvFCPST10 = new System.Windows.Forms.TextBox();
            this.lblvFCPST10 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtValorICMS10
            // 
            this.txtValorICMS10.Location = new System.Drawing.Point(200, 122);
            this.txtValorICMS10.Name = "txtValorICMS10";
            this.txtValorICMS10.Size = new System.Drawing.Size(144, 20);
            this.txtValorICMS10.TabIndex = 11;
            this.txtValorICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtAliquotaICMS10
            // 
            this.txtAliquotaICMS10.Location = new System.Drawing.Point(12, 122);
            this.txtAliquotaICMS10.Name = "txtAliquotaICMS10";
            this.txtAliquotaICMS10.Size = new System.Drawing.Size(153, 20);
            this.txtAliquotaICMS10.TabIndex = 9;
            this.txtAliquotaICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtValorBCICMS10
            // 
            this.txtValorBCICMS10.Location = new System.Drawing.Point(200, 79);
            this.txtValorBCICMS10.Name = "txtValorBCICMS10";
            this.txtValorBCICMS10.Size = new System.Drawing.Size(144, 20);
            this.txtValorBCICMS10.TabIndex = 7;
            this.txtValorBCICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCSTICMS10
            // 
            this.txtCSTICMS10.Location = new System.Drawing.Point(200, 35);
            this.txtCSTICMS10.Name = "txtCSTICMS10";
            this.txtCSTICMS10.Size = new System.Drawing.Size(144, 20);
            this.txtCSTICMS10.TabIndex = 3;
            this.txtCSTICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboModalidadeICMS10
            // 
            this.cboModalidadeICMS10.FormattingEnabled = true;
            this.cboModalidadeICMS10.Items.AddRange(new object[] {
            "Margem Valor Agregado",
            "Pauta",
            "Preço Tabelado Máximo",
            "Valor da Operação"});
            this.cboModalidadeICMS10.Location = new System.Drawing.Point(12, 79);
            this.cboModalidadeICMS10.Name = "cboModalidadeICMS10";
            this.cboModalidadeICMS10.Size = new System.Drawing.Size(153, 21);
            this.cboModalidadeICMS10.TabIndex = 5;
            this.cboModalidadeICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // cboOrigemICMS10
            // 
            this.cboOrigemICMS10.FormattingEnabled = true;
            this.cboOrigemICMS10.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMS10.Location = new System.Drawing.Point(12, 35);
            this.cboOrigemICMS10.Name = "cboOrigemICMS10";
            this.cboOrigemICMS10.Size = new System.Drawing.Size(153, 21);
            this.cboOrigemICMS10.TabIndex = 1;
            this.cboOrigemICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(200, 106);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 10;
            this.lblValor.Text = "Valor";
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(11, 106);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(47, 13);
            this.lblAliquota.TabIndex = 8;
            this.lblAliquota.Text = "Alíquota";
            // 
            // lblbcICMS
            // 
            this.lblbcICMS.AutoSize = true;
            this.lblbcICMS.Location = new System.Drawing.Point(200, 63);
            this.lblbcICMS.Name = "lblbcICMS";
            this.lblbcICMS.Size = new System.Drawing.Size(107, 13);
            this.lblbcICMS.TabIndex = 6;
            this.lblbcICMS.Text = "Valor da BC do ICMS";
            // 
            // lblTrbICMS
            // 
            this.lblTrbICMS.AutoSize = true;
            this.lblTrbICMS.Location = new System.Drawing.Point(200, 18);
            this.lblTrbICMS.Name = "lblTrbICMS";
            this.lblTrbICMS.Size = new System.Drawing.Size(102, 13);
            this.lblTrbICMS.TabIndex = 2;
            this.lblTrbICMS.Text = "Tributação do ICMS";
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(11, 18);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // lblModalidade
            // 
            this.lblModalidade.AutoSize = true;
            this.lblModalidade.Location = new System.Drawing.Point(11, 63);
            this.lblModalidade.Name = "lblModalidade";
            this.lblModalidade.Size = new System.Drawing.Size(62, 13);
            this.lblModalidade.TabIndex = 4;
            this.lblModalidade.Text = "Modalidade";
            // 
            // lblBCICMSST
            // 
            this.lblBCICMSST.AutoSize = true;
            this.lblBCICMSST.Location = new System.Drawing.Point(11, 149);
            this.lblBCICMSST.Name = "lblBCICMSST";
            this.lblBCICMSST.Size = new System.Drawing.Size(125, 13);
            this.lblBCICMSST.TabIndex = 12;
            this.lblBCICMSST.Text = "Modalidade BC ICMS ST";
            // 
            // lblPercICMSST
            // 
            this.lblPercICMSST.AutoSize = true;
            this.lblPercICMSST.Location = new System.Drawing.Point(200, 149);
            this.lblPercICMSST.Name = "lblPercICMSST";
            this.lblPercICMSST.Size = new System.Drawing.Size(159, 13);
            this.lblPercICMSST.TabIndex = 14;
            this.lblPercICMSST.Text = "Percentual da margem ICMS ST";
            // 
            // lblAliquotaICMSST
            // 
            this.lblAliquotaICMSST.AutoSize = true;
            this.lblAliquotaICMSST.Location = new System.Drawing.Point(11, 239);
            this.lblAliquotaICMSST.Name = "lblAliquotaICMSST";
            this.lblAliquotaICMSST.Size = new System.Drawing.Size(93, 13);
            this.lblAliquotaICMSST.TabIndex = 20;
            this.lblAliquotaICMSST.Text = "Alíquota ICMS ST";
            // 
            // lblPercRedBCICMSST
            // 
            this.lblPercRedBCICMSST.AutoSize = true;
            this.lblPercRedBCICMSST.Location = new System.Drawing.Point(11, 193);
            this.lblPercRedBCICMSST.Name = "lblPercRedBCICMSST";
            this.lblPercRedBCICMSST.Size = new System.Drawing.Size(168, 13);
            this.lblPercRedBCICMSST.TabIndex = 16;
            this.lblPercRedBCICMSST.Text = "Percentual Redução BC ICMS ST";
            // 
            // lblValorVBICMSST
            // 
            this.lblValorVBICMSST.AutoSize = true;
            this.lblValorVBICMSST.Location = new System.Drawing.Point(200, 193);
            this.lblValorVBICMSST.Name = "lblValorVBICMSST";
            this.lblValorVBICMSST.Size = new System.Drawing.Size(109, 13);
            this.lblValorVBICMSST.TabIndex = 18;
            this.lblValorVBICMSST.Text = "Valor da BC ICMS ST";
            // 
            // lblValorICMSST
            // 
            this.lblValorICMSST.AutoSize = true;
            this.lblValorICMSST.Location = new System.Drawing.Point(200, 239);
            this.lblValorICMSST.Name = "lblValorICMSST";
            this.lblValorICMSST.Size = new System.Drawing.Size(92, 13);
            this.lblValorICMSST.TabIndex = 22;
            this.lblValorICMSST.Text = "Valor do ICMS ST";
            // 
            // txtpMVASTICMS10
            // 
            this.txtpMVASTICMS10.Location = new System.Drawing.Point(200, 165);
            this.txtpMVASTICMS10.Name = "txtpMVASTICMS10";
            this.txtpMVASTICMS10.Size = new System.Drawing.Size(144, 20);
            this.txtpMVASTICMS10.TabIndex = 15;
            this.txtpMVASTICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCSTICMS10
            // 
            this.txtvBCSTICMS10.Location = new System.Drawing.Point(200, 209);
            this.txtvBCSTICMS10.Name = "txtvBCSTICMS10";
            this.txtvBCSTICMS10.Size = new System.Drawing.Size(144, 20);
            this.txtvBCSTICMS10.TabIndex = 19;
            this.txtvBCSTICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvICMSSTICMS10
            // 
            this.txtvICMSSTICMS10.Location = new System.Drawing.Point(200, 255);
            this.txtvICMSSTICMS10.Name = "txtvICMSSTICMS10";
            this.txtvICMSSTICMS10.Size = new System.Drawing.Size(144, 20);
            this.txtvICMSSTICMS10.TabIndex = 23;
            this.txtvICMSSTICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpICMSSTICMS10
            // 
            this.txtpICMSSTICMS10.Location = new System.Drawing.Point(12, 255);
            this.txtpICMSSTICMS10.Name = "txtpICMSSTICMS10";
            this.txtpICMSSTICMS10.Size = new System.Drawing.Size(153, 20);
            this.txtpICMSSTICMS10.TabIndex = 21;
            this.txtpICMSSTICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpRedBCSTICMS10
            // 
            this.txtpRedBCSTICMS10.Location = new System.Drawing.Point(12, 209);
            this.txtpRedBCSTICMS10.Name = "txtpRedBCSTICMS10";
            this.txtpRedBCSTICMS10.Size = new System.Drawing.Size(153, 20);
            this.txtpRedBCSTICMS10.TabIndex = 17;
            this.txtpRedBCSTICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboModSTICMS10
            // 
            this.cboModSTICMS10.FormattingEnabled = true;
            this.cboModSTICMS10.Items.AddRange(new object[] {
            "Preço tabelado ou máximo sugerido",
            "Lista Negativa",
            "Lista Positiva",
            "Lista Neutra",
            "Margem Valor Agregado",
            "Pauta"});
            this.cboModSTICMS10.Location = new System.Drawing.Point(12, 165);
            this.cboModSTICMS10.Name = "cboModSTICMS10";
            this.cboModSTICMS10.Size = new System.Drawing.Size(153, 21);
            this.cboModSTICMS10.TabIndex = 13;
            this.cboModSTICMS10.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(269, 425);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 36;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // txtvBCFCP10
            // 
            this.txtvBCFCP10.Location = new System.Drawing.Point(12, 295);
            this.txtvBCFCP10.Name = "txtvBCFCP10";
            this.txtvBCFCP10.Size = new System.Drawing.Size(153, 20);
            this.txtvBCFCP10.TabIndex = 25;
            // 
            // lblvBCFCP10
            // 
            this.lblvBCFCP10.AutoSize = true;
            this.lblvBCFCP10.Location = new System.Drawing.Point(11, 279);
            this.lblvBCFCP10.Name = "lblvBCFCP10";
            this.lblvBCFCP10.Size = new System.Drawing.Size(71, 13);
            this.lblvBCFCP10.TabIndex = 24;
            this.lblvBCFCP10.Text = "Valor BC FCP";
            // 
            // txtpFCP10
            // 
            this.txtpFCP10.Location = new System.Drawing.Point(200, 295);
            this.txtpFCP10.Name = "txtpFCP10";
            this.txtpFCP10.Size = new System.Drawing.Size(144, 20);
            this.txtpFCP10.TabIndex = 27;
            // 
            // lblpFCP10
            // 
            this.lblpFCP10.AutoSize = true;
            this.lblpFCP10.Location = new System.Drawing.Point(197, 279);
            this.lblpFCP10.Name = "lblpFCP10";
            this.lblpFCP10.Size = new System.Drawing.Size(81, 13);
            this.lblpFCP10.TabIndex = 26;
            this.lblpFCP10.Text = "Percentual FCP";
            // 
            // txtvBCFCPST10
            // 
            this.txtvBCFCPST10.Location = new System.Drawing.Point(200, 344);
            this.txtvBCFCPST10.Name = "txtvBCFCPST10";
            this.txtvBCFCPST10.Size = new System.Drawing.Size(144, 20);
            this.txtvBCFCPST10.TabIndex = 31;
            // 
            // lblvBCFCPST
            // 
            this.lblvBCFCPST.AutoSize = true;
            this.lblvBCFCPST.Location = new System.Drawing.Point(199, 328);
            this.lblvBCFCPST.Name = "lblvBCFCPST";
            this.lblvBCFCPST.Size = new System.Drawing.Size(88, 13);
            this.lblvBCFCPST.TabIndex = 30;
            this.lblvBCFCPST.Text = "Valor BC FCP ST";
            // 
            // txtvFCP10
            // 
            this.txtvFCP10.Location = new System.Drawing.Point(11, 344);
            this.txtvFCP10.Name = "txtvFCP10";
            this.txtvFCP10.Size = new System.Drawing.Size(153, 20);
            this.txtvFCP10.TabIndex = 29;
            // 
            // lblvFCP10
            // 
            this.lblvFCP10.AutoSize = true;
            this.lblvFCP10.Location = new System.Drawing.Point(8, 328);
            this.lblvFCP10.Name = "lblvFCP10";
            this.lblvFCP10.Size = new System.Drawing.Size(69, 13);
            this.lblvFCP10.TabIndex = 28;
            this.lblvFCP10.Text = "Valor do FCP";
            // 
            // txtpFCPST10
            // 
            this.txtpFCPST10.Location = new System.Drawing.Point(12, 393);
            this.txtpFCPST10.Name = "txtpFCPST10";
            this.txtpFCPST10.Size = new System.Drawing.Size(153, 20);
            this.txtpFCPST10.TabIndex = 33;
            // 
            // lblpFCPST10
            // 
            this.lblpFCPST10.AutoSize = true;
            this.lblpFCPST10.Location = new System.Drawing.Point(9, 377);
            this.lblpFCPST10.Name = "lblpFCPST10";
            this.lblpFCPST10.Size = new System.Drawing.Size(98, 13);
            this.lblpFCPST10.TabIndex = 32;
            this.lblpFCPST10.Text = "Percentual FCP ST";
            // 
            // txtvFCPST10
            // 
            this.txtvFCPST10.Location = new System.Drawing.Point(200, 393);
            this.txtvFCPST10.Name = "txtvFCPST10";
            this.txtvFCPST10.Size = new System.Drawing.Size(144, 20);
            this.txtvFCPST10.TabIndex = 35;
            // 
            // lblvFCPST10
            // 
            this.lblvFCPST10.AutoSize = true;
            this.lblvFCPST10.Location = new System.Drawing.Point(197, 377);
            this.lblvFCPST10.Name = "lblvFCPST10";
            this.lblvFCPST10.Size = new System.Drawing.Size(86, 13);
            this.lblvFCPST10.TabIndex = 34;
            this.lblvFCPST10.Text = "Valor do FCP ST";
            // 
            // frmICMS10
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(378, 460);
            this.Controls.Add(this.txtvFCPST10);
            this.Controls.Add(this.lblvFCPST10);
            this.Controls.Add(this.txtpFCPST10);
            this.Controls.Add(this.lblpFCPST10);
            this.Controls.Add(this.txtvBCFCPST10);
            this.Controls.Add(this.lblvBCFCPST);
            this.Controls.Add(this.txtvFCP10);
            this.Controls.Add(this.lblvFCP10);
            this.Controls.Add(this.txtpFCP10);
            this.Controls.Add(this.lblpFCP10);
            this.Controls.Add(this.txtvBCFCP10);
            this.Controls.Add(this.lblvBCFCP10);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.cboModSTICMS10);
            this.Controls.Add(this.txtpRedBCSTICMS10);
            this.Controls.Add(this.txtpICMSSTICMS10);
            this.Controls.Add(this.txtvICMSSTICMS10);
            this.Controls.Add(this.txtvBCSTICMS10);
            this.Controls.Add(this.txtpMVASTICMS10);
            this.Controls.Add(this.lblValorICMSST);
            this.Controls.Add(this.lblValorVBICMSST);
            this.Controls.Add(this.lblPercRedBCICMSST);
            this.Controls.Add(this.lblAliquotaICMSST);
            this.Controls.Add(this.lblPercICMSST);
            this.Controls.Add(this.lblBCICMSST);
            this.Controls.Add(this.lblModalidade);
            this.Controls.Add(this.txtValorICMS10);
            this.Controls.Add(this.txtAliquotaICMS10);
            this.Controls.Add(this.txtValorBCICMS10);
            this.Controls.Add(this.txtCSTICMS10);
            this.Controls.Add(this.cboModalidadeICMS10);
            this.Controls.Add(this.cboOrigemICMS10);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblbcICMS);
            this.Controls.Add(this.lblTrbICMS);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmICMS10";
            this.Text = "ICMS10";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblbcICMS;
        private System.Windows.Forms.Label lblTrbICMS;
        private System.Windows.Forms.Label lblOrigem;
        private System.Windows.Forms.Label lblModalidade;
        private System.Windows.Forms.Label lblBCICMSST;
        private System.Windows.Forms.Label lblPercICMSST;
        private System.Windows.Forms.Label lblAliquotaICMSST;
        private System.Windows.Forms.Label lblPercRedBCICMSST;
        private System.Windows.Forms.Label lblValorVBICMSST;
        private System.Windows.Forms.Label lblValorICMSST;
        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox txtValorICMS10;
        public System.Windows.Forms.TextBox txtAliquotaICMS10;
        public System.Windows.Forms.TextBox txtValorBCICMS10;
        public System.Windows.Forms.TextBox txtCSTICMS10;
        public System.Windows.Forms.ComboBox cboModalidadeICMS10;
        public System.Windows.Forms.ComboBox cboOrigemICMS10;
        public System.Windows.Forms.TextBox txtpMVASTICMS10;
        public System.Windows.Forms.TextBox txtvBCSTICMS10;
        public System.Windows.Forms.TextBox txtvICMSSTICMS10;
        public System.Windows.Forms.TextBox txtpICMSSTICMS10;
        public System.Windows.Forms.TextBox txtpRedBCSTICMS10;
        public System.Windows.Forms.ComboBox cboModSTICMS10;
        public System.Windows.Forms.TextBox txtvBCFCP10;
        private System.Windows.Forms.Label lblvBCFCP10;
        public System.Windows.Forms.TextBox txtpFCP10;
        private System.Windows.Forms.Label lblpFCP10;
        public System.Windows.Forms.TextBox txtvBCFCPST10;
        private System.Windows.Forms.Label lblvBCFCPST;
        public System.Windows.Forms.TextBox txtvFCP10;
        private System.Windows.Forms.Label lblvFCP10;
        public System.Windows.Forms.TextBox txtpFCPST10;
        private System.Windows.Forms.Label lblpFCPST10;
        public System.Windows.Forms.TextBox txtvFCPST10;
        private System.Windows.Forms.Label lblvFCPST10;
    }
}