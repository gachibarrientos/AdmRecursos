using System;
using System.Collections.Generic;
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
                lblProyecto.Text += idProyecto;
            }
        }

        protected void btnNuevaTarea_Click(object sender, EventArgs e)
        {
            Response.Redirect("nuevaTarea.aspx");
        }
    }
}