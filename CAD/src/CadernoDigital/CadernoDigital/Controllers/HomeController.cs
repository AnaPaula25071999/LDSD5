using CadernoDigital.Models;
using CadernoDigital.Services;
using CadernoDigital.Services.IServices;
using ControleDeContatos.Helper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ISessao _sessao;
        private readonly IPublicacaoService _publicacaoService;

        public HomeController(ILogger<HomeController> logger, ISessao sessao, IPublicacaoService publicacaoService)
        {
            _logger = logger;
            _sessao = sessao;
            _publicacaoService = publicacaoService;
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
            return View();
        }

        public IActionResult Editar(Guid id)
        {
            PublicacaoModel contato = _publicacaoService.BuscarPorID(id);
            return View(contato);
        }

        [HttpPost]
        public IActionResult Publicar(PublicacaoModel publicacao)
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }

            try
            {
                if (ModelState.IsValid)
                {
                    publicacao = _publicacaoService.Adicionar(publicacao);

                    TempData["MensagemSucesso"] = "Sucesso na publicação!";
                    return RedirectToAction("Index");
                }

                return View(publicacao);
            }
            catch (Exception ex)
            {
                TempData["MensagemErro"] = $"Ops, não conseguimos realizar sua publicação, tente novamante, detalhe do erro: {ex.Message}";
                return RedirectToAction("Index");
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
