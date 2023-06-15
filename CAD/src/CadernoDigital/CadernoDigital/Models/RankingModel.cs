using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models
{
    public class RankingModel
    {
        public string Nome { get; set; }

        public string Matricula { get; set; }

        public int Pontuacao { get; set; }

        public RankingModel(string nome, string matricula, int pontuacao)
        {
            Nome = nome;
            Matricula = matricula;
            Pontuacao = pontuacao;
        }

        public RankingModel(string nome, string matricula)
        {
            Nome = nome;
            Matricula = matricula;
        }
    }
}
