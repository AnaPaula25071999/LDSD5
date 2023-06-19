using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CadernoDigital.Models
{
    public class PreferenciaModel : EntityModel
    {
        public int? Preferencia1 { get; set; }
        public int? Preferencia2 { get; set; }
        public int? Preferencia3 { get; set; }
        public int? Preferencia4 { get; set; }
        public int? Preferencia5 { get; set; }
        public Guid? Id_Usuario { get; set; }
    }
}
