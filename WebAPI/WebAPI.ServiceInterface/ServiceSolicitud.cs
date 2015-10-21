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
        private List<modelSolicitudJob> mysolicitudJob;
        private List<modelSolicitudHora> mysolicitudHora;
        private List<Solicitud> solicitudList;
        private SolicitudPayload results = new SolicitudPayload();
        private Guid nullGuid = new Guid();
        public object Get(GetSolicitudes request)
        {
    
            List<modelSolicitud> myresult;

            if (logger.IsDebugEnabled) logger.Debug("Request GetSolicitudes");
            myresult = Db.Select<modelSolicitud>();
            if (myresult != null)
            {
                solicitudList = myresult.ConvertAll(x => x.ConvertTo<Solicitud>());
                solicitudList.ForEach(a => a.solicitudJob = Db.Select<modelSolicitudJob>(q => q.SolicitudId == a.Id));
                solicitudList.ForEach(a => a.solicitudHora = Db.Select<modelSolicitudHora>(q => q.SolicitudId == a.Id));
            }

            results.solicitud = solicitudList;
            return results;
        }

        public object Get(GetSolicitud request)
        {

            List<modelSolicitud> myresult;
            if (logger.IsDebugEnabled) logger.Debug("Request GetSolicitud");
    
            if (!Db.Exists<modelSolicitud>(s => s.Id == request.Id))
            {
                if (logger.IsDebugEnabled) logger.Debug("Not Found: " + request.Id.ToString());
                throw HttpError.NotFound("No encontrado");
            };

            myresult = Db.Select<modelSolicitud>(q => q.Id == request.Id);
            if (myresult != null)
            {
                solicitudList = myresult.ConvertAll(x => x.ConvertTo<Solicitud>());
                solicitudList.ForEach(a => a.solicitudJob = Db.Select<modelSolicitudJob>(q => q.SolicitudId == a.Id));
                solicitudList.ForEach(a => a.solicitudHora = Db.Select<modelSolicitudHora>(q => q.SolicitudId == a.Id));
            }


            //mysolicitud = Db.Single<modelSolicitud>(q => q.Id == request.Id);
            //if (mysolicitud != null)
            //{
            //    results = mysolicitud.ConvertTo<Solicitud>();
            //    results.solicitudJob = Db.Select<modelSolicitudJob>(q => q.SolicitudId == request.Id);
            //    results.solicitudHora = Db.Select<modelSolicitudHora>(q => q.SolicitudId == request.Id);
            //    results.solicitud = solicitudList;
            //    return results;
            //}
            else
            {
                throw HttpError.NotFound("No encontrado");
            }

            results.solicitud = solicitudList;
            return results;
        }

        //public object Post(CreateSolicitud request)
        //{
        //    //SolicitudPayload results = new SolicitudPayload();
        //    using (var db = DbFactory.Open())
        //    {

        //        if (request.solicitud == null) throw HttpError.Conflict("Se requieren datos");
        //        if (!db.Exists<modelDmsTaller>(s => s.Id == request.solicitud.DmsTallerId)) throw HttpError.Conflict("No existe el taller");
        //        if (request.solicitud.Id != nullGuid)  if (db.Exists<modelSolicitud>(s => s.Id == request.solicitud.Id)) throw HttpError.Conflict("La solicitud ya existe");


        //        mysolicitud = new modelSolicitud();
        //        mysolicitudJob = new List<modelSolicitudJob>() ;
        //        mysolicitudHora = new List<modelSolicitudHora>();
        
        //        mysolicitud = request.solicitud.ConvertTo<modelSolicitud>();
        //        mysolicitudJob = request.solicitud.solicitudJob.ConvertTo<List<modelSolicitudJob>>();
        //        mysolicitudHora = request.solicitud.solicitudHora.ConvertTo<List<modelSolicitudHora>>();

        //        if (mysolicitud.Id == nullGuid)
        //        {
        //            mysolicitud.Id = Guid.NewGuid();
        //        }                
             

        //        Db.Insert(mysolicitud);
        //        foreach (modelSolicitudJob job in mysolicitudJob)
        //        {

        //            if (job.Id == nullGuid)
        //            {
        //                job.Id = Guid.NewGuid();
        //            }
        //            job.SolicitudId = mysolicitud.Id;
                    
        //            Db.Insert(job);
        //        }
        //        foreach (modelSolicitudHora hora in mysolicitudHora)
        //        {
        //            if (hora.Id == nullGuid)
        //            {
        //                hora.Id = Guid.NewGuid();
        //            }
        //            hora.SolicitudId = mysolicitud.Id;                   
        //            Db.Insert(hora);
        //        }
                
        //        //Db.InsertAll(mysolicitudJob);                
        //        //Db.InsertAll(mysolicitudHora);


        //        if (mysolicitud != null)
        //        {
        //            results = mysolicitud.ConvertTo<SolicitudPayload>();
        //            results.solicitudJob = Db.Select<modelSolicitudJob>(q => q.SolicitudId == mysolicitud.Id);
        //            results.solicitudHora = Db.Select<modelSolicitudHora>(q => q.SolicitudId == mysolicitud.Id);
        //            return results;
        //        }
        //        return results;
        //    }
        //}

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
        
        //public void Delete(DeleteSolicitud request)
        //{
        //    if (!Db.Exists<modelSolicitud>(s => s.Id == request.Id))
        //    {
        //        throw HttpError.NotFound("No encontrado");
        //    };
        //    Db.Delete<modelSolicitudJob>(s => s.SolicitudId == request.Id);
        //    Db.Delete<modelSolicitudHora>(s => s.SolicitudId == request.Id);
        //    Db.Delete<modelSolicitud>(s => s.Id == request.Id);          
        //}
    }
}
