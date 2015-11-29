var ctrl = require('./controller')();

var postHandlers = {
  '/browser/launch': ctrl.launch,
  '/browser/search': ctrl.search,
  '/browser/focus-address-bar': ctrl.focusAddressBar,
  '/browser/close': ctrl.close,
  '/browser/close-tab': ctrl.closeTab,
  '/browser/next-tab': ctrl.nextTab,
  '/browser/zoom-in': ctrl.zoomIn,
  '/browser/zoom-out': ctrl.zoomOut,
  '/browser/actual-size': ctrl.actualSize
}

module.exports = addRoutes => addRoutes(postHandlers);
