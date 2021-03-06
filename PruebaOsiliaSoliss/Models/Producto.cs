//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PruebaOsiliaSoliss.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Producto
    {
        public int idProducto { get; set; }

        [StringLength(40, MinimumLength = 3)]
        [Required]
        public string nombre { get; set; }

        [StringLength(200, MinimumLength = 3)]
        [Required]
        public string descripcion { get; set; }

        [Range(0, 5000000)]
        [Required]
        public int precio { get; set; }

        [Range(0, 1000)]
        [Required]
        public int stock { get; set; }
        public int IdCategoria { get; set; }
        public bool estado { get; set; }
    
        public virtual Categoria Categoria { get; set; }
    }
}
