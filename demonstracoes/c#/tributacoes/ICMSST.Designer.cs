namespace WindowsFormsApplication1
{
    partial class frmICMSST
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
            this.txtvICMSSTRetICMSST = new System.Windows.Forms.TextBox();
            this.txtvBCSTRetICMSST = new System.Windows.Forms.TextBox();
            this.lblValorICMSST = new System.Windows.Forms.Label();
            this.lblValorVBICMSST = new System.Windows.Forms.Label();
            this.txtCSTICMSST = new System.Windows.Forms.TextBox();
            this.cboOrigemICMSST = new System.Windows.Forms.ComboBox();
            this.lblTrbICMS = new System.Windows.Forms.Label();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.lblvBCICMSSTdest = new System.Windows.Forms.Label();
            this.lblvICMSSTDest = new System.Windows.Forms.Label();
            this.txtvBCSTDestICMSST = new System.Windows.Forms.TextBox();
            this.txtvICMSSTDestICMSST = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(270, 177);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 71;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // txtvICMSSTRetICMSST
            // 
            this.txtvICMSSTRetICMSST.Location = new System.Drawing.Point(201, 83);
            this.txtvICMSSTRetICMSST.Name = "txtvICMSSTRetICMSST";
            this.txtvICMSSTRetICMSST.Size = new System.Drawing.Size(144, 20);
            this.txtvICMSSTRetICMSST.TabIndex = 70;
            this.txtvICMSSTRetICMSST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCSTRetICMSST
            // 
            this.txtvBCSTRetICMSST.Location = new System.Drawing.Point(22, 83);
            this.txtvBCSTRetICMSST.Name = "txtvBCSTRetICMSST";
            this.txtvBCSTRetICMSST.Size = new System.Drawing.Size(144, 20);
            this.txtvBCSTRetICMSST.TabIndex = 69;
            this.txtvBCSTRetICMSST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblValorICMSST
            // 
            this.lblValorICMSST.AutoSize = true;
            this.lblValorICMSST.Location = new System.Drawing.Point(198, 67);
            this.lblValorICMSST.Name = "lblValorICMSST";
            this.lblValorICMSST.Size = new System.Drawing.Size(92, 13);
            this.lblValorICMSST.TabIndex = 68;
            this.lblValorICMSST.Text = "Valor do ICMS ST";
            // 
            // lblValorVBICMSST
            // 
            this.lblValorVBICMSST.AutoSize = true;
            this.lblValorVBICMSST.Location = new System.Drawing.Point(19, 67);
            this.lblValorVBICMSST.Name = "lblValorVBICMSST";
            this.lblValorVBICMSST.Size = new System.Drawing.Size(109, 13);
            this.lblValorVBICMSST.TabIndex = 67;
            this.lblValorVBICMSST.Text = "Valor da BC ICMS ST";
            // 
            // txtCSTICMSST
            // 
            this.txtCSTICMSST.Location = new System.Drawing.Point(201, 31);
            this.txtCSTICMSST.Name = "txtCSTICMSST";
            this.txtCSTICMSST.Size = new System.Drawing.Size(144, 20);
            this.txtCSTICMSST.TabIndex = 66;
            this.txtCSTICMSST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboOrigemICMSST
            // 
            this.cboOrigemICMSST.FormattingEnabled = true;
            this.cboOrigemICMSST.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMSST.Location = new System.Drawing.Point(22, 31);
            this.cboOrigemICMSST.Name = "cboOrigemICMSST";
            this.cboOrigemICMSST.Size = new System.Drawing.Size(144, 21);
            this.cboOrigemICMSST.TabIndex = 65;
            this.cboOrigemICMSST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblTrbICMS
            // 
            this.lblTrbICMS.AutoSize = true;
            this.lblTrbICMS.Location = new System.Drawing.Point(198, 11);
            this.lblTrbICMS.Name = "lblTrbICMS";
            this.lblTrbICMS.Size = new System.Drawing.Size(102, 13);
            this.lblTrbICMS.TabIndex = 64;
            this.lblTrbICMS.Text = "Tributação do ICMS";
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(19, 15);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 63;
            this.lblOrigem.Text = "Origem";
            // 
            // lblvBCICMSSTdest
            // 
            this.lblvBCICMSSTdest.AutoSize = true;
            this.lblvBCICMSSTdest.Location = new System.Drawing.Point(19, 118);
            this.lblvBCICMSSTdest.Name = "lblvBCICMSSTdest";
            this.lblvBCICMSSTdest.Size = new System.Drawing.Size(152, 13);
            this.lblvBCICMSSTdest.TabIndex = 72;
            this.lblvBCICMSSTdest.Text = "Valor da BC do ICMS ST Dest.";
            // 
            // lblvICMSSTDest
            // 
            this.lblvICMSSTDest.AutoSize = true;
            this.lblvICMSSTDest.Location = new System.Drawing.Point(198, 118);
            this.lblvICMSSTDest.Name = "lblvICMSSTDest";
            this.lblvICMSSTDest.Size = new System.Drawing.Size(120, 13);
            this.lblvICMSSTDest.TabIndex = 73;
            this.lblvICMSSTDest.Text = "Valor do ICMS ST Dest.";
            // 
            // txtvBCSTDestICMSST
            // 
            this.txtvBCSTDestICMSST.Location = new System.Drawing.Point(22, 134);
            this.txtvBCSTDestICMSST.Name = "txtvBCSTDestICMSST";
            this.txtvBCSTDestICMSST.Size = new System.Drawing.Size(144, 20);
            this.txtvBCSTDestICMSST.TabIndex = 74;
            this.txtvBCSTDestICMSST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvICMSSTDestICMSST
            // 
            this.txtvICMSSTDestICMSST.Location = new System.Drawing.Point(201, 134);
            this.txtvICMSSTDestICMSST.Name = "txtvICMSSTDestICMSST";
            this.txtvICMSSTDestICMSST.Size = new System.Drawing.Size(144, 20);
            this.txtvICMSSTDestICMSST.TabIndex = 75;
            this.txtvICMSSTDestICMSST.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // frmICMSST
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(370, 222);
            this.Controls.Add(this.txtvICMSSTDestICMSST);
            this.Controls.Add(this.txtvBCSTDestICMSST);
            this.Controls.Add(this.lblvICMSSTDest);
            this.Controls.Add(this.lblvBCICMSSTdest);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtvICMSSTRetICMSST);
            this.Controls.Add(this.txtvBCSTRetICMSST);
            this.Controls.Add(this.lblValorICMSST);
            this.Controls.Add(this.lblValorVBICMSST);
            this.Controls.Add(this.txtCSTICMSST);
            this.Controls.Add(this.cboOrigemICMSST);
            this.Controls.Add(this.lblTrbICMS);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMSST";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMSST";
            this.Load += new System.EventHandler(this.frmICMSST_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox txtvICMSSTRetICMSST;
        public System.Windows.Forms.TextBox txtvBCSTRetICMSST;
        private System.Windows.Forms.Label lblValorICMSST;
        private System.Windows.Forms.Label lblValorVBICMSST;
        public System.Windows.Forms.TextBox txtCSTICMSST;
        public System.Windows.Forms.ComboBox cboOrigemICMSST;
        private System.Windows.Forms.Label lblTrbICMS;
        private System.Windows.Forms.Label lblOrigem;
        private System.Windows.Forms.Label lblvBCICMSSTdest;
        private System.Windows.Forms.Label lblvICMSSTDest;
        public System.Windows.Forms.TextBox txtvBCSTDestICMSST;
        public System.Windows.Forms.TextBox txtvICMSSTDestICMSST;
    }
}