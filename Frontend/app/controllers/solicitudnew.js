import Ember from 'ember';

export default Ember.Controller.extend({ 
    // savingEnabled: Es una propiedad observer. 
    // Indica si se puede grabar el registro. 
    // isSaving: No se debe grabar porque se está en el proceso de grabarlo.
    // hasDirtyAttributes: El modelo tiene algun campo modificado.
    savingEnabled: function()
    {
        var mandatory = true;
        var solicitud = this.get('model');    
        if (typeof solicitud.get('numgsm') == 'undefined') {mandatory = false;}
        else {if (solicitud.get('numgsm').length < 4) {mandatory = false;}};    
        if (typeof solicitud.get('apellidos') == 'undefined') {mandatory = false;}
        else {if (solicitud.get('apellidos').length < 3) {mandatory = false;}};   
        
        

        return mandatory && solicitud.get('hasDirtyAttributes') && !solicitud.get('isSaving');      
    }.property('isDirty', 'isSaving', 'model.numgsm', 'model.apellidos', 'model.email'),
   
    // savingDisabled es la negacion de savingEnabled
    savingDisabled: Ember.computed.not('savingEnabled')  
});
