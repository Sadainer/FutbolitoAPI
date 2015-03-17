using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class CiudadesDTO
    {
        public int IdCiudad { get; set; }
        public string Ciudad { get; set; }
        public int Departamento_idDepartamento { get; set; }
    }

    public class DptoDTO
    {
        public int idDepartamento { get; set; }
        public string Departamento { get; set; }
    }

    public class EstablecimientoDTO
    {
        public int IdEstablecimiento { get; set; }
        public int Ciudades_IdCiudad { get; set; }
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public string Correo { get; set; }
        public string Estado { get; set; }
    }
}
