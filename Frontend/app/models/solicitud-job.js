import DS from 'ember-data';

export default DS.Model.extend({
  solicitud: DS.belongsTo('solicitud'),
  dmsJob: DS.belongsTo('dmsJob') 
});
