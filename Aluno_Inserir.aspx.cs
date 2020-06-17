using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova_Questao3
{
    public partial class Aluno_Inserir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click1(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();

            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"insert into aluno

                                    (nome_a, sexo_a, dataNasc_a, ra_a,
                                    curso_a, anoIn_a, email_a, log_a,
                                    num_a, bair_a, cid_a, uf_a, comp_a) 

                                    values

                                    (@nome_a, @sex_a, @dat_a, @ra_a,
                                    @curso_a, @anIn_a, @email_a, @log_a, @num_a,
                                    @bair_a, @cidade_a, @uf_a, @comp_a);";

                cmd.Parameters.AddWithValue("nome_a", txtNome.Text);
                cmd.Parameters.AddWithValue("sex_a", ddlSexo.SelectedValue);
                cmd.Parameters.AddWithValue("dat_a", txtDataNasc.Text);
                cmd.Parameters.AddWithValue("ra_a", txtRA.Text);
                cmd.Parameters.AddWithValue("anIn_a", txtAnoIn.Text);
                cmd.Parameters.AddWithValue("curso_a", txtCurso.Text);
                cmd.Parameters.AddWithValue("email_a", txtEmail.Text);
                cmd.Parameters.AddWithValue("log_a", txtLog.Text);
                cmd.Parameters.AddWithValue("num_a", txtNum.Text);
                cmd.Parameters.AddWithValue("bair_a", txtBairro.Text);
                cmd.Parameters.AddWithValue("cidade_a", txtCidade.Text);
                cmd.Parameters.AddWithValue("uf_a", txtUF.Text);
                cmd.Parameters.AddWithValue("comp_a", txtComple.Text);

                Conexao.Conectar();

                cmd.ExecuteNonQuery();
                lblResultado.Text = "Aluno Cadastrado!";
            }
            catch (Exception ex)
            {
                lblResultado.Text = $"Falha: {ex.Message}";
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}