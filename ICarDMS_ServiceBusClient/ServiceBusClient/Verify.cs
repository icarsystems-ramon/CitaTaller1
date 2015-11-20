using System;
using System.Windows.Forms;

namespace ICarDMS_ServiceBusClient
{
    /// <summary>
    /// Clase de utilidades de verificación
    /// </summary>
    internal static class Verify
    {
        #region Métodos públicos

        #region ArgumentNotNull
        /// <summary>
        /// Comprueba si <paramref name="param"/> es nulo. Si lo es, lanza una <see cref="ArgumentNullException"/>        
        /// </summary>
        /// <param name="param">El valor a validar</param>
        /// <param name="paramName">El nombre del parámetro</param>
        internal static void ArgumentNotNull(object param, string paramName)
        {
            if (param == null)
            {
                throw new ArgumentNullException(paramName);
            }
        }
        #endregion

        #region ArgumentNotNullOrEmpty
        /// <summary>
        /// Comprueba si <paramref name="param"/> es nulo o es una cadena vacía. Si lo es, lanza una <see cref="ArgumentNullException"/>
        /// </summary>
        /// <param name="param">Cadena a comprobar</param>
        /// <param name="paramName">Nombre del parámetro</param>
        internal static void ArgumentNotNullOrEmpty(string param, string paramName)
        {
            if (String.IsNullOrEmpty(param))
            {
                throw new ArgumentNullException(paramName);
            }
        }
        #endregion

        #region ArgumentIsControl
        internal static void ArgumentIsControl(Type t, string paramName)
        {
            if (!typeof(Control).IsAssignableFrom(t))
            {
                throw new ArgumentException(String.Format("{0} no es un control Windows Forms", paramName));
            }
        }
        #endregion

        #endregion
    }
}
