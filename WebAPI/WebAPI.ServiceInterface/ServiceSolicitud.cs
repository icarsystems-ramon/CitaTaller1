using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServiceStack;
using CitaTaller.ServiceModel;
using ServiceStack.OrmLite;

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
           
            Db.Delete<modelSolicitudJob>(s => s.SolicitudId == request.Id);
            Db.Delete<modelSolicitudHora>(s => s.SolicitudId == request.Id);
            Db.Delete<modelSolicitud>(s => s.Id == request.Id);
        }
    }
}
