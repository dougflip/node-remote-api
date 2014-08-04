SystemCmds = require('./commands')
SystemCtrl = require('./controller')

postHandlers = 
  '/system/close-window': 'closeWindow'
  '/system/mute': 'mute'
  '/system/set-volume': 'setVolume'
  '/system/suspend': 'suspend'

class SystemRemote
  constructor: (server, coreApi) ->
    ctrl = new SystemCtrl(new SystemCmds)
    @registerRoutes(server, ctrl)

  registerRoutes: (server, ctrl) ->
    for key of postHandlers
      server.route
        method: 'POST'
        path: key
        handler: ctrl[postHandlers[key]].bind(ctrl)

module.exports = SystemRemote
