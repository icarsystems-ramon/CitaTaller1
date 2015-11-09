import Ember from 'ember';
import Settings from '../models/settings';

export default Ember.Route.extend({   

  
    beforeModel: function(){
        // Ojo! Devuelvo una promise
        console.log ('Debug: Paso por route.beforModel()');
        return this.store.findAll('dms'); 
        },

    model: function(){       
        var solicitud = this.store.createRecord ('solicitud',
            {
                'creacionDevice':  this.get ('settings.creacionDevice'),
                'nombre': this.get ('settings.nombre'),
                'apellidos': this.get ('settings.apellidos'),
                'numgsm': this.get ('settings.numgsm'),
                'email': this.get ('settings.email'),
                'matric': this.get ('settings.matric')
            });

        var dmstaller = this.store.peekAll('dmsTaller')|| [];
        console.log ('Debug: router.model. Tenemos ' + dmstaller.get('length') + ' talleres en memoria');
        if (dmstaller.get('length') === 1)
        {
            var firsttaller = dmstaller.objectAt(0);
            solicitud.set('dmsTaller',firsttaller);
        }       
        return solicitud;
    },

    settings: Settings.create(),

    localStoreSolicitud: function(solicitud) {
        this.set ('settings.nombre',solicitud.get('nombre'));
        this.set ('settings.apellidos',solicitud.get('apellidos'));
        this.set ('settings.numgsm',solicitud.get('numgsm'));
        this.set ('settings.email',solicitud.get('email'));
        this.set ('settings.matric',solicitud.get('matric'));
        this.set ('settings.lastSolicitudId',solicitud.get('id'));
        this.set ('settings.creacionDevice',solicitud.get('creacionDevice'));
        
    },

    saveModel: function(){
        var self = this;     
        var solicitud = this.get ('currentModel');

        var listJob   = this.get('controller').get('listJob');
        var listFecha = this.get('controller').get('listFecha');

        listJob.forEach(function(itemJob){            
            if (itemJob.get('selected')){
                var newJob = self.store.createRecord('solicitudJob',{                    
                    solicitud: solicitud,
                    dmsJob: self.store.peekRecord('dmsJob',itemJob.get('id'))
                    });                
                solicitud.get("solicitudJobs").pushObject(newJob);            
            }            
        });

        listFecha.forEach(function(itemFecha){   
            var listHora = itemFecha.get('listHora');
            listHora.forEach(function(itemHora){
                if (itemHora.get('selected')){
                    var newHora = self.store.createRecord('solicitudHora',{                    
                        solicitud: solicitud,           
                        fecha: itemHora.get('momentObj').format('YYYY-MM-DD HH:mm:ssZ'),
                        hora: itemHora.get('hora'),
                        minuto: itemHora.get('minuto')
                    });                
                    solicitud.get("solicitudHoras").pushObject(newHora); 
                    console.log ('newHora.fecha ' + newHora.get('fecha') );
                }
            });           
        });

        solicitud.save().then(function(){
            self.localStoreSolicitud (solicitud);
            self.transitionTo('solicitudok');
        });
    },

    actions: {
        saveSolicitud: function(){
            this.saveModel();           
            }
        }
 
});
