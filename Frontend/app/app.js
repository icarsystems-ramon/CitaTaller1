import Ember from 'ember';
import Resolver from 'ember/resolver';
import loadInitializers from 'ember/load-initializers';
import config from './config/environment';

var App;

Ember.MODEL_FACTORY_INJECTIONS = true;

App = Ember.Application.extend({
  modulePrefix: config.modulePrefix,
  podModulePrefix: config.podModulePrefix,
  Resolver: Resolver
});

loadInitializers(App, config.modulePrefix);

var inflector = Ember.Inflector.inflector;

inflector.irregular('solicitud'     , 'solicitudes');
inflector.irregular('solicitudjob'  , 'solicitudesjobs');
inflector.irregular('solicitudhora' , 'solicitudeshoras');
inflector.irregular('dms'           , 'dms');
inflector.irregular('dmstaller'     , 'dmstalleres');
inflector.irregular('dmsjob'        , 'dmsjobs');
inflector.irregular('dmscortesia'   , 'dmscortesias');

export default App;
