using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServiceStack;
using CitaTaller.ServiceModel;

namespace CitaTaller.ServiceInterface
{
    public class ServiceDmsConfig : Service
    {
        private string RequestUrl;
        private DmsConfigPayload payload = new DmsConfigPayload();

        public object Get(GetDmsConfig request)
        {
            RequestUrl = Request.Headers["Host"];
            
            payload.dms.DomainUrl = RequestUrl;
            payload.dms.Idioma = 3082;
            return payload;
        }
    }
}
