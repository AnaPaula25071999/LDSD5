using CadernoDigital.Models;
using CadernoDigital.Models.ViewModels;
using CadernoDigital.Services.IServices;
using ControleDeContatos.Helper;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Controllers
{
    public class PreferenciaController : Controller
    {
        private readonly ISessao _sessao;
        private readonly IPreferenciaService _preferenciaService;

        public PreferenciaController(ISessao sessao, IPreferenciaService preferenciaService)
        {
            _sessao = sessao;
            _preferenciaService = preferenciaService;
        }

        public IActionResult Index()
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }
            var preferencia = _preferenciaService.BuscarPorIdUser();
            var tags = _preferenciaService.BuscarPorTags();
            var viewModel = new PreferenciaTagViewModel { Preferencia = preferencia, Tags = tags };

            return View(viewModel);
        }

        [HttpPost]
        public IActionResult Salvar(PreferenciaModel preferencia)
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }

            try
            {
                if (ModelState.IsValid)
                {
                    preferencia = _preferenciaService.Salvar(preferencia);
                    TempData["MensagemSucesso"] = "As preferências foram salva com sucesso!";
                    return RedirectToAction("Index", "Home");
                }

                return View(preferencia);
            }
            catch (Exception erro)
            {
                TempData["MensagemErro"] = $"Ops, não conseguimos atualizar a publicação, tente novamante, detalhe do erro: {erro.Message}";
                return RedirectToAction("Index");
            }
        }
    }
}
