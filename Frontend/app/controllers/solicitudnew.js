import Ember from 'ember';

export default Ember.Controller.extend({ 

    multiTaller: function(){
        console.log ('Debug: Evaluating controller.multiTaller');
        var dmstaller = this.store.peekAll('dmsTaller')|| [];        
        if (dmstaller.get('length') > 1){return true;}
        else {return false;}   
    }.property('isDirty'),

    listTaller: function(){       
        console.log ('Debug: Loading controller.ListTaller');
        //return this.store.peekAll('dmsTaller')|| []; 
        var modelTaller = this.store.peekAll('dmsTaller')|| []; 
        var retorno = modelTaller.map(function(obj){
            return Ember.Object.create().setProperties(obj);
        });
        retorno.forEach(function(item){
            item.set('selected',false);
        });

        retorno.objectAt(0).set ('selected',true);
        //return this.store.peekAll('dmsJob')|| []; 
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

    
});
