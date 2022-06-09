using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Final
{
    public class Pacientes:Persona
    {   
        public string Direccion { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string Telefono { get; set; }
        public List<Pacientes> PacientesLista { get; set;}
    }
}