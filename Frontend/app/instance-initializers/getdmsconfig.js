//export function initialize(/* container, application */) {
  // application.inject('route', 'foo', 'service:foo');
//}

export function initialize (applicationInstance) {
    // application.inject('route', 'foo', 'service:foo');
    var store = applicationInstance.lookup("service:store");
    store.findAll('dms'); 
}

export default {
  name: 'getdmsconfig',
  initialize: initialize
};
