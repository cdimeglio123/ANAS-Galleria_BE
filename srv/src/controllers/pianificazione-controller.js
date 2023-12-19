async function onRead(srv) {
    return async (req, next) => {
        console.log("req: ", req)
        console.log("req.headers: ", req.headers)
        console.log("req.headers.authorization: ", req.headers.authorization)
        await next()
        
    };
}

module.exports = {
    onRead
};