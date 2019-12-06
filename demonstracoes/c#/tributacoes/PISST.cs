using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmPISST : Form
    {
        public frmPISST()
        {
            InitializeComponent();
            txtvBCPISST.Text = "0.91"; // Valor da Base de Calculo do PIS
            txtpPISST.Text = "1.65"; // Aliquota do PIS em Percentual
            txtqBCProdPISST.Text = "246";      // Quantidade Vendida
            txtvAliqProdPISST.Text = "107.6000"; // Aliquota do PIS em Reais
            txtvPISST.Text = "0.02"; // Valor do PIS em Reais
        }

        private void btnGravar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void rbPercentual_CheckedChanged(object sender, EventArgs e)
        {
            if (rbPercentual.Checked)
            {
               txtvBCPISST.Enabled = true;
               txtpPISST.Enabled = true;
               txtqBCProdPISST.Enabled = false;
               txtvAliqProdPISST.Enabled = false; 
            }
            else
            {
                txtvBCPISST.Enabled = false;
                txtpPISST.Enabled = false;
                txtqBCProdPISST.Enabled = true;
                txtvAliqProdPISST.Enabled = true;
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
