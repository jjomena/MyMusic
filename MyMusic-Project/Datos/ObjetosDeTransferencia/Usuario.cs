using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.ObjetosDeTransferencia
{
    public class Usuario
    {
        private string _strUsuario;
        private string _strPassword;
        private string _strCorreo;
        private string _strFoto;

        public Usuario()
        {
            _strUsuario = string.Empty;
            _strPassword = string.Empty;
            _strCorreo = string.Empty;
            _strFoto = string.Empty;
        }
        public string StrUsuario
        {
            get { return _strUsuario; }
            set { _strUsuario = value; }
        }

        public string StrPassword
        {
            get { return _strPassword; }
            set { _strPassword = value; }
        }
        public string StrCorreo
        {
            get { return _strCorreo; }
            set { _strCorreo = value; }
        }
        public string StrFoto
        {
            get { return _strFoto; }
            set { _strFoto = value; }
        }


    }
}
