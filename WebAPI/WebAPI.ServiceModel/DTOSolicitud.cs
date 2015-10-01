using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using ServiceStack;


namespace CitaTaller.ServiceModel
{
    [DataContract]
    public class SolicitudPayload
    {
        [DataMember(Name = "solicitud")]
        public modelSolicitud solicitud { get; set; }
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
        [ApiMember(Name = "ID", Description = "Id de la solicitud",
        ParameterType = "path", DataType = "GUID", IsRequired = true)]
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