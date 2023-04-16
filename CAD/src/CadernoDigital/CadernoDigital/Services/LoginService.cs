using CadernoDigital.Data;
using CadernoDigital.Models;
using CadernoDigital.Services.IServices;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Services
{
    public class LoginService : ILoginService
    {
        private readonly Context _context;

        public LoginService(Context context)
        {
            _context = context;
        }

        public UsuarioModel BuscaLogin(string matricula)
        {
            return _context.Usuario.FirstOrDefault(x => x.Matricula.ToUpper() == matricula.ToUpper());
        }
    }
}
