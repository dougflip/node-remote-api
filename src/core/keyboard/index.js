var KeyboardCtrl = require('./controller');
var routeHelper = require('../route-helper');

var postHandlers = {
  '/keyboard/send-keys': 'sendKeys',
  '/keyboard/send-text': 'sendText'
}

class KeyboardRemote {
  constructor (server) {
    routeHelper.registerRoutes(server, new KeyboardCtrl(), postHandlers)
  }
}

module.exports = KeyboardRemote
