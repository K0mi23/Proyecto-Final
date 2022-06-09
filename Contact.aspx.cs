using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final
{
    public partial class Contact : Page
    {
        List<Medicamentos> ListaMedicamentos = new List<Medicamentos>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Medicamentos medicamento = new Medicamentos();
            medicamento.Codigo = Codigo.Text;
            medicamento.IngredienteGenerico = Ingrediente.Text;
            medicamento.Laboratorio=Laboratorio.Text;

            ListaMedicamentos.Add(medicamento);

            string json = JsonConvert.SerializeObject(ListaMedicamentos);
            string archivo = Server.MapPath("medicamentos.json");
            System.IO.File.WriteAllText(archivo, json);
            GridView1.DataSource= ListaMedicamentos; 
            GridView1.DataBind();
        }
    }
}