var ctrl = require('./controller')();

var postHandlers = {
  '/system/close-window': ctrl.closeWindow,
  '/system/mute': ctrl.mute,
  '/system/set-volume': ctrl.setVolume,
  '/system/suspend': ctrl.suspend
}

module.exports = addRoutes => addRoutes(postHandlers);
