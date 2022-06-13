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
        // GET: Busqueda
        public ActionResult Index()
        {
            ViewModel1 viewModel1 = new ViewModel1();
            return View(viewModel1);
        }

        
    }
}