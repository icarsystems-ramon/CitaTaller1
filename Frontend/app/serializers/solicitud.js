//import DS from 'ember-data';

//export default DS.RESTSerializer.extend({
//});

import DS from 'ember-data';

export default DS.RESTSerializer.extend(DS.EmbeddedRecordsMixin, {
    attrs: {
        solicitudJobs: { serialize: 'records', deserialize: 'records'},
        solicitudHoras: { serialize: 'records', deserialize: 'records'}
    }
});
