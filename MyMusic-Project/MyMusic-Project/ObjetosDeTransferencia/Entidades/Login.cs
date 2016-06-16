using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyMusic_Project.ObjetosDeTransferencia.Entidades
{
    public class Login { 

        private int _intIdUsuario;
        private string _strNombreUsuario;
        private string _strPassword;


        public Login()
        {
            _intIdUsuario = 0;
            _strNombreUsuario = string.Empty;
            _strPassword = string.Empty;
       
        }

        #region SETTERS y GETTERS

        public String StrNombreUsuario
        {
            get { return _strNombreUsuario; }
            set { _strNombreUsuario = value; }
        }


        public int IntIdUsuario
        {
            get { return _intIdUsuario; }
            set { _intIdUsuario = value; }
        }

        public String StrPassword
        {
            get { return _strPassword; }
            set { _strPassword = value; }
        }

      
        #endregion
    }
}