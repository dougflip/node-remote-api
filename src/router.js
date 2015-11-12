var pluginLoader = require('./plugin-loader');
var commander = require('./core/commander');
var BrowserCmds = require('./core/browser/commands');
var KeyboardCmds = require('./core/keyboard/commands');
var MouseCmds = require('./core/mouse/commands');
var SystemCmds = require('./core/system/commands');

var coreApi = {
  commander: commander,
  browser: new BrowserCmds(),
  keyboard: new KeyboardCmds(),
  mouse: new MouseCmds(),
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
