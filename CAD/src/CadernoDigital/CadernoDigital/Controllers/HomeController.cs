using CadernoDigital.Models;
using CadernoDigital.Models.ViewModels;
using CadernoDigital.Services;
using CadernoDigital.Services.IServices;
using ControleDeContatos.Helper;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Caching.Memory;
using Microsoft.Extensions.Logging;
using Microsoft.Net.Http.Headers;
using System;
using System.Collections.Generic;
using System.Diagnostics;

namespace CadernoDigital.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ISessao _sessao;
        private readonly IPublicacaoService _publicacaoService;
        private readonly IPreferenciaService _preferenciaService;
        private readonly IMemoryCache _memoryCache;
        private string _caminhoImagem;

        public HomeController(ILogger<HomeController> logger, ISessao sessao, IPublicacaoService publicacaoService,
            IPreferenciaService preferenciaService, IMemoryCache memoryCache, IWebHostEnvironment caminhoImagem)
        {
            _logger = logger;
            _sessao = sessao;
            _publicacaoService = publicacaoService;
            _preferenciaService = preferenciaService;
            _memoryCache = memoryCache;
            _caminhoImagem = caminhoImagem.WebRootPath;
        }

        public IActionResult Index()
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }

            List<PublicacaoViewModel> publicacoes = _publicacaoService.BucarTodos();

            return View(publicacoes);
        }

        public IActionResult Criar()
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }
            var disciplinas = _publicacaoService.BuscarDisciplinas();
            var professores = _publicacaoService.BuscarProfessores();
            var tag = _preferenciaService.BuscarPorTags();
            var viewModel = new PublicacaoViewModel { Disciplinas = disciplinas, Professores = professores, Tag = tag };
            return View(viewModel);
        }

        public IActionResult Editar(Guid id)
        {
            PublicacaoModel contato = _publicacaoService.BuscarPorID(id);
            return View(contato);
        }

        public IActionResult Comentar(Guid id)
        {
            PublicacaoViewModel Comentario = _publicacaoService.ComentarioPorId(id);
            SetCache(id);
            return View(Comentario);
        }

        [HttpPost]
        public IActionResult Publicar(PublicacaoViewModel pub)
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }

            pub.Publicacao.Id_Disciplina_Professor = _publicacaoService.BuscarIdDisciplinaProfessor(pub.DisciplinaProfessor.Id_Disciplina, pub.DisciplinaProfessor.Id_Professor);

            try
            {
                if (ModelState.IsValid)
                {
                    pub.Publicacao.Imagem = _publicacaoService.TratarUpload(pub);
                    pub.Publicacao = _publicacaoService.Adicionar(pub.Publicacao);

                    TempData["MensagemSucesso"] = "Sucesso na publicação!";
                    return RedirectToAction("Index");
                }

                return View(pub);
            }
            catch (Exception ex)
            {
                TempData["MensagemErro"] = $"Ops, não conseguimos realizar sua publicação, tente novamante, detalhe do erro: {ex.Message}";
                return RedirectToAction("Criar");
            }
        }

        [HttpPost]
        public IActionResult Editar(PublicacaoModel publicacao)
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }

            try
            {
                if (ModelState.IsValid)
                {
                    publicacao = _publicacaoService.Atualizar(publicacao);
                    TempData["MensagemSucesso"] = "Publicação alterada com sucesso!";
                    return RedirectToAction("Index");
                }

                return View(publicacao);
            }
            catch (Exception erro)
            {
                TempData["MensagemErro"] = $"Ops, não conseguimos atualizar a publicação, tente novamante, detalhe do erro: {erro.Message}";
                return RedirectToAction("Index");
            }
        }

        [HttpPost]
        public IActionResult Comentar(string id, string coment)
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }

            try
            {
                var result = _publicacaoService.Comentar(id, coment);

                TempData["MensagemSucesso"] = "Sucesso na publicação!";

                return Comentar(Guid.Parse(id));
            }
            catch (Exception ex)
            {
                TempData["MensagemErro"] = $"Ops, não conseguimos realizar sua publicação, tente novamante, detalhe do erro: {ex.Message}";
                return RedirectToAction("Comentar");
            }
        }
        
        [HttpPost]
        public IActionResult Curtida()
        {
            var publicacao = Guid.Parse(_memoryCache.Get("Publicacao").ToString());
            _publicacaoService.AtualizaCurtida(publicacao);

            return RedirectToAction("Comentar", new { id = publicacao });
        }

        public void SetCache(Guid id)
        {
            _memoryCache.Set("Publicacao", id);

        }

        public IActionResult GerarSenha()
        {
            Criptografia cript = new Criptografia();
            cript.GerarSenhaCriptografada();
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
