using CadernoDigital.Data;
using CadernoDigital.Models.ViewModels;
using CadernoDigital.Services.IServices;
using ControleDeContatos.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Services
{
    public class UsuarioService : IUsuarioService
    {
        private readonly Context _context;
        private readonly ISessao _sessao;

        public UsuarioService(Context context, ISessao sessao)
        {
            _context = context;
            _sessao = sessao;
        }

        public List<PublicacaoViewModel> BucarTodos()
        {
            var idUser = _sessao.BuscarSessaoDoUsuario().Id;
            var pub = _context.Publicacao.Where(x => x.Id_Usuario == idUser).ToList();

            List<PublicacaoViewModel> publicacao = new List<PublicacaoViewModel>();

            for (var i = 0; i < pub.Count; i++)
            {
                var dis = _context.Disciplina.FirstOrDefault(x => x.Id == pub[i].Id_Disciplina);
                var pro = _context.Professor.FirstOrDefault(x => x.Id == pub[i].Id_Professor);
                var user = _context.Usuario.FirstOrDefault(x => x.Id == pub[i].Id_Usuario);

                publicacao.Add(new PublicacaoViewModel()
                {
                    Publicacao = pub[i],
                    Disciplina = dis,
                    Professor = pro,
                    Usuario =user
                });
            };

            return publicacao;
        }
    }
}
