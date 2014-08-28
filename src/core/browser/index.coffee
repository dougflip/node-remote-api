BrowserCtrl = require('./controller')
routeHelper = require('../route-helper')

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
    ctrl = new BrowserCtrl
    routeHelper.registerRoutes(server, ctrl, postHandlers)

module.exports = BrowserRemote
