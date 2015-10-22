using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServiceStack;
using ServiceStack.OrmLite;
using ServiceStack.Logging;
using CitaTaller.ServiceModel;

namespace CitaTaller.ServiceInterface
{
    public class ServiceDms : Service
    {
        private static ILog logger = LogManager.GetLogger(typeof(ServiceDms));
        private String requestUrl;
        //private Guid dmsId;
        private DmsPayload payload; // = new DmsConfigPayload();
        private modelDms dbdms;

        public object Get(GetDms request)
        {
            if (logger.IsDebugEnabled) logger.Debug("Request GetDmsConfig");
            requestUrl = Request.Headers["Host"];
            requestUrl = "citataller1.azurewebsites.net";
            if (logger.IsDebugEnabled) logger.Debug("Host = " + requestUrl);


            dbdms = Db.Single<modelDms>(q => q.DomainUrl == requestUrl);
            if (dbdms == null)
            {
                if (logger.IsDebugEnabled) logger.Debug("DMS not found");
                throw HttpError.NotFound("No encontrado");
            }           
            
            payload = new DmsPayload();
            payload.dms = dbdms.ConvertTo<Dms>(); 

            List<DmsJob> dmsjob;
            List<modelDmsJob> dbdmsjob;
            dbdmsjob = Db.Select<modelDmsJob>(q => q.DmsId == dbdms.Id);
            dmsjob = dbdmsjob.ConvertAll(x => x.ConvertTo<DmsJob>());

            foreach (DmsJob itemjob in dmsjob)
            {
                payload.dmsJob.Add(itemjob);
                payload.dms.dmsjob.Add(itemjob.Id);
            }


            List<DmsTaller> dmstaller;
            List<modelDmsTaller> dbdmstaller;
            dbdmstaller = Db.Select<modelDmsTaller>(q => q.DmsId == dbdms.Id);
            dmstaller = dbdmstaller.ConvertAll(x => x.ConvertTo<DmsTaller>());

            foreach (DmsTaller itemtaller in dmstaller)
            {
                payload.dmsTaller.Add(itemtaller);
                payload.dms.dmstaller.Add(itemtaller.Id);
            }


            List<DmsCortesia> dmsCortesia;
            List<modelDmsCortesia> dbdmsCortesia;
            dbdmsCortesia = Db.Select<modelDmsCortesia>(q => q.DmsId == dbdms.Id);
            dmsCortesia = dbdmsCortesia.ConvertAll(x => x.ConvertTo<DmsCortesia>());

            foreach (DmsCortesia itemCortesia in dmsCortesia)
            {
                payload.dmsCortesia.Add(itemCortesia);
                payload.dms.dmscortesia.Add(itemCortesia.Id);
            }


            return payload;
        }
    }
}
