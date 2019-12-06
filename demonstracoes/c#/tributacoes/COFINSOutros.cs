using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmCOFINSOutros : Form
    {
        public frmCOFINSOutros()
        {
            InitializeComponent();
            cboCSTCOFINSOutr.SelectedIndex = 0; 	// Código de Situacao Tributária - ver opções no Manual
            txtvBCCOFINSOutr.Text = "0.00";	// Valor da Base de Cálculo do COFINS
            txtpCOFINSOutr.Text = "0.00";	// Alíquota do COFINS em Percentual
            txtqBCProdCOFINSOutr.Text = "0"; // Quantidade Vendida
            txtvAliqProdCOFINSOutr.Text = "1"; // Alíquota da COFINS em Reais
            txtvCOFINSOutr.Text = "0.00";	// Valor do COFINS em Reais
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
