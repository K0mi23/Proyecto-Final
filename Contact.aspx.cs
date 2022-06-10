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
    public partial class Contact : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("medicamentos.json");
            StreamReader json = File.OpenText(archivo);
            string J = json.ReadToEnd();
            json.Close();
            Medicamentos.MeicamentosLista = JsonConvert.DeserializeObject<List<Medicamentos>>(J);
            GridView1.DataSource = Medicamentos.MeicamentosLista; GridView1.DataBind();
        }
        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(Medicamentos.MeicamentosLista);
            string archivo = Server.MapPath("medicamentos.json");
            System.IO.File.WriteAllText(archivo, json);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Medicamentos medicamentoActualizar = Medicamentos.MeicamentosLista.Find(x => x.Codigo == Codigo.Text);
            if(medicamentoActualizar == null)
            {
                Response.Write("<script>alert('Medicamento no encontrado!')</script>");
            }
            else
            {
                medicamentoActualizar.Codigo = Codigo.Text;
                medicamentoActualizar.IngredienteGenerico = Ingrediente.Text;
                medicamentoActualizar.Laboratorio = Laboratorio.Text;
            }
            
        }

        protected void Acutalizar_Click(object sender, EventArgs e)
        {
            Medicamentos medicamentoActualizado=Medicamentos.MeicamentosLista.Find(x => x.Codigo == Codigo.Text);
            medicamentoActualizado.Codigo= CodigoActualizado.Text;
            medicamentoActualizado.IngredienteGenerico=IngredienteActualizado.Text;
            medicamentoActualizado.Laboratorio = LaboratorioActualizado.Text;
            Response.Write("<script>alert('Medicamento Actualizado exitosamente!')</script>");
            Guardar();
        }

        protected void IngresarBoton_Click(object sender, EventArgs e)
        {
            Medicamentos medicamento = new Medicamentos();
            medicamento.Codigo = Codigo.Text;
            medicamento.IngredienteGenerico = Ingrediente.Text;
            medicamento.Laboratorio = Laboratorio.Text;
            Medicamentos.MeicamentosLista.Add(medicamento);
            Guardar();

            Response.Write("<script>alert('Medicamento Ingresado exitosamente!')</script>");
        }
    }
}