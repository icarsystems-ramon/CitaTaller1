import Translator from '../services/translator';

export default {
    name: 'translations',
    after: 'session',

    initialize: function(application){
        application.register('service:translator', Translator);

        application.inject('view', 'translator', 'service:translator');
        application.inject('component', 'translator', 'service:translator');
    }
};
