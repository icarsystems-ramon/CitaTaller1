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
        var modelo = self.modelFor('solicitudnew');
        modelo.save().then(function(){
            self.localStoreSolicitud (modelo);
            self.transitionTo('solicitudok');
        });
    },

    actions: {
        saveSolicitud: function()
            {
                this.saveModel();           
            }
        }
 
});
