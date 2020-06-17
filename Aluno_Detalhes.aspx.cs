using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova_Questao3
{
    public partial class Aluno_Detalhes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CapturaID())
            {
                DadosConsulta();
            }
        }

        private bool CapturaID()
        {
            return Request.QueryString.AllKeys.Contains("id_a");
        }

        private void DadosConsulta()
        {
            var id_a = ObterID();
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"select * from aluno
                                    where id_a =@id_a";

                cmd.Parameters.AddWithValue("@id_a", id_a);
                Conexao.Conectar();

                var reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    txtRA.Text = reader["ra_a"].ToString();
                    txtNome.Text = reader["nome_a"].ToString();
                    ddlSexo.SelectedValue = reader["sexo_a"].ToString();
                    txtDataNasc.Text = reader["datNasc_a"].ToString();
                    txtEmail.Text = reader["email_a"].ToString();
                    txtLog.Text = reader["log_a"].ToString();
                    txtNum.Text = reader["num_a"].ToString();
                    txtBairro.Text = reader["bair_a"].ToString();
                    txtComple.Text = reader["comp_a"].ToString();
                    txtCidade.Text = reader["cid_a"].ToString();
                    txtUF.Text = reader["uf_a"].ToString();
                    txtCurso.Text = reader["curso_a"].ToString();
                    txtAnoIn.Text = reader["anIn_a"].ToString();
                }
            }
            catch (Exception ex)
            {
                string erro = ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }

        private int ObterID()
        {
            var id_a = 0;
            var idURL = Request.QueryString["id_a"];

            if (!int.TryParse(idURL, out id_a))
            {
                throw new Exception("ID inválido");
            }
            if (id_a <= 0)
            {
                throw new Exception("ID inválido");
            }
            return id_a;
        }
    }
}