using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmICMSPartilha : Form
    {
        public frmICMSPartilha()
        {
            InitializeComponent();
            cboOrigemICMSPart.SelectedIndex = 0; // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
            txtCSTICMSPart.Text = "90";   // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
            cboModalidadeICMSPart.SelectedIndex = 0; // Modalidade de determinacao da BC
            txtValorBCICMSPart.Text = "0.91"; // Valor da BC do ICMS
            txtpRedBCICMSPart.Text = "0.01"; // Percentual de Reducao de BC
            txtAliquotaICMSPart.Text = "7.00"; // Aliquota do Imposto
            txtValorICMSPart.Text = "0.06"; // Valor do ICMS
            cboModSTICMSPart.SelectedIndex = 4; // modalidade de determinação da BC do ICMS ST
            txtpMVASTICMSPart.Text = "10.00"; // Percentual da Margem e Valor Adicional do ICMS ST
            txtpRedBCSTICMSPart.Text = "10.00"; // Percentual da Reducao do BC ICMS ST
            txtvBCSTICMSPart.Text = "0.00"; // Valor da BC do ICMS ST
            txtpICMSSTICMSPart.Text = "0.00"; // Aliquota do Impostos ICMS ST
            txtvICMSSTICMSPart.Text = "0.00"; // Valor do ICMS ST
            txtpBCOpICMSPart.Text = "0.01";
            txtUFSTICMSPart.Text = "SP";
        }

        private void btnGravar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BloqueiaDigitacao(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        //Método que só permite que numeros sejam digitados -keypress event
        private void CampoNumerico(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && e.KeyChar != (char)8 && e.KeyChar != (char)46)
            {
                e.Handled = true;
                MessageBox.Show("Este campo só aceita números");
            }
        }
        //---------------------------------------------------------------------
    }
}
