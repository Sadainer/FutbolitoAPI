using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using BLL;
using System.Web.UI.WebControls;

namespace FutbolitoWEB.Formularios
{
    public partial class Login : System.Web.UI.Page
    {

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            //EstablecimientosBLL db = new EstablecimientosBLL();
            //EstablecimientoDTO es = new EstablecimientoDTO();
            //es.Ciudades_IdCiudad = Convert.ToInt32(DropDownCiudades.SelectedValue);
            //es.Nombre = txtEstablecimiento.Value;
            //es.Direccion = txtDireccion.Value;
            //es.Telefono = txtTelefono.Value;
            //es.Celular = txtCelular.Value;
            //es.Correo = inputEmail.Value;
            //es.Estado = "ACTIVO";
            //es.IdEstablecimiento=default(Int32);
            //db.PostEstablecimientos(es);
            claves.Visible = true;
            Registro.Visible = false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            claves.Visible = false;
        }
    }
}