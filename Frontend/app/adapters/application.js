import DS from 'ember-data';
import config from '../config/environment';

export default DS.RESTAdapter.extend({
    host: config.API_HOST,
    namespace: config.API_NAMESPACE,
    // http://stackoverflow.com/questions/29954037/how-to-disable-options-request
    // Cambiando el content-type ... reducimos las peticiones OPTIONS y se reduce el tiempo por peticion
    header: {
        "Content-Type": "text/plain"
    }
});

