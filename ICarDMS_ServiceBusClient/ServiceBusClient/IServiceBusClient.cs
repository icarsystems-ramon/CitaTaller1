using System;
using System.Runtime.InteropServices;


namespace ICarDMS_ServiceBusClient

{
    [ComVisible(true)]
    [InterfaceType(ComInterfaceType.InterfaceIsDual)]
    [Guid("94A903E3-C025-4B4E-8C74-A809E3422A92")]
    public interface IServiceBusClient
    {

        bool Start(string dmsTallerId);
        void Stop();
        void Pause();       
    }   
}
