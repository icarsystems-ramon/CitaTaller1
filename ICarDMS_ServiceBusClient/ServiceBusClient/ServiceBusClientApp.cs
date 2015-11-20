using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using System.Runtime.InteropServices.ComTypes;
using System.ComponentModel;
using ICarDMS_ServiceBusClient;

namespace ICarDMS_ServiceBusClient
{
    [ComVisible(true)]
    [ClassInterface(ClassInterfaceType.None)]
    [Guid("AF80DBAC-33FA-43D2-8040-8D9CCA29EE2E")]
    [ProgId("ICarDMS_ServiceBusClient.ServiceBusClientApplication")]
    [ComSourceInterfaces(typeof(IServiceBusClientEvents))]
    public class ServiceBusClientApp : UserControl, IServiceBusClient
    {
        private PictureBox pictureBoxLogo;
        private Listener listener = new Listener();

        #region Constructor
        public ServiceBusClientApp()
        {
            InitializeComponent();
            listener.ErrorMsg += new Listener.ListenerErrorMsgEventHandler(ListenerErrorMsg);
            listener.OcxOnMessage += new Listener.ListenerOcxOnMessageEventHandler(ListenerOcxOnMessage);
           
        }
        #endregion

        #region IWebServer Members

        public bool Start(string DmsTallerId)
        {
            return listener.Start(DmsTallerId);
        }
        public void Stop()
        {
            listener.Stop();
        }
        public void Pause()
        {
            listener.Pause();

        }
        //public void ConsumerReady()
        //{
        //    listener.ConsumerReady();
        //}
        #endregion

        //public void soloparacompilar()
        //{
        //    Ocx_Get("hola");
        //    Ocx_Post("Adios");
        //    Ocx_Error("Error");
        //}

        #region Recepción eventos del listener
        private void ListenerErrorMsg(string msg)
        {
            Ocx_Error(msg);
        }

        private void ListenerOcxOnMessage(Message message)
        {
            Ocx_OnMessage (message);
        }
       

        #endregion        
        #region Delegados

        [ComVisible(false)]
        public delegate void ServiceBusClientAppOcxOnMessageEventHandler(Message message);       
        public delegate void ServiceBusClientAppOcxErrorEventHandler(string msg);

        #endregion        
        #region Eventos

        public event ServiceBusClientAppOcxOnMessageEventHandler Ocx_OnMessage; 
        public event ServiceBusClientAppOcxErrorEventHandler Ocx_Error;

        #endregion
        #region Funciones de registro COM

        #region RegisterClass
        [ComRegisterFunction]
        [EditorBrowsable(EditorBrowsableState.Never)]
        public static void RegisterClass(Type t)
        {
            try
            {
                ActiveXControlHelper.RegasmRegisterControl(t);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
        #endregion

        #region UnregisterClass
        /// <see cref="http://www.codeproject.com/Articles/1256/Exposing-Windows-Forms-Controls-as-ActiveX-control"/>
        [ComUnregisterFunction]
        [EditorBrowsable(EditorBrowsableState.Never)]
        public static void UnregisterClass(Type t)
        {
            try
            {
                ActiveXControlHelper.RegasmUnregisterControl(t);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
        #endregion       

        #endregion
        #region InitializeComponent
        private void InitializeComponent()
        {
            this.pictureBoxLogo = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxLogo)).BeginInit();
            this.SuspendLayout();
            // 
            // pictureBoxLogo
            // 
            this.pictureBoxLogo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureBoxLogo.Image = global::ICarDMS_ServiceBusClient.Properties.Resources.ServiceBus;
            this.pictureBoxLogo.InitialImage = global::ICarDMS_ServiceBusClient.Properties.Resources.ServiceBus;
            this.pictureBoxLogo.Location = new System.Drawing.Point(0, 0);
            this.pictureBoxLogo.Name = "pictureBoxLogo";
            this.pictureBoxLogo.Size = new System.Drawing.Size(51, 52);
            this.pictureBoxLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            this.pictureBoxLogo.TabIndex = 0;
            this.pictureBoxLogo.TabStop = false;
            // 
            // ServiceBusClientApp
            // 
            this.BackColor = System.Drawing.Color.Red;
            this.Controls.Add(this.pictureBoxLogo);
            this.Name = "ServiceBusClientApp";
            this.Size = new System.Drawing.Size(51, 52);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxLogo)).EndInit();
            this.ResumeLayout(false);

        }
        #endregion
    }
}