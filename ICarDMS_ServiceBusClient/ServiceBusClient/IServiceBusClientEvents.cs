using System;
using System.Runtime.InteropServices;

namespace ICarDMS_ServiceBusClient
{
    [Guid("55A0B7F3-AE44-4CED-822E-B0B233B9DECD")]
    [InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
    public interface IServiceBusClientEvents
    {
        [DispId(1)]
        void Ocx_OnMessage(Message message);      

        [DispId(2)]
        void Ocx_Error(string msg);
    }
}
