using CadernoDigital.Data;
using CadernoDigital.Models;
using CadernoDigital.Models.ViewModels;
using CadernoDigital.Services.IServices;
using ControleDeContatos.Helper;
using Microsoft.AspNetCore.Hosting;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Services
{
    public class PublicacaoService : IPublicacaoService
    {
        private readonly Context _context;
        private readonly ISessao _sessao;
        private string _caminhoImagem;

        public PublicacaoService(Context context, ISessao sessao, IWebHostEnvironment caminhoImagem)
        {
            _context = context;
            _sessao = sessao;
            _caminhoImagem = caminhoImagem.WebRootPath;
        }
        public List<PublicacaoViewModel> BucarTodos()
        {
            var pub = _context.Publicacao.ToList();

            List<PublicacaoViewModel> publicacao = new List<PublicacaoViewModel>();

            for (var i = 0; i < pub.Count; i++)
            {
                var result = _context.DisciplinaProfessor.FirstOrDefault(x => x.Id == pub[i].Id_Disciplina_Professor);

                var dis = _context.Disciplina.FirstOrDefault(x => x.Id == result.Id_Disciplina);
                var pro = _context.Professor.FirstOrDefault(x => x.Id == result.Id_Professor);

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

        public Guid BuscarIdDisciplinaProfessor(Guid dis, Guid prof)
        {
            var result = _context.DisciplinaProfessor.Where(x => x.Id_Disciplina == dis && x.Id_Professor == prof).FirstOrDefault();

            return result.Id;

        }

        public string TratarUpload(PublicacaoViewModel pub)
        {
            _caminhoImagem += "\\assets\\imagem\\";
            string nomeImagem = DateTime.Now.ToString("dd-MM-yyyyTHH-mm-ss") + "_" + pub.Imagem.FileName.ToString();
            if (!Directory.Exists(_caminhoImagem))
            {
                Directory.CreateDirectory(_caminhoImagem);
            }
            using (var strem = System.IO.File.Create(
                _caminhoImagem + nomeImagem))
            {
                pub.Imagem.CopyToAsync(strem);
            }

            return nomeImagem;
        }
    }
}
