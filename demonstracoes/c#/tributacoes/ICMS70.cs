using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class frmICMS70 : Form
    {
        public frmICMS70()
        {
            InitializeComponent();
            cboOrigemICMS70.SelectedIndex = 0; // Origem da Mercadoria (0-Nacional, 1-Estrangeira, 2-Estrangeira adiquirida no Merc. Interno)
            txtCSTICMS70.Text = "70";   // Tipo da Tributação do ICMS (00 - Integralmente) - ver outras formas no Manual
            cboModalidadeICMS70.SelectedIndex = 0;  // Modalidade de determinação da Base de Cálculo - ver Manual
            txtpRedBCICMS70.Text = "0.01"; // Percentual de Reducao da BC
            txtValorBCICMS70.Text = "0.91"; // Valor da Base de Cálculo do ICMS
            txtAliquotaICMS70.Text = "7.00"; // Alíquota do ICMS em Percentual
            txtValorICMS70.Text = "0.06";  // Valor do ICMS em Reais
            cboModSTICMS70.SelectedIndex = 4;  // Modalidade de determinacao da BC do ICMS ST
            txtpMVASTICMS70.Text = "10.00";  // Percentual da Margem e Valor Adicional do ICMS ST
            txtpRedBCSTICMS70.Text = "10.00"; // Percentual da Reducao do BC ICMS ST
            txtvBCSTICMS70.Text = "0.00";   // Valor da BC do ICMS ST
            txtpICMSSTICMS70.Text = "0.00"; // Aliquota do Impostos ICMS ST
            txtvICMSSTICMS70.Text = "0.00"; // Valor do ICMS ST
            txtvBCFCP70.Text = "0.00"; // Valor da Base de Cálculo do FCP 
            txtpFCP70.Text = "0.00"; // Percentual do FCP
            txtvFCP70.Text = "0.00";  // Valor do FCP
            txtvBCFCPST70.Text = "0.00";  // Valor da Base de Cálculo do FCP retido por ST
            txtpFCPST70.Text = "0.00"; // Percentual do FCP retido por ST
            txtvFCPST70.Text = "0.00"; // Valor do FCP retido por ST
            edtvICMS70Deson.Text = "0.01"; // Valor do ICMS Desonerado
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
