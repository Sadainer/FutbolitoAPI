//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class establecimientos
    {
        public establecimientos()
        {
            this.canchas = new HashSet<canchas>();
            this.fotoestablecimientos = new HashSet<fotoestablecimientos>();
        }
    
        public int IdEstablecimiento { get; set; }
        public int Ciudades_IdCiudad { get; set; }
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public string Correo { get; set; }
        public string Estado { get; set; }
    
        public virtual ICollection<canchas> canchas { get; set; }
        public virtual ciudades ciudades { get; set; }
        public virtual ICollection<fotoestablecimientos> fotoestablecimientos { get; set; }
    }
}
