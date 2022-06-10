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
    public partial class EliminarAgenda : System.Web.UI.Page
    {
        static List<Agenda> AgendaCitas = new List<Agenda>();
        static string NITPacientev;
        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Agenda.json");
            StreamReader json = File.OpenText(archivo);
            string J = json.ReadToEnd();
            json.Close();
            AgendaCitas = JsonConvert.DeserializeObject<List<Agenda>>(J);
        }

        protected void BuscarCita_Click(object sender, EventArgs e)
        {
           
        }
    }
}