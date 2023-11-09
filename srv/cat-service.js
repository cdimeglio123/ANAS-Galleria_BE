const cds = require('@sap/cds');
const axios = require("axios");
const core = require('@sap-cloud-sdk/core');

module.exports = cds.service.impl( async function(srv) {
    srv.before('*', (req) => {
        //insert code here
    });
});