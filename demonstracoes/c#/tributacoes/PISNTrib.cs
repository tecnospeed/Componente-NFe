using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmPISNTrib : Form
    {
        public frmPISNTrib()
        {
            InitializeComponent();
            cboCSTPISNT.SelectedIndex = 0; // Codigo de Situacao Tributária
        }

        private void btnGravar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BloqueiaDigitacao(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }
    }
}
