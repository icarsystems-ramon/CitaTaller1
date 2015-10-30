import Session from '../models/session';

export default {
    name: 'session',

    after: ['store'],

    initialize: function(application){
        application.register('session:main', Session);

        application.inject('controller', 'session', 'session:main');
        application.inject('route', 'session', 'session:main');
        application.inject('adapter', 'session', 'session:main');
        application.inject('service', 'session', 'session:main');
        //application.inject('session', 'store', 'store:main');

        //application.deferReadiness();

        //container.lookup('session:main').initFromStore().finally(function(){
        //    application.advanceReadiness();
        //});
        //application.advanceReadiness();
    }
};
