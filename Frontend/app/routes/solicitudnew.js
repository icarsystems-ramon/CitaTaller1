import Ember from 'ember';

export default Ember.Route.extend({   
    beforeModel: function(){
        // Ojo! Devuelvo una promise
        console.log ('Debug: Paso por route.beforModel()');
        return this.store.findAll('dms'); 
        },

    model: function(){
        //var store = this.get('targetObject.store');
        //var dmstaller = this.store.modelFor ('dms-taller');
        var solicitud = this.store.createRecord ('solicitud',
            {
            'nombre': 'Ramon',
            'apellidos': 'Moliner'
            });
        
        //if (this.store.all('solicitud').get('length') > 0)
        var dmstaller = this.store.peekAll('dmsTaller')|| [];
        console.log ('Debug: router.model. Tenemos ' + dmstaller.get('length') + ' talleres en memoria');
        if (dmstaller.get('length') === 1)
        {
            var firsttaller = dmstaller.objectAt(0);
            solicitud.set('dmsTaller',firsttaller);
        }

        //var secondt = dmstaller.objectAt(0);
        //solicitud.set('dmsTaller',secondt);
       

        //return Ember.RSVP.hash({ 
        //    solicitud: solicitud,
        //    talleres: dmstaller
        //});
       
        return solicitud;
    },

    actions: {
        saveSolicitud: function()
            {
            
            //var model = this.get('model');
            //var model = this.modelFor (this.get('currentUrl'));
            var dmstaller = this.store.peekAll('dmsTaller')|| [];
            console.log ('Debug: talleres.count=' + dmstaller.get('length'));

            var modelo = this.modelFor('solicitudnew');
            //var model = this.store.modelFor ('solicitud');
            modelo.save();
            },
        selectTaller: function(id)
            {
                console.log ('selectTaller: ' + id);
            },
        deselectTaller: function (id)
            {
                console.log ('deselectTaller: ' + id);
            },
        selectJob: function(id)
            {
                console.log ('selectJob: ' + id);
            },
        deselectJob:function(id)
            {
                console.log ('deleselectJob: ' + id);
            }
        }
 
});
