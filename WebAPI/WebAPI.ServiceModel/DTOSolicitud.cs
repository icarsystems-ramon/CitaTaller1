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

    //Web Service DTO's
    [Route("/solicitud", "GET")]
    [Route("/solicitudes", "GET")]
    public class GetSolicitudes : IReturn<GetSolicitudesResponse> { }

    public class GetSolicitudesResponse
    {
        public List<SolicitudPayload> Results { get; set; }
    }

    [Route("/solicitud/{Id}", "GET")]
    [Route("/solicitudes/{Id}", "GET")]
    public class GetSolicitud : IReturn<SolicitudPayload>
    {
        public Guid Id { get; set; }
    }

    [Route("/solicitud/{Id}", "POST")]
    [Route("/solicitudes", "POST")]
    public class CreateSolicitud : IReturn<SolicitudPayload>
    {
        public SolicitudPayload solicitud { get; set; }
    }

    [Route("/solicitud/{Id}", "PUT")]
    [Route("/solicitudes/{Id}", "PUT")]
    public class UpdateSolicitud : IReturn<SolicitudPayload>
    {
        public SolicitudPayload solicitud { get; set; }
    }

    [Route("/solicitud/{Id}", "DELETE")]
    [Route("/solicitudes/{Id}", "DELETE")]
    public class DeleteSolicitud : IReturnVoid
    {
        public Guid Id { get; set; }
    }
}