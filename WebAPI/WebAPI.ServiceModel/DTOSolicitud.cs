﻿using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using ServiceStack;


namespace CitaTaller.ServiceModel
{

    [DataContract]
    public class SolicitudJob
    {
        [DataMember(Order = 0)]
        public Guid Id { get; set; }
        [DataMember(Name = "solicitud", Order =1)]
        public Guid SolicitudId { get; set; }
        [DataMember(Name = "dmsJob", Order =2)]
        public Guid DmsJobId { get; set; }
    }

    [DataContract]
    public class SolicitudHora
    {
        [DataMember(Order = 0)]
        public Guid Id { get; set; }
        [DataMember(Name = "solicitud", Order = 1)]
        public Guid SolicitudId { get; set; }
        [DataMember(Order = 2)]
        public DateTime? Fecha { get; set; }
        [DataMember(Order = 3)]
        public byte? Hora { get; set; }
        [DataMember(Order = 4)]
        public byte? Minuto { get; set; }
    }

    [DataContract]
    public class Solicitud    {
        [DataMember]
        public Guid Id { get; set; }
        [DataMember]
        public DateTime? CreacionFecha { get; set; }
        [DataMember]
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
        [DataMember]
        public int Km { get; set; } 
        [DataMember(Name = "dmsTaller")]
        public Guid DmsTallerId { get; set; }
        [DataMember]
        public string Descripcion { get; set; }
        [DataMember]
        public bool? VehiculoCortesia { get; set; }
        [DataMember(Name = "solicitudJobs")]
        public List<SolicitudJob> solicitudjobs { get; set; }
        [DataMember(Name = "solicitudHoras")]
        public List<SolicitudHora> solicitudhoras { get; set; }       
        public Solicitud()
        {
            solicitudjobs = new List<SolicitudJob>();
            solicitudhoras = new List<SolicitudHora> ();
        }
    }
   
    [DataContract(Name = "solicitudResponse")] 
    public class SolicitudResponse
    {
        [DataMember(Name = "solicitud")]
        public Solicitud solicitud { get; set; }    
    }

    [DataContract(Name = "solicitudesResponse")]   
    public class SolicitudesResponse
    {        
        [DataMember(Name = "solicitudes")]
        public List<Solicitud> solicitudes { get; set; }
    }


    //Web Service DTO's

    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes", "GET", Summary = @"Obtener lista de solicitudes", Notes = @"")]   
    public class GetSolicitudes : IReturn<SolicitudResponse>
    {
        public Boolean excludeDetail { get; set; }
        public string dmsTallerId { get; set; }
       
    }

    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes/{Id}", "GET", Summary = @"Obtener datos de una solicitud en concreto", Notes = @"")]
    [Route("/solicitud/{Id}", "GET", Summary = @"Obtener datos de una solicitud en concreto", Notes = @"")]
    public class GetSolicitud : IReturn<SolicitudResponse>
    {
        [ApiMember(Name = "ID", Description = "Id de la solicitud", ParameterType = "path", DataType = "GUID", IsRequired = true)]
        public Guid Id { get; set; }
    }


    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes",   "POST", Summary = @"Creación de nueva solicitud", Notes = @"")]
    public class CreateSolicitud : IReturn<SolicitudResponse>
    {
        public Solicitud solicitud { get; set; }          
    }


    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes/{Id}", "PUT", Summary = @"Modificado de una solicitud ya guardada", Notes = @"")]
    public class UpdateSolicitud : IReturn<SolicitudResponse>
    {
        [ApiMember(Name = "ID", Description = "Id de la solicitud", ParameterType = "path", DataType = "GUID", IsRequired = true)]
        public Guid Id { get; set; }
        public Solicitud solicitud { get; set; }
    }

    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes/{Id}", "DELETE", Summary = @"Borrado de una solicitud", Notes = @"")]
    public class DeleteSolicitud : IReturnVoid
    {
        [ApiMember(Name = "ID", Description = "Id de la solicitud", ParameterType = "path", DataType = "GUID", IsRequired = true)]
        public Guid Id { get; set; }
    }
    
}