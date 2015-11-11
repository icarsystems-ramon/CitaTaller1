import Ember from 'ember';
import ColorMixin from 'ember-paper/mixins/color-mixin';

export default Ember.Component.extend(ColorMixin, {
    tagName: 'icon-hora',
    classNames: ['icon-hora', 'md-font', 'material-icons', 'md-default-theme'],
    classNameBindings: ['iconClass', 'sizeClass', 'spinClass', 'checkedClass'],
    
    spin: false,
    reverseSpin: false,   
    checked: false,

    iconClass: Ember.computed('checked', function() {
        if (this.get('checked')) {
            return Ember.String.dasherize(this.get('iconOn'));
        } else {
            return Ember.String.dasherize(this.get('iconOff'));
        }
        
    }),

    spinClass: Ember.computed('spin', 'reverseSpin', function() {
        if (this.get('spin')) {
            return ' md-spin'; 
        } else if (this.get('reverseSpin')) {
            return ' md-spin-reverse';
        }
    }),

    checkedClass: Ember.computed('checked', function() {
        if (this.get('checked')) {           
            return ' hora-on';
        } else {
            //console.log ('hora-off');
            return ' hora-off';
        }
    }),

    //pepe: function(){console.log ('checked=' + this.checked);}.observes('checked'),


    sizeClass : Ember.computed('size', function() {
        switch(this.get('size')) {
            case 'lg':
                return ' md-lg';
            case 'sm':
                return ' md-sm';
            case 2:
                return ' md-2x';
            case 3:
                return ' md-3x';
            case 4:
                return ' md-4x';
            case 5:
                return ' md-5x';
        }
    }),

    click() { 
        this.toggleProperty('checked');
        if (this.get('action')) {
           this.sendAction('action', this.get('param'));
        }
    }
});
