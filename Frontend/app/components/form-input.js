import Ember from "ember";
import FormInput from "../mixins/form-input";

export default Ember.Component.extend(FormInput, {
    setLabelStyle: function(component){
        if( !component.get('value') ) {
            component.$().children('label').removeClass('filled');
        }
        else{
            component.$().children('label').addClass('filled');
        }
    },

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

    classNames: ['basic']
});
