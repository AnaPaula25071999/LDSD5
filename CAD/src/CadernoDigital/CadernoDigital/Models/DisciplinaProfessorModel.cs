using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models
{
    public class DisciplinaProfessorModel : EntityModel
    {
        public Guid Id_Disciplina { get; set; }

        public Guid Id_Professor { get; set; }

        public string DiaAula { get; set; }

        public string HorarioInicioAula { get; set; }

        public string HorarioFimAula { get; set; }
    }
}
