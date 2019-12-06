namespace WindowsFormsApplication1
{
    partial class frmICMSPartilha
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
            this.txtpRedBCICMSPart = new System.Windows.Forms.TextBox();
            this.lblpRedBC = new System.Windows.Forms.Label();
            this.btnGravar = new System.Windows.Forms.Button();
            this.cboModSTICMSPart = new System.Windows.Forms.ComboBox();
            this.txtpRedBCSTICMSPart = new System.Windows.Forms.TextBox();
            this.txtpICMSSTICMSPart = new System.Windows.Forms.TextBox();
            this.txtvICMSSTICMSPart = new System.Windows.Forms.TextBox();
            this.txtvBCSTICMSPart = new System.Windows.Forms.TextBox();
            this.txtpMVASTICMSPart = new System.Windows.Forms.TextBox();
            this.lblValorICMSST = new System.Windows.Forms.Label();
            this.lblValorVBICMSST = new System.Windows.Forms.Label();
            this.lblPercRedBCICMSST = new System.Windows.Forms.Label();
            this.lblAliquotaICMSST = new System.Windows.Forms.Label();
            this.lblPercICMSST = new System.Windows.Forms.Label();
            this.lblBCICMSST = new System.Windows.Forms.Label();
            this.lblModalidade = new System.Windows.Forms.Label();
            this.txtValorICMSPart = new System.Windows.Forms.TextBox();
            this.txtAliquotaICMSPart = new System.Windows.Forms.TextBox();
            this.txtValorBCICMSPart = new System.Windows.Forms.TextBox();
            this.txtCSTICMSPart = new System.Windows.Forms.TextBox();
            this.cboModalidadeICMSPart = new System.Windows.Forms.ComboBox();
            this.cboOrigemICMSPart = new System.Windows.Forms.ComboBox();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblbcICMS = new System.Windows.Forms.Label();
            this.lblTrbICMS = new System.Windows.Forms.Label();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.txtpBCOpICMSPart = new System.Windows.Forms.TextBox();
            this.txtUFSTICMSPart = new System.Windows.Forms.TextBox();
            this.lblPercBC = new System.Windows.Forms.Label();
            this.lblUFdICMSST = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtpRedBCICMSPart
            // 
            this.txtpRedBCICMSPart.Location = new System.Drawing.Point(12, 139);
            this.txtpRedBCICMSPart.Name = "txtpRedBCICMSPart";
            this.txtpRedBCICMSPart.Size = new System.Drawing.Size(142, 20);
            this.txtpRedBCICMSPart.TabIndex = 9;
            this.txtpRedBCICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblpRedBC
            // 
            this.lblpRedBC.AutoSize = true;
            this.lblpRedBC.Location = new System.Drawing.Point(9, 123);
            this.lblpRedBC.Name = "lblpRedBC";
            this.lblpRedBC.Size = new System.Drawing.Size(152, 13);
            this.lblpRedBC.TabIndex = 8;
            this.lblpRedBC.Text = "Percentual da Redução de BC";
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(260, 393);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 30;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // cboModSTICMSPart
            // 
            this.cboModSTICMSPart.FormattingEnabled = true;
            this.cboModSTICMSPart.Items.AddRange(new object[] {
            "Preço tabelado ou máximo sugerido",
            "Lista Negativa",
            "Lista Positiva",
            "Lista Neutra",
            "Margem Valor Agregado",
            "Pauta"});
            this.cboModSTICMSPart.Location = new System.Drawing.Point(191, 190);
            this.cboModSTICMSPart.Name = "cboModSTICMSPart";
            this.cboModSTICMSPart.Size = new System.Drawing.Size(144, 21);
            this.cboModSTICMSPart.TabIndex = 15;
            this.cboModSTICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // txtpRedBCSTICMSPart
            // 
            this.txtpRedBCSTICMSPart.Location = new System.Drawing.Point(191, 244);
            this.txtpRedBCSTICMSPart.Name = "txtpRedBCSTICMSPart";
            this.txtpRedBCSTICMSPart.Size = new System.Drawing.Size(144, 20);
            this.txtpRedBCSTICMSPart.TabIndex = 19;
            this.txtpRedBCSTICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpICMSSTICMSPart
            // 
            this.txtpICMSSTICMSPart.Location = new System.Drawing.Point(191, 296);
            this.txtpICMSSTICMSPart.Name = "txtpICMSSTICMSPart";
            this.txtpICMSSTICMSPart.Size = new System.Drawing.Size(144, 20);
            this.txtpICMSSTICMSPart.TabIndex = 23;
            this.txtpICMSSTICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvICMSSTICMSPart
            // 
            this.txtvICMSSTICMSPart.Location = new System.Drawing.Point(12, 348);
            this.txtvICMSSTICMSPart.Name = "txtvICMSSTICMSPart";
            this.txtvICMSSTICMSPart.Size = new System.Drawing.Size(144, 20);
            this.txtvICMSSTICMSPart.TabIndex = 25;
            this.txtvICMSSTICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCSTICMSPart
            // 
            this.txtvBCSTICMSPart.Location = new System.Drawing.Point(12, 296);
            this.txtvBCSTICMSPart.Name = "txtvBCSTICMSPart";
            this.txtvBCSTICMSPart.Size = new System.Drawing.Size(144, 20);
            this.txtvBCSTICMSPart.TabIndex = 21;
            this.txtvBCSTICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpMVASTICMSPart
            // 
            this.txtpMVASTICMSPart.Location = new System.Drawing.Point(12, 242);
            this.txtpMVASTICMSPart.Name = "txtpMVASTICMSPart";
            this.txtpMVASTICMSPart.Size = new System.Drawing.Size(144, 20);
            this.txtpMVASTICMSPart.TabIndex = 17;
            this.txtpMVASTICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblValorICMSST
            // 
            this.lblValorICMSST.AutoSize = true;
            this.lblValorICMSST.Location = new System.Drawing.Point(9, 332);
            this.lblValorICMSST.Name = "lblValorICMSST";
            this.lblValorICMSST.Size = new System.Drawing.Size(92, 13);
            this.lblValorICMSST.TabIndex = 24;
            this.lblValorICMSST.Text = "Valor do ICMS ST";
            // 
            // lblValorVBICMSST
            // 
            this.lblValorVBICMSST.AutoSize = true;
            this.lblValorVBICMSST.Location = new System.Drawing.Point(9, 280);
            this.lblValorVBICMSST.Name = "lblValorVBICMSST";
            this.lblValorVBICMSST.Size = new System.Drawing.Size(109, 13);
            this.lblValorVBICMSST.TabIndex = 20;
            this.lblValorVBICMSST.Text = "Valor da BC ICMS ST";
            // 
            // lblPercRedBCICMSST
            // 
            this.lblPercRedBCICMSST.AutoSize = true;
            this.lblPercRedBCICMSST.Location = new System.Drawing.Point(188, 228);
            this.lblPercRedBCICMSST.Name = "lblPercRedBCICMSST";
            this.lblPercRedBCICMSST.Size = new System.Drawing.Size(168, 13);
            this.lblPercRedBCICMSST.TabIndex = 18;
            this.lblPercRedBCICMSST.Text = "Percentual Redução BC ICMS ST";
            // 
            // lblAliquotaICMSST
            // 
            this.lblAliquotaICMSST.AutoSize = true;
            this.lblAliquotaICMSST.Location = new System.Drawing.Point(188, 280);
            this.lblAliquotaICMSST.Name = "lblAliquotaICMSST";
            this.lblAliquotaICMSST.Size = new System.Drawing.Size(93, 13);
            this.lblAliquotaICMSST.TabIndex = 22;
            this.lblAliquotaICMSST.Text = "Alíquota ICMS ST";
            // 
            // lblPercICMSST
            // 
            this.lblPercICMSST.AutoSize = true;
            this.lblPercICMSST.Location = new System.Drawing.Point(9, 226);
            this.lblPercICMSST.Name = "lblPercICMSST";
            this.lblPercICMSST.Size = new System.Drawing.Size(159, 13);
            this.lblPercICMSST.TabIndex = 16;
            this.lblPercICMSST.Text = "Percentual da margem ICMS ST";
            // 
            // lblBCICMSST
            // 
            this.lblBCICMSST.AutoSize = true;
            this.lblBCICMSST.Location = new System.Drawing.Point(188, 174);
            this.lblBCICMSST.Name = "lblBCICMSST";
            this.lblBCICMSST.Size = new System.Drawing.Size(125, 13);
            this.lblBCICMSST.TabIndex = 14;
            this.lblBCICMSST.Text = "Modalidade BC ICMS ST";
            // 
            // lblModalidade
            // 
            this.lblModalidade.AutoSize = true;
            this.lblModalidade.Location = new System.Drawing.Point(9, 68);
            this.lblModalidade.Name = "lblModalidade";
            this.lblModalidade.Size = new System.Drawing.Size(62, 13);
            this.lblModalidade.TabIndex = 4;
            this.lblModalidade.Text = "Modalidade";
            // 
            // txtValorICMSPart
            // 
            this.txtValorICMSPart.Location = new System.Drawing.Point(12, 190);
            this.txtValorICMSPart.Name = "txtValorICMSPart";
            this.txtValorICMSPart.Size = new System.Drawing.Size(144, 20);
            this.txtValorICMSPart.TabIndex = 13;
            this.txtValorICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtAliquotaICMSPart
            // 
            this.txtAliquotaICMSPart.Location = new System.Drawing.Point(191, 137);
            this.txtAliquotaICMSPart.Name = "txtAliquotaICMSPart";
            this.txtAliquotaICMSPart.Size = new System.Drawing.Size(144, 20);
            this.txtAliquotaICMSPart.TabIndex = 11;
            this.txtAliquotaICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtValorBCICMSPart
            // 
            this.txtValorBCICMSPart.Location = new System.Drawing.Point(191, 92);
            this.txtValorBCICMSPart.Name = "txtValorBCICMSPart";
            this.txtValorBCICMSPart.Size = new System.Drawing.Size(144, 20);
            this.txtValorBCICMSPart.TabIndex = 7;
            this.txtValorBCICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCSTICMSPart
            // 
            this.txtCSTICMSPart.Location = new System.Drawing.Point(191, 32);
            this.txtCSTICMSPart.Name = "txtCSTICMSPart";
            this.txtCSTICMSPart.Size = new System.Drawing.Size(144, 20);
            this.txtCSTICMSPart.TabIndex = 3;
            this.txtCSTICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboModalidadeICMSPart
            // 
            this.cboModalidadeICMSPart.FormattingEnabled = true;
            this.cboModalidadeICMSPart.Items.AddRange(new object[] {
            "Margem Valor Agregado",
            "Pauta",
            "Preço Tabelado Máximo",
            "Valor da Operação"});
            this.cboModalidadeICMSPart.Location = new System.Drawing.Point(12, 92);
            this.cboModalidadeICMSPart.Name = "cboModalidadeICMSPart";
            this.cboModalidadeICMSPart.Size = new System.Drawing.Size(144, 21);
            this.cboModalidadeICMSPart.TabIndex = 5;
            this.cboModalidadeICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // cboOrigemICMSPart
            // 
            this.cboOrigemICMSPart.FormattingEnabled = true;
            this.cboOrigemICMSPart.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMSPart.Location = new System.Drawing.Point(12, 32);
            this.cboOrigemICMSPart.Name = "cboOrigemICMSPart";
            this.cboOrigemICMSPart.Size = new System.Drawing.Size(144, 21);
            this.cboOrigemICMSPart.TabIndex = 1;
            this.cboOrigemICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(9, 174);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 12;
            this.lblValor.Text = "Valor";
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(188, 121);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(47, 13);
            this.lblAliquota.TabIndex = 10;
            this.lblAliquota.Text = "Alíquota";
            // 
            // lblbcICMS
            // 
            this.lblbcICMS.AutoSize = true;
            this.lblbcICMS.Location = new System.Drawing.Point(188, 68);
            this.lblbcICMS.Name = "lblbcICMS";
            this.lblbcICMS.Size = new System.Drawing.Size(107, 13);
            this.lblbcICMS.TabIndex = 6;
            this.lblbcICMS.Text = "Valor da BC do ICMS";
            // 
            // lblTrbICMS
            // 
            this.lblTrbICMS.AutoSize = true;
            this.lblTrbICMS.Location = new System.Drawing.Point(188, 12);
            this.lblTrbICMS.Name = "lblTrbICMS";
            this.lblTrbICMS.Size = new System.Drawing.Size(102, 13);
            this.lblTrbICMS.TabIndex = 2;
            this.lblTrbICMS.Text = "Tributação do ICMS";
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(9, 16);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // txtpBCOpICMSPart
            // 
            this.txtpBCOpICMSPart.Location = new System.Drawing.Point(191, 348);
            this.txtpBCOpICMSPart.Name = "txtpBCOpICMSPart";
            this.txtpBCOpICMSPart.Size = new System.Drawing.Size(144, 20);
            this.txtpBCOpICMSPart.TabIndex = 27;
            this.txtpBCOpICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtUFSTICMSPart
            // 
            this.txtUFSTICMSPart.Location = new System.Drawing.Point(12, 395);
            this.txtUFSTICMSPart.Name = "txtUFSTICMSPart";
            this.txtUFSTICMSPart.Size = new System.Drawing.Size(142, 20);
            this.txtUFSTICMSPart.TabIndex = 29;
            this.txtUFSTICMSPart.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblPercBC
            // 
            this.lblPercBC.AutoSize = true;
            this.lblPercBC.Location = new System.Drawing.Point(188, 332);
            this.lblPercBC.Name = "lblPercBC";
            this.lblPercBC.Size = new System.Drawing.Size(90, 13);
            this.lblPercBC.TabIndex = 26;
            this.lblPercBC.Text = "Percentual da BC";
            // 
            // lblUFdICMSST
            // 
            this.lblUFdICMSST.AutoSize = true;
            this.lblUFdICMSST.Location = new System.Drawing.Point(9, 379);
            this.lblUFdICMSST.Name = "lblUFdICMSST";
            this.lblUFdICMSST.Size = new System.Drawing.Size(102, 13);
            this.lblUFdICMSST.TabIndex = 28;
            this.lblUFdICMSST.Text = "UF devido ICMS ST";
            // 
            // frmICMSPartilha
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(359, 428);
            this.Controls.Add(this.lblUFdICMSST);
            this.Controls.Add(this.lblPercBC);
            this.Controls.Add(this.txtUFSTICMSPart);
            this.Controls.Add(this.txtpBCOpICMSPart);
            this.Controls.Add(this.txtpRedBCICMSPart);
            this.Controls.Add(this.lblpRedBC);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.cboModSTICMSPart);
            this.Controls.Add(this.txtpRedBCSTICMSPart);
            this.Controls.Add(this.txtpICMSSTICMSPart);
            this.Controls.Add(this.txtvICMSSTICMSPart);
            this.Controls.Add(this.txtvBCSTICMSPart);
            this.Controls.Add(this.txtpMVASTICMSPart);
            this.Controls.Add(this.lblValorICMSST);
            this.Controls.Add(this.lblValorVBICMSST);
            this.Controls.Add(this.lblPercRedBCICMSST);
            this.Controls.Add(this.lblAliquotaICMSST);
            this.Controls.Add(this.lblPercICMSST);
            this.Controls.Add(this.lblBCICMSST);
            this.Controls.Add(this.lblModalidade);
            this.Controls.Add(this.txtValorICMSPart);
            this.Controls.Add(this.txtAliquotaICMSPart);
            this.Controls.Add(this.txtValorBCICMSPart);
            this.Controls.Add(this.txtCSTICMSPart);
            this.Controls.Add(this.cboModalidadeICMSPart);
            this.Controls.Add(this.cboOrigemICMSPart);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblbcICMS);
            this.Controls.Add(this.lblTrbICMS);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMSPartilha";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMSPartilha";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.TextBox txtpRedBCICMSPart;
        private System.Windows.Forms.Label lblpRedBC;
        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.ComboBox cboModSTICMSPart;
        public System.Windows.Forms.TextBox txtpRedBCSTICMSPart;
        public System.Windows.Forms.TextBox txtpICMSSTICMSPart;
        public System.Windows.Forms.TextBox txtvICMSSTICMSPart;
        public System.Windows.Forms.TextBox txtvBCSTICMSPart;
        public System.Windows.Forms.TextBox txtpMVASTICMSPart;
        private System.Windows.Forms.Label lblValorICMSST;
        private System.Windows.Forms.Label lblValorVBICMSST;
        private System.Windows.Forms.Label lblPercRedBCICMSST;
        private System.Windows.Forms.Label lblAliquotaICMSST;
        private System.Windows.Forms.Label lblPercICMSST;
        private System.Windows.Forms.Label lblBCICMSST;
        private System.Windows.Forms.Label lblModalidade;
        public System.Windows.Forms.TextBox txtValorICMSPart;
        public System.Windows.Forms.TextBox txtAliquotaICMSPart;
        public System.Windows.Forms.TextBox txtValorBCICMSPart;
        public System.Windows.Forms.TextBox txtCSTICMSPart;
        public System.Windows.Forms.ComboBox cboModalidadeICMSPart;
        public System.Windows.Forms.ComboBox cboOrigemICMSPart;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblbcICMS;
        private System.Windows.Forms.Label lblTrbICMS;
        private System.Windows.Forms.Label lblOrigem;
        private System.Windows.Forms.Label lblPercBC;
        private System.Windows.Forms.Label lblUFdICMSST;
        public System.Windows.Forms.TextBox txtpBCOpICMSPart;
        public System.Windows.Forms.TextBox txtUFSTICMSPart;
    }
}