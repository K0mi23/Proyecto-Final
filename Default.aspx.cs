using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Proyecto_Final
{
    public partial class _Default : Page
    {
        List<Pacientes> pacientesLista = new List<Pacientes>();
        List<Hospital> PacienteINFO = new List<Hospital>();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        private void Limpiar()
        {
            NIT_Textbox.Text = "";
            Nombre_Textbox.Text = "";
            Apellido_Textbox.Text = "";
            Direccion_Textbox.Text = "";
            Telefono_Textbox.Text = "";
            FNacimiento_Calendar.VisibleDate= DateTime.Now;
            InformacionPaciente.DataSource = null; InformacionPaciente.DataBind();  
        }
        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(pacientesLista);
            string archivo = Server.MapPath("pacientes.json");
            File.WriteAllText(archivo, json);
        } 
        protected void BotonGuardar_Click(object sender, EventArgs e)
        {
            Pacientes pacienteNuevo = new Pacientes();
            pacienteNuevo.NIT = NIT_Textbox.Text;
            pacienteNuevo.Nombre = Nombre_Textbox.Text;
            pacienteNuevo.Apellido = Apellido_Textbox.Text;
            pacienteNuevo.Direccion = Direccion_Textbox.Text;
            pacienteNuevo.FechaNacimiento = FNacimiento_Calendar.SelectedDate;
            pacienteNuevo.Telefono = Telefono_Textbox.Text;
            pacientesLista.Add(pacienteNuevo);
            Guardar();
            InformacionPaciente.DataSource = pacientesLista; InformacionPaciente.DataBind();
            Response.Write("<script>alert('Paciente Ingresado exitosamente!')</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}