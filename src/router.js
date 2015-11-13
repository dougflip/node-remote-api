var pluginLoader = require('./plugin-loader');
var commander = require('./core/commander');
var browserCmds = require('./core/browser/commands');
var keyboardCmds = require('./core/keyboard/commands');
var mouseCmds = require('./core/mouse/commands');
var SystemCmds = require('./core/system/commands');

var coreApi = {
  commander: commander,
  browser: browserCmds(),
  keyboard: keyboardCmds(),
  mouse: mouseCmds(),
  system: new SystemCmds(),
  baseController: require('./core/base-controller-helper'),
  routeHelper: require('./core/route-helper')
}

var coreModules = [
  require('./core/browser'),
  require('./core/keyboard'),
  require('./core/mouse'),
  require('./core/system')
]

class Router {
  configure(server) {
    coreModules.forEach((Module) => {
      new Module(server);
    });

    pluginLoader.getPlugins().forEach((moduleName) => {
      var Module = require(moduleName)
      new Module(server, coreApi);
    });
  }
}

module.exports = new Router();
