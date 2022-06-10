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
        public static List<Medicamentos> ListaMedicamentos = new List<Medicamentos>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(ListaMedicamentos);
            string archivo = Server.MapPath("medicamentos.json");
            System.IO.File.WriteAllText(archivo, json);
            GridView1.DataSource = ListaMedicamentos;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Medicamentos medicamento = new Medicamentos();
            medicamento.Codigo = Codigo.Text;
            medicamento.IngredienteGenerico = Ingrediente.Text;
            medicamento.Laboratorio=Laboratorio.Text;
            ListaMedicamentos.Add(medicamento);
            Guardar();
            Response.Write("<script>alert('Medicamento Ingresado exitosamente!')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Medicamentos medicamentoActualizar = Medicamentos.MeicamentosLista.Find(x => x.Codigo == Codigo.Text);
            medicamentoActualizar.Codigo = Codigo.Text;
            medicamentoActualizar.IngredienteGenerico= Ingrediente.Text;
            medicamentoActualizar.Laboratorio = Laboratorio.Text;
        }
    }
}