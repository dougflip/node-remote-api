var ctrl = require('./controller');
var router = require('../route-helper');

var postHandlers = {
  '/system/close-window': 'closeWindow',
  '/system/mute': 'mute',
  '/system/set-volume': 'setVolume',
  '/system/suspend': 'suspend'
}

module.exports = server => router.registerRoutes(server, ctrl(), postHandlers);
