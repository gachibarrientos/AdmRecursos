using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdministradorDeProyectos
{
    public partial class nuevoProyecto : System.Web.UI.Page
    {
        string correoLogin, nombreProyecto, descripProyecto, fechaIni, fechaFin;
        protected void Page_Load(object sender, EventArgs e)
        {
          
                if (Session["New"] != null)
            {
                correoLogin = Session["New"].ToString();
                if (lblAdmin.Text != "")
                {
                }
                else
                    {
                    lblAdmin.Text += correoLogin;
                     }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            {
                Session["New"] = null;
                correoLogin = null;
                Response.Redirect("login.aspx");
            }
        }

        protected void btnAceptarProyecto_Click(object sender, EventArgs e)
        {
            nombreProyecto = txtNombreProyecto.Text;
            descripProyecto = txtDescripcion.Text;
            fechaIni = calInicio.SelectedDate.Date.ToString();
            fechaFin = calFin.SelectedDate.Date.ToString();
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "INSERT INTO Proyecto (nombreProyecto, fechaInicio, fechaFin, descripcion) " +
                    "values (@nombreProyecto, @fechaInicio, @fechaFin, @descripcion) ";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@nombreProyecto", nombreProyecto);
                com.Parameters.AddWithValue("@fechaInicio", DateTime.Parse(fechaIni));
                com.Parameters.AddWithValue("@fechaFin",DateTime.Parse(fechaFin));
                com.Parameters.AddWithValue("@descripcion", descripProyecto);

                com.ExecuteNonQuery();

                Response.Redirect("misProyectosAdmin.aspx");
                Response.Write("Registro exitoso!");

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}