using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Final
{
    public class Medicamentos
    {
        public string Codigo { get; set; }
        public string IngredienteGenerico { get; set; }
        public string Laboratorio { get; set; }
        public List<string> EnfermedadesaRecetar = new List<string>();
        public static List<Medicamentos> MeicamentosLista = new List<Medicamentos>();
    }
}