using CadernoDigital.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Services.IServices
{
    public interface IPublicacaoService
    {
        List<PublicacaoModel> BucarTodos();

        PublicacaoModel BuscarPorID(Guid id);

        PublicacaoModel Adicionar(PublicacaoModel publicacao);

        PublicacaoModel Atualizar(PublicacaoModel publicacao);

    }
}
