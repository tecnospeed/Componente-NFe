namespace WindowsFormsApplication1
{
    partial class frmICMS90
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
            this.cboModSTICMS90 = new System.Windows.Forms.ComboBox();
            this.txtpRedBCSTICMS90 = new System.Windows.Forms.TextBox();
            this.txtpICMSSTICMS90 = new System.Windows.Forms.TextBox();
            this.txtvICMSSTICMS90 = new System.Windows.Forms.TextBox();
            this.txtvBCSTICMS90 = new System.Windows.Forms.TextBox();
            this.txtpMVASTICMS90 = new System.Windows.Forms.TextBox();
            this.lblValorICMSST = new System.Windows.Forms.Label();
            this.lblValorVBICMSST = new System.Windows.Forms.Label();
            this.lblPercRedBCICMSST = new System.Windows.Forms.Label();
            this.lblAliquotaICMSST = new System.Windows.Forms.Label();
            this.lblPercICMSST = new System.Windows.Forms.Label();
            this.lblBCICMSST = new System.Windows.Forms.Label();
            this.lblModalidade = new System.Windows.Forms.Label();
            this.txtValorICMS90 = new System.Windows.Forms.TextBox();
            this.txtAliquotaICMS90 = new System.Windows.Forms.TextBox();
            this.txtValorBCICMS90 = new System.Windows.Forms.TextBox();
            this.txtCSTICMS90 = new System.Windows.Forms.TextBox();
            this.cboModalidadeICMS90 = new System.Windows.Forms.ComboBox();
            this.cboOrigemICMS90 = new System.Windows.Forms.ComboBox();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblAliquota = new System.Windows.Forms.Label();
            this.lblbcICMS = new System.Windows.Forms.Label();
            this.lblTrbICMS = new System.Windows.Forms.Label();
            this.lblOrigem = new System.Windows.Forms.Label();
            this.lblpRedBC = new System.Windows.Forms.Label();
            this.txtpRedBCICMS90 = new System.Windows.Forms.TextBox();
            this.edtvICMS90Deson = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.cbmotivoICMS90Deson = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtvBCFCP90 = new System.Windows.Forms.TextBox();
            this.lblvBCFCP90 = new System.Windows.Forms.Label();
            this.txtpFCP90 = new System.Windows.Forms.TextBox();
            this.lblpFCP90 = new System.Windows.Forms.Label();
            this.txtvFCP90 = new System.Windows.Forms.TextBox();
            this.lblvFCP90 = new System.Windows.Forms.Label();
            this.txtvFCPST90 = new System.Windows.Forms.TextBox();
            this.lblvFCPST90 = new System.Windows.Forms.Label();
            this.txtpFCPST90 = new System.Windows.Forms.TextBox();
            this.lblpFCPST90 = new System.Windows.Forms.Label();
            this.txtvBCFCPST90 = new System.Windows.Forms.TextBox();
            this.lblvBCFCPST90 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnGravar
            // 
            this.btnGravar.Location = new System.Drawing.Point(272, 429);
            this.btnGravar.Name = "btnGravar";
            this.btnGravar.Size = new System.Drawing.Size(75, 23);
            this.btnGravar.TabIndex = 42;
            this.btnGravar.Text = "Gravar";
            this.btnGravar.UseVisualStyleBackColor = true;
            this.btnGravar.Click += new System.EventHandler(this.btnGravar_Click);
            // 
            // cboModSTICMS90
            // 
            this.cboModSTICMS90.FormattingEnabled = true;
            this.cboModSTICMS90.Items.AddRange(new object[] {
            "Preço tabelado ou máximo sugerido",
            "Lista Negativa",
            "Lista Positiva",
            "Lista Neutra",
            "Margem Valor Agregado",
            "Pauta"});
            this.cboModSTICMS90.Location = new System.Drawing.Point(203, 153);
            this.cboModSTICMS90.Name = "cboModSTICMS90";
            this.cboModSTICMS90.Size = new System.Drawing.Size(144, 21);
            this.cboModSTICMS90.TabIndex = 15;
            this.cboModSTICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // txtpRedBCSTICMS90
            // 
            this.txtpRedBCSTICMS90.Location = new System.Drawing.Point(203, 193);
            this.txtpRedBCSTICMS90.Name = "txtpRedBCSTICMS90";
            this.txtpRedBCSTICMS90.Size = new System.Drawing.Size(144, 20);
            this.txtpRedBCSTICMS90.TabIndex = 19;
            this.txtpRedBCSTICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpICMSSTICMS90
            // 
            this.txtpICMSSTICMS90.Location = new System.Drawing.Point(203, 232);
            this.txtpICMSSTICMS90.Name = "txtpICMSSTICMS90";
            this.txtpICMSSTICMS90.Size = new System.Drawing.Size(144, 20);
            this.txtpICMSSTICMS90.TabIndex = 23;
            this.txtpICMSSTICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvICMSSTICMS90
            // 
            this.txtvICMSSTICMS90.Location = new System.Drawing.Point(24, 272);
            this.txtvICMSSTICMS90.Name = "txtvICMSSTICMS90";
            this.txtvICMSSTICMS90.Size = new System.Drawing.Size(144, 20);
            this.txtvICMSSTICMS90.TabIndex = 25;
            this.txtvICMSSTICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtvBCSTICMS90
            // 
            this.txtvBCSTICMS90.Location = new System.Drawing.Point(24, 233);
            this.txtvBCSTICMS90.Name = "txtvBCSTICMS90";
            this.txtvBCSTICMS90.Size = new System.Drawing.Size(144, 20);
            this.txtvBCSTICMS90.TabIndex = 21;
            this.txtvBCSTICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtpMVASTICMS90
            // 
            this.txtpMVASTICMS90.Location = new System.Drawing.Point(24, 194);
            this.txtpMVASTICMS90.Name = "txtpMVASTICMS90";
            this.txtpMVASTICMS90.Size = new System.Drawing.Size(144, 20);
            this.txtpMVASTICMS90.TabIndex = 17;
            this.txtpMVASTICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // lblValorICMSST
            // 
            this.lblValorICMSST.AutoSize = true;
            this.lblValorICMSST.Location = new System.Drawing.Point(24, 256);
            this.lblValorICMSST.Name = "lblValorICMSST";
            this.lblValorICMSST.Size = new System.Drawing.Size(92, 13);
            this.lblValorICMSST.TabIndex = 24;
            this.lblValorICMSST.Text = "Valor do ICMS ST";
            // 
            // lblValorVBICMSST
            // 
            this.lblValorVBICMSST.AutoSize = true;
            this.lblValorVBICMSST.Location = new System.Drawing.Point(24, 217);
            this.lblValorVBICMSST.Name = "lblValorVBICMSST";
            this.lblValorVBICMSST.Size = new System.Drawing.Size(109, 13);
            this.lblValorVBICMSST.TabIndex = 20;
            this.lblValorVBICMSST.Text = "Valor da BC ICMS ST";
            // 
            // lblPercRedBCICMSST
            // 
            this.lblPercRedBCICMSST.AutoSize = true;
            this.lblPercRedBCICMSST.Location = new System.Drawing.Point(200, 177);
            this.lblPercRedBCICMSST.Name = "lblPercRedBCICMSST";
            this.lblPercRedBCICMSST.Size = new System.Drawing.Size(168, 13);
            this.lblPercRedBCICMSST.TabIndex = 18;
            this.lblPercRedBCICMSST.Text = "Percentual Redução BC ICMS ST";
            // 
            // lblAliquotaICMSST
            // 
            this.lblAliquotaICMSST.AutoSize = true;
            this.lblAliquotaICMSST.Location = new System.Drawing.Point(203, 216);
            this.lblAliquotaICMSST.Name = "lblAliquotaICMSST";
            this.lblAliquotaICMSST.Size = new System.Drawing.Size(93, 13);
            this.lblAliquotaICMSST.TabIndex = 22;
            this.lblAliquotaICMSST.Text = "Alíquota ICMS ST";
            // 
            // lblPercICMSST
            // 
            this.lblPercICMSST.AutoSize = true;
            this.lblPercICMSST.Location = new System.Drawing.Point(24, 178);
            this.lblPercICMSST.Name = "lblPercICMSST";
            this.lblPercICMSST.Size = new System.Drawing.Size(159, 13);
            this.lblPercICMSST.TabIndex = 16;
            this.lblPercICMSST.Text = "Percentual da margem ICMS ST";
            // 
            // lblBCICMSST
            // 
            this.lblBCICMSST.AutoSize = true;
            this.lblBCICMSST.Location = new System.Drawing.Point(203, 137);
            this.lblBCICMSST.Name = "lblBCICMSST";
            this.lblBCICMSST.Size = new System.Drawing.Size(125, 13);
            this.lblBCICMSST.TabIndex = 14;
            this.lblBCICMSST.Text = "Modalidade BC ICMS ST";
            // 
            // lblModalidade
            // 
            this.lblModalidade.AutoSize = true;
            this.lblModalidade.Location = new System.Drawing.Point(24, 60);
            this.lblModalidade.Name = "lblModalidade";
            this.lblModalidade.Size = new System.Drawing.Size(62, 13);
            this.lblModalidade.TabIndex = 4;
            this.lblModalidade.Text = "Modalidade";
            // 
            // txtValorICMS90
            // 
            this.txtValorICMS90.Location = new System.Drawing.Point(24, 155);
            this.txtValorICMS90.Name = "txtValorICMS90";
            this.txtValorICMS90.Size = new System.Drawing.Size(144, 20);
            this.txtValorICMS90.TabIndex = 13;
            this.txtValorICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtAliquotaICMS90
            // 
            this.txtAliquotaICMS90.Location = new System.Drawing.Point(203, 114);
            this.txtAliquotaICMS90.Name = "txtAliquotaICMS90";
            this.txtAliquotaICMS90.Size = new System.Drawing.Size(144, 20);
            this.txtAliquotaICMS90.TabIndex = 11;
            this.txtAliquotaICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtValorBCICMS90
            // 
            this.txtValorBCICMS90.Location = new System.Drawing.Point(203, 75);
            this.txtValorBCICMS90.Name = "txtValorBCICMS90";
            this.txtValorBCICMS90.Size = new System.Drawing.Size(144, 20);
            this.txtValorBCICMS90.TabIndex = 7;
            this.txtValorBCICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // txtCSTICMS90
            // 
            this.txtCSTICMS90.Location = new System.Drawing.Point(203, 36);
            this.txtCSTICMS90.Name = "txtCSTICMS90";
            this.txtCSTICMS90.Size = new System.Drawing.Size(144, 20);
            this.txtCSTICMS90.TabIndex = 3;
            this.txtCSTICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // cboModalidadeICMS90
            // 
            this.cboModalidadeICMS90.FormattingEnabled = true;
            this.cboModalidadeICMS90.Items.AddRange(new object[] {
            "Margem Valor Agregado",
            "Pauta",
            "Preço Tabelado Máximo",
            "Valor da Operação"});
            this.cboModalidadeICMS90.Location = new System.Drawing.Point(24, 76);
            this.cboModalidadeICMS90.Name = "cboModalidadeICMS90";
            this.cboModalidadeICMS90.Size = new System.Drawing.Size(144, 21);
            this.cboModalidadeICMS90.TabIndex = 5;
            this.cboModalidadeICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // cboOrigemICMS90
            // 
            this.cboOrigemICMS90.FormattingEnabled = true;
            this.cboOrigemICMS90.Items.AddRange(new object[] {
            "Nacional",
            "Estrangeira-Importação Direta",
            "Estrangeira-Adquirida no mercado interno",
            "Nacional-Conteúdo de Importação 40%",
            "Nacional-Produção conforme processo produtivo",
            "Nacional-Conteúdo de Importação menor 40%",
            "Estrangeira-Importação Direta sem Similar Nacional (CAMEX)",
            "Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX)"});
            this.cboOrigemICMS90.Location = new System.Drawing.Point(24, 36);
            this.cboOrigemICMS90.Name = "cboOrigemICMS90";
            this.cboOrigemICMS90.Size = new System.Drawing.Size(144, 21);
            this.cboOrigemICMS90.TabIndex = 1;
            this.cboOrigemICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.BloqueiaDigitacao);
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(24, 139);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(31, 13);
            this.lblValor.TabIndex = 12;
            this.lblValor.Text = "Valor";
            // 
            // lblAliquota
            // 
            this.lblAliquota.AutoSize = true;
            this.lblAliquota.Location = new System.Drawing.Point(203, 98);
            this.lblAliquota.Name = "lblAliquota";
            this.lblAliquota.Size = new System.Drawing.Size(47, 13);
            this.lblAliquota.TabIndex = 10;
            this.lblAliquota.Text = "Alíquota";
            // 
            // lblbcICMS
            // 
            this.lblbcICMS.AutoSize = true;
            this.lblbcICMS.Location = new System.Drawing.Point(203, 59);
            this.lblbcICMS.Name = "lblbcICMS";
            this.lblbcICMS.Size = new System.Drawing.Size(107, 13);
            this.lblbcICMS.TabIndex = 6;
            this.lblbcICMS.Text = "Valor da BC do ICMS";
            // 
            // lblTrbICMS
            // 
            this.lblTrbICMS.AutoSize = true;
            this.lblTrbICMS.Location = new System.Drawing.Point(203, 20);
            this.lblTrbICMS.Name = "lblTrbICMS";
            this.lblTrbICMS.Size = new System.Drawing.Size(102, 13);
            this.lblTrbICMS.TabIndex = 2;
            this.lblTrbICMS.Text = "Tributação do ICMS";
            // 
            // lblOrigem
            // 
            this.lblOrigem.AutoSize = true;
            this.lblOrigem.Location = new System.Drawing.Point(24, 20);
            this.lblOrigem.Name = "lblOrigem";
            this.lblOrigem.Size = new System.Drawing.Size(40, 13);
            this.lblOrigem.TabIndex = 0;
            this.lblOrigem.Text = "Origem";
            // 
            // lblpRedBC
            // 
            this.lblpRedBC.AutoSize = true;
            this.lblpRedBC.Location = new System.Drawing.Point(24, 100);
            this.lblpRedBC.Name = "lblpRedBC";
            this.lblpRedBC.Size = new System.Drawing.Size(152, 13);
            this.lblpRedBC.TabIndex = 8;
            this.lblpRedBC.Text = "Percentual da Redução de BC";
            // 
            // txtpRedBCICMS90
            // 
            this.txtpRedBCICMS90.Location = new System.Drawing.Point(24, 116);
            this.txtpRedBCICMS90.Name = "txtpRedBCICMS90";
            this.txtpRedBCICMS90.Size = new System.Drawing.Size(144, 20);
            this.txtpRedBCICMS90.TabIndex = 9;
            this.txtpRedBCICMS90.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CampoNumerico);
            // 
            // edtvICMS90Deson
            // 
            this.edtvICMS90Deson.Location = new System.Drawing.Point(24, 311);
            this.edtvICMS90Deson.Name = "edtvICMS90Deson";
            this.edtvICMS90Deson.Size = new System.Drawing.Size(144, 20);
            this.edtvICMS90Deson.TabIndex = 29;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(24, 295);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(136, 13);
            this.label1.TabIndex = 28;
            this.label1.Text = "Valor do ICMS Desonerado";
            // 
            // cbmotivoICMS90Deson
            // 
            this.cbmotivoICMS90Deson.FormattingEnabled = true;
            this.cbmotivoICMS90Deson.Items.AddRange(new object[] {
            "Produtor Agropecuário",
            "Outros",
            "Órgão de fomento e dev Agropec."});
            this.cbmotivoICMS90Deson.Location = new System.Drawing.Point(203, 271);
            this.cbmotivoICMS90Deson.Name = "cbmotivoICMS90Deson";
            this.cbmotivoICMS90Deson.Size = new System.Drawing.Size(144, 21);
            this.cbmotivoICMS90Deson.TabIndex = 27;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(203, 255);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(119, 13);
            this.label2.TabIndex = 26;
            this.label2.Text = "Motivo da desoneração";
            // 
            // txtvBCFCP90
            // 
            this.txtvBCFCP90.Location = new System.Drawing.Point(203, 311);
            this.txtvBCFCP90.Name = "txtvBCFCP90";
            this.txtvBCFCP90.Size = new System.Drawing.Size(144, 20);
            this.txtvBCFCP90.TabIndex = 31;
            // 
            // lblvBCFCP90
            // 
            this.lblvBCFCP90.AutoSize = true;
            this.lblvBCFCP90.Location = new System.Drawing.Point(203, 295);
            this.lblvBCFCP90.Name = "lblvBCFCP90";
            this.lblvBCFCP90.Size = new System.Drawing.Size(86, 13);
            this.lblvBCFCP90.TabIndex = 30;
            this.lblvBCFCP90.Text = "Valor da BC FCP";
            // 
            // txtpFCP90
            // 
            this.txtpFCP90.Location = new System.Drawing.Point(24, 350);
            this.txtpFCP90.Name = "txtpFCP90";
            this.txtpFCP90.Size = new System.Drawing.Size(144, 20);
            this.txtpFCP90.TabIndex = 33;
            // 
            // lblpFCP90
            // 
            this.lblpFCP90.AutoSize = true;
            this.lblpFCP90.Location = new System.Drawing.Point(24, 334);
            this.lblpFCP90.Name = "lblpFCP90";
            this.lblpFCP90.Size = new System.Drawing.Size(81, 13);
            this.lblpFCP90.TabIndex = 32;
            this.lblpFCP90.Text = "Percentual FCP";
            // 
            // txtvFCP90
            // 
            this.txtvFCP90.Location = new System.Drawing.Point(203, 350);
            this.txtvFCP90.Name = "txtvFCP90";
            this.txtvFCP90.Size = new System.Drawing.Size(144, 20);
            this.txtvFCP90.TabIndex = 35;
            // 
            // lblvFCP90
            // 
            this.lblvFCP90.AutoSize = true;
            this.lblvFCP90.Location = new System.Drawing.Point(203, 334);
            this.lblvFCP90.Name = "lblvFCP90";
            this.lblvFCP90.Size = new System.Drawing.Size(54, 13);
            this.lblvFCP90.TabIndex = 34;
            this.lblvFCP90.Text = "Valor FCP";
            // 
            // txtvFCPST90
            // 
            this.txtvFCPST90.Location = new System.Drawing.Point(24, 429);
            this.txtvFCPST90.Name = "txtvFCPST90";
            this.txtvFCPST90.Size = new System.Drawing.Size(144, 20);
            this.txtvFCPST90.TabIndex = 41;
            // 
            // lblvFCPST90
            // 
            this.lblvFCPST90.AutoSize = true;
            this.lblvFCPST90.Location = new System.Drawing.Point(24, 413);
            this.lblvFCPST90.Name = "lblvFCPST90";
            this.lblvFCPST90.Size = new System.Drawing.Size(71, 13);
            this.lblvFCPST90.TabIndex = 40;
            this.lblvFCPST90.Text = "Valor FCP ST";
            // 
            // txtpFCPST90
            // 
            this.txtpFCPST90.Location = new System.Drawing.Point(203, 390);
            this.txtpFCPST90.Name = "txtpFCPST90";
            this.txtpFCPST90.Size = new System.Drawing.Size(144, 20);
            this.txtpFCPST90.TabIndex = 39;
            // 
            // lblpFCPST90
            // 
            this.lblpFCPST90.AutoSize = true;
            this.lblpFCPST90.Location = new System.Drawing.Point(203, 374);
            this.lblpFCPST90.Name = "lblpFCPST90";
            this.lblpFCPST90.Size = new System.Drawing.Size(98, 13);
            this.lblpFCPST90.TabIndex = 38;
            this.lblpFCPST90.Text = "Percentual FCP ST";
            // 
            // txtvBCFCPST90
            // 
            this.txtvBCFCPST90.Location = new System.Drawing.Point(24, 390);
            this.txtvBCFCPST90.Name = "txtvBCFCPST90";
            this.txtvBCFCPST90.Size = new System.Drawing.Size(144, 20);
            this.txtvBCFCPST90.TabIndex = 37;
            // 
            // lblvBCFCPST90
            // 
            this.lblvBCFCPST90.AutoSize = true;
            this.lblvBCFCPST90.Location = new System.Drawing.Point(24, 374);
            this.lblvBCFCPST90.Name = "lblvBCFCPST90";
            this.lblvBCFCPST90.Size = new System.Drawing.Size(103, 13);
            this.lblvBCFCPST90.TabIndex = 36;
            this.lblvBCFCPST90.Text = "Valor da BC FCP ST";
            // 
            // frmICMS90
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(374, 466);
            this.Controls.Add(this.txtvFCPST90);
            this.Controls.Add(this.lblvFCPST90);
            this.Controls.Add(this.txtpFCPST90);
            this.Controls.Add(this.lblpFCPST90);
            this.Controls.Add(this.txtvBCFCPST90);
            this.Controls.Add(this.lblvBCFCPST90);
            this.Controls.Add(this.txtvFCP90);
            this.Controls.Add(this.lblvFCP90);
            this.Controls.Add(this.txtpFCP90);
            this.Controls.Add(this.lblpFCP90);
            this.Controls.Add(this.txtvBCFCP90);
            this.Controls.Add(this.lblvBCFCP90);
            this.Controls.Add(this.cbmotivoICMS90Deson);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.edtvICMS90Deson);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtpRedBCICMS90);
            this.Controls.Add(this.lblpRedBC);
            this.Controls.Add(this.btnGravar);
            this.Controls.Add(this.cboModSTICMS90);
            this.Controls.Add(this.txtpRedBCSTICMS90);
            this.Controls.Add(this.txtpICMSSTICMS90);
            this.Controls.Add(this.txtvICMSSTICMS90);
            this.Controls.Add(this.txtvBCSTICMS90);
            this.Controls.Add(this.txtpMVASTICMS90);
            this.Controls.Add(this.lblValorICMSST);
            this.Controls.Add(this.lblValorVBICMSST);
            this.Controls.Add(this.lblPercRedBCICMSST);
            this.Controls.Add(this.lblAliquotaICMSST);
            this.Controls.Add(this.lblPercICMSST);
            this.Controls.Add(this.lblBCICMSST);
            this.Controls.Add(this.lblModalidade);
            this.Controls.Add(this.txtValorICMS90);
            this.Controls.Add(this.txtAliquotaICMS90);
            this.Controls.Add(this.txtValorBCICMS90);
            this.Controls.Add(this.txtCSTICMS90);
            this.Controls.Add(this.cboModalidadeICMS90);
            this.Controls.Add(this.cboOrigemICMS90);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblAliquota);
            this.Controls.Add(this.lblbcICMS);
            this.Controls.Add(this.lblTrbICMS);
            this.Controls.Add(this.lblOrigem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Name = "frmICMS90";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ICMS90";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGravar;
        public System.Windows.Forms.ComboBox cboModSTICMS90;
        public System.Windows.Forms.TextBox txtpRedBCSTICMS90;
        public System.Windows.Forms.TextBox txtpICMSSTICMS90;
        public System.Windows.Forms.TextBox txtvICMSSTICMS90;
        public System.Windows.Forms.TextBox txtvBCSTICMS90;
        public System.Windows.Forms.TextBox txtpMVASTICMS90;
        private System.Windows.Forms.Label lblValorICMSST;
        private System.Windows.Forms.Label lblValorVBICMSST;
        private System.Windows.Forms.Label lblPercRedBCICMSST;
        private System.Windows.Forms.Label lblAliquotaICMSST;
        private System.Windows.Forms.Label lblPercICMSST;
        private System.Windows.Forms.Label lblBCICMSST;
        private System.Windows.Forms.Label lblModalidade;
        public System.Windows.Forms.TextBox txtValorICMS90;
        public System.Windows.Forms.TextBox txtAliquotaICMS90;
        public System.Windows.Forms.TextBox txtValorBCICMS90;
        public System.Windows.Forms.TextBox txtCSTICMS90;
        public System.Windows.Forms.ComboBox cboModalidadeICMS90;
        public System.Windows.Forms.ComboBox cboOrigemICMS90;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblAliquota;
        private System.Windows.Forms.Label lblbcICMS;
        private System.Windows.Forms.Label lblTrbICMS;
        private System.Windows.Forms.Label lblOrigem;
        private System.Windows.Forms.Label lblpRedBC;
        public System.Windows.Forms.TextBox txtpRedBCICMS90;
        public System.Windows.Forms.TextBox edtvICMS90Deson;
        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.ComboBox cbmotivoICMS90Deson;
        private System.Windows.Forms.Label label2;
        public System.Windows.Forms.TextBox txtvBCFCP90;
        private System.Windows.Forms.Label lblvBCFCP90;
        public System.Windows.Forms.TextBox txtpFCP90;
        private System.Windows.Forms.Label lblpFCP90;
        public System.Windows.Forms.TextBox txtvFCP90;
        private System.Windows.Forms.Label lblvFCP90;
        public System.Windows.Forms.TextBox txtvFCPST90;
        private System.Windows.Forms.Label lblvFCPST90;
        public System.Windows.Forms.TextBox txtpFCPST90;
        private System.Windows.Forms.Label lblpFCPST90;
        public System.Windows.Forms.TextBox txtvBCFCPST90;
        private System.Windows.Forms.Label lblvBCFCPST90;
    }
}