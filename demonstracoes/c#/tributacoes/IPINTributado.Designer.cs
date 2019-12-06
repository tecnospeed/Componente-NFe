namespace WindowsFormsApplication1
{
    partial class frmIPINTributado
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
            this.txtcEnqIPINTrib = new System.Windows.Forms.TextBox();
            this.txtqSeloIPINTrib = new System.Windows.Forms.TextBox();
            this.txtcSeloIPINTrib = new System.Windows.Forms.TextBox();
            this.txtCNPJProdIPINTrib = new System.Windows.Forms.TextBox();
            this.txtclEnqIPINTrib = new System.Windows.Forms.TextBox();
            this.cboCSTIPINTrib = new System.Windows.Forms.ComboBox();
            this.btnGravar = new System.Windows.Forms.Button();
            this.lblcodSitTrib = new System.Windows.Forms.Label();
            this.lblCodEnquad = new System.Windows.Forms.Label();
            this.lblquantSelo = new System.Windows.Forms.Label();
            this.lblCodSelo = new System.Windows.Forms.Label();
            this.lblCNPJ = new System.Windows.Forms.Label();
            this.lblCigBebida = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtcEnqIPINTrib
            // 
            this.txtcEnqIPINTrib.Location = new System.Drawing.Point(12, 140);
            this.txtcEnqIPINTrib.Name = "txtcEnqIPINTrib";
            this.txtcEnqIPINTrib.Size = new System.Drawing.Size(150, 20);
            this.txtcEnqIPINTrib.TabIndex = 31;
            this.txtcEnqIPINTrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtqSeloIPINTrib
            // 
            this.txtqSeloIPINTrib.Location = new System.Drawing.Point(173, 89);
            this.txtqSeloIPINTrib.Name = "txtqSeloIPINTrib";
            this.txtqSeloIPINTrib.Size = new System.Drawing.Size(150, 20);
            this.txtqSeloIPINTrib.TabIndex = 30;
            this.txtqSeloIPINTrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtcSeloIPINTrib
            // 
            this.txtcSeloIPINTrib.Location = new System.Drawing.Point(12, 89);
            this.txtcSeloIPINTrib.Name = "txtcSeloIPINTrib";
            this.txtcSeloIPINTrib.Size = new System.Drawing.Size(150, 20);
            this.txtcSeloIPINTrib.TabIndex = 29;
            this.txtcSeloIPINTrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCNPJProdIPINTrib
            // 
            this.txtCNPJProdIPINTrib.Location = new System.Drawing.Point(173, 31);
            this.txtCNPJProdIPINTrib.Name = "txtCNPJProdIPINTrib";
            this.txtCNPJProdIPINTrib.Size = new System.Drawing.Size(150, 20);
            this.txtCNPJProdIPINTrib.TabIndex = 28;
            this.txtCNPJProdIPINTrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtclEnqIPINTrib
            // 
            this.txtclEnqIPINTrib.Location = new System.Drawing.Point(12, 31);
            this.txtclEnqIPINTrib.Name = "txtclEnqIPINTrib";
            this.txtclEnqIPINTrib.Size = new System.Drawing.Size(150, 20);
            this.txtclEnqIPINTrib.TabIndex = 27;
            this.txtclEnqIPINTrib.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboCSTIPINTrib
            // 
            this.cboCSTIPINTrib.FormattingEnabled = true;
            this.cboCSTIPINTrib.Items.AddRange(new object[] {
            "Entrada com recuperação de crédito",
            "Outras Entradas",
            "Saídas tributadas",
            "Outras saídas"});
            this.cboCSTIPINTrib.Location = new System.Drawing.Point(173, 140);
            this.cboCSTIPINTrib.Name = "cboCSTIPINTrib";
            this.cboCSTIPINTrib.Size = new System.Drawing.Size(147, 21);
            this.cboCSTIPINTrib.TabIndex = 26;
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(245, 177);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 25;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // lblcodSitTrib
            // 
            this.lblcodSitTrib.AutoSize = true;
            this.lblcodSitTrib.Location = new System.Drawing.Point(179, 124);
            this.lblcodSitTrib.Name = "lblcodSitTrib";
            this.lblcodSitTrib.Size = new System.Drawing.Size(120, 13);
            this.lblcodSitTrib.TabIndex = 24;
            this.lblcodSitTrib.Text = "Código da Sit. Tributária";
            // 
            // lblCodEnquad
            // 
            this.lblCodEnquad.AutoSize = true;
            this.lblCodEnquad.Location = new System.Drawing.Point(9, 124);
            this.lblCodEnquad.Name = "lblCodEnquad";
            this.lblCodEnquad.Size = new System.Drawing.Size(133, 13);
            this.lblCodEnquad.TabIndex = 23;
            this.lblCodEnquad.Text = "Código de Enquadramento";
            // 
            // lblquantSelo
            // 
            this.lblquantSelo.AutoSize = true;
            this.lblquantSelo.Location = new System.Drawing.Point(179, 73);
            this.lblquantSelo.Name = "lblquantSelo";
            this.lblquantSelo.Size = new System.Drawing.Size(101, 13);
            this.lblquantSelo.TabIndex = 22;
            this.lblquantSelo.Text = "Quantidade de Selo";
            // 
            // lblCodSelo
            // 
            this.lblCodSelo.AutoSize = true;
            this.lblCodSelo.Location = new System.Drawing.Point(9, 73);
            this.lblCodSelo.Name = "lblCodSelo";
            this.lblCodSelo.Size = new System.Drawing.Size(79, 13);
            this.lblCodSelo.TabIndex = 21;
            this.lblCodSelo.Text = "Código do Selo";
            // 
            // lblCNPJ
            // 
            this.lblCNPJ.AutoSize = true;
            this.lblCNPJ.Location = new System.Drawing.Point(179, 15);
            this.lblCNPJ.Name = "lblCNPJ";
            this.lblCNPJ.Size = new System.Drawing.Size(34, 13);
            this.lblCNPJ.TabIndex = 20;
            this.lblCNPJ.Text = "CNPJ";
            // 
            // lblCigBebida
            // 
            this.lblCigBebida.AutoSize = true;
            this.lblCigBebida.Location = new System.Drawing.Point(9, 15);
            this.lblCigBebida.Name = "lblCigBebida";
            this.lblCigBebida.Size = new System.Drawing.Size(153, 13);
            this.lblCigBebida.TabIndex = 19;
            this.lblCigBebida.Text = "Enquadramento Cig. e Babidas";
            // 
            // frmIPINTributado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(340, 214);
            this.Controls.Add(this.txtcEnqIPINTrib);
            this.Controls.Add(this.txtqSeloIPINTrib);
            this.Controls.Add(this.txtcSeloIPINTrib);
            this.Controls.Add(this.txtCNPJProdIPINTrib);
            this.Controls.Add(this.txtclEnqIPINTrib);
            this.Controls.Add(this.cboCSTIPINTrib);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.lblcodSitTrib);
            this.Controls.Add(this.lblCodEnquad);
            this.Controls.Add(this.lblquantSelo);
            this.Controls.Add(this.lblCodSelo);
            this.Controls.Add(this.lblCNPJ);
            this.Controls.Add(this.lblCigBebida);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmIPINTributado";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "IPI Não Tributado";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.TextBox txtcEnqIPINTrib;
        public System.Windows.Forms.TextBox txtqSeloIPINTrib;
        public System.Windows.Forms.TextBox txtcSeloIPINTrib;
        public System.Windows.Forms.TextBox txtCNPJProdIPINTrib;
        public System.Windows.Forms.TextBox txtclEnqIPINTrib;
        public System.Windows.Forms.ComboBox cboCSTIPINTrib;
        private System.Windows.Forms.Button btnGravar;
        private System.Windows.Forms.Label lblcodSitTrib;
        private System.Windows.Forms.Label lblCodEnquad;
        private System.Windows.Forms.Label lblquantSelo;
        private System.Windows.Forms.Label lblCodSelo;
        private System.Windows.Forms.Label lblCNPJ;
        private System.Windows.Forms.Label lblCigBebida;
    }
}