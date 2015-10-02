using System;
using System.Net.Mime;
using Funq;
using ServiceStack;
using ServiceStack.Api.Swagger;
using ServiceStack.Logging;
using ServiceStack.Logging.Log4Net;
using CitaTaller.ServiceInterface;
using ServiceStack.OrmLite;
using ServiceStack.OrmLite.SqlServer;

using ServiceStack.Data;

namespace CitaTaller
{
    public class CitaTallerApp : AppHostBase
    {

        private static ILog Log;

        public CitaTallerApp() : base("CitaTaller", typeof(CitaTaller.ServiceInterface.ServiceDmsConfig).Assembly)
        {
            Configure_Log();           
        }

        public override void Configure(Container container)
        {
            
            Configure_ServiceStack();
            Configure_CORS();
            Configure_Swagger();
            Configure_RequestLog();
            Configure_Database(container);
            Configure_Log();


        }
        void Configure_Database(Container container)
        {

            var dbServer = "tcp:kmrsha0ybe.database.windows.net"; //ConfigurationManager.AppSettings["DBServer"];
            var database = "citataller"; //ConfigurationManager.AppSettings["DBDatabase"];
            var dbLogin = "webapi@kmrsha0ybe"; //ConfigurationManager.AppSettings["DBLogin"];
            var dbPassword = "Bbb12345"; //ConfigurationManager.AppSettings["DBPassword"];

            var connectionStr = String.Format("Server={0};Database={1};User Id={2};Password={3};Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;", dbServer, database, dbLogin, dbPassword);
            var dbFactory = new OrmLiteConnectionFactory(connectionStr, SqlServer2012Dialect.Provider); // SqlServer2012OrmLiteDialectProvider.Provider);
            container.Register<IDbConnectionFactory>(dbFactory);

            OrmLiteConfig.StringFilter = s => s.TrimEnd();

            //The MaxLimit option ensures each query returns a maximum limit of 100 rows.
            Plugins.Add(new AutoQueryFeature { MaxLimit = 100 });
        }


        void Configure_ServiceStack()
        {
            SetConfig(new HostConfig { HandlerFactoryPath = "api" });
            //https://github.com/ServiceStack/ServiceStack/wiki/Configuration-options
            ServiceStack.Text.JsConfig.EmitCamelCaseNames = true;
            Feature disableFeatures = Feature.Jsv | Feature.Soap;
            SetConfig(new HostConfig
            {
                EnableFeatures = Feature.All.Remove(disableFeatures), //all formats except of JSV and SOAP
                DebugMode = true, //Show StackTraces in service responses during development
                WriteErrorsToResponse = false, //Disable exception handling
                DefaultContentType = MimeTypes.Json, //Change default content type
                AllowJsonpRequests = true //Enable JSONP requests
            });
            //https://github.com/ServiceStack/ServiceStack/wiki/Auto-Query
 
        }
        public void Configure_CORS()
        {
            Plugins.Add(new CorsFeature());           
        }
        public void Configure_Swagger()
        {            
            Plugins.Add(new SwaggerFeature());
            //https://github.com/ServiceStack/ServiceStack/wiki/Postman
            Plugins.Add(new PostmanFeature());
        }
        public void Configure_Log()
        {

            LogManager.LogFactory = new DebugLogFactory();

            //LogManager.LogFactory = new ConsoleLogFactory();
            //LogManager.LogFactory = new EventLogFactory("ICarDMSWeb", "Application");
            LogManager.LogFactory = new Log4NetFactory(true); //Also runs log4net.Config.XmlConfigurator.Configure()
            log4net.Config.XmlConfigurator.Configure();
            Log = LogManager.GetLogger(typeof(CitaTallerApp));
        }
        public void Configure_RequestLog()
        {
            //Plugins.Add(new RequestLogsFeature());
        }

    }    
}