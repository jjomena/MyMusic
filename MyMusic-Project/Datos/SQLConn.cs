using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Reflection;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    class SQLConn
    {
        //public ManejoDeErrores.Log _oLogErrores;
        protected SqlConnection OConexion;
        private string _stringConexion;

    #region Constructor

    public SQLConn() {
            try
            {
                _stringConexion = "user id=" + OpcionesDeConexion.Default.usuario + ";" +
                                 "password=" + OpcionesDeConexion.Default.contrasena + ";" +
                                 "server=" + OpcionesDeConexion.Default.servidor + ";" +
                                 "database=" + OpcionesDeConexion.Default.database + ";" +
                                 "connection timeout=30";
            }
            catch (Exception ex)
            {
                Console.WriteLine("error "+ex);
            }
    }

    #endregion

        #region Metodos Publicos

        protected SqlConnection AbrirConexion()
        {
            try
            {
                OConexion = new SqlConnection(this._stringConexion);
                OConexion.Open();
                return OConexion;
            }
            catch (Exception ex)
            {
                Console.WriteLine("error " + ex);
                return null;
            }
        }

        protected void CerrarConexion()
        {
            try
            {
                OConexion.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("error " + ex);
            }
        }
        #endregion
    }
}
