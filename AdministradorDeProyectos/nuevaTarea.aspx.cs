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
    public partial class nuevaTarea : System.Web.UI.Page
    {
        string idProyecto, nroEstacion, idSala, legajo, descripcionTarea;
        protected void Page_Load(object sender, EventArgs e)
        {
            idProyecto = Session["idProyecto"].ToString();
            if (idProyecto != null) {
                if (lblProyecto.Text != "")
                {
                }
                else {
                    lblProyecto.Text += idProyecto;
                }
            }
        }
        protected void btnGuardarTarea_Click(object sender, EventArgs e)
        {
            descripcionTarea = txtDescripcionTarea.Text;
           // Response.Write(descripcionTarea + "\n" + Session["nroEstacion"].ToString() + "\n" + Session["idSala"].ToString() + "\n" + Session["legajo"].ToString() + "\n" + idProyecto);
          try
                        {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "INSERT INTO Tarea (descripcionTarea, nroEstacion, idSala, legajo, idProyecto) "+
                    "values (@descripTarea, @nroEstacion, @idSala, @legajo, @idProyecto) ";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@descripTarea", descripcionTarea);
                com.Parameters.AddWithValue("@nroEstacion", Int32.Parse(Session["nroEstacion"].ToString()));
                com.Parameters.AddWithValue("@idSala", Int32.Parse(Session["idSala"].ToString()));
                com.Parameters.AddWithValue("@legajo", Int32.Parse(Session["legajo"].ToString()));
                com.Parameters.AddWithValue("@idProyecto", Int32.Parse(idProyecto));

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

        protected void agregarE(object sender, EventArgs e)
        {
            Session["nroEstacion"] = tablaEstacion.SelectedDataKey.Value.ToString();
        }

        protected void agregarSala(object sender, EventArgs e)
        {
            Session["idSala"] = tablaSala.SelectedDataKey.Value.ToString();
        }

        protected void agregarPersonal(object sender, EventArgs e)
        {
            Session["legajo"] = tablaPersonal.SelectedDataKey.Value.ToString();
        }
    }
}