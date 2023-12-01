const cds = require('@sap/cds');
const { setupPianificazione } = require('./src/routes/pianificazione');

module.exports = cds.service.impl( async function(srv) {
    await setupPianificazione(srv);
});