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
    
    public partial class tarifaprecios
    {
        public int IdTarifaPrecio { get; set; }
        public int Tarifas_idTarifa { get; set; }
        public Nullable<short> DiaSemanaInicio { get; set; }
        public Nullable<short> DiaSemanaFinal { get; set; }
        public Nullable<short> HoraInicio { get; set; }
        public Nullable<short> HoraFinal { get; set; }
        public string Valor { get; set; }
    
        public virtual tarifas tarifas { get; set; }
    }
}
