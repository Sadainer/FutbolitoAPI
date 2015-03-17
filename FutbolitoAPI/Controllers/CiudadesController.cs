using BLL;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace FutbolitoAPI.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    [RoutePrefix("api")]
    public class CiudadesController : ApiController
    {
        CiudadesBLL db = new CiudadesBLL();
        // GET api/ciudades

        [Route("ciudades/listado")]
        public IEnumerable<CiudadesDTO> Get()
        {
            return db.GetListadoCiudades();
        }

        // GET api/ciudades/5
        [Route("ciudades/{IdDpto}")]
        public IHttpActionResult Get(int IdDpto)
        {
            List<CiudadesDTO> Dpto = db.GetCiudades(IdDpto);
            if (Dpto.Count == 0)
            {
                return NotFound();
            }
            return Ok(Dpto);
        }

        [Route("dpto/listado")]
        public IEnumerable<DptoDTO> GetDptos()
        {
            return db.GetDptos();
        }

        // POST api/ciudades
        public void Post([FromBody]string value)
        {
        }

        // PUT api/ciudades/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/ciudades/5
        public void Delete(int id)
        {
        }
    }
}
