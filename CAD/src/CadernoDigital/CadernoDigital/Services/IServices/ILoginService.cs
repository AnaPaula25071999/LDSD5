using CadernoDigital.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Services.IServices
{
    public interface ILoginService
    {
        UsuarioModel BuscaLogin(string matricula);
    }
}
