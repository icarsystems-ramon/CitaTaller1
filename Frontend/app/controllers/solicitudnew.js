import Ember from 'ember';

export default Ember.Controller.extend({ 

    multiTaller: function(){
        console.log ('Debug: Evaluating controller.multiTaller');
        var dmstaller = this.store.peekAll('dmsTaller')|| [];        
        if (dmstaller.get('length') > 1){return true;}
        else {return false;}   
    }.property('isDirty'),

    vehiculoCortesiaEnabled: function(){
        console.log ('Debug: Evaluating controller.vehiculoCortesiaEnabled');
        var retorno = this.model.get('dmsTaller').get('vehiculoCortesia');
        if (retorno === undefined) {return false;}
        return retorno;

    }.property('model.dmsTaller'),

    listTaller: function(){       
        console.log ('Debug: Loading controller.ListTaller');
        var modelTaller = this.store.peekAll('dmsTaller')|| []; 
        var retorno = modelTaller.map(function(obj){
            return Ember.Object.create().setProperties(obj);
        });
        retorno.forEach(function(item){
            item.set('choosed',false);
        });


        retorno.objectAt(0).set ('choosed',true);
        this.setChooseTaller (retorno.objectAt(0).get('id'));
        return retorno;
    }.property('isDirty'),

    listJob: function(){         
        console.log ('Debug: Loading controller.listJob');
        var modelJob = this.store.peekAll('dmsJob')|| []; 
        var retorno = modelJob.map(function(obj){
            return Ember.Object.create().setProperties(obj);
        });
        //return this.store.peekAll('dmsJob')|| []; 
        return retorno;
    }.property('isDirty'),

    // savingEnabled: Es una propiedad observer. 
    // Indica si se puede grabar el registro. 
    // isSaving: No se debe grabar porque se esta en el proceso de grabarlo.
    // hasDirtyAttributes: El modelo tiene algun campo modificado.

    savingEnabled: function()
    {
        console.log ('Debug: Evaluating controller.savingEnabled');
        var mandatory = true;
        var solicitud = this.get('model');    
        if (typeof solicitud.get('numgsm') === 'undefined') {mandatory = false;}
        else {if (solicitud.get('numgsm').length < 4) {mandatory = false;}}    
        if (typeof solicitud.get('apellidos') === 'undefined') {mandatory = false;}
        else {if (solicitud.get('apellidos').length < 3) {mandatory = false;}}   
        
        

        return mandatory && solicitud.get('hasDirtyAttributes') && !solicitud.get('isSaving');      
    }.property('isDirty', 'isSaving', 'model.numgsm', 'model.apellidos', 'model.email'),
   
    // savingDisabled es la negacion de savingEnabled
    savingDisabled: Ember.computed.not('savingEnabled'),

    setChooseTaller: function (id){
        var pepe = this.store.peekRecord('dmsTaller',id);
        this.model.set('dmsTaller',pepe); 
    },

    addJob: function (id){
        var job = this.store.createRecord('solicitudJob',
         {
             solicitud: this.model
         }
         );
            
        job.set('dmsJob',this.store.peekRecord('dmsJob',id)); 
        this.model.get("solicitudJobs").pushObject(job);

    },
    deleteJob: function (id){
        var lista = this.model.get("solicitudJobs");
        var count = lista.get('length');
        for (var i = 0; i < count; i++){
            var pepe = lista.objectAt(i);
            if (pepe.get('dmsJob').get('id') === id) {this.store.deleteRecord(pepe);}
        }
    
    },

   
    addHora: function(fecha,hora){

    },

    deleteHora: function(fecha,hora){
    },

    actions: {
       
       
        chooseTaller: function(id)
        {
            console.log ('Controller chooseTaller: ' + id);
            this.setChooseTaller (id);       

        },
        selectJob: function (id)
        {
            console.log ('Controller selectJob: ' + id);
            this.addJob(id);
        },
        unselectJob: function(id)
        {
            console.log ('Controller unselectJob: ' + id);
            this.deleteJob(id);
        },
        selectHora: function(fecha,hora)
        {
            console.log('Controller selectHora: ' + fecha + hora);
            this.addHora (fecha,hora);
        },
        unselectHora: function(fecha,hora)
        {
            console.log('Controller unselectHora: ' + fecha + hora);
            this.deleteHora (fecha,hora);
        }
    
    }
    
});
