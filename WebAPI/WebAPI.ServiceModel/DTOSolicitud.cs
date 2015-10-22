using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using ServiceStack;


namespace CitaTaller.ServiceModel
{
    [DataContract]
    public class Solicitud
    {
        [DataMember]
        public Guid Id { get; set; }
        [DataMember]
        public DateTime? CreacionFecha { get; set; }
        public Guid? CreacionDevice { get; set; }
        [DataMember]
        public string Numgsm { get; set; }
        [DataMember]
        public string Email { get; set; }
        [DataMember]
        public string Nombre { get; set; }
        [DataMember]
        public string Apellidos { get; set; }
        [DataMember]
        public string Matric { get; set; }
        [DataMember]
        public string Chasis { get; set; }
        [DataMember(Name = "dmstaller")]
        public Guid DmsTallerId { get; set; }
        [DataMember]
        public string Descripcion { get; set; }
        [DataMember]
        public bool? VehiculoCortesia { get; set; }
        [DataMember(Name = "solicitudjobs")]
        public List<Guid> solicitudjob { get; set; }
        [DataMember(Name = "solicitudhoras")]
        public List<Guid> solicitudhora { get; set; }
        public Solicitud()
        {
            solicitudjob = new List<Guid>();
            solicitudhora = new List<Guid>();
        }
    }

    [DataContract]
    public class SolicitudJob
    {
        [DataMember]
        public Guid Id { get; set; }
        [DataMember(Name = "solicitud")]
        public Guid SolicitudId { get; set; }
        [DataMember(Name = "dmsjob")]
        public Guid DmsJobId { get; set; }
    }

    [DataContract]
    public class SolicitudHora
    {
        [DataMember]
        public Guid Id { get; set; }
        [DataMember(Name = "solicitud")]
        public Guid SolicitudId { get; set; }
        [DataMember]
        public DateTime? Fecha { get; set; }
        [DataMember]
        public byte? Hora { get; set; }
        [DataMember]
        public byte? Minuto { get; set; }
    }


    //[DataContract]
    //public class SolicitudPayload
    //{
    //    [DataMember(Name = "solicitud")]
    //    public List<Solicitud> solicitud { get; set; }
    //    [DataMember(Name = "solicitudjobs")]
    //    public List<modelSolicitudJob> solicitudJob { get; set; }
    //    [DataMember(Name = "solicitudhoras")]
    //    public List<modelSolicitudHora> solicitudHora { get; set; }
    //    public SolicitudPayload()
    //    {
    //        solicitud = new List<Solicitud>();
    //        solicitudJob = new List<modelSolicitudJob>();
    //        solicitudHora = new List<modelSolicitudHora>();
    //    }
    //}

    [DataContract]
  
    public class GetSolicitudesResponse
    {
        [DataMember(Name = "solicitudes")]
        public List<Solicitud> solicitud { get; set; }
        [DataMember(Name = "solicitudjobs")]
        public List<SolicitudJob> solicitudjob { get; set; }
        [DataMember(Name = "solicitudhoras")]
        public List<SolicitudHora> solicitudhora { get; set; }
        public GetSolicitudesResponse()
        {
            solicitud = new List<Solicitud>();
            solicitudjob = new List<SolicitudJob>();
            solicitudhora = new List<SolicitudHora>();
        }
    }

    //Web Service DTO's
    
    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes", "GET",
        Summary = @"Obtener lista de solicitudes",
        Notes = @""
        )]   
    public class GetSolicitudes : IReturn<GetSolicitudesResponse>
    {
        public String QueryParam1 { get; set; }
        public String QueryParam2 { get; set; }
    }

    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes/{Id}", "GET",
        Summary = @"Obtener datos de una solicitud en concreto",
        Notes = @""
        )]
    public class GetSolicitud : IReturn<GetSolicitudesResponse>
    {
        [ApiMember(Name = "ID", Description = "Id de la solicitud", ParameterType = "path", DataType = "GUID", IsRequired = true)]
        public Guid Id { get; set; }
    }
    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes", "POST", Summary = @"Creación de nueva solicitud", Notes = @"")]
    public class CreateSolicitud : IReturn<GetSolicitudesResponse>
    {
        public GetSolicitudesResponse solicitud { get; set; }
    }
    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes/{Id}", "PUT", Summary = @"Modificado de una solicitud ya guardada", Notes = @"")]
    public class UpdateSolicitud : IReturn<GetSolicitudesResponse>
    {
        [ApiMember(Name = "ID", Description = "Id de la solicitud", ParameterType = "path", DataType = "GUID", IsRequired = true)]
        public Guid Id { get; set; }
        public GetSolicitudesResponse solicitud { get; set; }
    }
    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes/{Id}", "DELETE", Summary = @"Borrado de una solicitud", Notes = @"")]
    public class DeleteSolicitud : IReturnVoid
    {

        [ApiMember(Name = "ID", Description = "Id de la solicitud",
        ParameterType = "path", DataType = "GUID", IsRequired = true)]
        public Guid Id { get; set; }
    }
    
}