using Datos.ObjetosDeTransferencia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.ADEntidades
{
    class UsuarioAD
    {
        public int RegistrarUsuario(Fanatico pFanatico)
        {
            string strQuery = string.Empty;
            int intResultado = 0;
            try
            {
                this.AbrirConexion();
                strQuery = "registrarAdministrador";
                SqlCommand cmdComando = new SqlCommand(strQuery, this.OConexion);
                cmdComando.CommandType = CommandType.StoredProcedure;

                cmdComando.Parameters.AddWithValue("@StrApellido", pFanatico.StrApellido);
                cmdComando.Parameters.AddWithValue("@StrContrasena", pFanatico.StrContrasena);
                cmdComando.Parameters.AddWithValue("@StrLogin", pFanatico.StrLogin);
                cmdComando.Parameters.AddWithValue("@StrCorreo", pFanatico.StrCorreo);
                cmdComando.Parameters.AddWithValue("@StrNombre", pFanatico.StrNombre);

                cmdComando.Parameters.Add("@intResultado", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmdComando.ExecuteNonQuery();

                intResultado = Int32.Parse(cmdComando.Parameters["@intResultado"].Value.ToString());
            }
            catch (SqlException sqlException)
            {
                intResultado = sqlException.Number;
            }
            catch (Exception ex)
            {
                ManejoDeErrores.FachadaManejoErrores ManejoError = new FachadaManejoErrores();
                ManejoError.GuardarLog(Utilitarios.Constantes.Constantes.CategoriaDeCapa.Accesosadatos, this.GetType().ToString(), MethodInfo.GetCurrentMethod().Name, ex.Message);
            }
            finally
            {
                this.CerrarConexion();
            }
            return intResultado;
        }


        public int RegistrarUsuario(Jugador pJugador)
        {
            string strQuery = string.Empty;
            int intResultado = 0;
            try
            {
                this.AbrirConexion();
                strQuery = "registrarJugador";
                SqlCommand cmdComando = new SqlCommand(strQuery, this.OConexion);
                cmdComando.CommandType = CommandType.StoredProcedure;

                cmdComando.Parameters.AddWithValue("@StrApellido", pJugador.StrApellido);
                cmdComando.Parameters.AddWithValue("@StrContrasena", pJugador.StrContrasena);
                cmdComando.Parameters.AddWithValue("@StrLogin", pJugador.StrLogin);
                cmdComando.Parameters.AddWithValue("@StrCorreo", pJugador.StrCorreo);
                cmdComando.Parameters.AddWithValue("@StrNombre", pJugador.StrNombre);

                cmdComando.Parameters.AddWithValue("@IntGenero", pJugador.IntGenero);
                cmdComando.Parameters.AddWithValue("@StrPais", pJugador.StrPais);
                cmdComando.Parameters.AddWithValue("@DTFechaNacimiento", pJugador.DTFechaNacimiento);
                cmdComando.Parameters.AddWithValue("@StrFoto", pJugador.StrFoto);
                cmdComando.Parameters.AddWithValue("@StrDescripcionGeneral", pJugador.StrDescripcionGeneral);

                cmdComando.Parameters.Add("@intResultado", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmdComando.ExecuteNonQuery();

                intResultado = Int32.Parse(cmdComando.Parameters["@intResultado"].Value.ToString());
            }
            catch (SqlException sqlException)
            {
                intResultado = sqlException.Number;
            }
            catch (Exception ex)
            {
                ManejoDeErrores.FachadaManejoErrores ManejoError = new FachadaManejoErrores();
                //ManejoError.GuardarLog(((new Utilitarios.FachadaUtilitarios()).CrearInstanciaConstantes()). , this.GetType().ToString(), MethodInfo.GetCurrentMethod().Name, ex.Message)
                ManejoError.GuardarLog(Utilitarios.Constantes.Constantes.CategoriaDeCapa.Accesosadatos, this.GetType().ToString(), MethodInfo.GetCurrentMethod().Name, ex.Message);
            }
            finally
            {
                this.CerrarConexion();
            }
            return intResultado;
        }


    }
}
