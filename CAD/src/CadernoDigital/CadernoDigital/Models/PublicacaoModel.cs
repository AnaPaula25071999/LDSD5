using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models
{
    public class PublicacaoModel
    {
        public Guid Id { get; set; }

        [Required(ErrorMessage = "Digite o conteudo do Texto")]
        public string ConteudoTexto { get; set; }

        public string ConteudoImagem { get; set; }

        public string Nome { get; set; }

        public DateTime DataCadastro { get; set; }

        public DateTime? DataAtualizacao { get; set; }

    }
}