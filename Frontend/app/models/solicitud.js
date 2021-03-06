import DS from 'ember-data';

export default DS.Model.extend({
 
  numgsm: DS.attr('string'),
  email: DS.attr('string'),
  nombre: DS.attr('string'),
  apellidos: DS.attr('string'),
  matric: DS.attr('string'),
  chasis: DS.attr('string'),
  km: DS.attr('number'),
  descripcion: DS.attr('string'),
  creacionDevice: DS.attr('string'),
  creacionFecha: DS.attr('date'),
  vehiculoCortesia: DS.attr('boolean', { defaultValue: false }),
  dmsTaller: DS.belongsTo('dmsTaller'),
  solicitudJobs: DS.hasMany('solicitudJob'),
  solicitudHoras: DS.hasMany('solicitudHora')
});
