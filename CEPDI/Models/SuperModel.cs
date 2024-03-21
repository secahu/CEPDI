using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CEPDI.Models
{
    public class SuperModel
    {
        [Key]
        public long Id { get; set; }
        public DateTime FechaCreacion { get; set; }
        public DateTime FechaModificacion { get; set; }
        public bool Activo { get; set; }
        public string Mensaje { get; set; }
        public SuperModel()
        {
            FechaCreacion = DateTime.Now;
            FechaModificacion = DateTime.Now;
            Activo = true;
        }
    }
}