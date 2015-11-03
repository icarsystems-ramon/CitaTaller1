import Ember from 'ember';

export default Ember.Component.extend({
    actions: {
        chooseTaller: function(taller) {
            console.log ('Debug: Component. chooseTaller ' + taller.get('id'));
            //this.toggleProperty('isShowingConfirmation');
            //taller.set('selected',true);
            this.model.forEach(function(item){
                //console.log ('Debug: forEach ' + item.get('id'));
                //console.log ('Debug: forEach ' + taller.get('id'));
                if (item.get('id') === taller.get('id')) {}
                else {item.set('selected',false);}
            });
        }
    }
});

