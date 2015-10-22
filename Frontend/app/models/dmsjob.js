import DS from 'ember-data';

export default DS.Model.extend({
  dmsid: DS.attr('string'),
  descripcion: DS.attr('string')
});
