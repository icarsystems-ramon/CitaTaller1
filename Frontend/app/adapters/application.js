import DS from 'ember-data';

export default DS.RESTAdapter.extend({
    host: config.API_HOST,
    namespace: config.API_NAMESPACE,
});
