using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmICMS60 : Form
    {
        public frmICMS60()
        {
            InitializeComponent();
            cboOrigemICMS60.SelectedIndex = 0; // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
            txtCSTICMS60.Text = "60"; // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
            txtvBCSTRetICMS60.Text = "0.00"; // Valor da BC do ICMS ST
            txtvICMSSTRetICMS60.Text = "0.00"; // Valor do ICMS ST
            txtpST60.Text = "0.00"; // Alíquota suportada consumidor final
            txtvBCFCPSTRet60.Text = "0.00"; // Valor da Base de Cálculo FCP retido por ST
            txtpFCPSTRetICMS60.Text = "0.00"; // Percentual do FCP retido por ST
            txtvFCPSTRet60.Text = "0.00"; // Valor do FCP retido por ST
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
