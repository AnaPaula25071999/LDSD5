using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models.ViewModels
{
    public class PublicacaoViewModel
    {
        public PublicacaoModel Publicacao { get; set; }

        public ProfessorModel Professor { get; set; }

        public DisciplinaModel Disciplina { get; set; }

        public DisciplinaProfessorModel DisciplinaProfessor { get; set; }


        public UsuarioModel Usuario { get; set; }

        public ICollection<ProfessorModel> Professores { get; set; }

        public ICollection<DisciplinaModel> Disciplinas { get; set; }

        public IFormFile Imagem { get; set; }


    }
}

