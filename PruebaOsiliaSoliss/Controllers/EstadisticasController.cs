using PruebaOsiliaSoliss.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace PruebaOsiliaSoliss.Controllers
{
    public class EstadisticasController : Controller
    {
        private fabricaEntities db = new fabricaEntities();

        // GET: Estadisticas
        public ActionResult Index()
        {
            var promedio = db.Producto.GroupBy(n => n.IdCategoria)
                         .Select(n => new
                         {
                             NumCategoria = n.Key,
                             CantidadProductos = n.Count(),
                             PorcentajeProductos = ((double)n.Count() * 100/db.Producto.Count()),
                             precioPromedio =  n.Average(g => g.precio)

        })
                         .OrderBy(n => n.NumCategoria);
            ViewBag.Datos = promedio;
          
            return View();
        }

      
       
    }
}