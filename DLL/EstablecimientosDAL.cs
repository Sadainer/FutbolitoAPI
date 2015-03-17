using AutoMapper;
using DAL.Models;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class EstablecimientosDAL
    {
        tucanchaappEntities db = new tucanchaappEntities();
        public void PosEstablecimientos(EstablecimientoDTO Entrada)
        {
            establecimientos var = new establecimientos();
            Mapper.CreateMap<EstablecimientoDTO, establecimientos>();
            Mapper.Map(Entrada, var);
            db.establecimientos.Add(var);
            db.SaveChanges();
        }
    }
}
