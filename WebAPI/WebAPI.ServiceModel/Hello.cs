using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ServiceStack;
using WebAPI.ServiceModel;

namespace WebAPI.ServiceModel
{
    [Route("/hello/{Name}")]
    public class Hello : IReturn<HelloResponse>
    {
        public string Name { get; set; }
    }

    public class HelloResponse
    {
        public string Result { get; set; }
    }


    /*
    public class pepe
    {
        public string juan;
        public void  menea()
        {
            Dms luis = new Dms();
            juan = luis.DomainUrl;
        }
        
        
    }
    */

}

