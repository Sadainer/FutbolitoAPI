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
    
    public partial class tarifas
    {
        public tarifas()
        {
            this.tarifaprecios = new HashSet<tarifaprecios>();
        }
    
        public int idTarifa { get; set; }
        public int Canchas_IdCancha { get; set; }
        public Nullable<System.DateTime> FechaInicio { get; set; }
        public Nullable<System.DateTime> FechaFinal { get; set; }
        public string ValorDefault { get; set; }
    
        public virtual canchas canchas { get; set; }
        public virtual ICollection<tarifaprecios> tarifaprecios { get; set; }
    }
}
