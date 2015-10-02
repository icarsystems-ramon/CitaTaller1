using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServiceStack;
using ServiceStack.OrmLite;
using CitaTaller.ServiceModel;

namespace CitaTaller.ServiceInterface
{
    public class ServiceDmsConfig : Service
    {
        private String requestUrl;
        //private Guid dmsId;
        private DmsConfigPayload payload = new DmsConfigPayload();
        private modelDms mydms;

        public object Get(GetDmsConfig request)
        {
            requestUrl = Request.Headers["Host"];            

            using (var db = DbFactory.Open())
            {
                mydms = db.Single<modelDms>(q => q.DomainUrl == requestUrl);
                payload.Id = mydms.Id;
                payload.DomainUrl = mydms.DomainUrl;
                payload.Idioma = mydms.Idioma;
                payload.dmsJob = db.Select<modelDmsJob>(q => q.DmsId == mydms.Id);
                payload.dmsTaller = db.Select<modelDmsTaller>(q => q.DmsId == mydms.Id);
            }
            

            return payload;
        }
    }
}
