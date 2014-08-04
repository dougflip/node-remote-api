KeyboardCmds = require('./commands')
KeyboardCtrl = require('./controller')

postHandlers = 
  '/keyboard/send-keys': 'sendKeys'
  '/keyboard/send-text': 'sendText'

class KeyboardRemote
  constructor: (server) ->
    ctrl = new KeyboardCtrl(new KeyboardCmds)
    @registerRoutes(server, ctrl)

  registerRoutes: (server, ctrl) ->
    for key of postHandlers
      server.route
        method: 'POST'
        path: key
        handler: ctrl[postHandlers[key]].bind(ctrl)

module.exports = KeyboardRemote
