namespace WindowsFormsApplication1
{
    partial class frmISSQN
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
            this.lblVBasCalc = new System.Windows.Forms.Label();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblitenListServ = new System.Windows.Forms.Label();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblCodMun = new System.Windows.Forms.Label();
            this.txtvBCISSQN = new System.Windows.Forms.TextBox();
            this.txtvAliqISSQN = new System.Windows.Forms.TextBox();
            this.txtvISSQN = new System.Windows.Forms.TextBox();
            this.txtcMunFGISSQN = new System.Windows.Forms.TextBox();
            this.txtcListServISSQN = new System.Windows.Forms.TextBox();
            this.btnGravar = new System.Windows.Forms.Button();
            this.edtvOutroISSQN = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.edtvDescIncondISSQN = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.edtvDescCondISSQN = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.edtvISSRetISSQN = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.edtcMunISSQN = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.edtcServicoISSQN = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.cbbindISSRet = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.cbbindISSISSQN = new System.Windows.Forms.ComboBox();
            this.label8 = new System.Windows.Forms.Label();
            this.cbbindIncentivoISSQN = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.edtvDeducaoISSQN = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lblVBasCalc
            // 
            this.lblVBasCalc.AutoSize = true;
            this.lblVBasCalc.Location = new System.Drawing.Point(16, 16);
            this.lblVBasCalc.Name = "lblVBasCalc";
            this.lblVBasCalc.Size = new System.Drawing.Size(126, 13);
            this.lblVBasCalc.TabIndex = 0;
            this.lblVBasCalc.Text = "Valor da Base de Cálculo";
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(16, 65);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 1;
            this.lblValor.Text = "Valor";
            // 
            // lblitenListServ
            // 
            this.lblitenListServ.AutoSize = true;
            this.lblitenListServ.Location = new System.Drawing.Point(16, 118);
            this.lblitenListServ.Name = "lblitenListServ";
            this.lblitenListServ.Size = new System.Drawing.Size(126, 13);
            this.lblitenListServ.TabIndex = 2;
            this.lblitenListServ.Text = "Item da Lista de Serviços";
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(189, 16);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(47, 13);
            this.lblAliquota.TabIndex = 3;
            this.lblAliquota.Text = "Alíquota";
            // 
            // lblCodMun
            // 
            this.lblCodMun.AutoSize = true;
            this.lblCodMun.Location = new System.Drawing.Point(189, 65);
            this.lblCodMun.Name = "lblCodMun";
            this.lblCodMun.Size = new System.Drawing.Size(105, 13);
            this.lblCodMun.TabIndex = 4;
            this.lblCodMun.Text = "Código do Município";
            // 
            // txtvBCISSQN
            // 
            this.txtvBCISSQN.Location = new System.Drawing.Point(19, 32);
            this.txtvBCISSQN.Name = "txtvBCISSQN";
            this.txtvBCISSQN.Size = new System.Drawing.Size(149, 20);
            this.txtvBCISSQN.TabIndex = 6;
            this.txtvBCISSQN.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvAliqISSQN
            // 
            this.txtvAliqISSQN.Location = new System.Drawing.Point(192, 32);
            this.txtvAliqISSQN.Name = "txtvAliqISSQN";
            this.txtvAliqISSQN.Size = new System.Drawing.Size(149, 20);
            this.txtvAliqISSQN.TabIndex = 7;
            this.txtvAliqISSQN.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvISSQN
            // 
            this.txtvISSQN.Location = new System.Drawing.Point(19, 81);
            this.txtvISSQN.Name = "txtvISSQN";
            this.txtvISSQN.Size = new System.Drawing.Size(149, 20);
            this.txtvISSQN.TabIndex = 8;
            this.txtvISSQN.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtcMunFGISSQN
            // 
            this.txtcMunFGISSQN.Location = new System.Drawing.Point(192, 81);
            this.txtcMunFGISSQN.Name = "txtcMunFGISSQN";
            this.txtcMunFGISSQN.Size = new System.Drawing.Size(149, 20);
            this.txtcMunFGISSQN.TabIndex = 9;
            this.txtcMunFGISSQN.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtcListServISSQN
            // 
            this.txtcListServISSQN.Location = new System.Drawing.Point(19, 134);
            this.txtcListServISSQN.Name = "txtcListServISSQN";
            this.txtcListServISSQN.Size = new System.Drawing.Size(149, 20);
            this.txtcListServISSQN.TabIndex = 10;
            this.txtcListServISSQN.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(266, 381);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 12;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // edtvOutroISSQN
            // 
            this.edtvOutroISSQN.Location = new System.Drawing.Point(19, 182);
            this.edtvOutroISSQN.Name = "edtvOutroISSQN";
            this.edtvOutroISSQN.Size = new System.Drawing.Size(149, 20);
            this.edtvOutroISSQN.TabIndex = 15;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(16, 166);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(113, 13);
            this.label1.TabIndex = 14;
            this.label1.Text = "Valor outras retenções";
            // 
            // edtvDescIncondISSQN
            // 
            this.edtvDescIncondISSQN.Location = new System.Drawing.Point(192, 182);
            this.edtvDescIncondISSQN.Name = "edtvDescIncondISSQN";
            this.edtvDescIncondISSQN.Size = new System.Drawing.Size(149, 20);
            this.edtvDescIncondISSQN.TabIndex = 17;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(189, 166);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(153, 13);
            this.label2.TabIndex = 16;
            this.label2.Text = "Valor desconto incondicionado";
            // 
            // edtvDescCondISSQN
            // 
            this.edtvDescCondISSQN.Location = new System.Drawing.Point(19, 230);
            this.edtvDescCondISSQN.Name = "edtvDescCondISSQN";
            this.edtvDescCondISSQN.Size = new System.Drawing.Size(149, 20);
            this.edtvDescCondISSQN.TabIndex = 19;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(16, 214);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(145, 13);
            this.label3.TabIndex = 18;
            this.label3.Text = "Valor desconto condicionado";
            // 
            // edtvISSRetISSQN
            // 
            this.edtvISSRetISSQN.Location = new System.Drawing.Point(19, 281);
            this.edtvISSRetISSQN.Name = "edtvISSRetISSQN";
            this.edtvISSRetISSQN.Size = new System.Drawing.Size(149, 20);
            this.edtvISSRetISSQN.TabIndex = 21;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(16, 265);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(96, 13);
            this.label4.TabIndex = 20;
            this.label4.Text = "Valor retenção ISS";
            // 
            // edtcMunISSQN
            // 
            this.edtcMunISSQN.Location = new System.Drawing.Point(19, 330);
            this.edtcMunISSQN.Name = "edtcMunISSQN";
            this.edtcMunISSQN.Size = new System.Drawing.Size(149, 20);
            this.edtcMunISSQN.TabIndex = 23;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(16, 314);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(148, 13);
            this.label5.TabIndex = 22;
            this.label5.Text = "Código do Mun. de incidência";
            // 
            // edtcServicoISSQN
            // 
            this.edtcServicoISSQN.Location = new System.Drawing.Point(192, 330);
            this.edtcServicoISSQN.Name = "edtcServicoISSQN";
            this.edtcServicoISSQN.Size = new System.Drawing.Size(149, 20);
            this.edtcServicoISSQN.TabIndex = 25;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(189, 314);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(92, 13);
            this.label6.TabIndex = 24;
            this.label6.Text = "Código do serviço";
            // 
            // cbbindISSRet
            // 
            this.cbbindISSRet.FormattingEnabled = true;
            this.cbbindISSRet.Items.AddRange(new object[] {
            "1 - Sim",
            "2 - Não"});
            this.cbbindISSRet.Location = new System.Drawing.Point(192, 230);
            this.cbbindISSRet.Name = "cbbindISSRet";
            this.cbbindISSRet.Size = new System.Drawing.Size(149, 21);
            this.cbbindISSRet.TabIndex = 27;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(189, 214);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(100, 13);
            this.label7.TabIndex = 26;
            this.label7.Text = "Indicador ISS retido";
            // 
            // cbbindISSISSQN
            // 
            this.cbbindISSISSQN.FormattingEnabled = true;
            this.cbbindISSISSQN.Items.AddRange(new object[] {
            "1 - Exigível",
            "2 - Não incidência",
            "3 - Isenção",
            "4 - Exportação",
            "5 - Imunidade",
            "6 - Exigibilidade Suspensa por Dec. Judicial",
            "7 - Exigibilidade Suspensa por Proc. Administrativo"});
            this.cbbindISSISSQN.Location = new System.Drawing.Point(192, 280);
            this.cbbindISSISSQN.Name = "cbbindISSISSQN";
            this.cbbindISSISSQN.Size = new System.Drawing.Size(149, 21);
            this.cbbindISSISSQN.TabIndex = 29;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(189, 264);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(161, 13);
            this.label8.TabIndex = 28;
            this.label8.Text = "Indicador da exigibilidade do ISS";
            // 
            // cbbindIncentivoISSQN
            // 
            this.cbbindIncentivoISSQN.FormattingEnabled = true;
            this.cbbindIncentivoISSQN.Items.AddRange(new object[] {
            "1 - Sim",
            "2 - Não"});
            this.cbbindIncentivoISSQN.Location = new System.Drawing.Point(19, 381);
            this.cbbindIncentivoISSQN.Name = "cbbindIncentivoISSQN";
            this.cbbindIncentivoISSQN.Size = new System.Drawing.Size(149, 21);
            this.cbbindIncentivoISSQN.TabIndex = 31;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(16, 365);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(142, 13);
            this.label9.TabIndex = 30;
            this.label9.Text = "Indicador de incentivo Fiscal";
            // 
            // edtvDeducaoISSQN
            // 
            this.edtvDeducaoISSQN.Location = new System.Drawing.Point(192, 134);
            this.edtvDeducaoISSQN.Name = "edtvDeducaoISSQN";
            this.edtvDeducaoISSQN.Size = new System.Drawing.Size(149, 20);
            this.edtvDeducaoISSQN.TabIndex = 33;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(189, 118);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(108, 13);
            this.label10.TabIndex = 32;
            this.label10.Text = "Valor dedução da BC";
            // 
            // frmISSQN
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(359, 428);
            this.Controls.Add(this.edtvDeducaoISSQN);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.cbbindIncentivoISSQN);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.cbbindISSISSQN);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.cbbindISSRet);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.edtcServicoISSQN);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.edtcMunISSQN);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.edtvISSRetISSQN);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.edtvDescCondISSQN);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.edtvDescIncondISSQN);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.edtvOutroISSQN);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.txtcListServISSQN);
            this.Controls.Add(this.txtcMunFGISSQN);
            this.Controls.Add(this.txtvISSQN);
            this.Controls.Add(this.txtvAliqISSQN);
            this.Controls.Add(this.txtvBCISSQN);
            this.Controls.Add(this.lblCodMun);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblitenListServ);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblVBasCalc);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmISSQN";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ISSQN";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblVBasCalc;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblitenListServ;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblCodMun;
        public System.Windows.Forms.TextBox txtvBCISSQN;
        public System.Windows.Forms.TextBox txtvAliqISSQN;
        public System.Windows.Forms.TextBox txtvISSQN;
        public System.Windows.Forms.TextBox txtcMunFGISSQN;
        public System.Windows.Forms.TextBox txtcListServISSQN;
        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.TextBox edtvOutroISSQN;
        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.TextBox edtvDescIncondISSQN;
        private System.Windows.Forms.Label label2;
        public System.Windows.Forms.TextBox edtvDescCondISSQN;
        private System.Windows.Forms.Label label3;
        public System.Windows.Forms.TextBox edtvISSRetISSQN;
        private System.Windows.Forms.Label label4;
        public System.Windows.Forms.TextBox edtcMunISSQN;
        private System.Windows.Forms.Label label5;
        public System.Windows.Forms.TextBox edtcServicoISSQN;
        private System.Windows.Forms.Label label6;
        public System.Windows.Forms.ComboBox cbbindISSRet;
        private System.Windows.Forms.Label label7;
        public System.Windows.Forms.ComboBox cbbindISSISSQN;
        private System.Windows.Forms.Label label8;
        public System.Windows.Forms.ComboBox cbbindIncentivoISSQN;
        private System.Windows.Forms.Label label9;
        public System.Windows.Forms.TextBox edtvDeducaoISSQN;
        private System.Windows.Forms.Label label10;
    }
}