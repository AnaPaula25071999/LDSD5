using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models
{
    public class PublicacaoModel : EntityModel
    {
        [Required(ErrorMessage = "Digite o conteudo do Texto")]
        public string Conteudo { get; set; }

        public string Titulo { get; set; }

        public string Imagem { get; set; }

        public string Video { get; set; }

        public Guid Id_Usuario { get; set; }

        public Guid Id_Disciplina_Professor { get; set; }

        public int? Preferencia { get; set; }


    }
}