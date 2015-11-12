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
        
        this.setTaller (modelTaller.objectAt(0));   
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
        return retorno;
    }.property('isDirty'),
    
    createListDay: function(itemMinuto,dayHeader){
        var itemDay;
        var d=0;
        var dow=0;
        var now = moment();    
        var weekdaysShort = 'Dom._Lun._Mar._Mié._Jue._Vie._Sáb.'.split('_'); 
        var fecha = now.startOf('day');

        itemDay = Ember.Object.create();
        itemDay.set ('minuteHeader',true);
        itemDay.set ('dayHeader',false);
        itemDay.set ('atomCell',false);
        itemDay.set ('parent', itemMinuto);
        itemDay.set ('checked',false);
        itemDay.set ('fecha','');
        itemDay.set ('hora',itemMinuto.get('hora'));
        itemDay.set ('minuto',itemMinuto.get('minuto'));                    
        itemDay.set ('horaShow',itemMinuto.get('horaShow'));
        itemDay.set ('dayShow','');
        itemMinuto.listDay.pushObject(itemDay);

        for (d=0; d<6; d++) {
            fecha.add(1,'days');    
            dow = fecha.day();
            if (dow === 0 || dow === 6) {
                fecha.add(1,'days');  
                dow = fecha.day();
            }
            if (dow === 0 || dow === 6) {
                fecha.add(1,'days');                      
                dow = fecha.day();
            }  

            itemDay = Ember.Object.create();
           
            itemDay.set ('minuteHeader',false);
            itemDay.set ('atomCell',!itemDay.get('minuteHeader'));
            itemDay.set ('dayHeader',dayHeader);
            itemDay.set ('parent', itemMinuto);
            itemDay.set ('checked',false);
            itemDay.set ('fecha',fecha.format());
            itemDay.set ('hora',itemMinuto.get('hora'));
            itemDay.set ('minuto',itemMinuto.get('minuto'));                    
            itemDay.set ('horaShow',itemMinuto.get('horaShow'));
            itemDay.set ('dayShow',weekdaysShort.objectAt(dow));
            itemMinuto.listDay.pushObject(itemDay);           
        }
    },
    
    tableHora: function(){
        //console.log ('Debug: Loading controller.listFecha');
        var retorno = [];        
        var itemMinuto;
        var h = 0;
        var m = 0;

        itemMinuto = Ember.Object.create();
        itemMinuto.set ('listDay',[]);
        itemMinuto.set ('checked',false);
        itemMinuto.set ('hora',0);
        itemMinuto.set ('minuto',0);               
        itemMinuto.set ('horaShow', '');             
        itemMinuto.set ('dayShow','');   
        this.createListDay (itemMinuto,true);              
        retorno.pushObject (itemMinuto);

        for (h=8; h<18; h++){            
            for (m=0; m<60; m+=30){               
                itemMinuto = Ember.Object.create();
                itemMinuto.set ('listDay',[]);
                itemMinuto.set ('checked',false);
                itemMinuto.set ('hora',h);
                itemMinuto.set ('minuto',m);               
                itemMinuto.set ('horaShow', h + ':' + (m + '0').substring(0,2));             
                itemMinuto.set ('dayShow','');   
                this.createListDay (itemMinuto,false);              
                retorno.pushObject (itemMinuto);
            }
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

    setTaller: function (taller){
          this.model.set('dmsTaller',taller);
      },


    actions: {        

        emailValidation: function()
        {
            //console.log ('Debug: Controller emailValidation: ' );
        },
   
        chooseTaller: function(taller)
        {
            //console.log ('Debug: Controller chooseTaller: ' + taller.get('descripcion'));
            this.setTaller (taller);
        },         

        toggleMinuteHeader: function(minuto) {    
            //console.log ('toggleDayHeader: ' + minuto.get('hora') + ':' + minuto.get('minuto'));
            var parent;
            var checked;
            var x = 0;


            parent   = minuto.get('parent');
            checked = minuto.get('checked');
            minuto.set ('checked',!minuto.get('checked'));
            checked = minuto.get('checked');
           
            for (x = 0; x <  parent.listDay.get('length'); x++)
            {
                parent.listDay.objectAt(x).set('checked',checked);                       
            }            
        },
        toggleDayHeader: function(day) {
            //console.log ('toggleDayHeader: ' + day.get('fecha'));
            //var parent;
            var fecha;
            var table;
            var list;
            var checked;
            var x;
            var y;

            table    = this.get('tableHora');
            //parent   = minuto.get('parent');
            //parent.set ('selected',!parent.get('selected'));
            //selected = parent.get('selected');
            //selected = true;

            checked = day.get('checked');
            day.set ('checked',!day.get('checked'));
            checked = day.get('checked');

            fecha = day.get('fecha');
            for (x = 0; x <  table.get('length'); x++){
                list = table.objectAt(x).get('listDay');
                for (y = 0; y <  list.get('length'); y++){
                    if (list.objectAt(y).get('fecha') === fecha){list.objectAt(y).set('checked',checked);}
                }
            }
        },
        toggleHora: function(minuto) {
            minuto.get('parent').set('checked',false);
        },
    }

});
