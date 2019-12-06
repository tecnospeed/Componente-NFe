using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmICMSST : Form
    {
        public frmICMSST()
        {
            InitializeComponent();
            cboOrigemICMSST.SelectedIndex = 0; // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
            txtCSTICMSST.Text = "41";   // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
            txtvBCSTRetICMSST.Text = "0.01";
            txtvICMSSTRetICMSST.Text = "0.01";
            txtvBCSTDestICMSST.Text = "0.01";
            txtvICMSSTDestICMSST.Text = "0.01";
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

        private void frmICMSST_Load(object sender, EventArgs e)
        {

        }
        //---------------------------------------------------------------------
    }
}
