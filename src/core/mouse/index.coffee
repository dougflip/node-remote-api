MouseCtrl = require('./controller')
routeHelper = require('../route-helper')

postHandlers = 
  '/mouse/click-at-polar-and-restore': 'clickAtPolarAndRestore'
  '/mouse/move-relative': 'moveRelative'
  '/mouse/left-click': 'leftClick'
  '/mouse/right-click': 'rightClick'
  '/mouse/double-click': 'doubleClick'

class MouseRemote
  constructor: (server, @coreApi) ->
    ctrl = new MouseCtrl
    routeHelper.registerRoutes(server, ctrl, postHandlers)

module.exports = MouseRemote
