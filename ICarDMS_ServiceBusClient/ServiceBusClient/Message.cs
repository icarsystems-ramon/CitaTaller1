using System.Runtime.InteropServices;


namespace ICarDMS_ServiceBusClient
{

    [ComVisible(true)]
    public class Message
    {
        public string Body = "";
        public string SolicitudID = "";
        public string DmsTallerId = "";
       
    }

}