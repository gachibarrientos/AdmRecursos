using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nuevaTarea : System.Web.UI.Page
{
    public static String[] legajos;
    protected void btnAceptar_Click(object sender, EventArgs e)
    {
        
        String descripcionTarea = txtDescripcion.Text;

        try
        {
            DataSetTableAdapters.PersonaTableAdapter obj = new DataSetTableAdapters.PersonaTableAdapter();


        }
        catch
        {

        }
    }
    protected void agregarLegajos(object sender, EventArgs e)
    {
        legajos = new String[] { };
        String legajo = tablaPersonal.SelectedValue.ToString();
        int selecc = tablaPersonal.SelectedIndex;
        if (legajos.Length == 0)
        {
            legajos = new String[] { legajo };
            tablaPersonal.SelectedRow.Focus();
                }
    }
}