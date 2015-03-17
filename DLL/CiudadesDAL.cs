using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AutoMapper;
using System.Threading.Tasks;
using DAL.Models;
using DTO;


namespace DAL
{
    public class CiudadesDAL
    {
        tucanchaappEntities db = new tucanchaappEntities();
        public List<CiudadesDTO> GetCiudades(int Nit)
        {
            List<CiudadesDTO> Ciu = new List<CiudadesDTO>();
            Mapper.CreateMap<ciudades, CiudadesDTO>();
            Mapper.Map(db.ciudades.Where(t => t.Departamento_idDepartamento == Nit).ToList(), Ciu);
            return Ciu;
        }
        public List<CiudadesDTO> Getlistadociudades()
        {
            List<CiudadesDTO> Ciu = new List<CiudadesDTO>();
            Mapper.CreateMap<listadociudades, CiudadesDTO>();
            Mapper.Map(db.listadociudades.ToList(), Ciu);
            return Ciu;
        }

        public List<DptoDTO> GetDptos()
        {
            List<DptoDTO> Ciu = new List<DptoDTO>();
            Mapper.CreateMap<departamentos, DptoDTO>();
            Mapper.Map(db.departamentos.ToList(), Ciu);
            return Ciu;
        }
        
    }
}
