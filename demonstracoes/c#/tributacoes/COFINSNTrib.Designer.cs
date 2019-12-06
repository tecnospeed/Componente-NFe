namespace WindowsFormsApplication1
{
    partial class frmCOFINSNTrib
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
            this.cboCSTCOFINSNT = new System.Windows.Forms.ComboBox();
            this.lblCodSitTrib = new System.Windows.Forms.Label();
            this.btnGravar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // cboCSTCOFINSNT
            // 
            this.cboCSTCOFINSNT.FormattingEnabled = true;
            this.cboCSTCOFINSNT.Items.AddRange(new object[] {
            "Operação Tributável=tributação monofásica",
            "Operação Tributável=Substituição Tributária",
            "Operação Tributável=alíquota zero",
            "Operação Isenta da Contribuição",
            "Operação Sem Incidência da Contribuição",
            "Operação com Suspensão da Contribuição"});
            this.cboCSTCOFINSNT.Location = new System.Drawing.Point(12, 25);
            this.cboCSTCOFINSNT.Name = "cboCSTCOFINSNT";
            this.cboCSTCOFINSNT.Size = new System.Drawing.Size(295, 21);
            this.cboCSTCOFINSNT.TabIndex = 42;
            this.cboCSTCOFINSNT.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblCodSitTrib
            // 
            this.lblCodSitTrib.AutoSize = true;
            this.lblCodSitTrib.Location = new System.Drawing.Point(12, 9);
            this.lblCodSitTrib.Name = "lblCodSitTrib";
            this.lblCodSitTrib.Size = new System.Drawing.Size(91, 13);
            this.lblCodSitTrib.TabIndex = 41;
            this.lblCodSitTrib.Text = "Cód. Sit Tributária";
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(313, 23);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 40;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // frmCOFINSNTrib
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(400, 61);
            this.Controls.Add(this.cboCSTCOFINSNT);
            this.Controls.Add(this.lblCodSitTrib);
            this.Controls.Add(this.btnGravar);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmCOFINSNTrib";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "COFINS Não Tributado";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblCodSitTrib;
        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.ComboBox cboCSTCOFINSNT;
    }
}