using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using ServiceStack;

namespace CitaTaller.ServiceModel
{


    [DataContract]
    public class Dms
    {
        [DataMember]
        public Guid Id { get; set; }
        [DataMember]
        public string DomainUrl { get; set; }
        [DataMember]
        public short? Idioma { get; set; }
        [DataMember(Name = "dmsTalleres")]
        public List<Guid> dmstaller { get; set; }
        [DataMember(Name = "dmsJobs")]
        public List<Guid> dmsjob { get; set; }
        [DataMember(Name = "dmsCortesias")]
        public List<Guid> dmscortesia { get; set; }
        public Dms()
        {
            dmstaller = new List<Guid>();
            dmsjob = new List<Guid>();
            dmscortesia = new List<Guid>();
        }
    }

    [DataContract]
    public class DmsTaller
    {
        [DataMember]
        public Guid Id { get; set; }
        [DataMember(Name = "dms")]
        public Guid DmsId { get; set; }
        [DataMember]
        public string Descripcion { get; set; }
        [DataMember]
        public string Direccion { get; set; }
        [DataMember]
        public bool? VehiculoCortesia { get; set; }
        [DataMember]
        public string DmsKey { get; set; }
        [DataMember]
        public decimal GeoLat { get; set; }
        [DataMember]
        public decimal GeoLng { get; set; }
    }

    [DataContract]
    public class DmsJob
    {
        [DataMember]
        public Guid Id { get; set; }
        [DataMember(Name = "dms")]
        public Guid DmsId { get; set; }
        [DataMember]
        public string Descripcion { get; set; }
    }

    [DataContract]
    public class DmsCortesia
    {
        [DataMember]
        public Guid Id { get; set; }
        [DataMember(Name = "dms")]
        public Guid DmsId { get; set; }
        [DataMember]
        public string Descripcion { get; set; }
        [DataMember]
        public string DmsKey { get; set; }
    }

    [DataContract]
    public class DmsPayload
    {
        [DataMember(Name = "dms")]
        public Dms dms { get; set; }
        [DataMember(Name = "dmsTalleres")]        
        public List<DmsTaller> dmsTaller { get; set; }
        [DataMember(Name = "dmsJobs")]
        public List<DmsJob> dmsJob { get; set; }
        [DataMember(Name = "dmsCortesias")]
        public List<DmsCortesia> dmsCortesia { get; set; }
        public DmsPayload()
        {
            dms = new Dms();
            dmsTaller = new List<DmsTaller>();
            dmsJob = new List<DmsJob>();
            dmsCortesia = new List<DmsCortesia>();
        }
     

    }
    [Api("Configuracion del DMS")]
    [Route("/dmsconfig", "GET", 
        Summary = @"Obtener la configuración del DMS vinculado a la URL", 
        Notes = @"El backend determina que DMS corresponde a la request.
Devuelve lista de talleres y opciones rápidas de trabajos.
")]    
    public class GetDms : IReturn<DmsPayload>
    {

        //public Guid Id { get; set; }
    }



}