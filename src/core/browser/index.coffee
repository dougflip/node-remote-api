BrowserCmds = require('./commands')
BrowserCtrl = require('./controller')

postHandlers = 
  '/browser/launch': 'launch'
  '/browser/search': 'search'
  '/browser/focus-address-bar': 'focusAddressBar'
  '/browser/close': 'close'
  '/browser/close-tab': 'closeTab'
  '/browser/next-tab': 'nextTab'
  '/browser/zoom-in': 'zoomIn'
  '/browser/zoom-out': 'zoomOut'
  '/browser/actual-size': 'actualSize'

class BrowserRemote
  constructor: (server) ->
    ctrl = new BrowserCtrl(new BrowserCmds)
    @registerRoutes(server, ctrl)

  registerRoutes: (server, ctrl) ->
    for key of postHandlers
      server.route
        method: 'POST'
        path: key
        handler: ctrl[postHandlers[key]].bind(ctrl)

module.exports = BrowserRemote
