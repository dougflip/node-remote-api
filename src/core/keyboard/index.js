var ctrl = require('./controller');
var router = require('../route-helper');

var postHandlers = {
  '/keyboard/send-keys': 'sendKeys',
  '/keyboard/send-text': 'sendText'
}

module.exports = server => router.registerRoutes(server, ctrl(), postHandlers);
