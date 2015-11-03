import Ember from 'ember';

export default Ember.Controller.extend({ 
    listTaller: function(){       
        console.log ('Debug: Loading controller.ListTaller');
        return this.store.peekAll('dmsTaller')|| []; 
    }.property('isDirty'),

    listJob: function(){       
        console.log ('Debug: Loading controller.listJob');
        return this.store.peekAll('dmsJob')|| []; 
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
    savingDisabled: Ember.computed.not('savingEnabled')  
});
