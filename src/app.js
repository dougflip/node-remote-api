var Hapi = require('hapi');
var router = require('./router');

var server = new Hapi.Server(9001, { cors: true });

router.configure(server);

server.start(()=> console.log(`server started and running at ${server.info.uri}`));
