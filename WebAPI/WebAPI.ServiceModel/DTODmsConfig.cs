using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using ServiceStack;

namespace CitaTaller.ServiceModel
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
            dms = new modelDms();
            dmsTaller = new List<modelDmsTaller>();
            dmsJob = new List<modelDmsJob>();
        }

    }
    [Api("Configuracion del DMS")]
    [Route("/dmsconfig", "GET", 
        Summary = @"Obtener la configuración del DMS vinculado a la URL", 
        Notes = @"El backend determina que DMS corresponde a la request.
Devuelve lista de talleres y opciones rápidas de trabajos.
")]    
    public class GetDmsConfig : IReturn<DmsConfigPayload>
    {

        //public Guid Id { get; set; }
    }



}