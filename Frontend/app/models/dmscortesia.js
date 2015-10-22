import DS from 'ember-data';

export default DS.Model.extend({
  dms: DS.belongsTo('dms'), 
  descripcion: DS.attr('string'),
  dmskey: DS.attr('string')
});
