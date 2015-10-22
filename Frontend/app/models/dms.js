import DS from 'ember-data';

export default DS.Model.extend({
  domainurl: DS.attr('string'),
  idioma: DS.attr('number')
});
