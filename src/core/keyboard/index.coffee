KeyboardCtrl = require('./controller')
routeHelper = require('../route-helper')

postHandlers = 
  '/keyboard/send-keys': 'sendKeys'
  '/keyboard/send-text': 'sendText'

class KeyboardRemote
  constructor: (server) ->
    ctrl = new KeyboardCtrl
    routeHelper.registerRoutes(server, ctrl, postHandlers)

module.exports = KeyboardRemote
