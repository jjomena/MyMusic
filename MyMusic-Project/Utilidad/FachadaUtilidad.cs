using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilidad.Seguridad;

namespace Utilidad
{
    class FachadaUtilidad
    {
        public Login EncriptarContrasena(Login oLogin)
        {
            oLogin.StrContrasena = (new Encriptacion()).GetSha256(oLogin.StrContrasena, oLogin.StrNickname);
            return oLogin;
        }
        public string GetSha256(string pStrValor, string pStrSemilla)
        {
            return (new Encriptacion()).GetSha256(pStrValor, pStrSemilla);
        }
        public int ObtenerNivelDeAcceso(string sessionId)
        {
            return (new NivelesDeAccesoUsuarios()).ObtenerNivelDeAcceso(sessionId);
        }

        public Usuario EncriptarContrasena(Usuario oUsuario)
        {
            oUsuario.StrContrasena = (new Encriptacion()).GetSha256(oUsuario.StrContrasena, oUsuario.StrLogin);
            return oUsuario;
        }
    }
}
