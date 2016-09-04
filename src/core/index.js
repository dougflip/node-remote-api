const browserRemote = require('./browser');
const keyboardRemote = require('./keyboard');
const mouseRemote = require('./mouse');
const systemRemote = require('./system');

const commander = require('./commander');
const browser = browserRemote.getCommands();
const keyboard = keyboardRemote.getCommands();
const mouse = mouseRemote.getCommands();
const system = systemRemote.getCommands();

const routeHelper = require('./route-helper');
const baseController = require('./base-controller-helper');

// configure the core services and return the API object
// which will be passed to the plugins
const configure = (server) => {
  routeHelper.configureRoutes(server, browserRemote.getConfig());
  routeHelper.configureRoutes(server, keyboardRemote.getConfig());
  routeHelper.configureRoutes(server, mouseRemote.getConfig());
  routeHelper.configureRoutes(server, systemRemote.getConfig());

  return { baseController, commander, browser, keyboard, mouse, system };
};

module.exports = { configure };
