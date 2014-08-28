SystemCmds = require('./commands')
baseController = require('../base-controller-helper')

noContentMethods = [
  'closeWindow', 'mute', 'suspend'
]

class SystemCtrl
  constructor: (@cmds = new SystemCmds) ->

  setVolume: (request, reply) ->
    @cmds.setVolume(request.payload.level)
    reply().code(204)

baseController.generateNoContentMethods(SystemCtrl.prototype, noContentMethods)

module.exports = SystemCtrl
