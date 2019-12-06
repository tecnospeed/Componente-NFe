using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmCOFINSST : Form
    {
        public frmCOFINSST()
        {
            InitializeComponent();
            txtvBCCOFINSST.Text = "1.02";   // Valor da Base de Calculo da COFINS
            txtpCOFINSST.Text = "7.60";   // Aliquota do COFINS em percentual
            txtqBCProdCOFINSST.Text = "2460"; 	// Quantidade Vendida
            txtvAliqProdCOFINSST.Text = "7.6000"; 	// Aliquota do COFINS em Reais
            txtvCOFINSST.Text = "0.04"; 	// Valor do COFINS em Reais
        }

        private void btnGravar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void rbPercentual_CheckedChanged(object sender, EventArgs e)
        {
            if (rbPercentual.Checked)
            {
                txtvBCCOFINSST.Enabled = true;
                txtpCOFINSST.Enabled = true;
                txtqBCProdCOFINSST.Enabled = false;
                txtvAliqProdCOFINSST.Enabled = false;
            }
            else
            {
                txtvBCCOFINSST.Enabled = false;
                txtpCOFINSST.Enabled = false;
                txtqBCProdCOFINSST.Enabled = true;
                txtvAliqProdCOFINSST.Enabled = true;
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
