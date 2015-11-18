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
        public static string filterName = "Sub-" + Guid.NewGuid().ToString();
        public static string topicName = "solicitudcitataller";
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


            connectionString = ConfigurationManager.AppSettings["CitaTallerAzureBusSubscribe"];

            // También creo la suscripción para un taller en concreto
            var namespaceManager = NamespaceManager.CreateFromConnectionString(connectionString);
            if (!namespaceManager.SubscriptionExists(topicName, filterName))
            {
                SqlFilter DmsTallerIdFilter = new SqlFilter("DmsTallerId = '" + DmsTallerId + "'");
                namespaceManager.CreateSubscription(topicName, filterName, DmsTallerIdFilter);
            }


            SubscriptionClient Client = SubscriptionClient.CreateFromConnectionString(connectionString, topicName, filterName);



            // Configure the callback options.
            OnMessageOptions options = new OnMessageOptions();
            options.AutoComplete = false;
            options.AutoRenewTimeout = TimeSpan.FromMinutes(1);

            Console.WriteLine("\nWaiting for messages ...");

            Client.OnMessage((message) =>
                {
                    try
                    {
                        // Process message from subscription.
                        // Console.WriteLine("\n**High Messages**");
                        //Console.WriteLine("Body: " + message.GetBody<string>());
                        //Console.WriteLine("MessageID: " + message.MessageId);
                        //Console.WriteLine("Message Number: " +       message.Properties["MessageNumber"]);

                        Console.WriteLine("\nRecibido mensaje:");
                        Console.WriteLine("Solicitud ID=" + message.Properties["SolicitudID"]);
                        Console.WriteLine("Taller ID=" + message.Properties["DmsTallerId"]);

                        // Remove message from subscription.
                        message.Complete();
                    }
                    catch (Exception e)
                    {
                        // Indicates a problem, unlock message in subscription.
                        Console.WriteLine(e.Message);
                        message.Abandon();
                    }
                }, options);
            while (true)
            {
            }

        }

        private static bool ConsoleCtrlCheck(CtrlTypes ctrlType)
        {
            closeSub();
            return true;
        }


        static void CurrentDomain_ProcessExit(object sender, EventArgs e)
        {
            closeSub();         
        }

        static void Console_CancelKeyPress(object sender, ConsoleCancelEventArgs e)
        {
            closeSub();           
        }

        static void  closeSub()
        {
            Console.WriteLine("Cleaning subscription...");
            var namespaceManager = NamespaceManager.CreateFromConnectionString(connectionString);
            if (namespaceManager.SubscriptionExists(topicName, filterName))
            {                
                namespaceManager.DeleteSubscription(topicName, filterName);
            }
            System.Threading.Thread.Sleep(750);
        }


    }
}

