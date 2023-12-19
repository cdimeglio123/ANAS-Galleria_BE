const {onRead} = require("../controllers/pianificazione-controller");

module.exports = {
  setupPianificazione: async (srv) => {
    srv.on("READ", "Pianificazione", await onRead(srv));
  },
};