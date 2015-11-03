import Ember from 'ember';

export default Ember.Route.extend({
    list_taller: function(){
        var store = this.get('targetObject.store');
        return store.peekAll('dmsTaller')|| []; 
    },
    beforeModel: function(){
        // Ojo! Devuelvo una promise
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
        console.log ('talleres.count=' + dmstaller.get('length'));
        //if (App.dms-taller.get('length') > 0)
        //{
        //    solicitud.set('dmsTaller',store.peekRecord('dmsTaller',"e8c341450e5b4a10abde50fe55fcc5ec"));
        //}
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
            console.log ('talleres.count=' + dmstaller.get('length'));

            var modelo = this.modelFor('solicitudnew');
            //var model = this.store.modelFor ('solicitud');
            modelo.save();
            }
        }
 
});
