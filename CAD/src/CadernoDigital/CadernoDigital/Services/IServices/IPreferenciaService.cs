using CadernoDigital.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Services.IServices
{
    public interface IPreferenciaService
    {
        PreferenciaModel Adicionar(PreferenciaModel preferencia);

        PreferenciaModel BuscarPorIdUser();

        List<TagModel> BuscarPorTags();

        PreferenciaModel Salvar(PreferenciaModel preferencia);

        List<TagModel> BuscarTagPorPreferencia(PreferenciaModel preferencia);
    }
}
