import Ember from "ember";
import FormInput from "../mixins/form-input";

export default Ember.Component.extend(FormInput, {
  classNames: ['basic', 'date']
});
