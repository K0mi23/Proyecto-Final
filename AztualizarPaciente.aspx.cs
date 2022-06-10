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
        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(PacienteList);
            string archivo = Server.MapPath("pacientes.json");
            System.IO.File.WriteAllText(archivo, json);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Pacientes paciente = Pacientes.PacientesLista.Find(x => x.NIT == NIT);
            paciente.Nombre = NombreNuevo.Text;
            paciente.Apellido= ApellidoNuevo.Text;
            paciente.Direccion = Direccion.Text;
            paciente.FechaNacimiento = FNacimiento.SelectedDate;
            paciente.Telefono = Telefono.Text;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Pacientes paciente = Pacientes.PacientesLista.Find(x => x.NIT == NIT);
            paciente.NIT = NITPaciente.Text;
            paciente.Nombre = NombreNuevo.Text;
            paciente.Apellido = ApellidoNuevo.Text;
            paciente.Direccion = Direccion.Text;
            paciente.FechaNacimiento = FNacimiento.SelectedDate;
            paciente.Telefono = Telefono.Text;
            Guardar();
        }
    }
}