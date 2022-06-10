using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
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
            string archivo = Server.MapPath("sintomas.json");
            StreamReader json = File.OpenText(archivo);
            string J = json.ReadToEnd();
            json.Close();
            Sintomas.Lista_Sintomas = JsonConvert.DeserializeObject<List<Sintomas>>(J);
            GridView1.DataSource = Sintomas.Lista_Sintomas; GridView1.DataBind();
        }
        protected void AgregarSintoma_Click(object sender, EventArgs e)
        {
            Sintomas sintomaNuevo = new Sintomas();
            sintomaNuevo.CodigoSintoma = Codigo_Sintoma.Text;
            sintomaNuevo.DescripcionSintoma = Descripcion.Text;
            Sintomas.Lista_Sintomas.Add(sintomaNuevo);
            GuardarenArchivo();
            GridView1.DataSource = Sintomas.Lista_Sintomas;
            GridView1.DataBind();
        }

        private void GuardarenArchivo()
        {
            string json = JsonConvert.SerializeObject(Sintomas.Lista_Sintomas);
            string archivo = Server.MapPath("sintomas.json");
            System.IO.File.WriteAllText(archivo, json);
        }

        protected void Actualizar_Click(object sender, EventArgs e)
        {
            Sintomas sintomas = Sintomas.Lista_Sintomas.Find(x => x.CodigoSintoma == Codigo_Sintoma.Text);
            sintomas.CodigoSintoma = Codigo_Sintoma0.Text;
            sintomas.DescripcionSintoma = Descripcion0.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Sintomas sintomas = Sintomas.Lista_Sintomas.Find(x => x.CodigoSintoma == Codigo_Sintoma.Text);
            if(sintomas==null)
            {
                Response.Write("<script>alert('Sintoma no encontrado!')</script>");
            }
            else
            {
                sintomas.CodigoSintoma = Codigo_Sintoma0.Text;
                sintomas.DescripcionSintoma = Descripcion0.Text;
            }
        }
    }
}