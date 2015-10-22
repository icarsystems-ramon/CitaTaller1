import DS from 'ember-data';

export default DS.Model.extend({
  dms: DS.belongsTo('dms'), 
  descripcion: DS.attr('string'),
  direccion: DS.attr('string'),
  vehiculocortesia: DS.attr('boolean'),
  dmskey: DS.attr('string')
});
