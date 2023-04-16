using CadernoDigital.Models;
using CadernoDigital.Models.ViewModels;
using CadernoDigital.Services;
using CadernoDigital.Services.IServices;
using ControleDeContatos.Helper;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;

namespace CadernoDigital.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ISessao _sessao;
        private readonly IPublicacaoService _publicacaoService;
        private string _caminhoImagem;

        public HomeController(ILogger<HomeController> logger, ISessao sessao, IPublicacaoService publicacaoService,
            IWebHostEnvironment caminhoImagem)
        {
            _logger = logger;
            _sessao = sessao;
            _publicacaoService = publicacaoService;
            _caminhoImagem = caminhoImagem.WebRootPath;
        }

        public IActionResult Index()
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }

            List<PublicacaoModel> publicoes = _publicacaoService.BucarTodos();

            return View(publicoes);
        }

        public IActionResult Criar()
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }
            var disciplinas = _publicacaoService.BuscarDisciplinas();
            var professores = _publicacaoService.BuscarProfessores();
            var viewModel = new PublicacaoViewModel { Disciplinas = disciplinas, Professores = professores };
            return View(viewModel);
        }

        public IActionResult Editar(Guid id)
        {
            PublicacaoModel contato = _publicacaoService.BuscarPorID(id);
            return View(contato);
        }

        [HttpPost]
        public IActionResult Publicar(PublicacaoViewModel pub)
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }

            try
            {
                if (ModelState.IsValid)
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
                    
                    pub.Publicacao.Imagem = _caminhoImagem + nomeImagem;
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
