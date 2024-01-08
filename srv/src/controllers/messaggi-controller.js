class MessaggiController {
    constructor(srv) {
        this.srv = srv;
        this.entities = srv.entities;
    }

    async onCreate(req, next) {
        const { Messaggi } = this.entities;
        const qmnum = req.data.QMNUM;
        const countResult = await SELECT.from(Messaggi).where({ QMNUM: qmnum });
        const count = countResult.length;
        const newIdMessaggio = `${count + 1}`;
        req.data.ID_MESSAGGIO = newIdMessaggio;
        await next();
    }
}

module.exports = MessaggiController;
