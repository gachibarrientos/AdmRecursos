using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace AdministradorDeProyectos
{
    public partial class registracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from userData where usuario='"+txtUsuario.Text+"'";
                SqlCommand com = new SqlCommand(checkuser, conn);

                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1) {
                    Response.Write("Usuario ya existe");
                }
                conn.Close();
            }
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "INSERT INTO userData (email, usuario, contraseña) values (@usu, @email, @contraseña) ";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@usu", txtUsuario.Text);
                com.Parameters.AddWithValue("@email", txtMail.Text);
                com.Parameters.AddWithValue("@contraseña", txtContraseña.Text);
                com.ExecuteNonQuery();
                Response.Redirect("manager.aspx");
                Response.Write("Registro exitoso!");
                conn.Close();
            }
            catch(Exception ex) {
                Response.Write("Error:" + ex.ToString());
            }
            }
    }
}