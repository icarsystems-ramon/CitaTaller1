using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//using Microsoft.Azure;
using Microsoft.ServiceBus;
//using Microsoft.WindowsAzure.Configuration;
using Microsoft.ServiceBus.Messaging;

namespace ServiceBusConsoleTest
{
    class Program
    {
        static void Main(string[] args)
        {

            string DmsTallerId = "743746f2-a0be-4254-b883-60b4abfab779";
            string filterName = "DmsTallerId-" + DmsTallerId;
            string topicName = "solicitudcitataller";

            string connectionString = ConfigurationManager.AppSettings["CitaTallerAzureBusSubscribe"];        
            

            SubscriptionClient Client = SubscriptionClient.CreateFromConnectionString(connectionString, topicName, filterName);

            // Configure the callback options.
            OnMessageOptions options = new OnMessageOptions();
            options.AutoComplete = false;
            options.AutoRenewTimeout = TimeSpan.FromMinutes(1);

           
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
                        //Console.WriteLine('Taller ID=' + message.Properties[""]);

                        // Remove message from subscription.
                        message.Complete();
                    }
                    catch (Exception)
                    {
                        // Indicates a problem, unlock message in subscription.
                        message.Abandon();
                    }
                }, options);
            while (true)
            {
            }

        }
    }
}

