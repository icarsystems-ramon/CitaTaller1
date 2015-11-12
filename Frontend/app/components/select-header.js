import Ember from 'ember';
import ColorMixin from 'ember-paper/mixins/color-mixin';

export default Ember.Component.extend(ColorMixin, {
    tagName: 'select-header',
    classNames: ['select-header', 'md-font', 'md-default-theme'],
    classNameBindings: ['sizeClass', 'checkedClass'],
    
  
    checked: false,

   
    checkedClass: Ember.computed('checked', function() {
        if (this.get('checked')) {           
            return ' header-on';
        } else {            
            return ' header-off';
        }
    }),

    
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
