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
    public partial class AztualizarPaciente : System.Web.UI.Page
    {
        static List<Pacientes> PacienteList = new List<Pacientes>();
        static string NIT;
        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("pacientes.json");
            StreamReader json = File.OpenText(archivo);
            string J = json.ReadToEnd();
            json.Close();
            PacienteList = JsonConvert.DeserializeObject<List<Pacientes>>(J);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NIT = NITPaciente.Text;
            bool flag = false;

            foreach (var u in PacienteList)
            {
                Persona p = u.PacientesLista.Find(c => c.NIT == NIT);
                if (p != null)
                {
                    NombreNuevo.Text = p.Nombre;
                    ApellidoNuevo.Text = p.Apellido;
                    flag = true;
                }
            }
            if (!flag)
            {
                Response.Write("<script>alert('El Paciente no fue encontrado')</script>");
                NIT = "";
                NITPaciente.Text = "";
                ApellidoNuevo.Text = "";
                NombreNuevo.Text = "";
            }
        }
    }
}