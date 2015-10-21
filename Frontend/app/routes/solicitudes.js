import Ember from 'ember';

export default Ember.Route.extend({
    model: function() {
        // the model is an Array of all of the posts
        return this.store.findAll('solicitud');
    }
});

