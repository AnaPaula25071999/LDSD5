using CadernoDigital.Models.ViewModels;
using CadernoDigital.Services.IServices;
using ControleDeContatos.Helper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Controllers
{
    public class UsuarioController : Controller
    {
        private readonly ISessao _sessao;
        private readonly IUsuarioService _usuarioService;

        public UsuarioController(ISessao sessao, IUsuarioService usuarioService)
        {
            _sessao = sessao;
            _usuarioService = usuarioService;
        }

        public IActionResult Index()
        {
            if (_sessao.BuscarSessaoDoUsuario() == null)
            {
                return RedirectToAction("Index", "Login");
            }

            List<PublicacaoViewModel> result = _usuarioService.BucarTodos();

            return View(result);
        }
    }
}
