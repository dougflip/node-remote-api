var MouseCtrl = require('./controller');
var routeHelper = require('../route-helper');

var postHandlers = {
  '/mouse/click-at-polar-and-restore': 'clickAtPolarAndRestore',
  '/mouse/move-relative': 'moveRelative',
  '/mouse/left-click': 'leftClick',
  '/mouse/right-click': 'rightClick',
  '/mouse/double-click': 'doubleClick'
}

class MouseRemote {
  constructor (server, coreApi){
    this.coreApi = coreApi;
    routeHelper.registerRoutes(server, new MouseCtrl(), postHandlers)
  }
}

module.exports = MouseRemote
