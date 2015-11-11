import Ember from 'ember';

export default Ember.Component.extend({
    actions: {
        chooseTaller: function(choosenId){
            var choosenTaller;
            this.model.forEach(function(item){
                if (item.get('id') === choosenId) {
                    choosenTaller = item;
                    item.set('selected',true);}
                else {
                    item.set('selected',false);
                    item.set('value2','');}
            });

            this.sendAction('chooseTaller', choosenTaller);
        },
        
        toggleGeo: function(taller) {
            //console.log ('Debug: Component. toggleGeo ' + taller.get('descripcion') + ' ' + taller.get('id'));
            this.model.forEach(function(item){
                if (item.get('id') === taller.get('id')) {item.toggleProperty ('geoVisible');}
                else {item.set('geoVisible',false);}
            });
            return true;
        },
    }
});
