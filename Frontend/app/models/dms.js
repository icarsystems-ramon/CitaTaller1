import DS from 'ember-data';

export default DS.Model.extend({
  domainUrl: DS.attr('string'),
  idioma: DS.attr('number'),
  dmsjobs: DS.hasMany('dmsjob'),
  dmstalleres: DS.hasMany('dmstaller'),
  dmscortesias: DS.hasMany('dmscortesia')
});