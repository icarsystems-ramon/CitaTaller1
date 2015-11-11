import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
      toggleFecha: function(fecha) {
          //console.log ('Debug: Component Fecha. ToggleFecha ');
          this.sendAction('toggleFecha',fecha);
      },
      toggleHora: function(hora) {
          //console.log ('Debug: Component Fecha. ToggleHora ' + hora.get('hora') + ':' + hora.get('minuto'));
          this.sendAction('toggleHora',hora);
      },
      toggleDay: function(day) {
          //console.log ('Debug: Component Fecha. ToggleHora ' + hora.get('hora') + ':' + hora.get('minuto'));
         this.sendAction('toggleDay',day);
      }
  }
});
