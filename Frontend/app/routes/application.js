import Ember from 'ember';

export default Ember.Route.extend({

    beforeModel: function(){
        console.log ('Debug: transitionTo(solicitudnew)');
        this.transitionTo('solicitudnew');
    }
});
