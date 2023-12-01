const cds = require("@sap/cds");

async function onRead(srv) {
    return async (req, next) => {
        const n = await next()
        const username = req.user.attr.logonName;
        
        if (Array.isArray(n)) {
            const { Partner } = cds.entities("main_tables");
            const partnerData = await cds.run(SELECT.from(Partner).where({
                PARTNER: username
               }));

            let pianificazioniFiltered = [];
            partnerData.forEach(partner => {
                const pianificazioniByQmnum = n.filter(i => i.QMNUM === partner.QMNUM)
                pianificazioniFiltered = [...pianificazioniFiltered,...pianificazioniByQmnum]
            })

            return pianificazioniFiltered
        }
    };
}

module.exports = {
    onRead
};