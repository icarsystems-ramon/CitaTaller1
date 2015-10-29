import Ember from "ember";

export default Ember.Mixin.create({
    classNames: ['input'],
    classNameBindings: ['fieldClass'],

    fieldClass: function(){
        return "input-field-" + this.get('field');
    }.property('field'),

    inputId: function(){
        return this.get('elementId') + "-input";
    }.property('elementId'),

    bindValue: function(){
        var field = this.get('field');
        var path = 'model.' + field;

        Ember.defineProperty(this, 'value', Ember.computed.alias(path));
    }.observes('field', 'model').on('init'),

    label: function(){
        var labelValue = this.get('translator').translate(this.get('i18nKey'));
        if(typeof labelValue === 'undefined'){
            var keyChain = this.get('i18nKey').split('.');
            labelValue = 'missing_' + keyChain[keyChain.length-1];
        }
        return labelValue;
    }.property('i18nKey', 'translator.translations'),

    didInsertElement: function(){
        this.setLabelStyle(this);
    },

    keyUp: function(){
        this.setLabelStyle(this);
    },

    focusIn: function(){
        this.$().addClass('active');
    },

    focusOut: function(){
        this.$().removeClass('active');
    },

    setLabelStyle: function(component){
        if( !component.get('value') ) {
            component.$().children('label').removeClass('filled');
        }
        else{
            component.$().children('label').addClass('filled');
        }
    },
});
