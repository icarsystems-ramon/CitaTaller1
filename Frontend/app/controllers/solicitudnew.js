import Ember from 'ember';
import moment from 'moment';

export default Ember.Controller.extend({

    multiTaller: function(){
        //console.log ('Debug: Evaluating controller.multiTaller');
        var dmstaller = this.store.peekAll('dmsTaller')|| [];
        if (dmstaller.get('length') > 1){return true;}
        else {return false;}
    }.property('isDirty'),

    vehiculoCortesiaEnabled: function(){
        //console.log ('Debug: Evaluating controller.vehiculoCortesiaEnabled');
        var retorno = this.model.get('dmsTaller').get('vehiculoCortesia');
        if (retorno === undefined) {return false;}
        return retorno;

    }.property('model.dmsTaller'),

    
    listTaller: function(){
        //console.log ('Debug: Loading controller.ListTaller');
       
        var modelTaller = this.store.peekAll('dmsTaller')|| [];
        var retorno = modelTaller.map(function(obj){
            return Ember.Object.create().setProperties(obj);
        });

        var x = 0;
        for (x; x<retorno.get('length'); x++) {
            retorno.objectAt(x).set('value1',retorno.objectAt(x).get('id'));
            retorno.objectAt(x).set('value2','');
            retorno.objectAt(x).set('selected',false);
            retorno.objectAt(x).set('geoVisible',false);
        }
        retorno.objectAt(0).set ('selected',true);
        retorno.objectAt(0).set('value2',retorno.objectAt(0).get('id'));
        
        this.setChooseTaller (modelTaller.objectAt(0));
        

        //retorno.forEach(function(item){
        //    item.set('choosed',false);
        //    item.set('geoVisible',false);
        //});

        //retorno.objectAt(0).set ('choosed',true);
        return retorno;
    }.property('isDirty'),

    listJob: function(){
        //console.log ('Debug: Loading controller.listJob');
        var modelJob = this.store.peekAll('dmsJob')|| [];  
        
        var retorno = modelJob.map(function(obj){
            return Ember.Object.create().setProperties(obj);
        });

        retorno.forEach(function(item){
            item.set('selected',false);
           
        });

        //modelJob.forEach(function(item){
        //    var viewJob = Ember.Object.create().setProperties({
        //        'id': item.get('id'),
        //        'descripcion': item.get('descripcion') ,
        //        'selected': false
        //    }); 
        //    retorno.pushObject(viewJob);
        //});
        return retorno;
    }.property('isDirty'),

    listFecha: function(){
        //console.log ('Debug: Loading controller.listFecha');
        var retorno = [];
        var x=0;
        var y=0;
        var z=0;
        var dindex=0;
        var weekdaysShort = 'Dom._Lun._Mar._Mié._Jue._Vie._Sáb.'.split('_');
        var dow = 0;
        //moment.locale('es');
        var now = moment();
        var xfecha = now.startOf('day');
        var dfecha;
        for (; x<6; x++) {
            xfecha.add(1,'days');
            dow = xfecha.day();
            if (dow === 0 || dow === 6) {
                xfecha.add(1,'days');
                dindex ++;
            };
            if (dow === 0 || dow === 6) {
                xfecha.add(1,'days');
                dindex ++;
            };
            dindex ++;
            dow = xfecha.day();
            dfecha = weekdaysShort.objectAt(dow); //xfecha.format('dddd');  //xfecha.calendar(); 
            

            var itemFecha = Ember.Object.create();
            itemFecha.set ('fecha',xfecha.format());
            itemFecha.set ('fechaDisplay',dfecha);
            itemFecha.set ('selected',false);
            itemFecha.set ('listHora',[]);

            for (y=0; y<8; y++){

                for (z=0; z<2; z++){
                    var itemHora = Ember.Object.create();
                    itemHora.set ('parent',itemFecha);
                    itemHora.set ('momentObj',xfecha);
                    itemHora.set ('fecha',xfecha.format());   
                    itemHora.set ('hora', 8 + y);
                    itemHora.set ('minuto', 30 * z);
                    itemHora.set ('selected', false); 
                    itemHora.set ('fechaDisplay',dfecha);
                    itemHora.set ('horaDisplay',itemHora.get('hora') + ':' + itemHora.get('minuto'));
                   
                    itemFecha.listHora.pushObject(itemHora);
                }
            }
            retorno.pushObject (itemFecha);
        }
        return retorno;
    }.property('isDirty'),

    // savingEnabled: Es una propiedad observer.
    // Indica si se puede grabar el registro.
    // isSaving: No se debe grabar porque se esta en el proceso de grabarlo.
    // hasDirtyAttributes: El modelo tiene algun campo modificado.

    savingEnabled: function()
    {
        //console.log ('Debug: Evaluating controller.savingEnabled');
        var mandatory = true;
        var solicitud = this.get('model');
        if (typeof solicitud.get('numgsm') === 'undefined') {mandatory = false;}
        else {if (solicitud.get('numgsm').length < 4) {mandatory = false;}}
        if (typeof solicitud.get('apellidos') === 'undefined') {mandatory = false;}
        else {if (solicitud.get('apellidos').length < 3) {mandatory = false;}}

        var tallerId = solicitud.get('dmsTaller').get('id');
        if (tallerId === undefined) {mandatory = false;}

        return mandatory && solicitud.get('hasDirtyAttributes') && !solicitud.get('isSaving');
    }.property('isDirty', 'isSaving', 'model.numgsm', 'model.apellidos', 'model.email', 'model.dmsTaller'),

    // savingDisabled es la negacion de savingEnabled
    savingDisabled: Ember.computed.not('savingEnabled'),


    emailValidation: {
        'errorMessage': 'Introduzca un email válido',
        'isError': (inputValue) => {
            console.log ('Debug: Evaluating emailValidation');
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            return !emailPattern.test(inputValue);
        }
    },

    setChooseTaller: function (taller){
          this.model.set('dmsTaller',taller);
      },


    actions: {        

        emailValidation: function()
        {
            //console.log ('Debug: Controller emailValidation: ' );
        },

   
        chooseTaller: function(taller)
        {
            console.log ('Debug: Controller chooseTaller: ' + taller.get('descripcion'));
            this.setChooseTaller (taller);
        },   

        toggleFecha: function(fecha)
        {
            //console.log('Debug: Controller toggleFecha: ' + fecha.get('fecha'));
            fecha.toggleProperty ('selected');            
            fecha.get('listHora').forEach(function(itemHora){
                itemHora.set ('selected',fecha.get('selected'))        
            });
        },

        toggleDay: function(day)
        {
            //console.log('Debug: Controller toggleFecha: ' + fecha.get('fecha'));
            //day.toggleProperty ('selected');            
            //day.get('listHora').forEach(function(itemHora){
            //    itemHora.set ('selected',fecha.get('selected'))        
            //});
        },

        toggleHora: function (hora)
        {
          //console.log ('Debug: Controller toggleHora ' + hora.get('fecha') + ', ' + hora.get('hora') + ':' + hora.get('minuto'));          
          hora.get('parent').set('selected',false);
        }

    }

});
