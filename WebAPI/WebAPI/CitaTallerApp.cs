using Funq;
using ServiceStack;
using ServiceStack.Logging;
using WebAPI.ServiceInterface;

namespace WebAPI
{
    public class CitaTallerApp : AppHostBase
    {
        /// <summary>
        /// Default constructor.
        /// Base constructor requires a name and assembly to locate web service classes. 
        /// </summary>
        public CitaTallerApp() : base("WebAPI", typeof(WebAPI.ServiceInterface.ServiceDmsConfig).Assembly)
        {

        }

        /// <summary>
        /// Application specific configuration
        /// This method should initialize any IoC resources utilized by your web service classes.
        /// </summary>
        /// <param name="container"></param>
        public override void Configure(Container container)
        {
            //Config examples
            //this.Plugins.Add(new PostmanFeature());
            //this.Plugins.Add(new CorsFeature());
        }
    }
}