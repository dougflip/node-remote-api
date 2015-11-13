var ctrl = require('./controller');
var router = require('../route-helper');

var postHandlers = {
  '/mouse/click-at-polar-and-restore': 'clickAtPolarAndRestore',
  '/mouse/move-relative': 'moveRelative',
  '/mouse/left-click': 'leftClick',
  '/mouse/right-click': 'rightClick',
  '/mouse/double-click': 'doubleClick'
}

module.exports = server => router.registerRoutes(server, ctrl(), postHandlers);
