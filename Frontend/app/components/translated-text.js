//import Ember from "ember";

//export default Ember.Component.extend({
//    layout: Ember.Handlebars.compile("{{view.translated}}"),
//    key: null,

//    translated: function(){
//        var key = this.get('key');
//        var translator = this.get('translator');
//        return translator.translate(key);
//    }.property('translator.translations', 'key'),

//    translator: function(){
//        return this.get('container').lookup('service:translator');
//    }.property()
//});
