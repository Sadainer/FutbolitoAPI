using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;

namespace BLL
{
    public class CiudadesBLL
    {
        CiudadesDAL Dal = new CiudadesDAL();
        public List<CiudadesDTO> GetCiudades(int Nit)
        {
            return Dal.GetCiudades(Nit);
        }
        public List<CiudadesDTO> GetListadoCiudades()
        {
            return Dal.Getlistadociudades();
        }
        public List<DptoDTO> GetDptos()
        {
            return Dal.GetDptos();
        }

    }
}
