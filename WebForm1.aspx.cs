using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        List<Sintomas> Lista_Sintomas = new List<Sintomas>();
        protected void AgregarSintoma_Click(object sender, EventArgs e)
        {
            Sintomas sintomaNuevo = new Sintomas();
            sintomaNuevo.CodigoSintoma = Codigo_Sintoma.Text;
            sintomaNuevo.DescripcionSintoma = Descripcion.Text;
            Lista_Sintomas.Add(sintomaNuevo);
            GuardarenArchivo();
            GridView1.DataSource = Lista_Sintomas;
            GridView1.DataBind();
        }

        private void GuardarenArchivo()
        {
            string json = JsonConvert.SerializeObject(Lista_Sintomas);
            string archivo = Server.MapPath("sintomas.json");
            System.IO.File.WriteAllText(archivo, json);
        }
    }
}