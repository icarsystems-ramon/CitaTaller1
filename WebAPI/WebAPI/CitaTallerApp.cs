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
using log4net.Appender;
using System.Configuration;
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

            Configure_Log();
            Configure_ServiceStack();
            Configure_CORS();
            Configure_Swagger();
            Configure_RequestLog();
            Configure_Database(container); 
        }
        void Configure_Database(Container container)
        {

            var connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CitaTallerAzureSQL"].ConnectionString;
            var dbFactory = new OrmLiteConnectionFactory(connectionString, SqlServer2012Dialect.Provider); // SqlServer2012OrmLiteDialectProvider.Provider);
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
            Plugins.Add(new PostmanFeature());
        }
        public void Configure_Log()
        {

            LogManager.LogFactory = new Log4NetFactory(configureLog4Net: true);
            ILog logger = LogManager.GetLogger(typeof(CitaTallerApp));
            logger.Info("Log configurado!");
        }
        public void Configure_RequestLog()
        {
            //Plugins.Add(new RequestLogsFeature());
        }

    }    
}