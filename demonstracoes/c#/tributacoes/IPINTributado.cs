using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmIPINTributado : Form
    {
        public frmIPINTributado()
        {
            InitializeComponent();
            txtclEnqIPINTrib.Text = "NDA"; 	   // Classe de enquadramento do IPI para cigarros e Bebidas
            txtCNPJProdIPINTrib.Text = "00000000000000"; // CNPJ do produtor da mercadoria quando diferente do emitente
            txtcSeloIPINTrib.Text = "N"; 		   // Codigo do selo de Controle IPI
            txtqSeloIPINTrib.Text = "0"; 		   // Quantidade de selo de Controle
            txtcEnqIPINTrib.Text = "999"; 	   // Codigo de enquadramento legal do IPI
            cboCSTIPINTrib.SelectedIndex = 0; // Codigo da Situacao tributaria do IPI
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
