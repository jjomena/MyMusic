using MyMusic_Project.ObjetosDeTransferencia.Entidades;
using MyMusic_Project.Utilidad.Seguridad.AlgoritmosEncritacion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyMusic_Project.Utilidad
{
    public class FachadaUtilidad
    {
        public Login EncriptarContrasena(Login oLogin)
        {
            Encriptacion _Encriptar = new Encriptacion();
            oLogin.StrPassword = _Encriptar.GetSha256(oLogin.StrPassword, oLogin.StrNombreUsuario); //= (new Encriptacion()).GetSha256(oLogin.StrContrasena, oLogin.StrNickname);
            return oLogin;
        }

        public string GetSha256(string pStrValor, string pStrSemilla)
        {
            Encriptacion _Encriptar = new Encriptacion();
            String encriptado = _Encriptar.GetSha256(pStrValor, pStrSemilla);
            return encriptado;// (new Encriptacion()).GetSha256(pStrValor, pStrSemilla);
        }
       
    }
}