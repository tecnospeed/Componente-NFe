using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmCOFINSAliq : Form
    {
        public frmCOFINSAliq()
        {
            InitializeComponent();
            cboCSTCOFINSAliq.SelectedIndex = 0;
            txtvBCCOFINSAliq.Text = "0.01";
            txtpCOFINSAliq.Text = "7.60";
            txtCOFINSAliq.Text = "0.01";
        }

        private void btnGravar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BloqueiaDigitacao(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void frmCOFINSAliq_Load(object sender, EventArgs e)
        {

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
