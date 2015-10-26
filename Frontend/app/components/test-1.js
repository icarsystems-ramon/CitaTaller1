import Ember from 'ember';

export default Ember.Component.extend({
    actions: {
        insertrow: function() {
            var store = this.get('targetObject.store');
            
            console.log("InsertRow >>>>");

            var soli = store.createRecord ('solicitud',
                {
                    'nombre': 'Ramon',
                    'apellidos': 'Moliner'
                }
                );
            soli.set('numgsm','650393696');
            soli.set('matric','47478KLM');
            soli.set('dmsTaller',store.peekRecord('dmsTaller',"e8c341450e5b4a10abde50fe55fcc5ec"));           
            var job = store.createRecord('solicitudJob',
                {
                    solicitud: soli
                }
                );
            
            job.set('dmsJob',store.peekRecord('dmsJob',"0a9e85a126754908a35411abc76261cb")); //,dmsjob.get('firstObject').get('id'));
            //Ember.guidFor(job);
            //job.set('id', store.generateIdForRecord(store,solicitudjob));
            //job.set('id',App.generateUUIDWithStatisticallyLowOddsOfCollision());
            soli.get("solicitudJobs").pushObject(job);
            //var soli2 = store.createRecord ('solicitud',
            //   {
            //       'nombre': 'Ramon2',
            //       'apellidos': 'Moliner2'
            //   }
            //   );

            soli.save();
            console.log("InsertRow <<<<");
        }
    }
});
