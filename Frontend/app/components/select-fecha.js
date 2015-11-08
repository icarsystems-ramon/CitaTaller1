import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
      toggleHora: function(hora) {
          console.log ('Debug: Component Fecha. ToggleHora ' + hora.get('hora') + ':' + hora.get('minuto'));
          this.sendAction('toggleHora',hora);
      }
  }
});
