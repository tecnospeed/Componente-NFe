using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmICMSSN201 : Form
    {
        public frmICMSSN201()
        {
            InitializeComponent();
            cboOrigemICMSSN201.SelectedIndex = 0; // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
            txtCSOSNICMSSN201.Text = "201";
            cboModSTICMSSN201.SelectedIndex = 0; // modalidade de determinação da BC do ICMS ST            
            txtpMVASTICMSSN201.Text = "0.01";
            txtpRedBCSTICMSSN201.Text = "0.01";
            txtvBCSTICMSSN201.Text = "0.01";
            txtpICMSSTICMSSN201.Text = "0.01";
            txtvICMSSTICMSSN201.Text = "0.01";
            txtpCredSNICMSSN201.Text = "0.01";
            txtvCredICMSSNICMSSN201.Text = "0.01";
            txtvBCFCPST201.Text = "0.00";  // Valor da Base de Cálculo da FCP retida por ST
            txtpFCPST201.Text = "0.00";  // Percentual do FCP retido por ST
            txtvFCPST201.Text = "0.00";  // Valor do FCP retido por ST
            txtpCredSN201.Text = "0.01";  // Alíquota para cálculo de crédito
            txtpCredSNICMSSN201.Text = "0.01";  // Percetual dp FCP retido por ST
            txtvCredICSMSN201.Text = "0.00";  // Valor crédito do ICMS que pode ser aproveitado
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
