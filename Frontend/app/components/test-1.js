import Ember from 'ember';

export default Ember.Component.extend({
    actions: {
        insertrow: function() {
            var store = this.get('targetObject.store');
            
            console.log("InsertRow >>>>");
            //var memos = store.findAll('solicitud');


            

            var soli = store.createRecord ('solicitud',
                {
                    'nombre': 'Ramon',
                    'apellidos': 'Moliner'
                }
                );
            soli.set('numgsm','650393696');
            soli.set('matric','47478KLM');
            soli.set('dmsTaller',store.peekRecord('dmstaller',"e8c341450e5b4a10abde50fe55fcc5ec"));
            //soli.set('dmstaller',store.find('dmstaller',"e8c341450e5b4a10abde50fe55fcc5ec"));
            var job = store.createRecord('solicitudjob',
                {
                    solicitud: soli
                }
                );
            
            job.set('dmsjob',store.peekRecord('dmsjob',"0a9e85a126754908a35411abc76261cb")); //,dmsjob.get('firstObject').get('id'));
            //Ember.guidFor(job);
            //job.set('id', store.generateIdForRecord(store,solicitudjob));
            //job.set('id',App.generateUUIDWithStatisticallyLowOddsOfCollision());
            soli.get("solicitudjobs").pushObject(job);
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
