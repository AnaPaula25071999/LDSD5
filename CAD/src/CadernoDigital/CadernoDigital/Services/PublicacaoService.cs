using CadernoDigital.Data;
using CadernoDigital.Models;
using CadernoDigital.Services.IServices;
using ControleDeContatos.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Services
{
    public class PublicacaoService : IPublicacaoService
    {
        private readonly Context _context;
        private readonly ISessao _sessao;

        public PublicacaoService(Context context, ISessao sessao)
        {
            _context = context;
            _sessao = sessao;
        }
        public List<PublicacaoModel> BucarTodos()
        {
            return _context.Publicacao.ToList();
        }

        public PublicacaoModel BuscarPorID(Guid id)
        {
            return _context.Publicacao.FirstOrDefault(x => x.Id == id);
        }

        public PublicacaoModel Adicionar(PublicacaoModel publicacao)
        {
            publicacao.DataCadastro = DateTime.Now;
            publicacao.DataAtualizacao = DateTime.Now;
            publicacao.Nome = _sessao.BuscarSessaoDoUsuario().Nome.ToString();
            _context.Publicacao.Add(publicacao);
            _context.SaveChanges();
            return publicacao;
        }


        public PublicacaoModel Atualizar(PublicacaoModel publicacao)
        {
            PublicacaoModel publicacaoDB = BuscarPorID(publicacao.Id);
            if (publicacaoDB == null) throw new Exception("Houve um erro na atualização do publicacao!");

            publicacaoDB.ConteudoTexto = publicacao.ConteudoTexto;
            publicacaoDB.Nome = publicacao.Nome;
            publicacaoDB.DataAtualizacao = DateTime.Now;
            _context.Publicacao.Update(publicacaoDB);
            _context.SaveChanges();

            return publicacaoDB;
        }
    }
}
