using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final
{
    public partial class About : Page
    {
        List<Agenda> AgendaCitas = new List<Agenda>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(AgendaCitas);
            string archivo = Server.MapPath("Agenda.json");
            System.IO.File.WriteAllText(archivo, json);
        }
        protected void AgendarCita_Click(object sender, EventArgs e)
        {
            Agenda Cita = new Agenda();
            Cita.NIT = NitPaciente.Text; 
            Cita.Nombre=Nombrepaciente.Text;
            Cita.Apellido = ApellidoPaciente.Text;
            Cita.Cita = FechaCita.SelectedDate;
            Cita.HoraInicio = HoraInicial.Text;
            Cita.HoraFin = HoraFinal.Text;
            AgendaCitas.Add(Cita);
            
            Guardar(); GridView1.DataSource = AgendaCitas; GridView1.DataBind();

        }
    }
}