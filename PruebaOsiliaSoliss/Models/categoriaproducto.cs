using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using PruebaOsiliaSoliss.Models;

namespace PruebaOsiliaSoliss.Models
{
    public class categoriaproducto
    {
        [Table("Producto")]
        public class Producto
        {
            [Key]
            public int idProducto { get; set; }

            public string nombre { get; set; }
            public string descripcion { get; set; }
            public int precio { get; set; }
            public int stock { get; set; }
            [ForeignKey("Categoria")]
            public int idCategoria { get; set; }
            public bool estado { get; set; }
            public virtual Categoria Categoria { get; set; }
        }

        [Table("Categoria")]
        public class Categoria
        {
            [Key]
            public int idCategoria { get; set; }

            public string nombre { get; set; }
        }
    }
}