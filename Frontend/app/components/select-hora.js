import Ember from 'ember';

export default Ember.Component.extend({
    actions: {
        toggleMinuteHeader: function(minuto) {
            this.sendAction('toggleMinuteHeader',minuto);
        },
        toggleDayHeader: function(day) {
            this.sendAction('toggleDayHeader',day);
        },
        toggleHora: function(minuto) {          
            this.sendAction('toggleHora',minuto);
        },
       
    }
});
