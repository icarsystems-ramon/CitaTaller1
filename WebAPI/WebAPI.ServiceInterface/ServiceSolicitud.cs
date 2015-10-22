﻿using System;
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
        private static ILog logger = LogManager.GetLogger(typeof(ServiceDms));
        private SolicitudPayload payload = new SolicitudPayload();
        private Guid nullGuid = new Guid();

        private List<modelSolicitud> dbsolicitud;

        private SolicitudPayload BuildPayload (List<modelSolicitud> dbsolicitud)
        {
            SolicitudPayload payload = new SolicitudPayload();
            payload.solicitud = dbsolicitud.ConvertAll(x => x.ConvertTo<Solicitud>());
            foreach (Solicitud itemsolicitud in payload.solicitud)
            {
                List<SolicitudJob> solicitudjob;
                List<modelSolicitudJob> dbsolicitudjob;
                dbsolicitudjob = Db.Select<modelSolicitudJob>(q => q.SolicitudId == itemsolicitud.Id);
                solicitudjob = dbsolicitudjob.ConvertAll(x => x.ConvertTo<SolicitudJob>());

                foreach (SolicitudJob itemjob in solicitudjob)
                {
                    payload.solicitudjob.Add(itemjob);
                    itemsolicitud.solicitudjob.Add(itemjob.Id);
                }

                List<SolicitudHora> solicitudhora;
                List<modelSolicitudHora> dbsolicitudhora;
                dbsolicitudhora = Db.Select<modelSolicitudHora>(q => q.SolicitudId == itemsolicitud.Id);
                solicitudhora = dbsolicitudhora.ConvertAll(x => x.ConvertTo<SolicitudHora>());

                foreach (SolicitudHora itemhora in solicitudhora)
                {
                    payload.solicitudhora.Add(itemhora);
                    itemsolicitud.solicitudhora.Add(itemhora.Id);
                }
            };
            return payload;
        }

        public object Get(GetSolicitudes request)
        {           
            if (logger.IsDebugEnabled) logger.Debug("Request GetSolicitudes");
            dbsolicitud = Db.Select<modelSolicitud>();
            if (dbsolicitud.Count == 0)
            {
                if (logger.IsDebugEnabled) logger.Debug("Not Found: ");
                throw HttpError.NotFound("No encontrado");                
            }
            payload = BuildPayload(dbsolicitud);
            return payload;
        }


        public object Get(GetSolicitud request)
        {
            if (logger.IsDebugEnabled) logger.Debug("Request GetSolicitud");
            if (request.Id == nullGuid)
            {
                if (logger.IsDebugEnabled) logger.Debug("Not Found: " + request.Id.ToString());
                throw HttpError.NotFound("No encontrado");
            }
            dbsolicitud = Db.Select<modelSolicitud>(q => q.Id == request.Id);
            if (dbsolicitud.Count == 0)
            {
                if (logger.IsDebugEnabled) logger.Debug("Not Found: " + request.Id.ToString());
                throw HttpError.NotFound("No encontrado");
            }
            payload = BuildPayload(dbsolicitud);
            return payload;
        }

        public object Post(CreateSolicitud request)
        {
            //using (var db = DbFactory.Open())
            //{

            //    if (request.solicitud == null) throw HttpError.Conflict("Se requieren datos");
            //    if (!db.Exists<modelDmsTaller>(s => s.Id == request.solicitud.DmsTallerId)) throw HttpError.Conflict("No existe el taller");
            //    if (request.solicitud.Id != nullGuid) if (db.Exists<modelSolicitud>(s => s.Id == request.solicitud.Id)) throw HttpError.Conflict("La solicitud ya existe");


            //    mysolicitud = new modelSolicitud();
            //    mysolicitudJob = new List<modelSolicitudJob>();
            //    mysolicitudHora = new List<modelSolicitudHora>();

            //    mysolicitud = request.solicitud.ConvertTo<modelSolicitud>();
            //    mysolicitudJob = request.solicitud.solicitudJob.ConvertTo<List<modelSolicitudJob>>();
            //    mysolicitudHora = request.solicitud.solicitudHora.ConvertTo<List<modelSolicitudHora>>();

            //    if (mysolicitud.Id == nullGuid)
            //    {
            //        mysolicitud.Id = Guid.NewGuid();
            //    }


            //    Db.Insert(mysolicitud);
            //    foreach (modelSolicitudJob job in mysolicitudJob)
            //    {

            //        if (job.Id == nullGuid)
            //        {
            //            job.Id = Guid.NewGuid();
            //        }
            //        job.SolicitudId = mysolicitud.Id;

            //        Db.Insert(job);
            //    }
            //    foreach (modelSolicitudHora hora in mysolicitudHora)
            //    {
            //        if (hora.Id == nullGuid)
            //        {
            //            hora.Id = Guid.NewGuid();
            //        }
            //        hora.SolicitudId = mysolicitud.Id;
            //        Db.Insert(hora);
            //    }

            //    //Db.InsertAll(mysolicitudJob);                
            //    //Db.InsertAll(mysolicitudHora);


            //    if (mysolicitud != null)
            //    {
            //        results = mysolicitud.ConvertTo<SolicitudPayload>();
            //        results.solicitudJob = Db.Select<modelSolicitudJob>(q => q.SolicitudId == mysolicitud.Id);
            //        results.solicitudHora = Db.Select<modelSolicitudHora>(q => q.SolicitudId == mysolicitud.Id);
            //        return results;
            //    }
            //    return results;
            //}
            return payload;
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
