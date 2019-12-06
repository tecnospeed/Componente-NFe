using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmISSQN : Form
    {
        public frmISSQN()
        {
            InitializeComponent();
            txtvBCISSQN.Text = "82.60";   // Valor da Base de Calculo da ISSQN
            txtvAliqISSQN.Text = "5.00";    // Aliquota do ISSQN
            txtvISSQN.Text = "4.13";    // Valor do ISSQN
            txtcMunFGISSQN.Text = "5208707"; // Codigo do Municipio de Ororrencia do fato gerador do ISSQN
            txtcListServISSQN.Text = "1402";    // Codigo da Lista de Servicos
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
