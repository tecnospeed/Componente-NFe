﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmPISQuantidade : Form
    {
        public frmPISQuantidade()
        {
            InitializeComponent();
            cboCSTPISQtde.SelectedIndex = 0;
            txtqBCProdPISQtde.Text = "0";
            txtvAliqProdPISQtde.Text = "1";
            txtvPISPISQtde.Text = "0.00";
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
