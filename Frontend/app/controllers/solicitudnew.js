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



    
    //jobObserver: function(){
    //    console.log ('Debug: jobObserver');
    //    var lista = this.get('listJob');
       
    //    lista.forEach(function(item){
    //        //console.log ('Debug: jobObserver ' + item.get('id'));
    //        //if (item.get('selected')) {}
    //        //else {}
    //    });

    //}.observes('listJob.@each.selected'),

    //tallerObserver: function(){
    //    console.log ('Debug: tallerObserver');
    //}.observes('listTaller.@each.choosed'),

    //horaObserver: function(){
    //    console.log ('Debug: horaObserver');
    //}.observes('listFecha.@each.listHora'),
   



    listTaller: function(){
        console.log ('Debug: Loading controller.ListTaller');
       
        var modelTaller = this.store.peekAll('dmsTaller')|| [];
        var retorno = modelTaller.map(function(obj){
            return Ember.Object.create().setProperties(obj);
        });

        retorno.forEach(function(item){
            item.set('choosed',false);
            item.set('geoVisible',false);
        });

        retorno.objectAt(0).set ('choosed',true);
        return retorno;
    }.property('isDirty'),




    listJob: function(){
        console.log ('Debug: Loading controller.listJob');
        var retorno = [];
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
        console.log ('Debug: Loading controller.listFecha');
        var retorno = [];
        var x=0;
        var y=0;
        //moment.locale('es');
        var now = moment();
        var xfecha = now.startOf('day');
        var dfecha;
        for (; x<6; x++) {
            xfecha.add(1,'days');
            dfecha = xfecha.format('dddd');  //xfecha.calendar();           
            var fecha = Ember.Object.create();
            fecha.set ('fecha',xfecha.format());
            fecha.set ('fechaDisplay',dfecha);
            fecha.set ('selected',false);
            fecha.set ('listHora',[]);

            for (y=0;y<8;y++)
            {
                var hora = Ember.Object.create();
                hora.set ('parent',fecha);
                hora.set ('momentObj',xfecha);
                hora.set ('fecha',xfecha.format());
                hora.set ('fechaDisplay',dfecha);
                hora.set ('hora', 8 + y);
                hora.set ('minuto', 0);
                hora.set ('selected', false);                
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

    setChooseTaller: function (taller){
        //var pepe = this.store.peekRecord('dmsTaller',id);
        this.model.set('dmsTaller',taller);
      },

    //addJob: function (id){
    //    deleteJob (id);
    //    var job = this.store.createRecord('solicitudJob',
    //     {
    //         solicitud: this.model
    //     }
    //     );

    //    job.set('dmsJob',this.store.peekRecord('dmsJob',id));
    //    this.model.get("solicitudJobs").pushObject(job);

    //},
    //deleteJob: function (id){
    //    var lista = this.model.get("solicitudJobs");
    //    var count = lista.get('length');
    //    for (var i = 0; i < count; i++){
    //        var pepe = lista.objectAt(i);
    //        if (pepe.get('dmsJob').get('id') === id) {this.store.deleteRecord(pepe);}
    //    }
    //},




    //addFecha: function(fecha){

    //},

    //addHora: function (fecha,hora,minuto){
    //    deleteHora (fecha,hora,minuto);
    //    var hora = this.store.createRecord('solicitudHora',
    //     {
    //         solicitud: this.model
    //     }
    //     );

    //    hora.set('fecha',fecha);
    //    hora.set('hora',hora);
    //    hora.set('minuto',minuto);
    //    this.model.get("solicitudHoras").pushObject(job);

    //},

    //deleteHora: function (fecha,hora,minuto){
    //    var lista = this.model.get("solicitudHoras");
    //    var count = lista.get('length');
    //    for (var i = 0; i < count; i++){
    //        var pepe = lista.objectAt(i);
    //        if (pepe.get('fecha') === fecha && pepe.get('hora') === hora && pepe.get('minuto') === minuto) {this.store.deleteRecord(pepe);}
    //    }

    //},


    actions: {        

        emailValidation: function()
        {
            console.log ('Debug: Controller emailValidation: ' );
        },

   
        chooseTaller: function(taller)
        {
            console.log ('Debug: Controller chooseTaller: ' + taller.get('descripcion'));
            this.setChooseTaller (taller);
        },

        //toggleJob: function (job)
        //{
        //    console.log ('Debug: Controller toggleJob: ' + job.get('id'));
        //    console.log ('Debug: Controller toggleJob: ' + job.get('selected'));
        //    //this.addJob(id);
        //},
        //unselectJob: function(id)
        //{
        //    console.log ('Debug: Controller unselectJob: ' + id);
        //    this.deleteJob(id);
        //},

        toggleFecha: function(fecha)
        {
            console.log('Debug: Controller toggleFecha: ' + fecha.get('fecha'));
            fecha.toggleProperty ('selected');            
            fecha.get('listHora').forEach(function(itemHora){
                itemHora.set ('selected',fecha.get('selected'));         
            });
        },

        toggleHora: function (hora)
        {
          console.log ('Debug: Controller toggleHora ' + hora.get('fecha') + ', ' + hora.get('hora') + ':' + hora.get('minuto'));
          hora.toggleProperty ('selected');
          hora.get('parent').set('selected',false);
        }

    }

});
