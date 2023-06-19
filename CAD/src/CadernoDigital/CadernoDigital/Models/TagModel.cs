using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models
{
    public class TagModel
    {

        public int Id { get; set; }

        public string Nome { get; set; }

        public string MatriculaUsuario { get; set; }

        public DateTime DataCadastro { get; set; }

        public DateTime DataAtualizacao { get; set; }


        public TagModel(string nome)
        {            
            Nome = nome;
        }
    }
}
