using System;

namespace Datos.ObjetosDeTransferencia
{
    public class Fanatico
    {
        private int _IdFanatico;
     
  
        private string _strNombre;
       
        private bool _boolGenero;
        private DateTime _FechaNacimiento;
        private int _intGeneroMusical;
        private int _intIdPais;
        private bool _boolFanaticoActivo;
     
        #region SETTERS y GETTERS
        


        public Fanatico()
        {
            _IdFanatico=0;
           
            _strNombre = string.Empty;
            
            _boolGenero = false;
            _FechaNacimiento = DateTime.Now;
            _intGeneroMusical = 0;
            _intIdPais = 0;
            _boolFanaticoActivo = false;
          

        }

        public int IdFanatico
        {
            get { return _IdFanatico; }
            set { _IdFanatico = value; }
        }

        
        public string StrNombre
        {
            get { return _strNombre; }
            set { _strNombre = value; }
        }

       

        public bool BoolGenero
        {
            get { return _boolGenero; }
            set { _boolGenero = value; }
        }

        public DateTime FechaNacimiento
        {
            get { return _FechaNacimiento; }
            set { _FechaNacimiento = value; }
        }

        public int IntGeneroMusical
        {
            get { return _intGeneroMusical; }
            set { _intGeneroMusical = value; }
        }
        public int IntIdPais
        {
            get { return _intIdPais; }
            set { _intIdPais = value; }
        }
        public bool BoolFanaticoActivo
        {
            get { return _boolFanaticoActivo; }
            set { _boolFanaticoActivo = value; }
        }

        

        #endregion
    }
}
