using CadernoDigital.Models;
using CadernoDigital.Services.IServices;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Controllers
{
    public class PublicacaoController : Controller
    {
        private readonly IPublicacaoService _publicacaoService;

        public PublicacaoController(IPublicacaoService publicacaoService)
        {
            _publicacaoService = publicacaoService;
        }

        public IActionResult Criar()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Publicar(PublicacaoModel publicacao)
        {
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
    }
}
