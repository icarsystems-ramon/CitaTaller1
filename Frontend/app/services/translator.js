import Ember from "ember";
import localTranslations from '../translations';

//export default Ember.Object.extend({
export default Ember.Service.extend({
    translations: null,

    init: function(){
        var translator = this;
        translator.set('translations', {});

        var session = this.get('session');
        var loadTranslations = function(){
            var sessionData = session.get('data');
            if(sessionData){
                translator.load(sessionData.tyidiomatexto);
            }
        };
        session.on('authenticated', loadTranslations);
        loadTranslations();
    },

    translate: function(key){
        var locale = this.get('session.locale') || '3082';
        var localizedTranslations = localTranslations[locale] || {};
        var translation = this.get('translations')[key] || localizedTranslations[key];

        if(!translation){
            console.log("Translation missing: " + key + " (" + locale + ")");
        }

        if(!translation && key.split('.').length === 1){
            translation = key;
        }else if(!translation && key.split('.').length > 1){
            var keyChain = key.split('.');
            translation = keyChain[ keyChain.length-1 ];
        }
        return translation;
    },

    load: function(records){
        if (!records) {
            return;
        }

        var translations = records.reduce(function(translations, translation){
            translations[translation.id] = translation.texto;
            return translations;
        }, {});

        this.set('translations', translations);
    }
});
