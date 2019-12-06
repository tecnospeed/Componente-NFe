using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmICMS00 : Form
    {
        public frmICMS00()
        {
            InitializeComponent();
            cboOrigemICMS00.SelectedIndex = 0;
            txtCSTICMS00.Text = "00";
            cboModalidadeICMS00.SelectedIndex = 0;
            txtValorBCICMS00.Text = "0.01";
            txtAliquotaICMS00.Text = "17.00";
            txtValorICMS00.Text = "0.01";
            txtpFCP00.Text = "0.00";
            txtvFCP00.Text = "0.00";
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
