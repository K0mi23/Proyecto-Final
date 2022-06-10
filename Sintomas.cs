using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Final
{
    public class Sintomas
    {
        public string CodigoSintoma { get; set; }
        public string DescripcionSintoma { get; set; }

        public static List<Sintomas> Lista_Sintomas = new List<Sintomas>();

    }
}