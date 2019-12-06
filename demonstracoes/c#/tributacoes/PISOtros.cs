using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmPISOtros : Form
    {
        public frmPISOtros()
        {
            InitializeComponent();
            cboCSTPISOutr.SelectedIndex = 0;   // Codigo de Situacao Tributária - ver opções no Manual
            txtvBCPISOutr.Text = "0.00"; // Valor da Base de Cálculo do PIS
            txtpPISPISOutr.Text = "0.00"; // Alíquota em Percencual do PIS
            txtqBCProdPISOutr.Text = "0"; // Quantidade Vendida
            txtvAliqProdPISOutr.Text = "1"; // Alíquota do PIS em Reais
            txtvPISOutr.Text = "0.00"; // Valor do PIS em Reais
        }

        private void btnGravar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BloqueiaDigitacao(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void rbPercentual_CheckedChanged(object sender, EventArgs e)
        {
            if (rbPercentual.Checked)
            {
                txtvBCPISOutr.Enabled = true;
                txtpPISPISOutr.Enabled = true;
                txtqBCProdPISOutr.Enabled = false;
                txtvAliqProdPISOutr.Enabled = false;
            }
            else
            {
                txtvBCPISOutr.Enabled = false;
                txtpPISPISOutr.Enabled = false;
                txtqBCProdPISOutr.Enabled = true;
                txtvAliqProdPISOutr.Enabled = true;
            }
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
