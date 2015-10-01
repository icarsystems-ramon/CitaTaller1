using System.Net.Mime;
using Funq;
using ServiceStack;
using ServiceStack.Api.Swagger;
using ServiceStack.Logging;
using ServiceStack.Logging.Log4Net;
using CitaTaller.ServiceInterface;


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
            
            //Plugins.Add(new RequestLogsFeature());         
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
        }
        public void Configure_CORS()
        {
            Plugins.Add(new CorsFeature());
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

    }    
}