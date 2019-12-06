using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmICMS40 : Form
    {
        public frmICMS40()
        {
            InitializeComponent();
            cboOrigemICMS40.SelectedIndex = 0; // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
            txtCSTICMS40.Text = "40";       // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
            txtValorICMS40.Text = "1.00";
            cbmotivoICMS40Deson.SelectedIndex = 7;
            edtvIcms40Deson.Text = "0.01"; // Valor do ICMS Desonerado
        }

        private void BloqueiaDigitacao(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void btnGravar_Click(object sender, EventArgs e)
        {
            this.Close();
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
