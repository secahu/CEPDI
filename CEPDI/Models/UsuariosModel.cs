using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CEPDI.Models
{
    public class UsuariosModel:SuperModel
    {
        public string Nombre { get; set; }
        public string Usuario { get; set; }
        public string Password { get; set; }
        public bool Estatus { get; set; }

    }
}