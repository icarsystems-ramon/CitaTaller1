using System;
using System.Collections.Generic;
using System.Linq;
using ServiceStack;
using CitaTaller.ServiceModel;
using ServiceStack.OrmLite;
using ServiceStack.Logging;
using Microsoft.Azure;
using Microsoft.ServiceBus;
using Microsoft.ServiceBus.Messaging;


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
            solicitudlist = dbsolicitud.ConvertAll(x => x.ConvertTo<Solicitud>());
            foreach (Solicitud itemsolicitud in solicitudlist)
            {
                itemsolicitud.solicitudjobs = Db.Select<SolicitudJob>(q => q.SolicitudId == itemsolicitud.Id).ConvertAll(x => x.ConvertTo<SolicitudJob>());              
                var h = Db.From<modelSolicitudHora>().Where (q => q.SolicitudId == itemsolicitud.Id).OrderBy(o=>o.Fecha).ThenBy(o=>o.Hora).ThenBy(o => o.Minuto);
                itemsolicitud.solicitudhoras = Db.Select(h).ConvertAll(x => x.ConvertTo<SolicitudHora>());
                //itemsolicitud.solicitudhoras = Db.Select<modelSolicitudHora>(q => q.SolicitudId == itemsolicitud.Id).ConvertAll(x => x.ConvertTo<SolicitudHora>());
            };

            SolicitudResponse payload = new SolicitudResponse();
            if (solicitudlist.Count > 1) payload.solicitudes = solicitudlist;
            else payload.solicitud = solicitudlist.First();           
 
            return payload;
        }

        public object Get(GetSolicitudes request)
        {           
            if (logger.IsDebugEnabled) logger.Debug("Request GetSolicitudes");
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

            // Obtengo la Conexión al ServiceBus que ha sido almacenada en web.config
            string connectionString = CloudConfigurationManager.GetSetting("CitaTallerAzureBusManager");
            // Este el "topic" por el que publicaremos en el service bus.
            string topicName = "solicitudcitataller";
            
            //string filterName = "DmsTallerId-" + solicitud.DmsTallerId.ToString();         
            // Verifico la existencia del Topic. Si no existe, lo creo.
            // Pero, necesito conectarmet como RootManager. Ojo con la connectionString!
            var namespaceManager = NamespaceManager.CreateFromConnectionString(connectionString);
            if (!namespaceManager.TopicExists(topicName))
            {
                namespaceManager.CreateTopic(topicName);
            }

            //// También creo la suscripción "Allmessages" sin filtro.
            //if (!namespaceManager.SubscriptionExists(topicName, "AllMessages"))
            //{
            //    namespaceManager.CreateSubscription(topicName, "AllMessages");
            //}



            //// También creo la suscripción para un taller en concreto
            //if (!namespaceManager.SubscriptionExists(topicName, filterName))
            //{
            //    SqlFilter DmsTallerIdFilter = new SqlFilter("DmsTallerId = '" + solicitud.DmsTallerId.ToString() + "'");
            //    namespaceManager.CreateSubscription(topicName, filterName, DmsTallerIdFilter);
            //}         


            // Creo el mensaje a enviar. 
            // Le añado 2 propiedades: SolicitudID y DmsTallerId
            BrokeredMessage message = new BrokeredMessage("Solicitud " + solicitudId.ToString());
            message.Label = "Solicitud " + solicitudId.ToString();
            message.Properties["SolicitudID"] = solicitudId.ToString();
            message.Properties["DmsTallerId"] = solicitud.DmsTallerId.ToString();

            // Publico el mensaje en el Topic.
            TopicClient Client = TopicClient.CreateFromConnectionString(connectionString, topicName);
            Client.Send(message);

            // Ahora si. Resuelvo la response al cliente Rest diciendo que la Solicitud ha sido grabada.
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
