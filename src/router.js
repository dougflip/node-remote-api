const pluginLoader = require('./plugin-loader');

const browserMod = require('./core/browser');
const keyboardMod = require('./core/keyboard');
const mouseMod = require('./core/mouse');
const systemMod = require('./core/system');

const commander = require('./core/commander');
const browserCmds = require('./core/browser/commands');
const keyboardCmds = require('./core/keyboard/commands');
const mouseCmds = require('./core/mouse/commands');
const systemCmds = require('./core/system/commands');

const coreApi = {
  commander: commander,
  browser: browserCmds(),
  keyboard: keyboardCmds(),
  mouse: mouseCmds(),
  system: systemCmds(),
  baseController: require('./core/base-controller-helper'),
  routeHelper: require('./core/route-helper')
};

class Router {
  configure(server) {
    browserMod(server);
    keyboardMod(server);
    mouseMod(server);
    systemMod(server);

    pluginLoader.getPlugins().forEach((moduleName) => {
      const Module = require(moduleName)
      new Module(server, coreApi);
    });
  }
}

module.exports = new Router();
