import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('solicitudes', {});
  this.route('solicitudnew');
  this.route('solicitudok');
});

Router.reopen({
    location: 'none'
    //location: 'hash'
});

export default Router;
