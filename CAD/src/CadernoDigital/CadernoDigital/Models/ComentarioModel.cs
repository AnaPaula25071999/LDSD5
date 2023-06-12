using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models
{
    public class ComentarioModel : EntityModel
    {
        public string Conteudo { get; set; }

        public Guid Id_Usuario { get; set; }

        public Guid Id_Publicacao { get; set; }
        
    }
}
