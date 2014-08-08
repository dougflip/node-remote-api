Commander = require('./core/commander')
BrowserCmds = require('./core/browser/commands')
KeyboardCmds = require('./core/keyboard/commands')
MouseCmds = require('./core/mouse/commands')
SystemCmds = require('./core/system/commands')

coreApi =
  commander: new Commander()
  browser: new BrowserCmds()
  keyboard: new KeyboardCmds()
  mouse: new MouseCmds()
  system: new SystemCmds()
  baseController: require('./core/base-controller-helper')

coreModules = [
  require('./core/browser'),
  require('./core/keyboard'),
  require('./core/mouse'),
  require('./core/system')
]

plugins = [
  require('./plugins/netflix')
  require('./plugins/spotify')
  require('./plugins/youtube')
]

class Router
  configure: (server) ->
    coreModules.forEach (Module) ->
      new Module(server)

    plugins.forEach (Module) ->
      new Module(server, coreApi)

module.exports = new Router
