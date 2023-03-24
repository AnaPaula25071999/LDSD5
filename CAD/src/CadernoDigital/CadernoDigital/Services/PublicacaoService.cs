using CadernoDigital.Data;
using CadernoDigital.Models;
using CadernoDigital.Services.IServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Services
{
    public class PublicacaoService : IPublicacaoService
    {
        private readonly Context _context;

        public PublicacaoService(Context context)
        {
            _context = context;
        }

        public PublicacaoModel Adicionar(PublicacaoModel publicacao)
        {
            publicacao.DataCadastro = DateTime.Now;
            publicacao.DataAtualizacao = DateTime.Now;
            _context.Publicacao.Add(publicacao);
            _context.SaveChanges();
            return publicacao;
        }
    }
}
