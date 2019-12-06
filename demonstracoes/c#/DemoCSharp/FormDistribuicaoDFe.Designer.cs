namespace WindowsFormsApplication1
{
    partial class FormDistribuicaoDFe
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
            this.grpInformacoes = new System.Windows.Forms.GroupBox();
            this.btnConsultarDFe = new System.Windows.Forms.Button();
            this.grpNSU = new System.Windows.Forms.GroupBox();
            this.rdbNsuEspecifico = new System.Windows.Forms.RadioButton();
            this.rdbUltimoNSU = new System.Windows.Forms.RadioButton();
            this.txtNSU = new System.Windows.Forms.TextBox();
            this.lblNSU = new System.Windows.Forms.Label();
            this.lblCnpjCpf = new System.Windows.Forms.Label();
            this.lblUF = new System.Windows.Forms.Label();
            this.txtCnpjCpf = new System.Windows.Forms.TextBox();
            this.cbUF = new System.Windows.Forms.ComboBox();
            this.grpRetorno = new System.Windows.Forms.GroupBox();
            this.tbcDFe = new System.Windows.Forms.TabControl();
            this.tabListagem = new System.Windows.Forms.TabPage();
            this.panel1 = new System.Windows.Forms.Panel();
            this.lblStatusDownloadNFe = new System.Windows.Forms.Label();
            this.txtStatusDownloadNFe = new System.Windows.Forms.TextBox();
            this.txtQtdNotas = new System.Windows.Forms.TextBox();
            this.lblQtdNotas = new System.Windows.Forms.Label();
            this.lblChaveDownload = new System.Windows.Forms.Label();
            this.txtChaveDownload = new System.Windows.Forms.TextBox();
            this.btnDownloadNFe = new System.Windows.Forms.Button();
            this.grdNotas = new System.Windows.Forms.DataGridView();
            this.tabXML = new System.Windows.Forms.TabPage();
            this.rtbXML = new System.Windows.Forms.RichTextBox();
            this.grpInformacoes.SuspendLayout();
            this.grpNSU.SuspendLayout();
            this.grpRetorno.SuspendLayout();
            this.tbcDFe.SuspendLayout();
            this.tabListagem.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grdNotas)).BeginInit();
            this.tabXML.SuspendLayout();
            this.SuspendLayout();
            // 
            // grpInformacoes
            // 
            this.grpInformacoes.Controls.Add(this.btnConsultarDFe);
            this.grpInformacoes.Controls.Add(this.grpNSU);
            this.grpInformacoes.Controls.Add(this.txtNSU);
            this.grpInformacoes.Controls.Add(this.lblNSU);
            this.grpInformacoes.Controls.Add(this.lblCnpjCpf);
            this.grpInformacoes.Controls.Add(this.lblUF);
            this.grpInformacoes.Controls.Add(this.txtCnpjCpf);
            this.grpInformacoes.Controls.Add(this.cbUF);
            this.grpInformacoes.Dock = System.Windows.Forms.DockStyle.Top;
            this.grpInformacoes.Location = new System.Drawing.Point(0, 0);
            this.grpInformacoes.Name = "grpInformacoes";
            this.grpInformacoes.Size = new System.Drawing.Size(792, 64);
            this.grpInformacoes.TabIndex = 0;
            this.grpInformacoes.TabStop = false;
            this.grpInformacoes.Text = "Informações para Consulta";
            // 
            // btnConsultarDFe
            // 
            this.btnConsultarDFe.Location = new System.Drawing.Point(551, 23);
            this.btnConsultarDFe.Name = "btnConsultarDFe";
            this.btnConsultarDFe.Size = new System.Drawing.Size(106, 32);
            this.btnConsultarDFe.TabIndex = 7;
            this.btnConsultarDFe.Text = "Consulta DF-e";
            this.btnConsultarDFe.UseVisualStyleBackColor = true;
            this.btnConsultarDFe.Click += new System.EventHandler(this.btnConsultarDFe_Click);
            // 
            // grpNSU
            // 
            this.grpNSU.Controls.Add(this.rdbNsuEspecifico);
            this.grpNSU.Controls.Add(this.rdbUltimoNSU);
            this.grpNSU.Location = new System.Drawing.Point(318, 17);
            this.grpNSU.Name = "grpNSU";
            this.grpNSU.Size = new System.Drawing.Size(203, 39);
            this.grpNSU.TabIndex = 6;
            this.grpNSU.TabStop = false;
            this.grpNSU.Text = "Tipo do NSU";
            // 
            // rdbNsuEspecifico
            // 
            this.rdbNsuEspecifico.AutoSize = true;
            this.rdbNsuEspecifico.Location = new System.Drawing.Point(95, 17);
            this.rdbNsuEspecifico.Name = "rdbNsuEspecifico";
            this.rdbNsuEspecifico.Size = new System.Drawing.Size(102, 17);
            this.rdbNsuEspecifico.TabIndex = 1;
            this.rdbNsuEspecifico.TabStop = true;
            this.rdbNsuEspecifico.Text = "NSU Específico";
            this.rdbNsuEspecifico.UseVisualStyleBackColor = true;
            // 
            // rdbUltimoNSU
            // 
            this.rdbUltimoNSU.AutoSize = true;
            this.rdbUltimoNSU.Checked = true;
            this.rdbUltimoNSU.Location = new System.Drawing.Point(8, 16);
            this.rdbUltimoNSU.Name = "rdbUltimoNSU";
            this.rdbUltimoNSU.Size = new System.Drawing.Size(80, 17);
            this.rdbUltimoNSU.TabIndex = 0;
            this.rdbUltimoNSU.TabStop = true;
            this.rdbUltimoNSU.Text = "Último NSU";
            this.rdbUltimoNSU.UseVisualStyleBackColor = true;
            // 
            // txtNSU
            // 
            this.txtNSU.Location = new System.Drawing.Point(208, 36);
            this.txtNSU.MaxLength = 15;
            this.txtNSU.Name = "txtNSU";
            this.txtNSU.Size = new System.Drawing.Size(101, 20);
            this.txtNSU.TabIndex = 5;
            this.txtNSU.Text = "000000000000000";
            // 
            // lblNSU
            // 
            this.lblNSU.AutoSize = true;
            this.lblNSU.Location = new System.Drawing.Point(208, 19);
            this.lblNSU.Name = "lblNSU";
            this.lblNSU.Size = new System.Drawing.Size(30, 13);
            this.lblNSU.TabIndex = 4;
            this.lblNSU.Text = "NSU";
            // 
            // lblCnpjCpf
            // 
            this.lblCnpjCpf.AutoSize = true;
            this.lblCnpjCpf.Location = new System.Drawing.Point(58, 19);
            this.lblCnpjCpf.Name = "lblCnpjCpf";
            this.lblCnpjCpf.Size = new System.Drawing.Size(144, 13);
            this.lblCnpjCpf.TabIndex = 2;
            this.lblCnpjCpf.Text = "CNPJ ou CPF do interessado";
            // 
            // lblUF
            // 
            this.lblUF.AutoSize = true;
            this.lblUF.Location = new System.Drawing.Point(9, 19);
            this.lblUF.Name = "lblUF";
            this.lblUF.Size = new System.Drawing.Size(21, 13);
            this.lblUF.TabIndex = 0;
            this.lblUF.Text = "UF";
            // 
            // txtCnpjCpf
            // 
            this.txtCnpjCpf.Location = new System.Drawing.Point(61, 36);
            this.txtCnpjCpf.Name = "txtCnpjCpf";
            this.txtCnpjCpf.Size = new System.Drawing.Size(141, 20);
            this.txtCnpjCpf.TabIndex = 3;
            // 
            // cbUF
            // 
            this.cbUF.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbUF.FormattingEnabled = true;
            this.cbUF.Items.AddRange(new object[] {
            "AC",
            "AL",
            "AM",
            "AP",
            "BA",
            "CE",
            "DF",
            "ES",
            "GO",
            "MA",
            "MG",
            "MS",
            "MT",
            "PA",
            "PB",
            "PE",
            "PI",
            "PR",
            "RJ",
            "RN",
            "RO",
            "RR",
            "RS",
            "SC",
            "SE",
            "SP",
            "TO"});
            this.cbUF.Location = new System.Drawing.Point(9, 35);
            this.cbUF.Name = "cbUF";
            this.cbUF.Size = new System.Drawing.Size(46, 21);
            this.cbUF.TabIndex = 1;
            // 
            // grpRetorno
            // 
            this.grpRetorno.Controls.Add(this.tbcDFe);
            this.grpRetorno.Dock = System.Windows.Forms.DockStyle.Fill;
            this.grpRetorno.Location = new System.Drawing.Point(0, 64);
            this.grpRetorno.Name = "grpRetorno";
            this.grpRetorno.Size = new System.Drawing.Size(792, 509);
            this.grpRetorno.TabIndex = 1;
            this.grpRetorno.TabStop = false;
            this.grpRetorno.Text = "Retorno Consulta DF-e";
            // 
            // tbcDFe
            // 
            this.tbcDFe.Controls.Add(this.tabListagem);
            this.tbcDFe.Controls.Add(this.tabXML);
            this.tbcDFe.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tbcDFe.Location = new System.Drawing.Point(3, 16);
            this.tbcDFe.Name = "tbcDFe";
            this.tbcDFe.SelectedIndex = 0;
            this.tbcDFe.Size = new System.Drawing.Size(786, 490);
            this.tbcDFe.TabIndex = 0;
            // 
            // tabListagem
            // 
            this.tabListagem.Controls.Add(this.panel1);
            this.tabListagem.Controls.Add(this.grdNotas);
            this.tabListagem.Location = new System.Drawing.Point(4, 22);
            this.tabListagem.Name = "tabListagem";
            this.tabListagem.Padding = new System.Windows.Forms.Padding(3);
            this.tabListagem.Size = new System.Drawing.Size(778, 464);
            this.tabListagem.TabIndex = 0;
            this.tabListagem.Text = "Listagem de NF-es";
            this.tabListagem.UseVisualStyleBackColor = true;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.lblStatusDownloadNFe);
            this.panel1.Controls.Add(this.txtStatusDownloadNFe);
            this.panel1.Controls.Add(this.txtQtdNotas);
            this.panel1.Controls.Add(this.lblQtdNotas);
            this.panel1.Controls.Add(this.lblChaveDownload);
            this.panel1.Controls.Add(this.txtChaveDownload);
            this.panel1.Controls.Add(this.btnDownloadNFe);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(3, 412);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(772, 49);
            this.panel1.TabIndex = 1;
            // 
            // lblStatusDownloadNFe
            // 
            this.lblStatusDownloadNFe.AutoSize = true;
            this.lblStatusDownloadNFe.Location = new System.Drawing.Point(449, 5);
            this.lblStatusDownloadNFe.Name = "lblStatusDownloadNFe";
            this.lblStatusDownloadNFe.Size = new System.Drawing.Size(103, 13);
            this.lblStatusDownloadNFe.TabIndex = 5;
            this.lblStatusDownloadNFe.Text = "Status do Download";
            // 
            // txtStatusDownloadNFe
            // 
            this.txtStatusDownloadNFe.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtStatusDownloadNFe.Location = new System.Drawing.Point(452, 21);
            this.txtStatusDownloadNFe.Name = "txtStatusDownloadNFe";
            this.txtStatusDownloadNFe.ReadOnly = true;
            this.txtStatusDownloadNFe.Size = new System.Drawing.Size(310, 20);
            this.txtStatusDownloadNFe.TabIndex = 6;
            this.txtStatusDownloadNFe.TabStop = false;
            // 
            // txtQtdNotas
            // 
            this.txtQtdNotas.Location = new System.Drawing.Point(6, 21);
            this.txtQtdNotas.Name = "txtQtdNotas";
            this.txtQtdNotas.ReadOnly = true;
            this.txtQtdNotas.Size = new System.Drawing.Size(48, 20);
            this.txtQtdNotas.TabIndex = 1;
            this.txtQtdNotas.TabStop = false;
            this.txtQtdNotas.Text = "0";
            this.txtQtdNotas.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // lblQtdNotas
            // 
            this.lblQtdNotas.AutoSize = true;
            this.lblQtdNotas.Location = new System.Drawing.Point(3, 5);
            this.lblQtdNotas.Name = "lblQtdNotas";
            this.lblQtdNotas.Size = new System.Drawing.Size(51, 13);
            this.lblQtdNotas.TabIndex = 0;
            this.lblQtdNotas.Text = "Registros";
            // 
            // lblChaveDownload
            // 
            this.lblChaveDownload.AutoSize = true;
            this.lblChaveDownload.Location = new System.Drawing.Point(57, 5);
            this.lblChaveDownload.Name = "lblChaveDownload";
            this.lblChaveDownload.Size = new System.Drawing.Size(139, 13);
            this.lblChaveDownload.TabIndex = 2;
            this.lblChaveDownload.Text = "Chave da Nota selecionada";
            // 
            // txtChaveDownload
            // 
            this.txtChaveDownload.Location = new System.Drawing.Point(60, 21);
            this.txtChaveDownload.Name = "txtChaveDownload";
            this.txtChaveDownload.ReadOnly = true;
            this.txtChaveDownload.Size = new System.Drawing.Size(274, 20);
            this.txtChaveDownload.TabIndex = 3;
            this.txtChaveDownload.TabStop = false;
            // 
            // btnDownloadNFe
            // 
            this.btnDownloadNFe.Location = new System.Drawing.Point(341, 13);
            this.btnDownloadNFe.Name = "btnDownloadNFe";
            this.btnDownloadNFe.Size = new System.Drawing.Size(104, 29);
            this.btnDownloadNFe.TabIndex = 4;
            this.btnDownloadNFe.Text = "Download NF-e";
            this.btnDownloadNFe.UseVisualStyleBackColor = true;
            this.btnDownloadNFe.Click += new System.EventHandler(this.btnDownloadNFe_Click);
            // 
            // grdNotas
            // 
            this.grdNotas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grdNotas.Dock = System.Windows.Forms.DockStyle.Fill;
            this.grdNotas.Location = new System.Drawing.Point(3, 3);
            this.grdNotas.Name = "grdNotas";
            this.grdNotas.Size = new System.Drawing.Size(772, 458);
            this.grdNotas.TabIndex = 0;
            this.grdNotas.SelectionChanged += new System.EventHandler(this.grdNotas_SelectionChanged);
            // 
            // tabXML
            // 
            this.tabXML.Controls.Add(this.rtbXML);
            this.tabXML.Location = new System.Drawing.Point(4, 22);
            this.tabXML.Name = "tabXML";
            this.tabXML.Padding = new System.Windows.Forms.Padding(3);
            this.tabXML.Size = new System.Drawing.Size(778, 464);
            this.tabXML.TabIndex = 1;
            this.tabXML.Text = "XML";
            this.tabXML.UseVisualStyleBackColor = true;
            // 
            // rtbXML
            // 
            this.rtbXML.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbXML.Location = new System.Drawing.Point(3, 3);
            this.rtbXML.Name = "rtbXML";
            this.rtbXML.Size = new System.Drawing.Size(772, 458);
            this.rtbXML.TabIndex = 0;
            this.rtbXML.Text = "";
            // 
            // FormDistribuicaoDFe
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(792, 573);
            this.Controls.Add(this.grpRetorno);
            this.Controls.Add(this.grpInformacoes);
            this.MinimizeBox = false;
            this.Name = "FormDistribuicaoDFe";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Exemplo de como utilizar a Consulta de Distribuição DF-e e Download da NF-e";
            this.Shown += new System.EventHandler(this.FormDistribuicaoDFe_Shown);
            this.grpInformacoes.ResumeLayout(false);
            this.grpInformacoes.PerformLayout();
            this.grpNSU.ResumeLayout(false);
            this.grpNSU.PerformLayout();
            this.grpRetorno.ResumeLayout(false);
            this.tbcDFe.ResumeLayout(false);
            this.tabListagem.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grdNotas)).EndInit();
            this.tabXML.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox grpInformacoes;
        private System.Windows.Forms.GroupBox grpRetorno;
        private System.Windows.Forms.TextBox txtNSU;
        private System.Windows.Forms.Label lblNSU;
        private System.Windows.Forms.Label lblCnpjCpf;
        private System.Windows.Forms.Label lblUF;
        private System.Windows.Forms.TextBox txtCnpjCpf;
        private System.Windows.Forms.ComboBox cbUF;
        private System.Windows.Forms.Button btnConsultarDFe;
        private System.Windows.Forms.GroupBox grpNSU;
        private System.Windows.Forms.RadioButton rdbNsuEspecifico;
        private System.Windows.Forms.RadioButton rdbUltimoNSU;
        private System.Windows.Forms.TabControl tbcDFe;
        private System.Windows.Forms.TabPage tabListagem;
        private System.Windows.Forms.TabPage tabXML;
        private System.Windows.Forms.RichTextBox rtbXML;
        private System.Windows.Forms.DataGridView grdNotas;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnDownloadNFe;
        private System.Windows.Forms.Label lblChaveDownload;
        private System.Windows.Forms.TextBox txtChaveDownload;
        private System.Windows.Forms.TextBox txtQtdNotas;
        private System.Windows.Forms.Label lblQtdNotas;
        private System.Windows.Forms.Label lblStatusDownloadNFe;
        private System.Windows.Forms.TextBox txtStatusDownloadNFe;
    }
}