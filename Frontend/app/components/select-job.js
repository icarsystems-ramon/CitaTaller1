import Ember from 'ember';

export default Ember.Component.extend({

    actions: {
        toggleJob: function(job) {
            console.log ('Debug: Component. ToggleJob ' + job.id );
            if (job.get('selected')) {
                console.log ('Debug: Component. sendAction selectJob');
                this.sendAction('selectJob', job.get('id'));
            }
            else
            {
                console.log ('Debug: Component. sendAction unselectJob');
                this.sendAction('unselectJob', job.get('id'));
            }
            return true;
        }
    }
});
