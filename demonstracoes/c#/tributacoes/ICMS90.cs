using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmICMS90 : Form
    {
        public frmICMS90()
        {
            InitializeComponent();
            cboOrigemICMS90.SelectedIndex = 0; // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
            txtCSTICMS90.Text = "90";   // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
            cboModalidadeICMS90.SelectedIndex = 0; // Modalidade de determinacao da BC
            txtValorBCICMS90.Text = "0.91"; // Valor da BC do ICMS
            txtpRedBCICMS90.Text = "0.01"; // Percentual de Reducao de BC
            txtAliquotaICMS90.Text = "7.00"; // Aliquota do Imposto
            txtValorICMS90.Text = "0.06"; // Valor do ICMS
            cboModSTICMS90.SelectedIndex = 0; // modalidade de determinação da BC do ICMS ST
            txtpMVASTICMS90.Text = "0.01";
            txtpRedBCSTICMS90.Text = "0.01";
            txtvBCSTICMS90.Text = "0.01";
            txtpICMSSTICMS90.Text = "0.01";
            txtvICMSSTICMS90.Text = "0.01";
            edtvICMS90Deson.Text = "0.01";  // Valor do ICMS Desonerado
            txtvBCFCP90.Text = "0.00"; // Valor da Base de Cálculo do FCP
            txtpFCP90.Text = "0.00";  // Percentual do FCP
            txtvFCP90.Text = "0.00";  // Valor do FCP 
            txtvBCFCPST90.Text = "0.00"; // Valor da Base de Cálculo do FCP retido por ST
            txtpFCPST90.Text = "0.00";  // Percentual do FCP retido por ST
            txtvFCPST90.Text = "0.00";  // Valor do FCP retido por ST
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
