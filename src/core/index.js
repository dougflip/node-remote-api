const browserRemote = require('./browser');
const keyboardRemote = require('./keyboard');
const mouseRemote = require('./mouse');
const systemRemote = require('./system');

const commander = require('./commander');
const browser = require('./browser/commands');
const keyboard = require('./keyboard/commands');
const mouse = require('./mouse/commands');
const system = require('./system/commands');

const routeHelper = require('./route-helper');

// configure the core services and return the API object
// which will be passed to the plugins
const configure = (server) => {
  const addRoutes = routeHelper.addRoutes(server);

  browserRemote(addRoutes);
  keyboardRemote(addRoutes);
  mouseRemote(addRoutes);
  systemRemote(addRoutes);

  return { commander, browser, keyboard, mouse, system };
};

module.exports = { configure };
