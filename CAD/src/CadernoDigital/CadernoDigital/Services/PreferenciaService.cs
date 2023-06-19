using CadernoDigital.Data;
using CadernoDigital.Models;
using CadernoDigital.Services.IServices;
using ControleDeContatos.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Services
{
    public class PreferenciaService : IPreferenciaService
    {
        private readonly Context _context;
        private readonly ISessao _sessao;

        public PreferenciaService(Context context, ISessao sessao)
        {
            _context = context;
            _sessao = sessao;
        }


        public PreferenciaModel Adicionar(PreferenciaModel preferencia)
        {
            preferencia.DataCadastro = DateTime.Now;
            preferencia.DataAtualizacao = DateTime.Now;
            preferencia.Id_Usuario = _sessao.BuscarSessaoDoUsuario().Id;
            _context.Preferencia.Add(preferencia);
            _context.SaveChanges();
            return preferencia;
        }

        public PreferenciaModel BuscarPorIdUser()
        {
            return _context.Preferencia.FirstOrDefault(x => x.Id_Usuario == _sessao.BuscarSessaoDoUsuario().Id);
        }

        public List<TagModel> BuscarPorTags()
        {
            return _context.Tag.ToList();
        }

        public List<TagModel> BuscarTagPorPreferencia(PreferenciaModel preferencia)
        {
            List<TagModel> tag = new List<TagModel>();
            if (preferencia.Preferencia1 != null)
            {
                var pref1 = _context.Tag.FirstOrDefault(x => x.Id == preferencia.Preferencia1);
                tag.Add(new TagModel(pref1.Nome));
            }
            if (preferencia.Preferencia2 != null) { 
                var pref2 = _context.Tag.FirstOrDefault(x => x.Id == preferencia.Preferencia2);
                tag.Add(new TagModel(pref2.Nome));
            }
            if (preferencia.Preferencia3 != null) 
            { 
                var pref3 = _context.Tag.FirstOrDefault(x => x.Id == preferencia.Preferencia3);
                tag.Add(new TagModel(pref3.Nome));
            }
            if (preferencia.Preferencia4 != null) 
            { 
                var pref4 = _context.Tag.FirstOrDefault(x => x.Id == preferencia.Preferencia4);
                tag.Add(new TagModel(pref4.Nome));
            }
            if (preferencia.Preferencia5 != null) 
            { 
                var pref5 = _context.Tag.FirstOrDefault(x => x.Id == preferencia.Preferencia5);
                tag.Add(new TagModel(pref5.Nome));
            }
            return tag;

        }

        public PreferenciaModel Salvar(PreferenciaModel preferencia)
        {
            PreferenciaModel preferenciaDB = BuscarPorIdUser();
            if (preferenciaDB == null)
            {
                preferencia.DataCadastro = DateTime.Now;
                preferencia.DataAtualizacao = DateTime.Now;
                preferencia.Id_Usuario = _sessao.BuscarSessaoDoUsuario().Id;
                _context.Preferencia.Add(preferencia);
                _context.SaveChanges();
            }
            else
            {
                preferenciaDB.Preferencia1 = preferencia.Preferencia1;
                preferenciaDB.Preferencia2 = preferencia.Preferencia2;
                preferenciaDB.Preferencia3 = preferencia.Preferencia3;
                preferenciaDB.Preferencia4 = preferencia.Preferencia4;
                preferenciaDB.Preferencia5 = preferencia.Preferencia5;
                preferenciaDB.DataAtualizacao = DateTime.Now;
                _context.Preferencia.Update(preferenciaDB);
                _context.SaveChanges();
            }
            return preferenciaDB;
        }
    }
}
