using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Linq;
using System.Web;
using System.Text;

namespace MyMusic_Project.Utilidad.Seguridad.AlgoritmosEncritacion
{
    public class Encriptacion
    {
        public string GetSha256(string pStrValor, string pStrSemilla)
        {


            UnicodeEncoding ue = new UnicodeEncoding();

            byte[] hashValue;
            byte[] message = ue.GetBytes(pStrValor + pStrSemilla.Substring(2));//concatena el password+ una parte de la semilla (gilbert, seria = lbert)

            SHA256Managed hashString = new SHA256Managed();

            string hashResult = "";

            hashValue = hashString.ComputeHash(message);

            foreach (byte byteX in hashValue)
            {

                hashResult += String.Format("{0:x2}", byteX);

            }

            return hashResult;

        }

    }
}