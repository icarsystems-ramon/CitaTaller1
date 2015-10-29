import Ember from 'ember';
import FormInputMixin from '../../../mixins/form-input';
import { module, test } from 'qunit';

module('Unit | Mixin | form input');

// Replace this with your real tests.
test('it works', function(assert) {
  var FormInputObject = Ember.Object.extend(FormInputMixin);
  var subject = FormInputObject.create();
  assert.ok(subject);
});
