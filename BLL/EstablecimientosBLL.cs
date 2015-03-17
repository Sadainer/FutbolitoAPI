using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;

namespace BLL
{
    public class EstablecimientosBLL
    {
        EstablecimientosDAL Dal = new EstablecimientosDAL();
        public void PostEstablecimientos(EstablecimientoDTO Entrada)
        {
           Dal.PosEstablecimientos(Entrada);
        }
    }
}
