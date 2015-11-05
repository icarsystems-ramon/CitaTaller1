import DS from 'ember-data';

export default DS.Model.extend({
  dms: DS.belongsTo('dms'), 
  descripcion: DS.attr('string'),
  direccion: DS.attr('string'),
  vehiculoCortesia: DS.attr('boolean'),
  dmsKey: DS.attr('string'),
  geoLat: DS.attr('number'),
  geoLng: DS.attr('number')
});
