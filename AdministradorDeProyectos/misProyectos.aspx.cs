using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdministradorDeProyectos
{
    public partial class misProyectos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                if (lblBienvenido.Text != "")
                {

                }
                else
                {
                    lblBienvenido.Text = Session["New"].ToString();
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        protected void onSeleccionProyecto(object sender, EventArgs e)
        {
            Session["idProyecto"] = tablaProyectos.SelectedDataKey.Value.ToString();
            Response.Redirect("proyectoSeleccionadoUser.aspx");
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("login.aspx");
        }
    }
}