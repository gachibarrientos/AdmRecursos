using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdministradorDeProyectos
{
    public partial class nuevaTarea : System.Web.UI.Page
    {
        string idProyecto;
        protected void Page_Load(object sender, EventArgs e)
        {
            idProyecto = Session["idProyecto"].ToString();
            if (idProyecto != null) {
                lblProyecto.Text += idProyecto;
            }
        }
        protected void agregarSala(object sender, EventArgs e)
        {
            string descripSala = tablaSala.SelectedDataKey.Value.ToString();
            boxSala.Items.Add(descripSala);
        }
        protected void agregarPersonal(object sender, EventArgs e)
        {
            string nombrePersona = tablaPersonal.SelectedDataKey.Value.ToString();
            boxPersonal.Items.Add(nombrePersona);
        }

        protected void agregarE(object sender, EventArgs e)
        {
            string descripEstacion = tablaEstacion.SelectedDataKey.Value.ToString();
            boxEstacion.Items.Add(descripEstacion);
        }
    }
}