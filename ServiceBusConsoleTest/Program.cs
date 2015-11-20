using System;
using System.Configuration;
using Microsoft.ServiceBus;
using Microsoft.ServiceBus.Messaging;
using System.Runtime.InteropServices;

namespace ServiceBusConsoleTest
{

   

    class Program
    {
        public static string connectionString;
        // Creo un nombre "aleatorio" para la suscripcion
        public static string SubscripName = "Sub-" + Guid.NewGuid().ToString();
        // Este el "topic" al que nos suscribiremos en el service bus.
        public static string topicName = "solicitudcitataller";
        // DmsTallerId: Sólo quiero escuchar para este taller. Crearé un filtro
        public static string DmsTallerId = "743746f2-a0be-4254-b883-60b4abfab779";
        [DllImport("Kernel32")]
        public static extern bool SetConsoleCtrlHandler(HandlerRoutine Handler, bool Add);
        public delegate bool HandlerRoutine(CtrlTypes CtrlType);

        public enum CtrlTypes
        {
            CTRL_C_EVENT = 0,
            CTRL_BREAK_EVENT,
            CTRL_CLOSE_EVENT,
            CTRL_LOGOFF_EVENT = 5,
            CTRL_SHUTDOWN_EVENT
        }

        
        static void Main(string[] args)
        {
            

            AppDomain.CurrentDomain.ProcessExit += new EventHandler(CurrentDomain_ProcessExit);
            Console.CancelKeyPress += new ConsoleCancelEventHandler(Console_CancelKeyPress);
            SetConsoleCtrlHandler(new HandlerRoutine(ConsoleCtrlCheck), true);

            // Obtengo la connectionString que está almacenada en el app.config
            connectionString = ConfigurationManager.AppSettings["CitaTallerAzureBusSubscribe"];

            // También creo la suscripción para un taller en concreto
            var namespaceManager = NamespaceManager.CreateFromConnectionString(connectionString);
            if (!namespaceManager.SubscriptionExists(topicName, SubscripName))
            {
                // Defino un filtro para un taller. Y creo la suscripción con ese filtro.    
                SqlFilter DmsTallerIdFilter = new SqlFilter("DmsTallerId = '" + DmsTallerId + "'");
                namespaceManager.CreateSubscription(topicName, SubscripName, DmsTallerIdFilter);
            }


            // Creo un cliente para este NameSpace + Topic + Subscription
            // El cliente recibirá los mensajes en el evento onMessage
            SubscriptionClient Client = SubscriptionClient.CreateFromConnectionString(connectionString, topicName, SubscripName);



            // Defino las opciones para el callback (evento)
            OnMessageOptions options = new OnMessageOptions();
            options.AutoComplete = false;
            options.AutoRenewTimeout = TimeSpan.FromMinutes(1);

            Console.WriteLine("\nA la espera  ...");
            // Definimos el callback (event)   
            Client.OnMessage((message) =>
                {
                    try
                    {
                        // Process message from subscription.
                        // Console.WriteLine("\n**High Messages**");
                        //Console.WriteLine("Body: " + message.GetBody<string>());
                        //Console.WriteLine("MessageID: " + message.MessageId);
                        //Console.WriteLine("Message Number: " +       message.Properties["MessageNumber"]);

                        // Mostramos en pantalla que hemos recibido un mensaje

                        Console.WriteLine("\nMensaje recibido:");
                        Console.WriteLine("Solicitud ID=" + message.Properties["SolicitudID"]);
                        Console.WriteLine("Taller ID=" + message.Properties["DmsTallerId"]);

                        // Eliminamos el mensaje de la suscripción
                        message.Complete();
                    }
                    catch (Exception ex)
                    {
                        // Hemos tenido un crash. Liberamos el mensaje y quedará pendiente.                             
                        message.Abandon();
                        Console.WriteLine(ex.Message);
                    }
                }, options);
            while (true)
            {
            }

        }

        private static bool ConsoleCtrlCheck(CtrlTypes ctrlType)
        {
            closeSubcription();
            return true;
        }


        static void CurrentDomain_ProcessExit(object sender, EventArgs e)
        {
            closeSubcription();         
        }

        static void Console_CancelKeyPress(object sender, ConsoleCancelEventArgs e)
        {
            closeSubcription();           
        }

        static void  closeSubcription()
        {
            // Este método cierra la suscripcion en el caso de salir de la aplicación.

            Console.WriteLine("Borrando subscription...");
            var namespaceManager = NamespaceManager.CreateFromConnectionString(connectionString);
            if (namespaceManager.SubscriptionExists(topicName, SubscripName))
            {                
                namespaceManager.DeleteSubscription(topicName, SubscripName);
            }
            System.Threading.Thread.Sleep(750);
        }


    }
}

