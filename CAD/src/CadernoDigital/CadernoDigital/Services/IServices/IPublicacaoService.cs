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

        ComentarioModel Comentar(string id, string coment);

        PublicacaoViewModel ComentarioPorId(Guid id);

        PublicacaoModel Atualizar(PublicacaoModel publicacao);

        List<DisciplinaModel> BuscarDisciplinas();

        List<ProfessorModel> BuscarProfessores();

        DisciplinaModel BuscarDisciplinaPorID(Guid id);

        ProfessorModel BuscarProfessorPorID(Guid id);

        List<ComentarioViewModel> BuscarComentarios(Guid idPublicacao);

        Guid BuscarIdDisciplinaProfessor(Guid dis, Guid prof);

        void AtualizaCurtida(Guid publicacao);

        string TratarUpload(PublicacaoViewModel pub);


    }
}
