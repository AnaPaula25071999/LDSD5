using CadernoDigital.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Services.IServices
{
    public interface IUsuarioService
    {
        List<PublicacaoViewModel> BucarTodos();
    }
}
