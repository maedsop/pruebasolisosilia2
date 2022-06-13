using PruebaOsiliaSoliss.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;

namespace PruebaOsiliaSoliss.Controllers
{
    public class BusquedaController : Controller
    {
        private fabricaEntities db = new fabricaEntities();
        // GET: Busqueda
        public ActionResult Index()
        {
            
            return View(db.Categoria.ToList());
        }

        public ActionResult buscarcategoria(int id)
        {

            var queryProducto = from producto in db.Producto where producto.IdCategoria == id select producto;

            return View(queryProducto);
        }

    }
}