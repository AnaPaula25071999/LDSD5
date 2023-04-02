using CadernoDigital.Models;
using CadernoDigital.Services;
using CadernoDigital.Services.IServices;
using ControleDeContatos.Helper;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Controllers
{
    public class LoginController : Controller
    {
        private readonly ILoginService _loginService;
        private readonly ISessao _sessao;
        private readonly Criptografia _criptitografia;

        public LoginController(ILoginService loginService, ISessao sessao, Criptografia criptitografia)
        {
            _loginService = loginService;
            _sessao = sessao;
            _criptitografia = criptitografia;
        }

        public IActionResult Index()
        {
            if (_sessao.BuscarSessaoDoUsuario() != null) return RedirectToAction("Index", "Home");
            return View();
        }

        [HttpPost]
        public IActionResult Logar(LoginModel loginModel)
        {

            try
            {
                if (ModelState.IsValid)
                {
                    loginModel.Senha = _criptitografia.Criptografa(loginModel.Senha);
                    UsuarioModel usuario = _loginService.BuscaLogin(loginModel.Login);
                    if (usuario != null)
                    {
                        if (usuario.SenhaValida(loginModel.Senha))
                        {
                            _sessao.CriarSessaoDoUsuario(usuario);
                            return RedirectToAction("Index", "Home");

                        }
                        TempData["MensagemErro"] = $"Senha inválida. Por favor, tente novamente!";
                    }
                    TempData["MensagemErro"] = $"Usuário e/ou senha inválido(s). Por favor, tente novamente!";
                }
                return View("Index");
            }
            catch (Exception ex)
            {
                TempData["MensagemErro"] = $"Falha ao tentar realizar login, tente novamente, detalhe do erro: {ex.Message}";
                return RedirectToAction("Index");
            }
        }

        public IActionResult Deslogar()
        {
            _sessao.RemoverSessaoUsuario();

            return RedirectToAction("Index", "Login");
        }
    }
}
