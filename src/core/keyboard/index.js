var ctrl = require('./controller')();

var postHandlers = {
  '/keyboard/send-keys': ctrl.sendKeys,
  '/keyboard/send-text': ctrl.sendText
}

module.exports = addRoutes => addRoutes(postHandlers);
