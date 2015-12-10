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
    public partial class proyectoSeleccionado : System.Web.UI.Page
    {
        string idProyecto;
        protected void Page_Load(object sender, EventArgs e)
        {
            idProyecto = Session["idProyecto"].ToString();
            if (idProyecto!= null) {
                if (lblProyecto.Text != "") { }
                else
                      {
                    lblProyecto.Text += idProyecto;
                    calcularProgreso();
                      }
                }
        }

        protected void btnNuevaTarea_Click(object sender, EventArgs e)
        {
            Response.Redirect("nuevaTarea.aspx");
        }

                public void calcularProgreso()
        {
            if (tablaTareas.Rows.Count > 0)
            {
                int cantidadTareasTotal = tablaTareas.Rows.Count;
                string estado = "True";
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string cant = "select count(*) from Tarea where idProyecto='" + idProyecto + "' AND estado='" + estado + "'";
                SqlCommand com = new SqlCommand(cant, conn);
                int cantidadTareasFinalizadas = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                double progreso = (cantidadTareasFinalizadas * 100) / cantidadTareasTotal;
                if (progreso > 0)
                {
                    if (progreso > 50)
                    {
                        lblProgreso.ForeColor = System.Drawing.Color.Green;
                        lblProgreso.Text = progreso.ToString() + "%";
                    }
                    else
                    {
                        lblProgreso.ForeColor = System.Drawing.Color.Red;
                        lblProgreso.Text = progreso.ToString() + "%";
                    }
                }
                else
                {
                    lblProgreso.ForeColor = System.Drawing.Color.Red;
                    lblProgreso.Text = "0 %";
                }
            }
            else
            {
                lblProgreso.ForeColor = System.Drawing.Color.Red;
                lblProgreso.Text = "0 %";
            }
        }


        /*string nuevoEstado;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string updt = "UPDATE Tarea SET estado='" +nuevoEstado+ "' WHERE idTarea='" + tablaTareas.SelectedDataKey.Value.ToString()+ "'";
        SqlCommand com = new SqlCommand(updt, conn);
        com.ExecuteNonQuery();
        conn.Close();*/

    }
    
}