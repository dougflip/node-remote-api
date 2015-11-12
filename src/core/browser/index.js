var browserCtrl = require('./controller');
var routeHelper = require('../route-helper');

var postHandlers = {
  '/browser/launch': 'launch',
  '/browser/search': 'search',
  '/browser/focus-address-bar': 'focusAddressBar',
  '/browser/close': 'close',
  '/browser/close-tab': 'closeTab',
  '/browser/next-tab': 'nextTab',
  '/browser/zoom-in': 'zoomIn',
  '/browser/zoom-out': 'zoomOut',
  '/browser/actual-size': 'actualSize'
}

class BrowserRemote {
  constructor (server) {
    routeHelper.registerRoutes(server, browserCtrl(), postHandlers)
  }
}

module.exports = BrowserRemote
