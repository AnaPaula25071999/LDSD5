using CadernoDigital.Data;
using CadernoDigital.Models;
using CadernoDigital.Models.ViewModels;
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
        public List<PublicacaoViewModel> BucarTodos()
        {
            var pub = _context.Publicacao.ToList();

            List<PublicacaoViewModel> publicacao = new List<PublicacaoViewModel>();

            for (var i = 0; i < pub.Count; i++)
            {
                var dis = _context.Disciplina.FirstOrDefault(x => x.Id == pub[i].Id_Disciplina);
                var pro = _context.Professor.FirstOrDefault(x => x.Id == pub[i].Id_Professor);

                publicacao.Add(new PublicacaoViewModel()
                {
                    Publicacao = pub[i],
                    Disciplina = dis,
                    Professor = pro
                });
            };

            return publicacao;
        }

        public PublicacaoModel BuscarPorID(Guid id)
        {
            return _context.Publicacao.FirstOrDefault(x => x.Id == id);
        }

        public PublicacaoModel Adicionar(PublicacaoModel publicacao)
        {
            publicacao.DataCadastro = DateTime.Now;
            publicacao.DataAtualizacao = DateTime.Now;
            publicacao.Id_Usuario = _sessao.BuscarSessaoDoUsuario().Id;
            _context.Publicacao.Add(publicacao);
            _context.SaveChanges();
            return publicacao;
        }


        public PublicacaoModel Atualizar(PublicacaoModel publicacao)
        {
            PublicacaoModel publicacaoDB = BuscarPorID(publicacao.Id);
            if (publicacaoDB == null) throw new Exception("Houve um erro na atualização do publicacao!");

            publicacaoDB.Conteudo = publicacao.Conteudo;
            publicacaoDB.Id_Usuario = _sessao.BuscarSessaoDoUsuario().Id;
            publicacaoDB.DataAtualizacao = DateTime.Now;
            _context.Publicacao.Update(publicacaoDB);
            _context.SaveChanges();

            return publicacaoDB;
        }

        public List<DisciplinaModel> BuscarDisciplinas()
        {
            return _context.Disciplina.ToList();
        }

        public List<ProfessorModel> BuscarProfessores()
        {
            return _context.Professor.ToList();
        }
    }
}
