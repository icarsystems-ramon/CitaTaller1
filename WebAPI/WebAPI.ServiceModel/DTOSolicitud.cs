using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using ServiceStack;


namespace CitaTaller.ServiceModel
{
    [DataContract]
   
    public class SolicitudPayload
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
        [DataMember]
        public Guid DmsTallerId { get; set; }
        [DataMember]
        public string Descripcion { get; set; }
        [DataMember]
        public bool? VehiculoCortesia { get; set; }


        [DataMember(Name = "solicitudjob")]
        public List<modelSolicitudJob> solicitudJob { get; set; }
        [DataMember(Name = "solicitudhora")]
        public List<modelSolicitudHora> solicitudHora { get; set; }
        public SolicitudPayload()
        {
            //solicitud = new modelSolicitud();
            solicitudJob = new List<modelSolicitudJob>();
            solicitudHora = new List<modelSolicitudHora>();
        }

    }

    public class GetSolicitudesResponse
    {
        public List<SolicitudPayload> Results { get; set; }
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
    public class GetSolicitud : IReturn<SolicitudPayload>
    {
        [ApiMember(Name = "ID", Description = "Id de la solicitud", ParameterType = "path", DataType = "GUID", IsRequired = true)]
        public Guid Id { get; set; }
    }
    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes", "POST", Summary = @"Creación de nueva solicitud", Notes = @"")]
    public class CreateSolicitud : IReturn<SolicitudPayload>
    {
        public SolicitudPayload solicitud { get; set; }
    }
    [Api("Solicitudes de usuario de cita de taller")]
    [Route("/solicitudes/{Id}", "PUT", Summary = @"Modificado de una solicitud ya guardada", Notes = @"")]
    public class UpdateSolicitud : IReturn<SolicitudPayload>
    {
        [ApiMember(Name = "ID", Description = "Id de la solicitud", ParameterType = "path", DataType = "GUID", IsRequired = true)]
        public Guid Id { get; set; }
        public SolicitudPayload solicitud { get; set; }
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