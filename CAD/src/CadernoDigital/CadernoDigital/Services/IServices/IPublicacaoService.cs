using CadernoDigital.Models;
using CadernoDigital.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Services.IServices
{
    public interface IPublicacaoService
    {
        List<PublicacaoViewModel> BucarTodos();

        PublicacaoModel BuscarPorID(Guid id);

        PublicacaoModel Adicionar(PublicacaoModel publicacao);

        PublicacaoModel Atualizar(PublicacaoModel publicacao);

        List<DisciplinaModel> BuscarDisciplinas();

        List<ProfessorModel> BuscarProfessores();

    }
}
