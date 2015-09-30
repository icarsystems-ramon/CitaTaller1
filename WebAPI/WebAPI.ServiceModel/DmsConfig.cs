using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using ServiceStack;

namespace WebAPI.ServiceModel
{
    [DataContract]
    public class DmsConfigPayload
    {
        [DataMember(Name = "dms")]
        public modelDms dms { get; set; }
        [DataMember(Name = "dmstaller")]
        public List<modelDmsTaller> dmsTaller { get; set; }
        [DataMember(Name = "dmsjob")]
        public List<modelDmsJob> dmsJob { get; set; }
        public DmsConfigPayload()
        {
            //solicitud = new modelSolicitud();
            dmsTaller = new List<modelDmsTaller>();
            dmsJob = new List<modelDmsJob>();
        }

    }

    [Route("/dmsconfig", "GET")]
    [Route("/dmsconfigs", "GET")]
    public class GetDmsConfig : IReturn<DmsConfigPayload>
    {
        public Guid Id { get; set; }
    }



}