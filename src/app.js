var Hapi = require('hapi');
var wsServer = require('ws').Server;
var router = require('./router');

var server = new Hapi.Server(9001, { cors: true });
var wsServer = new wsServer({ port: 8080 });

router.configure(server, wsServer);

server.start(()=> console.log(`server started and running at ${server.info.uri}`));
