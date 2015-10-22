// Nos permite tener acceso a App.store en la consola.
// También nos permite probar los instance initializer
// http://emberigniter.com/accessing-global-object-in-ember-cli-app/

export function initialize (applicationInstance) {
    // application.inject('route', 'foo', 'service:foo');
    applicationInstance.store = applicationInstance.lookup("service:store");
    window.App = applicationInstance;  // or window.Whatever
}

export default {
  name: 'global',
  initialize: initialize
};

