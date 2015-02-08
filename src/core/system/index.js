var SystemCtrl = require('./controller');
var routeHelper = require('../route-helper');

var postHandlers = {
  '/system/close-window': 'closeWindow',
  '/system/mute': 'mute',
  '/system/set-volume': 'setVolume',
  '/system/suspend': 'suspend'
}

class SystemRemote {
  constructor(server, coreApi){
    routeHelper.registerRoutes(server, new SystemCtrl(), postHandlers)
  }
}


module.exports = SystemRemote
