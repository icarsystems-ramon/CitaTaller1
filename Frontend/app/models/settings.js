import StorageObject from 'ember-local-storage/local/object';
// or use sessionStorage
// `import StorageObject from 'ember-local-storage/session/object';`

export default StorageObject.extend({
    storageKey: 'citatallerdefault',
    initialContent: {
        welcomeMessageSeen: false,
        cortesiaId: '',
        nombre: '',
        apellidos: '',
        numgsm: '',
        email: '',
        matric: '',
        chasis: '',
        lastSolicitudId: '',
        creacionDevice: ''
    }
});