using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace CEPDI.Models
{
    public class MedicamentosModel:SuperModel
    {
        public string Nombre { get; set; }
        public string Concentracion { get; set; }
        public long IdFormaFarmaceutica { get; set; }
        public string Precio { get; set; }
        public string Presentacion { get; set; }
        public bool Habilitado { get; set; }
        [Description("ignore")]
        public string FormaFarmaceutica { get; set; }


    }
}