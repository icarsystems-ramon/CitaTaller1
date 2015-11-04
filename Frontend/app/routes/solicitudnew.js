import Ember from 'ember';

export default Ember.Route.extend({   
    beforeModel: function(){
        // Ojo! Devuelvo una promise
        console.log ('Debug: Paso por route.beforModel()');
        return this.store.findAll('dms'); 
        },

    model: function(){
 
        var solicitud = this.store.createRecord ('solicitud',
            {
            'nombre': 'Ramon',
            'apellidos': 'Moliner'
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

    actions: {
        saveSolicitud: function()
            {
            var self = this;            
            var dmstaller = self.store.peekAll('dmsTaller')|| [];
            console.log ('Debug: talleres.count=' + dmstaller.get('length'));

            var modelo = self.modelFor('solicitudnew');
            //var model = this.store.modelFor ('solicitud');
            modelo.save().then(function(){
                self.transitionTo('solicitudok');
            });
        }
       
        //chooseTaller: function(id)
        //    {
        //    console.log ('Route chooseTaller: ' + id);
        //    },
        //selectJob: function (id)
        //    {
        //    console.log ('Route selectJob: ' + id);
        //    },
        //unselectJob: function(id)
        //    {
        //    console.log ('Route unselectJob: ' + id);
        //    }
    
        }
 
});
