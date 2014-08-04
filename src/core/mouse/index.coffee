MouseCmds = require('./commands')
MouseCtrl = require('./controller')

postHandlers = 
  '/mouse/click-at-polar-and-restore': 'clickAtPolarAndRestore'
  '/mouse/move-relative': 'moveRelative'
  '/mouse/left-click': 'leftClick'
  '/mouse/right-click': 'rightClick'
  '/mouse/double-click': 'doubleClick'

class MouseRemote
  constructor: (server, @coreApi) ->
    ctrl = new MouseCtrl(new MouseCmds)
    @registerRoutes(server, ctrl)

  registerRoutes: (server, ctrl) ->
    for key of postHandlers
      server.route
        method: 'POST'
        path: key
        handler: ctrl[postHandlers[key]].bind(ctrl)

module.exports = MouseRemote
