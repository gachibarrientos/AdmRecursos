using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class vistaUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["legajo"].Equals("")){
            Response.Redirect("Login.aspx");
        }
        else { 
            Response.Write("Legajo del Empleado: " + Session["legajo"].ToString());
        }

    }
}