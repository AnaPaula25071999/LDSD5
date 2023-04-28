using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace CadernoDigital.Services
{
    public class Criptografia
    {

        public string Criptografa(string valor)
        {
            var md5 = MD5.Create();
            byte[] bytes = Encoding.ASCII.GetBytes(valor);
            byte[] cript = md5.ComputeHash(bytes);

            StringBuilder result = new StringBuilder();
            for (int i = 0; i < cript.Length; i++)
            {
                result.Append(cript[i].ToString("X2"));
            }

            return result.ToString();
        }


        public void GerarSenhaCriptografada()
        {
            string senha = Criptografa(Console.ReadLine());

            Console.WriteLine(senha);
        }

    }
}
