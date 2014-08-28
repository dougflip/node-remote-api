SystemCtrl = require('./controller')
routeHelper = require('../route-helper')

postHandlers = 
  '/system/close-window': 'closeWindow'
  '/system/mute': 'mute'
  '/system/set-volume': 'setVolume'
  '/system/suspend': 'suspend'

class SystemRemote
  constructor: (server, coreApi) ->
    ctrl = new SystemCtrl
    routeHelper.registerRoutes(server, ctrl, postHandlers)

module.exports = SystemRemote
