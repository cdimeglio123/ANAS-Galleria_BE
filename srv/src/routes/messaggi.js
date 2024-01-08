const MessaggiController = require("../controllers/messaggi-controller");

module.exports = {
    setupMessaggi: (srv) => {
        const messaggiController = new MessaggiController(srv);
        srv.on("CREATE", "Messaggi", messaggiController.onCreate.bind(messaggiController));
    },
};