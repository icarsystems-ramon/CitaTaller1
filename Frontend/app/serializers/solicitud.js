import DS from 'ember-data';

// Indicamos al serializer que componga el payload con registros embebidos y no sideloaded.

export default DS.RESTSerializer.extend(DS.EmbeddedRecordsMixin, {
    attrs: {
        solicitudJobs: { serialize: 'records', deserialize: 'records'},
        solicitudHoras: { serialize: 'records', deserialize: 'records'}
    }
});
