using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ServiceStack;
using CitaTaller.ServiceModel;
using ServiceStack.DataAnnotations;

namespace CitaTaller.ServiceModel
{
    [Exclude(Feature.Metadata)]   
    [Route("/hello/{Name}")]
    public class Hello : IReturn<HelloResponse>
    {
        public string Name { get; set; }
    }

    public class HelloResponse
    {
        public string Result { get; set; }
    }

}

