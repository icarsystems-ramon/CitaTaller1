import Ember from 'ember';
import Resolver from './resolver';
import loadInitializers from 'ember-load-initializers';
import config from './config/environment';

var App;

Ember.MODEL_FACTORY_INJECTIONS = true;

App = Ember.Application.extend({
  modulePrefix: config.modulePrefix,
  podModulePrefix: config.podModulePrefix,
  Resolver
});

loadInitializers(App, config.modulePrefix);

var inflector = Ember.Inflector.inflector;



inflector.irregular('solicitud'      , 'solicitudes');
inflector.irregular('solicitud-job'  , 'solicitud-jobs');
inflector.irregular('solicitud-hora' , 'solicitud-horas');
inflector.irregular('dms'            , 'dmsconfig');
inflector.irregular('dms-taller'     , 'dms-talleres');
inflector.irregular('dms-job'        , 'dms-jobs');
inflector.irregular('dms-cortesia'   , 'dms-cortesias');

export default App;
