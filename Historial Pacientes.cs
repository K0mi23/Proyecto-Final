using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Final
{
    public class Historial_Pacientes:Pacientes
    {
        public string IDConsulta { get; set; }
        public double Temperatura { get; set; }
        public double Presion { get; set; }
        public List<string> Sintomas { get; set; }
        public string Diagnostico { get; set; }
        public List<string> Receta { get; set; }
        public DateTime ProximaVisita { get; set; }
        public double CostoConsulta { get; set; }

        //Image List is missing, we'll see later what does that means.
    }
}