using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try {
            DataSetTableAdapters.UsuarioTableAdapter obj = new DataSetTableAdapters.UsuarioTableAdapter();
            String nombreUsuario = obj.spLogin(txtUsuario.Text, txtContraseña.Text).ToString();
            if (!nombreUsuario.Equals("")) {
                Session["legajo"] = nombreUsuario;
                Response.Redirect("vistaUsuario.aspx");

            }

        }
        catch {
            lblMensaje.Text = "Usuario/Contraseña incorrectos";
        }
    }
}