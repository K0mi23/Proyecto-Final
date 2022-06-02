using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Proyecto_Final
{
    public partial class _Default : Page
    {
        List<Pacientes> pacientesLista = new List<Pacientes>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(pacientesLista);
            string archivo = Server.MapPath("pacientes.json");
            System.IO.File.WriteAllText(archivo, json);
        }
        protected void BotonGuardar_Click(object sender, EventArgs e)
        {
           Pacientes pacienteNuevo = new Pacientes();
            pacienteNuevo.NIT = NIT_Textbox.Text;
            pacienteNuevo.Nombre = Nombre_Textbox.Text;
            pacienteNuevo.Apellido= Apellido_Textbox.Text;
            pacienteNuevo.Direccion=Direccion_Textbox.Text;
            pacienteNuevo.FechaNacimiento = FNacimiento_Calendar.SelectedDate;
            pacienteNuevo.Telefono=Telefono_Textbox.Text;

            pacientesLista.Add(pacienteNuevo);Guardar(); 
            InformacionPaciente.DataSource = pacientesLista; InformacionPaciente.DataBind(); 
        }
    }
}