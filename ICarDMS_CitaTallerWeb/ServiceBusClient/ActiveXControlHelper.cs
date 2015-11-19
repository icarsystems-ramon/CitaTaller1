using System;
using System.Collections.Generic;
using System.Text;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Microsoft.Win32;

namespace ICarDMS_ServiceBusClient
{
    /// <summary>
    /// Clase de ayuda para controles de usuario
    /// </summary>
    [ComVisible(false)]
    internal class ActiveXControlHelper : AxHost
    {
        #region Constructor
        internal ActiveXControlHelper()
            : base(null)
        { }
        #endregion

        #region ActiveX Control Registration

        #region OLEMISC Enumeration

        // Ref: http://msdn.microsoft.com/en-us/library/ms678497.aspx
        const int OLEMISC_RECOMPOSEONRESIZE = 1;
        const int OLEMISC_CANTLINKINSIDE = 16;
        const int OLEMISC_INSIDEOUT = 128;
        const int OLEMISC_ACTIVATEWHENVISIBLE = 256;
        const int OLEMISC_SETCLIENTSITEFIRST = 131072;

        #endregion

        /// <summary>
        /// Register the control as an ActiveX control.
        /// </summary>
        /// <param name="t"></param>
        public static void RegasmRegisterControl( Type t )
        {
            // Check the argument
            Verify.ArgumentNotNull(t, "t");
            Verify.ArgumentIsControl(t, "t");

            // Open the CLSID key of the control
            using ( RegistryKey keyCLSID = Registry.ClassesRoot.OpenSubKey(@"CLSID\" + t.GUID.ToString("B"), true) )
            {
                RegistryKey subkey = null;

                // Set "InprocServer32" to register a 32-bit in-process server.
                // InprocServer32 = <path to 32-bit inproc server>
                // Ref: http://msdn.microsoft.com/en-us/library/ms683844.aspx

                subkey = keyCLSID.OpenSubKey("InprocServer32", /*writable*/true);
                if ( subkey != null )
                    // .NET runtime engine (mscoree.dll) for .NET assemblies
                    subkey.SetValue(null, Environment.SystemDirectory + @"\mscoree.dll");


                // Create "Control" to identify it as an ActiveX Control.
                // Ref: http://msdn.microsoft.com/en-us/library/ms680056.aspx

                using ( subkey = keyCLSID.CreateSubKey("Control") ) { };


                // Create "MiscStatus" to specify how to create/display an object. 
                // MiscStatus = <combination of values from OLEMISC enumeration>
                // Ref: http://msdn.microsoft.com/en-us/library/ms683733.aspx

                using ( subkey = keyCLSID.CreateSubKey("MiscStatus") )
                {
                    int nMiscStatus = OLEMISC_RECOMPOSEONRESIZE +
                        OLEMISC_CANTLINKINSIDE + OLEMISC_INSIDEOUT +
                        OLEMISC_ACTIVATEWHENVISIBLE + OLEMISC_SETCLIENTSITEFIRST;

                    subkey.SetValue("", nMiscStatus.ToString(), RegistryValueKind.String);
                }


                // Create "ToolBoxBitmap32" to identify the module name and the resource  
                // ID for a 16 x 16 bitmap as the toolbar button face.
                // ToolBoxBitmap32 = <filename>.<ext>, <resourceID>
                // Ref: http://msdn.microsoft.com/en-us/library/ms687316.aspx

                using ( subkey = keyCLSID.CreateSubKey("ToolBoxBitmap32") )
                {
                    // If you want different icons for each control in the assembly you 
                    // can modify this section to specify a different icon each time. 
                    // Each specified icon must be embedded as a win32 resource in the 
                    // assembly; the default one is at the index 101, but you can use 
                    // additional ones.
                    subkey.SetValue("", Assembly.GetExecutingAssembly().Location + ", 101", RegistryValueKind.String);
                }


                // Create "TypeLib" to specify the typelib GUID associated with the class. 
                using ( subkey = keyCLSID.CreateSubKey("TypeLib") )
                {
                    Guid libId = Marshal.GetTypeLibGuidForAssembly(t.Assembly);
                    subkey.SetValue("", libId.ToString("B"), RegistryValueKind.String);
                }


                // Create "Version" to specify the version of the control. 
                // Ref: http://msdn.microsoft.com/en-us/library/ms686568.aspx
                using ( subkey = keyCLSID.CreateSubKey("Version") )
                {
                    int nMajor, nMinor;
                    Marshal.GetTypeLibVersionForAssembly(t.Assembly, out nMajor, out nMinor);
                    subkey.SetValue("", String.Format("{0}.{1}", nMajor, nMinor));
                }

            }
        }

        /// <summary>
        /// Unregister the control.
        /// </summary>
        /// <param name="t"></param>
        public static void RegasmUnregisterControl( Type t )
        {
            // Check the argument
            Verify.ArgumentNotNull(t, "t");
            Verify.ArgumentIsControl(t, "t");

            // Delete the CLSID key of the control
            Registry.ClassesRoot.DeleteSubKeyTree(@"CLSID\" + t.GUID.ToString("B"));
        }

        #endregion
    }
}
