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
        private modelSolicitud mysolicitud;
        private SolicitudPayload results;
        private List<SolicitudPayload> resultsList;

        public object Get(GetSolicitudes request)
        {
    
            List<modelSolicitud> myresult;

            if (logger.IsDebugEnabled) logger.Debug("Request GetSolicitudes");
            myresult = Db.Select<modelSolicitud>();
            if (myresult != null)
            {
                resultsList = myresult.ConvertAll(x => x.ConvertTo<SolicitudPayload>());
            }
    
            return resultsList;
        }

        public object Get(GetSolicitud request)
        {
            if (logger.IsDebugEnabled) logger.Debug("Request GetSolicitud");
            using (var db = DbFactory.Open())
            {
                if (!db.Exists<modelSolicitud>(s => s.Id == request.Id))
                {
                    if (logger.IsDebugEnabled) logger.Debug("Not Found: " + request.Id.ToString());
                    throw HttpError.NotFound("No encontrado");
                };
                mysolicitud = db.Single<modelSolicitud>(q => q.Id == request.Id);
                if (mysolicitud != null)
                {
                    results = mysolicitud.ConvertTo<SolicitudPayload>();
                    results.solicitudJob = db.Select<modelSolicitudJob>(q => q.SolicitudId == request.Id);
                    results.solicitudHora = db.Select<modelSolicitudHora>(q => q.SolicitudId == request.Id);
                    return results;
                }
                else
                {
                    throw HttpError.NotFound("No encontrado");
                }
            }    
            
        }

        public object Post(CreateSolicitud request)
        {
            //SolicitudPayload results = new SolicitudPayload();
            using (var db = DbFactory.Open())
            {
                if (request.solicitud.Id != null)
                {
                    if (!db.Exists<modelSolicitud>(s => s.Id == request.solicitud.Id))
                    {
                        throw HttpError.Conflict("La solicitud ya existe");
                    }
                }
                var solicitud = request.solicitud.ConvertTo<modelSolicitud>();


                return results;
            }
        }

        public object Put(UpdateSolicitud request)
        {
            using (var db = DbFactory.Open())
            {
                if (!db.Exists<modelSolicitud>(s => s.Id == request.Id))
                {
                    throw HttpError.NotFound("No encontrado");
                };
                SolicitudPayload results = new SolicitudPayload();
                return results;
            }
        }
        
        public void Delete(DeleteSolicitud request)
        {
            using (var db = DbFactory.Open())
            {
                if (!db.Exists<modelSolicitud>(s => s.Id == request.Id))
                {
                    throw HttpError.NotFound("No encontrado");
                };
                db.Delete<modelSolicitudJob>(s => s.SolicitudId == request.Id);
                db.Delete<modelSolicitudHora>(s => s.SolicitudId == request.Id);
                db.Delete<modelSolicitud>(s => s.Id == request.Id);
            }
        }
    }
}
