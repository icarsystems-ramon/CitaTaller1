using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServiceStack;
using CitaTaller.ServiceModel;
using ServiceStack.OrmLite;
using ServiceStack.Logging;
using System.Net;

//using ServiceStack.Web;

namespace CitaTaller.ServiceInterface
{
    class ServiceSolicitud : Service

    {
        private static ILog logger = LogManager.GetLogger(typeof(ServiceDms));
        private Guid nullGuid = new Guid();
        private List<modelSolicitud> dbsolicitud;

        private SolicitudResponse BuildPayload (Guid id)
        {
            List<modelSolicitud> mysolicitud;
            //if (id == nullGuid) return;
            mysolicitud = Db.Select<modelSolicitud>(q => q.Id == id);
            if (mysolicitud.Count == 0)
            {
                if (logger.IsDebugEnabled) logger.Debug("Not Found: " + id.ToString());
                throw HttpError.NotFound("No encontrado");
            }
            return BuildSolicitudResponse(mysolicitud);
        }

        private SolicitudResponse BuildSolicitudResponse (List<modelSolicitud> dbsolicitud)
        {
            
            List<Solicitud> solicitudlist = new List<Solicitud>();
            //List<SolicitudJob> solicitudjoblist = new List<SolicitudJob>();
            //List<SolicitudHora> solicitudhoralist = new List<SolicitudHora>();

            solicitudlist = dbsolicitud.ConvertAll(x => x.ConvertTo<Solicitud>());
            foreach (Solicitud itemsolicitud in solicitudlist)
            {

                itemsolicitud.solicitudjobs = Db.Select<SolicitudJob>(q => q.SolicitudId == itemsolicitud.Id).ConvertAll(x => x.ConvertTo<SolicitudJob>());
                itemsolicitud.solicitudhoras = Db.Select<modelSolicitudHora>(q => q.SolicitudId == itemsolicitud.Id).ConvertAll(x => x.ConvertTo<SolicitudHora>());
            };

            SolicitudResponse payload = new SolicitudResponse();
            if (solicitudlist.Count > 1) payload.solicitudes = solicitudlist;
            else payload.solicitud = solicitudlist.First();           
 
            return payload;
        }

        public object Get(GetSolicitudes request)
        {           
            if (logger.IsDebugEnabled) logger.Debug("Request GetSolicitudes");
            //dbsolicitud = Db.Select<modelSolicitud>();
            var q = Db.From<modelSolicitud>().OrderByDescending(o => o.CreacionFecha);
            dbsolicitud = Db.Select(q);            

            if (dbsolicitud.Count == 0)
            {
                if (logger.IsDebugEnabled) logger.Debug("Not Found: ");
                throw HttpError.NotFound("No encontrado");                
            }
            return BuildSolicitudResponse(dbsolicitud);
         }


        public object Get(GetSolicitud request)
        {
            if (logger.IsDebugEnabled) logger.Debug("Request GetSolicitud");
            if (request.Id == nullGuid)
            {
                if (logger.IsDebugEnabled) logger.Debug("Not Found: " + request.Id.ToString());
                throw HttpError.NotFound("No encontrado");
            }

            if (Db.Exists<modelSolicitud>(q => q.Id == request.Id)) return BuildPayload(request.Id);
            else throw HttpError.NotFound("No encontrado");
        }

        public object Post(CreateSolicitud request)
        {
           Guid solicitudId;

           if (request.solicitud == null) throw HttpError.Conflict("Se requieren datos");

            Solicitud solicitud = request.solicitud;
            using (var db = DbFactory.Open())
            {
                if (!db.Exists<modelDmsTaller>(s => s.Id == solicitud.DmsTallerId)) throw HttpError.Conflict("No existe el taller");
                if (solicitud.Id != nullGuid) if (db.Exists<modelSolicitud>(s => s.Id == solicitud.Id)) throw HttpError.Conflict("La solicitud ya existe");


                modelSolicitud dbsolicitud = new modelSolicitud();
                List<modelSolicitudJob> dbsolicitudJob = new List<modelSolicitudJob>();
                List<modelSolicitudHora> dbsolicitudHora = new List<modelSolicitudHora>();

                dbsolicitud = solicitud.ConvertTo<modelSolicitud>();
                dbsolicitudJob = solicitud.solicitudjobs.ConvertAll(x => x.ConvertTo<modelSolicitudJob>());
                dbsolicitudHora = solicitud.solicitudhoras.ConvertAll(x => x.ConvertTo<modelSolicitudHora>());

                if (dbsolicitud.Id == nullGuid) dbsolicitud.Id = Guid.NewGuid();
          
                solicitudId = dbsolicitud.Id;

                DateTime now = DateTime.Now;
                dbsolicitud.CreacionFecha = now;

                Guid guidOutput;
                if (!Guid.TryParse(dbsolicitud.CreacionDevice.ToString(), out guidOutput))
                {
                    dbsolicitud.CreacionDevice = Guid.NewGuid();
                }

                //if (dbsolicitud.CreacionDevice == nullGuid) dbsolicitud.CreacionDevice = Guid.NewGuid();
                


                Db.Insert(dbsolicitud);

                if (dbsolicitudJob != null)
                {
                    foreach (modelSolicitudJob job in dbsolicitudJob)
                    {

                        if (job.Id == nullGuid) job.Id = Guid.NewGuid();
                        job.SolicitudId = solicitudId;
                        Db.Insert(job);
                    }
                }
                if (dbsolicitudJob != null)
                {
                    foreach (modelSolicitudHora hora in dbsolicitudHora)
                    {
                        if (hora.Id == nullGuid) hora.Id = Guid.NewGuid();
                        hora.SolicitudId = solicitudId;
                        Db.Insert(hora);
                    }
                }     
            }
            return BuildPayload(solicitudId);
        }

        //public object Put(UpdateSolicitud request)
        //{
        //    using (var db = DbFactory.Open())
        //    {
        //        if (!db.Exists<modelSolicitud>(s => s.Id == request.Id))
        //        {
        //            throw HttpError.NotFound("No encontrado");
        //        };
        //        SolicitudPayload results = new SolicitudPayload();
        //        return results;
        //    }
        //}

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
