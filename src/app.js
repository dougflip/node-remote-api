const Hapi = require('hapi');
const core = require('./core');
const pluginLoader = require('./plugin-loader');

var server = new Hapi.Server(9001, { cors: true });

const coreApi = core.configure(server);
pluginLoader.configure(coreApi);

server.start(()=> console.log(`server started and running at ${server.info.uri}`));
