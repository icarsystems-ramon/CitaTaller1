//import DS from 'ember-data';

//export default DS.RESTSerializer.extend({
//});


import DS from 'ember-data';

export default DS.RESTSerializer.extend(DS.EmbeddedRecordsMixin, {
    attrs: {
        solicitudjobs: { serialize: 'records', deserialize: 'records'},
        solicitudhoras: { serialize: 'records', deserialize: 'records'}
    }
});
