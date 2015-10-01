using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServiceStack;
using CitaTaller.ServiceModel;

namespace CitaTaller.ServiceInterface
{
    class ServiceSolicitud : Service
    {
        
        public object Get(GetSolicitudes request)
        {

            GetSolicitudesResponse results = new GetSolicitudesResponse();
            return results;
        }
        public object Get(GetSolicitud request)
        {

            SolicitudPayload results = new SolicitudPayload();
            return results;
        }
        public object Post(CreateSolicitud request)
        {
            SolicitudPayload results = new SolicitudPayload();
            return results;
        }
        public object Put(UpdateSolicitud request)
        {
            SolicitudPayload results = new SolicitudPayload();
            return results;
        }
        
        public void Delete(DeleteSolicitud request)
        {
           
        }
    }
}
