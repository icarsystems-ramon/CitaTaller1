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
    public class ServiceDmsConfig : Service
    {
        private static ILog logger = LogManager.GetLogger(typeof(ServiceDmsConfig));
        private String requestUrl;
        //private Guid dmsId;
        private DmsConfigPayload payload = new DmsConfigPayload();
        private modelDms mydms;

        public object Get(GetDmsConfig request)
        {
            if (logger.IsDebugEnabled) logger.Debug("Request GetDmsConfig");
            requestUrl = Request.Headers["Host"];
            if (logger.IsDebugEnabled) logger.Debug("Host = " + requestUrl);

            using (var db = DbFactory.Open())
            {
                mydms = db.Single<modelDms>(q => q.DomainUrl == requestUrl);
                if (mydms != null)
                {
                    payload.Id = mydms.Id;
                    payload.DomainUrl = mydms.DomainUrl;
                    payload.Idioma = mydms.Idioma;
                    payload.dmsJob = db.Select<modelDmsJob>(q => q.DmsId == mydms.Id);
                    payload.dmsTaller = db.Select<modelDmsTaller>(q => q.DmsId == mydms.Id);
                }
                else
                {
                    if (logger.IsDebugEnabled) logger.Debug("DMS not found");
                    throw HttpError.NotFound("No encontrado");
                }
            }        
            return payload;
        }
    }
}
