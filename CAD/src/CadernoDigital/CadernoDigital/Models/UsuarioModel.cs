using CadernoDigital.Models.Enums;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models
{
    public class UsuarioModel : EntityModel
    { 

        [Required(ErrorMessage = "Digite a matricula no formato GU0000000")]
        public string Matricula { get; set; }

        [Required(ErrorMessage = "Digite o nome do usuário")]
        public string Nome { get; set; }

        [Required(ErrorMessage = "Digite o e-mail do usuário")]
        [EmailAddress(ErrorMessage = "O e-mail informado não é valido!")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Informe o perfil do usuário")]
        public PerfilEnum? Perfil { get; set; }

        [Required(ErrorMessage = "Digite a senha do usuário")]
        public string Senha { get; set; }

        public bool SenhaValida(string senha)
        {
            return Senha == senha;
        }

    }
}
