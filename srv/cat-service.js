const cds = require('@sap/cds');
const { setupPianificazione } = require('./src/routes/pianificazione');
const { setupMessaggi } = require('./src/routes/messaggi');

module.exports = cds.service.impl( async function(srv) {
    await setupPianificazione(srv);
    await setupMessaggi(srv)
});