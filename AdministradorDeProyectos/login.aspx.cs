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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["admproyectosConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from userData where email='" + txtEmail.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPassword = "select contraseña from userData where email='" + txtEmail.Text + "'";
                SqlCommand passCom = new SqlCommand(checkPassword, conn);
                string password = passCom.ExecuteScalar().ToString().Replace(" ","");
                if (password == txtContraseña.Text)
                {
                    Session["New"] = txtEmail.Text;
                    if (Session["New"].Equals("admin@admin"))
                    {
                        Response.Redirect("misProyectosAdmin.aspx");
                    }
                    else {
                        Response.Redirect("misProyectos.aspx");
                    }
                }
                else
                {
                    Response.Write("Contraseña incorrecta");
                }
            }
            else {
                Response.Write("Usuario incorrecto");
            }
        }
    }
}