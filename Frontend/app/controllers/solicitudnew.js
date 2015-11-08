import Ember from 'ember';
import moment from 'moment';

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

        //retorno.setEach ('choosed',false);
        retorno.forEach(function(item){
            item.set('choosed',false);
            item.set('geoVisible',false);
        });


        retorno.objectAt(0).set ('choosed',true);
        //this.setChooseTaller (retorno.objectAt(0).get('id'));
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

    listFecha: function(){
        console.log ('Debug: Loading controller.listFecha');
        var retorno = [];
        var x=0;
        var y=0;
        moment.locale('es');
        var now = moment();
        var xfecha = now.startOf('day');
        var dfecha;
        for (; x<6; x++) {
            xfecha.add(1,'days');
            dfecha = xfecha.calendar();
            //console.log ('Debug: Loading controller.listHora ' + dfecha);
            var fecha = Ember.Object.create();
            fecha.set ('fecha',xfecha);
            fecha.set ('fechaDisplay',dfecha);
            fecha.set ('listHora',[]);

            for (y=0;y<8;y++)
            {

              var hora = Ember.Object.create();
              hora.set ('fecha',xfecha);
              hora.set ('fechaDisplay',dfecha);
              hora.set ('hora', 8 + y);
              hora.set ('minuto', 0);
              hora.set ('selected', false);
              //console.log ('Debug: Generaring hour:' + hora);
              fecha.listHora.pushObject(hora);
            }
            retorno.pushObject (fecha);
        }
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


    emailValidation: {

        'errorMessage': 'Introduzca un email válido',
        'isError': (inputValue) => {
            console.log ('Debug: Evaluating emailValidation');
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            return !emailPattern.test(inputValue);
        }
    },

    setChooseTaller: function (id){
        var pepe = this.store.peekRecord('dmsTaller',id);
        this.model.set('dmsTaller',pepe);
        //this.set('geoLat',pepe.get('geoLat'));
        //this.set('geoLng',pepe.get('geoLng'));
    },

    addJob: function (id){
        deleteJob (id);
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




    addFecha: function(fecha){

    },

    addHora: function (fecha,hora,minuto){
        deleteHora (fecha,hora,minuto);
        var hora = this.store.createRecord('solicitudHora',
         {
             solicitud: this.model
         }
         );

        hora.set('fecha',fecha);
        hora.set('hora',hora);
        hora.set('minuto',minuto);
        this.model.get("solicitudHoras").pushObject(job);

    },

    deleteHora: function (fecha,hora,minuto){
        var lista = this.model.get("solicitudHoras");
        var count = lista.get('length');
        for (var i = 0; i < count; i++){
            var pepe = lista.objectAt(i);
            if (pepe.get('fecha') === fecha && pepe.get('hora') === hora && pepe.get('minuto') === minuto) {this.store.deleteRecord(pepe);}
        }

    },


    actions: {

        toggleGeo: function(taller)
        {
            var id = taller.get('id');
            console.log ('Debug: Controller xxxxxx: ' + id);
            //this.setChooseTaller (id);
           // this.toggleGeoVisible();
        },

        emailValidation: function()
        {
            console.log ('Debug: Controller emailValidation: ' );
        },

        //toggleGeo: function(id)
        //{
        //    console.log ('Debug: Controller. toggleGeo' + id);
        //    this.toggleGeoVisible();
        //},

        chooseTaller: function(id)
        {
            console.log ('Debug: Controller chooseTaller: ' + id);
            this.setChooseTaller (id);
        },

        selectJob: function (id)
        {
            console.log ('Debug: Controller selectJob: ' + id);
            this.addJob(id);
        },
        unselectJob: function(id)
        {
            console.log ('Debug: Controller unselectJob: ' + id);
            this.deleteJob(id);
        },

        selectFecha: function(fecha)
        {
            console.log('Debug: Controller selectFecha: ' + fecha);
            this.addFecha (fecha);
        },

        toggleHora: function (hora)
        {
          console.log ('Debug: Controller toggleHora ' + hora.get('hora') + ':' + hora.get('minuto'));
          hora.toggleProperty ('selected');
        },
        selectHora: function(fecha,hora)
        {
            console.log('Debug: Controller selectHora: ' + fecha + " " + hora);
            this.addHora (fecha,hora);
        },
        unselectHora: function(fecha,hora)
        {
            console.log('Debug: Controller unselectHora: ' + fecha + " " + hora);
            this.deleteHora (fecha,hora);
        }

    }

});
