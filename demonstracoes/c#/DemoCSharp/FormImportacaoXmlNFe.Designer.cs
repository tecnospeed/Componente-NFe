namespace WindowsFormsApplication1
{
    partial class FormImportacaoXmlNFe
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
            this.pnlTop = new System.Windows.Forms.Panel();
            this.btnProcessar = new System.Windows.Forms.Button();
            this.btnOpen = new System.Windows.Forms.Button();
            this.txtArquivoXmlNfe = new System.Windows.Forms.TextBox();
            this.lblArquivoXmlNfe = new System.Windows.Forms.Label();
            this.pnlClient = new System.Windows.Forms.Panel();
            this.mmoInformacoesNFe = new System.Windows.Forms.RichTextBox();
            this.ofdArquivoXmlNfe = new System.Windows.Forms.OpenFileDialog();
            this.pnlTop.SuspendLayout();
            this.pnlClient.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlTop
            // 
            this.pnlTop.Controls.Add(this.btnProcessar);
            this.pnlTop.Controls.Add(this.btnOpen);
            this.pnlTop.Controls.Add(this.txtArquivoXmlNfe);
            this.pnlTop.Controls.Add(this.lblArquivoXmlNfe);
            this.pnlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlTop.Location = new System.Drawing.Point(0, 0);
            this.pnlTop.Name = "pnlTop";
            this.pnlTop.Size = new System.Drawing.Size(792, 56);
            this.pnlTop.TabIndex = 0;
            // 
            // btnProcessar
            // 
            this.btnProcessar.Location = new System.Drawing.Point(606, 23);
            this.btnProcessar.Name = "btnProcessar";
            this.btnProcessar.Size = new System.Drawing.Size(75, 23);
            this.btnProcessar.TabIndex = 3;
            this.btnProcessar.Text = "Processar";
            this.btnProcessar.UseVisualStyleBackColor = true;
            this.btnProcessar.Click += new System.EventHandler(this.btnProcessar_Click);
            // 
            // btnOpen
            // 
            this.btnOpen.Location = new System.Drawing.Point(533, 23);
            this.btnOpen.Name = "btnOpen";
            this.btnOpen.Size = new System.Drawing.Size(26, 23);
            this.btnOpen.TabIndex = 2;
            this.btnOpen.Text = "...";
            this.btnOpen.UseVisualStyleBackColor = true;
            this.btnOpen.Click += new System.EventHandler(this.btnOpen_Click);
            // 
            // txtArquivoXmlNfe
            // 
            this.txtArquivoXmlNfe.Location = new System.Drawing.Point(8, 25);
            this.txtArquivoXmlNfe.Name = "txtArquivoXmlNfe";
            this.txtArquivoXmlNfe.Size = new System.Drawing.Size(519, 20);
            this.txtArquivoXmlNfe.TabIndex = 1;
            // 
            // lblArquivoXmlNfe
            // 
            this.lblArquivoXmlNfe.AutoSize = true;
            this.lblArquivoXmlNfe.Location = new System.Drawing.Point(8, 9);
            this.lblArquivoXmlNfe.Name = "lblArquivoXmlNfe";
            this.lblArquivoXmlNfe.Size = new System.Drawing.Size(89, 13);
            this.lblArquivoXmlNfe.TabIndex = 0;
            this.lblArquivoXmlNfe.Text = "Arquivo Xml NF-e";
            // 
            // pnlClient
            // 
            this.pnlClient.Controls.Add(this.mmoInformacoesNFe);
            this.pnlClient.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlClient.Location = new System.Drawing.Point(0, 56);
            this.pnlClient.Name = "pnlClient";
            this.pnlClient.Size = new System.Drawing.Size(792, 517);
            this.pnlClient.TabIndex = 1;
            // 
            // mmoInformacoesNFe
            // 
            this.mmoInformacoesNFe.Dock = System.Windows.Forms.DockStyle.Fill;
            this.mmoInformacoesNFe.Font = new System.Drawing.Font("Courier New", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mmoInformacoesNFe.Location = new System.Drawing.Point(0, 0);
            this.mmoInformacoesNFe.Name = "mmoInformacoesNFe";
            this.mmoInformacoesNFe.Size = new System.Drawing.Size(792, 517);
            this.mmoInformacoesNFe.TabIndex = 0;
            this.mmoInformacoesNFe.Text = "";
            // 
            // ofdArquivoXmlNfe
            // 
            this.ofdArquivoXmlNfe.Filter = "|*.xml";
            // 
            // FormImportacaoXmlNFe
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(792, 573);
            this.Controls.Add(this.pnlClient);
            this.Controls.Add(this.pnlTop);
            this.MinimizeBox = false;
            this.Name = "FormImportacaoXmlNFe";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Exemplo de como percorrer nas informações do Xml da NF-e";
            this.pnlTop.ResumeLayout(false);
            this.pnlTop.PerformLayout();
            this.pnlClient.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlTop;
        private System.Windows.Forms.Panel pnlClient;
        private System.Windows.Forms.Button btnProcessar;
        private System.Windows.Forms.Button btnOpen;
        private System.Windows.Forms.TextBox txtArquivoXmlNfe;
        private System.Windows.Forms.Label lblArquivoXmlNfe;
        private System.Windows.Forms.RichTextBox mmoInformacoesNFe;
        private System.Windows.Forms.OpenFileDialog ofdArquivoXmlNfe;
    }
}