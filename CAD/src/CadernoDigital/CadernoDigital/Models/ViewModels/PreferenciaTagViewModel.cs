using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models.ViewModels
{
    public class PreferenciaTagViewModel
    {
        public PreferenciaModel Preferencia { get; set; }

        public ICollection<TagModel> Tags { get; set; }
    }
}
