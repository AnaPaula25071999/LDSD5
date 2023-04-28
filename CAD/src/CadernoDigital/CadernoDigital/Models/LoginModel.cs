using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models
{
    public class LoginModel
    {
        [Required(ErrorMessage = "Digite o login")]
        public string Matricula { get; set; }
        [Required(ErrorMessage = "Digite a senha")]
        public string Senha { get; set; }

    }
}
