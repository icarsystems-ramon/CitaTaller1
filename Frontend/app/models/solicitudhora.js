import DS from 'ember-data';

export default DS.Model.extend({
  solicitud: DS.belongsTo('solicitud'),
  fecha: DS.attr('date'),
  hora: DS.attr('number'),
  minuto: DS.attr('number')
});
