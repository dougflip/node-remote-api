var ctrl = require('./controller')();

var postHandlers = {
  '/mouse/click-at-polar-and-restore': ctrl.clickAtPolarAndRestore,
  '/mouse/move-relative': ctrl.moveRelative,
  '/mouse/left-click': ctrl.leftClick,
  '/mouse/right-click': ctrl.rightClick,
  '/mouse/double-click': ctrl.doubleClick,
  '/mouse/scroll-up': ctrl.scrollUp,
  '/mouse/scroll-down': ctrl.scrollDown
}

module.exports = addRoutes => addRoutes(postHandlers);
