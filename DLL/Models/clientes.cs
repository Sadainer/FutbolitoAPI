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
    
    public partial class clientes
    {
        public clientes()
        {
            this.reservas = new HashSet<reservas>();
        }
    
        public string IdCliente { get; set; }
        public string Nombre { get; set; }
        public string Contraseña { get; set; }
        public string Celular { get; set; }
        public string Correo { get; set; }
        public Nullable<short> Calificacion { get; set; }
        public string Foto { get; set; }
    
        public virtual ICollection<reservas> reservas { get; set; }
    }
}
