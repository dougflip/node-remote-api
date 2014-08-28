MouseCmds = require('./commands')
baseController = require('../base-controller-helper')

noContentMethods = [
  'leftClick', 'rightClick', 'doubleClick'
]

class MouseCtrl
  constructor: (@cmds = new MouseCmds) ->

  clickAtPolarAndRestore: (request, reply) ->
    @cmds.clickAtPolarAndRestore(request.payload.x, request.payload.y)
    reply().code(204)

  moveRelative: (request, reply) ->
    @cmds.moveRelative(request.payload.x, request.payload.y)
    reply().code(204)

baseController.generateNoContentMethods(MouseCtrl.prototype, noContentMethods)

module.exports = MouseCtrl
