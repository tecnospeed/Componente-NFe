using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmIPITributado : Form
    {
        public frmIPITributado()
        {
            InitializeComponent();
            txtclEnqIPITrib.Text = "NDA"; 	   // Classe de enquadramento do IPI para cigarros e Bebidas
            txtCNPJProdIPITrib.Text = "00000000000000"; // CNPJ do produtor da mercadoria quando diferente do emitente
            txtcSeloIPITrib.Text = "N"; 		   // Codigo do selo de Controle IPI
            txtqSeloIPITrib.Text = "0"; 		   // Quantidade de selo de Controle
            txtcEnqIPITrib.Text = "999"; 	   // Codigo de enquadramento legal do IPI
            cboCSTIPITrib.SelectedIndex = 0; // Codigo da Situacao tributaria do IPI
            txtvBCIPITrib.Text = "90.00"; // Valor da BC do IPI
            txtIPITrib.Text = "5.00";  // Aliquota do IPI
            txtqUnidIPITrib.Text = "1";  // Quantidade total na unidade padrao para tributacao
            txtvUnidIPITrib.Text = "5";  // Valor por unidade tributavel
            txtvIPITrib.Text = "1"; // Valor do IPI
        }

        private void btnGravar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BloqueiaDigitacao(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void rbAliquota_CheckedChanged(object sender, EventArgs e)
        {
            if (rbAliquota.Checked == true)
            {
                txtvBCIPITrib.Enabled = true;
                txtIPITrib.Enabled = true;
                txtqUnidIPITrib.Enabled = false;
                txtvUnidIPITrib.Enabled = false;
            }
            else
            {
                txtvBCIPITrib.Enabled = false;
                txtIPITrib.Enabled = false;
                txtqUnidIPITrib.Enabled = true;
                txtvUnidIPITrib.Enabled = true;
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
