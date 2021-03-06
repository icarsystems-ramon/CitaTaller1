/* jshint node: true */


var os     = require('os');
var ifaces = os.networkInterfaces();

var addresses = [];
for (var dev in ifaces) {
  ifaces[dev].forEach(function(details){
    if(details.family === 'IPv4' && details.address !== '127.0.0.1') {
      addresses.push(details.address);
    }
  });
}

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'citataller',
    environment: environment,
    baseURL: '/',
    defaultLocationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    },

    contentSecurityPolicy: {
        'default-src': "'self'",
        'script-src': "'self' 'unsafe-eval' *.googleapis.com maps.gstatic.com",
        'font-src': "'self' http://fonts.gstatic.com https://fonts.gstatic.com http://fonts.googleapis.com",
        'connect-src': "'self' http://citatallerapi.azurewebsites.net maps.gstatic.com",
        'img-src': "'self' data: *.googleapis.com maps.gstatic.com csi.gstatic.com",
        'style-src': "'self' 'unsafe-inline' http://fonts.gstatic.com https://fonts.gstatic.com http://fonts.googleapis.com maps.gstatic.com",
        'media-src': "'self'"
    },

    cordova: {
      rebuildOnChange: false,
      emulate: false,
      emberUrl: 'http://' + addresses[0] + ':4200',
      liveReload: {
        enabled: false,
        platform: 'ios'
      }
    },
    
    moment: {
      // To cherry-pick specific locale support into your application.
      // Full list of locales: https://github.com/moment/moment/tree/2.10.3/locale
      //includeLocales: ['es', 'fr']
    }

  };

  ENV.API_HOST = 'http://citatallerapi.azurewebsites.net';
  ENV.API_NAMESPACE = "api";
  ENV['g-map'] = {
      libraries: ['places', 'geometry'],
      key: 'AIzaSyD9xpLbzOw0sGXCWbeG4gDwPcwVgjd5sX4'
  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {

  }

  return ENV;
};
