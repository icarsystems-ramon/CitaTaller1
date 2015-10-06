using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServiceStack;
using CitaTaller.ServiceModel;
using ServiceStack.OrmLite;
using ServiceStack.Logging;

namespace CitaTaller.ServiceInterface
{
    class ServiceSolicitud : Service

    {
        private static ILog logger = LogManager.GetLogger(typeof(ServiceDmsConfig));
        public object Get(GetSolicitudes request)
        {
            if (logger.IsDebugEnabled) logger.Debug("Request GetSolicitudes");
            GetSolicitudesResponse results = new GetSolicitudesResponse();
            return results;
        }
        public object Get(GetSolicitud request)
        {
            if (logger.IsDebugEnabled) logger.Debug("Request GetSolicitud");
            if (!Db.Exists<modelSolicitud>(s => s.Id == request.Id))
            {
                if (logger.IsDebugEnabled) logger.Debug("Not Found: " + request.Id.ToString());
                throw HttpError.NotFound("No encontrado");
            };
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

            if (!Db.Exists<modelSolicitud>(s => s.Id == request.Id))
            {
                throw HttpError.NotFound("No encontrado");
            };
            SolicitudPayload results = new SolicitudPayload();
            return results;
        }
        
        public void Delete(DeleteSolicitud request)
        {
           
           if (!Db.Exists<modelSolicitud>(s => s.Id == request.Id))
           {
                throw HttpError.NotFound("No encontrado");
           };
           Db.Delete<modelSolicitudJob>(s => s.SolicitudId == request.Id);
           Db.Delete<modelSolicitudHora>(s => s.SolicitudId == request.Id);
           Db.Delete<modelSolicitud>(s => s.Id == request.Id);
        }
    }
}
