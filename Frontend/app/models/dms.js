import DS from 'ember-data';

export default DS.Model.extend({
  domainUrl: DS.attr('string'),
  idioma: DS.attr('number'),
  dmsJobs: DS.hasMany('dmsJob'),
  dmsTalleres: DS.hasMany('dmsTaller'),
  dmsCortesias: DS.hasMany('dmsCortesia')
});
