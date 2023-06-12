using CadernoDigital.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Data
{
    public class Context : DbContext
    {
        public Context(DbContextOptions<Context> options)
            : base(options)
        {
        }
        public DbSet<UsuarioModel> Usuario { get; set; }
        public DbSet<PublicacaoModel> Publicacao { get; set; }
        public DbSet<DisciplinaModel> Disciplina { get; set; }
        public DbSet<ProfessorModel> Professor { get; set; }
        public DbSet<ComentarioModel> Comentario { get; set; }
        public DbSet<CurtidaModel> Curtida { get; set; }
        public DbSet<DisciplinaProfessorModel> DisciplinaProfessor { get; set; }

    }
}
