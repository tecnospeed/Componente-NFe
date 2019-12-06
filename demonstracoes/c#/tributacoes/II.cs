using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmII : Form
    {
        public frmII()
        {
            InitializeComponent();
            txtvBCII.Text = "1.00";
            txtvDespAdu.Text = "1.00";
            txtvII.Text = "1.00";
            txtvIOFII.Text = "1.00";
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
