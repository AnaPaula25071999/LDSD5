using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models.ViewModels
{
    public class ComentarioViewModel 
    {
        public string Conteudo { get; set; }

        public string Usuario { get; set; }

        public Guid Id_Publicacao { get; set; }
    }
}
