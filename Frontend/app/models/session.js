import Ember from "ember";

export default Ember.Object.extend(Ember.Evented, {
    isAuthenticated: true,
    isAuthenticating: true,

    data: {},

    initFromStore: function(){
        var session = this;

        return new Ember.RSVP.Promise(function(success, reject){
            var credentials = session.getCredentials();

            if(Ember.isEmpty(credentials)){
                reject();
            }else{
                session.authenticate(credentials).then(success, reject);
            }
        });
    },
});
