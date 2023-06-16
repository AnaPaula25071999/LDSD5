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
                var coment = BuscarComentarios(pub[i].Id);
                var cont = Contador(pub[i].Id);

                publicacao.Add(new PublicacaoViewModel()
                {
                    Publicacao = pub[i],
                    Disciplina = dis,
                    Professor = pro,
                    Comentarios = coment,
                    Contador = cont
                });
            };

            var idUser = _sessao.BuscarSessaoDoUsuario().Id;
            publicacao[0].Usuario = _context.Usuario.FirstOrDefault(x => x.Id.ToString() == idUser.ToString());

            var rank = Ranking();
            for (int i = 0; i < rank.Count(); i++)
            {
                var itensCriados = publicacao.Count();
                if (i < itensCriados)
                {
                    publicacao[i].Ranking = rank[i];
                }
                else
                {
                    publicacao.Add(new PublicacaoViewModel()
                    {
                        Ranking = rank[i]
                    });
                }

            }

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

        public ComentarioModel Comentar(string id, string coment)
        {
            ComentarioModel comentario = new ComentarioModel();
            comentario.Conteudo = coment;
            comentario.Id_Publicacao = Guid.Parse(id);
            comentario.Id_Usuario = _sessao.BuscarSessaoDoUsuario().Id;
            comentario.DataCadastro = DateTime.Now;
            comentario.DataAtualizacao = DateTime.Now;
            _context.Comentario.Add(comentario);
            _context.SaveChanges();
            return comentario;

        }

        public PublicacaoViewModel ComentarioPorId(Guid id)
        {
            PublicacaoViewModel publicacao = new PublicacaoViewModel();
            publicacao.Publicacao = BuscarPorID(id);
            var result = _context.DisciplinaProfessor.FirstOrDefault(x => x.Id == publicacao.Publicacao.Id_Disciplina_Professor);
            publicacao.Professor = BuscarProfessorPorID(result.Id_Professor);
            publicacao.Disciplina = BuscarDisciplinaPorID(result.Id_Disciplina);
            publicacao.Comentarios = BuscarComentarios(id);
            publicacao.Curtida = BuscarCurtida(id);
            publicacao.Contador = Contador(id);
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

        public List<ComentarioViewModel> BuscarComentarios(Guid idPublicacao)
        {
            List<ComentarioModel> result = _context.Comentario.Where(x => x.Id_Publicacao == idPublicacao).ToList();

            List<ComentarioViewModel> comentario = new List<ComentarioViewModel>();

            for (var i = 0; i < result.Count; i++)
            {
                var user = _context.Usuario.FirstOrDefault(x => x.Id == result[i].Id_Usuario);

                comentario.Add(new ComentarioViewModel()
                {
                    Conteudo = result[i].Conteudo,
                    Usuario = user.Nome,
                    Id_Publicacao = result[i].Id_Publicacao,
                });
            };

            return comentario;
        }

        public Guid BuscarIdDisciplinaProfessor(Guid dis, Guid prof)
        {
            var result = _context.DisciplinaProfessor.Where(x => x.Id_Disciplina == dis && x.Id_Professor == prof).FirstOrDefault();

            return result.Id;

        }

        public DisciplinaModel BuscarDisciplinaPorID(Guid id)
        {
            return _context.Disciplina.FirstOrDefault(x => x.Id == id);

        }

        public ProfessorModel BuscarProfessorPorID(Guid id)
        {
            return _context.Professor.FirstOrDefault(x => x.Id == id);

        }


        public void AtualizaCurtida(Guid publicacao)
        {

            var usuario = _sessao.BuscarSessaoDoUsuario().Id;
            var result = _context.Curtida.Where(x => x.Id_Usuario == usuario && x.Id_Publicacao == publicacao).SingleOrDefault();

            CurtidaModel curtida = new CurtidaModel();
            curtida.Id_Publicacao = publicacao;
            curtida.Id_Usuario = usuario;

            if (result == null)
            {
                curtida.DataCadastro = DateTime.Now;
                curtida.DataAtualizacao = DateTime.Now;
                _context.Curtida.Add(curtida);
            }
            else
            {
                _context.Curtida.Remove(result);
            }

            _context.SaveChanges();

        }

        public bool BuscarCurtida(Guid publicacao)
        {
            var usuario = _sessao.BuscarSessaoDoUsuario().Id;
            var result = _context.Curtida.Where(x => x.Id_Usuario == usuario && x.Id_Publicacao == publicacao).SingleOrDefault();

            if (result == null)
            {
                return false;
            }
            else
            {
                return true;
            }

        }

        public ContadorModel Contador(Guid id)
        {
            ContadorModel result = new ContadorModel();
            result.CurtidaQtd = _context.Curtida.Count(x => x.Id_Publicacao == id);
            result.ComentarioQtd = _context.Comentario.Count(x => x.Id_Publicacao == id);

            return result;
        }

        public List<RankingModel> Ranking()
        {
            var users = _context.Usuario.ToList();

            List<RankingModel> ranking = new List<RankingModel>();

            for (var i = 0; i < users.Count(); i++)
            {
                var pub = _context.Publicacao.Where(x => x.Id_Usuario == users[i].Id).ToList();
                ranking.Add(new RankingModel(users[i].Nome.ToString(), users[i].Matricula.ToString()));
                for (var j = 0; j < pub.Count(); j++)
                {
                    var cont = Contador(pub[j].Id);
                    ranking[i].Pontuacao += cont.ComentarioQtd + cont.CurtidaQtd;
                }
            }

            List<RankingModel> result = ranking.OrderByDescending(x => x.Pontuacao).ToList();

            return result;
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
