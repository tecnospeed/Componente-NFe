namespace WindowsFormsApplication1
{
    partial class frmICMS40
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
            this.txtValorICMS40 = new System.Windows.Forms.TextBox();
            this.txtCSTICMS40 = new System.Windows.Forms.TextBox();
            this.cboOrigemICMS40 = new System.Windows.Forms.ComboBox();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblTrbICMS = new System.Windows.Forms.Label();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.lblDesoneracao = new System.Windows.Forms.Label();
            this.cbmotivoICMS40Deson = new System.Windows.Forms.ComboBox();
            this.edtvIcms40Deson = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(269, 124);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 10;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // txtValorICMS40
            // 
            this.txtValorICMS40.Location = new System.Drawing.Point(12, 72);
            this.txtValorICMS40.Name = "txtValorICMS40";
            this.txtValorICMS40.Size = new System.Drawing.Size(153, 20);
            this.txtValorICMS40.TabIndex = 5;
            this.txtValorICMS40.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCSTICMS40
            // 
            this.txtCSTICMS40.Location = new System.Drawing.Point(200, 26);
            this.txtCSTICMS40.Name = "txtCSTICMS40";
            this.txtCSTICMS40.Size = new System.Drawing.Size(144, 20);
            this.txtCSTICMS40.TabIndex = 3;
            this.txtCSTICMS40.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboOrigemICMS40
            // 
            this.cboOrigemICMS40.FormattingEnabled = true;
            this.cboOrigemICMS40.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMS40.Location = new System.Drawing.Point(12, 26);
            this.cboOrigemICMS40.Name = "cboOrigemICMS40";
            this.cboOrigemICMS40.Size = new System.Drawing.Size(153, 21);
            this.cboOrigemICMS40.TabIndex = 1;
            this.cboOrigemICMS40.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(9, 56);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 4;
            this.lblValor.Text = "Valor";
            // 
            // lblTrbICMS
            // 
            this.lblTrbICMS.AutoSize = true;
            this.lblTrbICMS.Location = new System.Drawing.Point(197, 6);
            this.lblTrbICMS.Name = "lblTrbICMS";
            this.lblTrbICMS.Size = new System.Drawing.Size(102, 13);
            this.lblTrbICMS.TabIndex = 2;
            this.lblTrbICMS.Text = "Tributação do ICMS";
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(9, 6);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // lblDesoneracao
            // 
            this.lblDesoneracao.AutoSize = true;
            this.lblDesoneracao.Location = new System.Drawing.Point(197, 56);
            this.lblDesoneracao.Name = "lblDesoneracao";
            this.lblDesoneracao.Size = new System.Drawing.Size(119, 13);
            this.lblDesoneracao.TabIndex = 6;
            this.lblDesoneracao.Text = "Motivo da desoneração";
            // 
            // cbmotivoICMS40Deson
            // 
            this.cbmotivoICMS40Deson.FormattingEnabled = true;
            this.cbmotivoICMS40Deson.Items.AddRange(new object[] {
            "Táxi",
            "Deficiente Físico",
            "Produtor Agropecuário",
            "Frotista/Locadora",
            "Diplomático/Consular",
            "Utilitários e Motocicletas",
            "SUFRAMA",
            "Outros"});
            this.cbmotivoICMS40Deson.Location = new System.Drawing.Point(200, 71);
            this.cbmotivoICMS40Deson.Name = "cbmotivoICMS40Deson";
            this.cbmotivoICMS40Deson.Size = new System.Drawing.Size(144, 21);
            this.cbmotivoICMS40Deson.TabIndex = 7;
            this.cbmotivoICMS40Deson.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // edtvIcms40Deson
            // 
            this.edtvIcms40Deson.Location = new System.Drawing.Point(12, 124);
            this.edtvIcms40Deson.Name = "edtvIcms40Deson";
            this.edtvIcms40Deson.Size = new System.Drawing.Size(153, 20);
            this.edtvIcms40Deson.TabIndex = 9;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 108);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(121, 13);
            this.label1.TabIndex = 8;
            this.label1.Text = "Valor ICMS Desonerado";
            // 
            // frmICMS40
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(368, 162);
            this.Controls.Add(this.edtvIcms40Deson);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbmotivoICMS40Deson);
            this.Controls.Add(this.lblDesoneracao);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtValorICMS40);
            this.Controls.Add(this.txtCSTICMS40);
            this.Controls.Add(this.cboOrigemICMS40);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblTrbICMS);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMS40";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS 40, 41 ou 50";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox txtValorICMS40;
        public System.Windows.Forms.TextBox txtCSTICMS40;
        public System.Windows.Forms.ComboBox cboOrigemICMS40;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblTrbICMS;
        private System.Windows.Forms.Label lblOrigem;
        private System.Windows.Forms.Label lblDesoneracao;
        public System.Windows.Forms.ComboBox cbmotivoICMS40Deson;
        public System.Windows.Forms.TextBox edtvIcms40Deson;
        private System.Windows.Forms.Label label1;

    }
}