import Ember from 'ember';

export default Ember.Component.extend({
    actions: {
        chooseTaller: function(taller) {
            console.log ('Debug: Component. chooseTaller ' + taller.get('id'));
            //this.toggleProperty('isShowingConfirmation');
            //taller.set('choosed',true);
            this.model.forEach(function(item){
                if (item.get('id') === taller.get('id')) {}
                else {item.set('choosed',false);}
            });
            //if (taller.get('choosed')) {
                console.log ('Debug: Component. sendAction chooseTaller');
                this.sendAction('chooseTaller', taller.get('id'));
            //}
                return true;
        }
    }
});

