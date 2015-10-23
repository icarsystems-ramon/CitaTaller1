import DS from 'ember-data';

export default DS.Model.extend({
  solicitud: DS.belongsTo('solicitud'),
  dmsjob: DS.belongsTo('dmsjob')
});
