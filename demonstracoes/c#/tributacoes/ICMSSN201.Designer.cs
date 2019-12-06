namespace WindowsFormsApplication1
{
    partial class frmICMSSN201
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
            this.cboModSTICMSSN201 = new System.Windows.Forms.ComboBox();
            this.txtpRedBCSTICMSSN201 = new System.Windows.Forms.TextBox();
            this.txtpICMSSTICMSSN201 = new System.Windows.Forms.TextBox();
            this.txtvICMSSTICMSSN201 = new System.Windows.Forms.TextBox();
            this.txtvBCSTICMSSN201 = new System.Windows.Forms.TextBox();
            this.lblValorICMSST = new System.Windows.Forms.Label();
            this.lblValorVBICMSST = new System.Windows.Forms.Label();
            this.lblPercRedBCICMSST = new System.Windows.Forms.Label();
            this.lblAliquotaICMSST = new System.Windows.Forms.Label();
            this.lblBCICMSST = new System.Windows.Forms.Label();
            this.cboOrigemICMSSN201 = new System.Windows.Forms.ComboBox();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.txtpMVASTICMSSN201 = new System.Windows.Forms.TextBox();
            this.lblPercICMSST = new System.Windows.Forms.Label();
            this.txtCSOSNICMSSN201 = new System.Windows.Forms.TextBox();
            this.lblCodSitOpe = new System.Windows.Forms.Label();
            this.txtpCredSNICMSSN201 = new System.Windows.Forms.TextBox();
            this.lblAliCalcCred = new System.Windows.Forms.Label();
            this.txtvCredICMSSNICMSSN201 = new System.Windows.Forms.TextBox();
            this.lblvCredICMS = new System.Windows.Forms.Label();
            this.txtvBCFCPST201 = new System.Windows.Forms.TextBox();
            this.lblvBCFCPST201 = new System.Windows.Forms.Label();
            this.txtpFCPST201 = new System.Windows.Forms.TextBox();
            this.lblpFCPST201 = new System.Windows.Forms.Label();
            this.txtvFCPST201 = new System.Windows.Forms.TextBox();
            this.lblvFCPST201 = new System.Windows.Forms.Label();
            this.txtpCredSN201 = new System.Windows.Forms.TextBox();
            this.lblpCredSN201 = new System.Windows.Forms.Label();
            this.txtvCredICSMSN201 = new System.Windows.Forms.TextBox();
            this.lblvCredICMSSN201 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(260, 346);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 30;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // cboModSTICMSSN201
            // 
            this.cboModSTICMSSN201.FormattingEnabled = true;
            this.cboModSTICMSSN201.Items.AddRange(new object[] {
            "Preço tabelado ou máximo sugerido",
            "Lista Negativa",
            "Lista Positiva",
            "Lista Neutra",
            "Margem Valor Agregado",
            "Pauta"});
            this.cboModSTICMSSN201.Location = new System.Drawing.Point(12, 67);
            this.cboModSTICMSSN201.Name = "cboModSTICMSSN201";
            this.cboModSTICMSSN201.Size = new System.Drawing.Size(144, 21);
            this.cboModSTICMSSN201.TabIndex = 5;
            this.cboModSTICMSSN201.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // txtpRedBCSTICMSSN201
            // 
            this.txtpRedBCSTICMSSN201.Location = new System.Drawing.Point(12, 113);
            this.txtpRedBCSTICMSSN201.Name = "txtpRedBCSTICMSSN201";
            this.txtpRedBCSTICMSSN201.Size = new System.Drawing.Size(144, 20);
            this.txtpRedBCSTICMSSN201.TabIndex = 9;
            this.txtpRedBCSTICMSSN201.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpICMSSTICMSSN201
            // 
            this.txtpICMSSTICMSSN201.Location = new System.Drawing.Point(12, 160);
            this.txtpICMSSTICMSSN201.Name = "txtpICMSSTICMSSN201";
            this.txtpICMSSTICMSSN201.Size = new System.Drawing.Size(144, 20);
            this.txtpICMSSTICMSSN201.TabIndex = 13;
            this.txtpICMSSTICMSSN201.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvICMSSTICMSSN201
            // 
            this.txtvICMSSTICMSSN201.Location = new System.Drawing.Point(191, 160);
            this.txtvICMSSTICMSSN201.Name = "txtvICMSSTICMSSN201";
            this.txtvICMSSTICMSSN201.Size = new System.Drawing.Size(144, 20);
            this.txtvICMSSTICMSSN201.TabIndex = 15;
            this.txtvICMSSTICMSSN201.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCSTICMSSN201
            // 
            this.txtvBCSTICMSSN201.Location = new System.Drawing.Point(191, 113);
            this.txtvBCSTICMSSN201.Name = "txtvBCSTICMSSN201";
            this.txtvBCSTICMSSN201.Size = new System.Drawing.Size(144, 20);
            this.txtvBCSTICMSSN201.TabIndex = 11;
            this.txtvBCSTICMSSN201.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblValorICMSST
            // 
            this.lblValorICMSST.AutoSize = true;
            this.lblValorICMSST.Location = new System.Drawing.Point(191, 144);
            this.lblValorICMSST.Name = "lblValorICMSST";
            this.lblValorICMSST.Size = new System.Drawing.Size(92, 13);
            this.lblValorICMSST.TabIndex = 14;
            this.lblValorICMSST.Text = "Valor do ICMS ST";
            // 
            // lblValorVBICMSST
            // 
            this.lblValorVBICMSST.AutoSize = true;
            this.lblValorVBICMSST.Location = new System.Drawing.Point(190, 98);
            this.lblValorVBICMSST.Name = "lblValorVBICMSST";
            this.lblValorVBICMSST.Size = new System.Drawing.Size(109, 13);
            this.lblValorVBICMSST.TabIndex = 10;
            this.lblValorVBICMSST.Text = "Valor da BC ICMS ST";
            // 
            // lblPercRedBCICMSST
            // 
            this.lblPercRedBCICMSST.AutoSize = true;
            this.lblPercRedBCICMSST.Location = new System.Drawing.Point(9, 97);
            this.lblPercRedBCICMSST.Name = "lblPercRedBCICMSST";
            this.lblPercRedBCICMSST.Size = new System.Drawing.Size(168, 13);
            this.lblPercRedBCICMSST.TabIndex = 8;
            this.lblPercRedBCICMSST.Text = "Percentual Redução BC ICMS ST";
            // 
            // lblAliquotaICMSST
            // 
            this.lblAliquotaICMSST.AutoSize = true;
            this.lblAliquotaICMSST.Location = new System.Drawing.Point(12, 144);
            this.lblAliquotaICMSST.Name = "lblAliquotaICMSST";
            this.lblAliquotaICMSST.Size = new System.Drawing.Size(93, 13);
            this.lblAliquotaICMSST.TabIndex = 12;
            this.lblAliquotaICMSST.Text = "Alíquota ICMS ST";
            // 
            // lblBCICMSST
            // 
            this.lblBCICMSST.AutoSize = true;
            this.lblBCICMSST.Location = new System.Drawing.Point(12, 52);
            this.lblBCICMSST.Name = "lblBCICMSST";
            this.lblBCICMSST.Size = new System.Drawing.Size(125, 13);
            this.lblBCICMSST.TabIndex = 4;
            this.lblBCICMSST.Text = "Modalidade BC ICMS ST";
            // 
            // cboOrigemICMSSN201
            // 
            this.cboOrigemICMSSN201.FormattingEnabled = true;
            this.cboOrigemICMSSN201.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMSSN201.Location = new System.Drawing.Point(12, 26);
            this.cboOrigemICMSSN201.Name = "cboOrigemICMSSN201";
            this.cboOrigemICMSSN201.Size = new System.Drawing.Size(144, 21);
            this.cboOrigemICMSSN201.TabIndex = 1;
            this.cboOrigemICMSSN201.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(12, 10);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // txtpMVASTICMSSN201
            // 
            this.txtpMVASTICMSSN201.Location = new System.Drawing.Point(191, 66);
            this.txtpMVASTICMSSN201.Name = "txtpMVASTICMSSN201";
            this.txtpMVASTICMSSN201.Size = new System.Drawing.Size(144, 20);
            this.txtpMVASTICMSSN201.TabIndex = 7;
            this.txtpMVASTICMSSN201.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblPercICMSST
            // 
            this.lblPercICMSST.AutoSize = true;
            this.lblPercICMSST.Location = new System.Drawing.Point(191, 51);
            this.lblPercICMSST.Name = "lblPercICMSST";
            this.lblPercICMSST.Size = new System.Drawing.Size(104, 13);
            this.lblPercICMSST.TabIndex = 6;
            this.lblPercICMSST.Text = "Percentual ICMS ST";
            // 
            // txtCSOSNICMSSN201
            // 
            this.txtCSOSNICMSSN201.Location = new System.Drawing.Point(191, 27);
            this.txtCSOSNICMSSN201.Name = "txtCSOSNICMSSN201";
            this.txtCSOSNICMSSN201.Size = new System.Drawing.Size(144, 20);
            this.txtCSOSNICMSSN201.TabIndex = 3;
            this.txtCSOSNICMSSN201.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblCodSitOpe
            // 
            this.lblCodSitOpe.AutoSize = true;
            this.lblCodSitOpe.Location = new System.Drawing.Point(191, 12);
            this.lblCodSitOpe.Name = "lblCodSitOpe";
            this.lblCodSitOpe.Size = new System.Drawing.Size(112, 13);
            this.lblCodSitOpe.TabIndex = 2;
            this.lblCodSitOpe.Text = "Cód. Sit. da Operação";
            // 
            // txtpCredSNICMSSN201
            // 
            this.txtpCredSNICMSSN201.Location = new System.Drawing.Point(12, 207);
            this.txtpCredSNICMSSN201.Name = "txtpCredSNICMSSN201";
            this.txtpCredSNICMSSN201.Size = new System.Drawing.Size(144, 20);
            this.txtpCredSNICMSSN201.TabIndex = 17;
            this.txtpCredSNICMSSN201.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblAliCalcCred
            // 
            this.lblAliCalcCred.AutoSize = true;
            this.lblAliCalcCred.Location = new System.Drawing.Point(12, 191);
            this.lblAliCalcCred.Name = "lblAliCalcCred";
            this.lblAliCalcCred.Size = new System.Drawing.Size(125, 13);
            this.lblAliCalcCred.TabIndex = 16;
            this.lblAliCalcCred.Text = "Alíquota Calc. do Crédito";
            // 
            // txtvCredICMSSNICMSSN201
            // 
            this.txtvCredICMSSNICMSSN201.Location = new System.Drawing.Point(191, 207);
            this.txtvCredICMSSNICMSSN201.Name = "txtvCredICMSSNICMSSN201";
            this.txtvCredICMSSNICMSSN201.Size = new System.Drawing.Size(144, 20);
            this.txtvCredICMSSNICMSSN201.TabIndex = 19;
            this.txtvCredICMSSNICMSSN201.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblvCredICMS
            // 
            this.lblvCredICMS.AutoSize = true;
            this.lblvCredICMS.Location = new System.Drawing.Point(191, 191);
            this.lblvCredICMS.Name = "lblvCredICMS";
            this.lblvCredICMS.Size = new System.Drawing.Size(111, 13);
            this.lblvCredICMS.TabIndex = 18;
            this.lblvCredICMS.Text = "Valor Crédito do ICMS";
            // 
            // txtvBCFCPST201
            // 
            this.txtvBCFCPST201.Location = new System.Drawing.Point(12, 254);
            this.txtvBCFCPST201.Name = "txtvBCFCPST201";
            this.txtvBCFCPST201.Size = new System.Drawing.Size(144, 20);
            this.txtvBCFCPST201.TabIndex = 21;
            // 
            // lblvBCFCPST201
            // 
            this.lblvBCFCPST201.AutoSize = true;
            this.lblvBCFCPST201.Location = new System.Drawing.Point(12, 237);
            this.lblvBCFCPST201.Name = "lblvBCFCPST201";
            this.lblvBCFCPST201.Size = new System.Drawing.Size(103, 13);
            this.lblvBCFCPST201.TabIndex = 20;
            this.lblvBCFCPST201.Text = "Valor da BC FCP ST";
            // 
            // txtpFCPST201
            // 
            this.txtpFCPST201.Location = new System.Drawing.Point(191, 255);
            this.txtpFCPST201.Name = "txtpFCPST201";
            this.txtpFCPST201.Size = new System.Drawing.Size(144, 20);
            this.txtpFCPST201.TabIndex = 23;
            // 
            // lblpFCPST201
            // 
            this.lblpFCPST201.AutoSize = true;
            this.lblpFCPST201.Location = new System.Drawing.Point(191, 238);
            this.lblpFCPST201.Name = "lblpFCPST201";
            this.lblpFCPST201.Size = new System.Drawing.Size(98, 13);
            this.lblpFCPST201.TabIndex = 22;
            this.lblpFCPST201.Text = "Percentual FCP ST";
            // 
            // txtvFCPST201
            // 
            this.txtvFCPST201.Location = new System.Drawing.Point(12, 301);
            this.txtvFCPST201.Name = "txtvFCPST201";
            this.txtvFCPST201.Size = new System.Drawing.Size(144, 20);
            this.txtvFCPST201.TabIndex = 25;
            // 
            // lblvFCPST201
            // 
            this.lblvFCPST201.AutoSize = true;
            this.lblvFCPST201.Location = new System.Drawing.Point(12, 285);
            this.lblvFCPST201.Name = "lblvFCPST201";
            this.lblvFCPST201.Size = new System.Drawing.Size(71, 13);
            this.lblvFCPST201.TabIndex = 24;
            this.lblvFCPST201.Text = "Valor FCP ST";
            // 
            // txtpCredSN201
            // 
            this.txtpCredSN201.Location = new System.Drawing.Point(191, 301);
            this.txtpCredSN201.Name = "txtpCredSN201";
            this.txtpCredSN201.Size = new System.Drawing.Size(144, 20);
            this.txtpCredSN201.TabIndex = 27;
            // 
            // lblpCredSN201
            // 
            this.lblpCredSN201.AutoSize = true;
            this.lblpCredSN201.Location = new System.Drawing.Point(191, 284);
            this.lblpCredSN201.Name = "lblpCredSN201";
            this.lblpCredSN201.Size = new System.Drawing.Size(140, 13);
            this.lblpCredSN201.TabIndex = 26;
            this.lblpCredSN201.Text = "Alíquota (cálculo do crédito)";
            // 
            // txtvCredICSMSN201
            // 
            this.txtvCredICSMSN201.Location = new System.Drawing.Point(12, 346);
            this.txtvCredICSMSN201.Name = "txtvCredICSMSN201";
            this.txtvCredICSMSN201.Size = new System.Drawing.Size(144, 20);
            this.txtvCredICSMSN201.TabIndex = 29;
            // 
            // lblvCredICMSSN201
            // 
            this.lblvCredICMSSN201.AutoSize = true;
            this.lblvCredICMSSN201.Location = new System.Drawing.Point(12, 329);
            this.lblvCredICMSSN201.Name = "lblvCredICMSSN201";
            this.lblvCredICMSSN201.Size = new System.Drawing.Size(110, 13);
            this.lblvCredICMSSN201.TabIndex = 28;
            this.lblvCredICMSSN201.Text = "Valor crédito do ICMS";
            // 
            // frmICMSSN201
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(347, 387);
            this.Controls.Add(this.txtvCredICSMSN201);
            this.Controls.Add(this.lblvCredICMSSN201);
            this.Controls.Add(this.txtpCredSN201);
            this.Controls.Add(this.lblpCredSN201);
            this.Controls.Add(this.txtvFCPST201);
            this.Controls.Add(this.lblvFCPST201);
            this.Controls.Add(this.txtpFCPST201);
            this.Controls.Add(this.lblpFCPST201);
            this.Controls.Add(this.txtvBCFCPST201);
            this.Controls.Add(this.lblvBCFCPST201);
            this.Controls.Add(this.txtvCredICMSSNICMSSN201);
            this.Controls.Add(this.lblvCredICMS);
            this.Controls.Add(this.txtpCredSNICMSSN201);
            this.Controls.Add(this.lblAliCalcCred);
            this.Controls.Add(this.txtCSOSNICMSSN201);
            this.Controls.Add(this.lblCodSitOpe);
            this.Controls.Add(this.txtpMVASTICMSSN201);
            this.Controls.Add(this.lblPercICMSST);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.cboModSTICMSSN201);
            this.Controls.Add(this.txtpRedBCSTICMSSN201);
            this.Controls.Add(this.txtpICMSSTICMSSN201);
            this.Controls.Add(this.txtvICMSSTICMSSN201);
            this.Controls.Add(this.txtvBCSTICMSSN201);
            this.Controls.Add(this.lblValorICMSST);
            this.Controls.Add(this.lblValorVBICMSST);
            this.Controls.Add(this.lblPercRedBCICMSST);
            this.Controls.Add(this.lblAliquotaICMSST);
            this.Controls.Add(this.lblBCICMSST);
            this.Controls.Add(this.cboOrigemICMSSN201);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMSSN201";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS SN 201";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.ComboBox cboModSTICMSSN201;
        public System.Windows.Forms.TextBox txtpRedBCSTICMSSN201;
        public System.Windows.Forms.TextBox txtpICMSSTICMSSN201;
        public System.Windows.Forms.TextBox txtvICMSSTICMSSN201;
        public System.Windows.Forms.TextBox txtvBCSTICMSSN201;
        private System.Windows.Forms.Label lblValorICMSST;
        private System.Windows.Forms.Label lblValorVBICMSST;
        private System.Windows.Forms.Label lblPercRedBCICMSST;
        private System.Windows.Forms.Label lblAliquotaICMSST;
        private System.Windows.Forms.Label lblBCICMSST;
        public System.Windows.Forms.ComboBox cboOrigemICMSSN201;
        private System.Windows.Forms.Label lblOrigem;
        public System.Windows.Forms.TextBox txtpMVASTICMSSN201;
        private System.Windows.Forms.Label lblPercICMSST;
        public System.Windows.Forms.TextBox txtCSOSNICMSSN201;
        private System.Windows.Forms.Label lblCodSitOpe;
        public System.Windows.Forms.TextBox txtpCredSNICMSSN201;
        private System.Windows.Forms.Label lblAliCalcCred;
        public System.Windows.Forms.TextBox txtvCredICMSSNICMSSN201;
        private System.Windows.Forms.Label lblvCredICMS;
        public System.Windows.Forms.TextBox txtvBCFCPST201;
        private System.Windows.Forms.Label lblvBCFCPST201;
        public System.Windows.Forms.TextBox txtpFCPST201;
        private System.Windows.Forms.Label lblpFCPST201;
        public System.Windows.Forms.TextBox txtvFCPST201;
        private System.Windows.Forms.Label lblvFCPST201;
        public System.Windows.Forms.TextBox txtpCredSN201;
        private System.Windows.Forms.Label lblpCredSN201;
        public System.Windows.Forms.TextBox txtvCredICSMSN201;
        private System.Windows.Forms.Label lblvCredICMSSN201;

    }
}