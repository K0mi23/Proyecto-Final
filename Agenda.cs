using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Final
{
    public class Agenda:Pacientes
    {
        public DateTime Cita { get; set; }
        public string HoraInicio { get; set; }
        public string HoraFin { get; set; }
    }
}