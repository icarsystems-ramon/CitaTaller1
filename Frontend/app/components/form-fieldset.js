import Ember from "ember";

export default Ember.Component.extend({
    tagName: 'fieldset',
    classNameBindings: ['class'],

    class: function(){
        return this.get('klass');
    }.property('klass'),

    focusIn: function(){
        this.$().addClass('active');
    },

    focusOut: function(){
        this.$().removeClass('active');
    }
});
