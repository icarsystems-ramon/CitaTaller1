using System;
using System.Runtime.InteropServices;
using System.Configuration;
using System.Threading;
using Microsoft.ServiceBus;
using Microsoft.ServiceBus.Messaging;

namespace ICarDMS_ServiceBusClient
{

    [ComVisible(false)]
    class Listener : IDisposable
    {

        public string connectionString = "Endpoint=sb://icarsystems.servicebus.windows.net;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=s4YaMLAj9G2aq2TAPzwjIBDYOq9DVeYwOPvKUewBalo=";
        public string topicName = "solicitudcitataller";
        public string SubscripName = "Sub-" + Guid.NewGuid().ToString();
        //public string DmsTallerId = "743746f2-a0be-4254-b883-60b4abfab779";
        public SubscriptionClient Client;
        OnMessageOptions ClientOptions;
        public Boolean Closing = false;
        public Boolean Connected = false;
        public void Dispose()
        {
            Stop();
        }

        public void Stop()
        {
            Closing = true;
            if (!Connected) return;
            if (!Client.IsClosed) Client.Close();
            var namespaceManager = NamespaceManager.CreateFromConnectionString(connectionString);
            if (namespaceManager.SubscriptionExists(topicName, SubscripName))
            {
                namespaceManager.DeleteSubscription(topicName, SubscripName);
            }
        }
        public void Pause()
        {
        }

        public bool Start(string dmsTallerId)
        {
            try
            {
                //connectionString = ConfigurationManager.AppSettings["CitaTallerAzureBusSubscribe"];
                var namespaceManager = NamespaceManager.CreateFromConnectionString(connectionString);
                if (!namespaceManager.SubscriptionExists(topicName, SubscripName))
                {
                    // Defino un filtro para un taller. Y creo la suscripción con ese filtro.  
                    dmsTallerId = dmsTallerId.Replace("-", "").Trim().ToUpper();
                    if (string.IsNullOrEmpty(dmsTallerId))
                        {
                        namespaceManager.CreateSubscription(topicName, SubscripName);
                        }
                    else
                        {
                        SqlFilter DmsTallerIdFilter = new SqlFilter("DmsTallerId = '" + dmsTallerId + "'");
                        namespaceManager.CreateSubscription(topicName, SubscripName, DmsTallerIdFilter);
                        }
                }
                // Creo un cliente para este NameSpace + Topic + Subscription
                Client = SubscriptionClient.CreateFromConnectionString(connectionString, topicName, SubscripName);
                Connected = true;
                // Defino las opciones para el callback (evento)
                ClientOptions = new OnMessageOptions();
                ClientOptions.AutoComplete = false;
                ClientOptions.MaxConcurrentCalls = 1;
                ClientOptions.AutoRenewTimeout = TimeSpan.FromMinutes(1);
            }
            catch (Exception ex)
            {
                Connected = false;
                ErrorMsg(ex.Message);
            }

                // Definimos el callback (event)   
            Client.OnMessage((busMessage) =>
            {
                try
                {
                    if (Closing)
                    {
                        busMessage.Abandon();
                        return;
                    }                  

                    Message message = new Message();                    
                    message.SolicitudID = busMessage.Properties["SolicitudID"].ToString();
                    message.DmsTallerId = busMessage.Properties["DmsTallerId"].ToString();

                    OcxOnMessage(message);
                    // Eliminamos el mensaje de la suscripción
                    busMessage.Complete();
                }
                catch (Exception ex)
                {
                    // Hemos tenido un crash. Liberamos el mensaje y quedará pendiente.                             
                    busMessage.Abandon();
                    ErrorMsg(ex.Message);
                }
            }, ClientOptions);
            return true;
        }

        #region Delegados
        [ComVisible(false)]
        public delegate void ListenerErrorMsgEventHandler(string msg);
        public delegate void ListenerOcxOnMessageEventHandler(Message message);
        
        #endregion        
        #region Eventos
        public event ListenerErrorMsgEventHandler ErrorMsg;
        public event ListenerOcxOnMessageEventHandler OcxOnMessage;        
        #endregion
    }
}