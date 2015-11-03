import Ember from 'ember';

export default Ember.Component.extend({

    actions: {
        toggleJob: function(job) {
            console.log ('Debug: Component. ToggleJob ' + job.id );
            //this.toggleProperty('isShowingConfirmation');
        }
    }
});
