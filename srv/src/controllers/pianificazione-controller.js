const cds = require("@sap/cds");

async function onRead(srv) {
    return async (req, next) => {
        console.log("Sono dentro onRead Pianificazione")
        console.log("req.user: ", req.user)
        console.log("req.user.attr: ", req.user.attr)
    };
}

module.exports = {
    onRead
};