using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmICMS20 : Form
    {
        public frmICMS20()
        {
            InitializeComponent();
            cboOrigemICMS20.SelectedIndex = 0; // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
            txtCSTICMS20.Text = "20";       // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
            cboModalidadeICMS20.SelectedIndex = 0; // Modalidade de determinação da Base de Cálculo - ver Manual
            txtpRedBCSTICMS20.Text = "0.01"; // Percentual de Reducao da BC
            txtvBCSTICMS20.Text = "0.91"; // Valor da Base de Cálculo do ICMS
            txtAliquotaICMS20.Text = "17.00"; // Alíquota do ICMS em Percentual
            txtValorICMS20.Text = "0.01";
            edtvICMS20Deson.Text = "0.01";
            txtvBCFCP20.Text = "0.00";
            txtpFCP20.Text = "0.00";
            txtvFCP20.Text = "0.00";
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
