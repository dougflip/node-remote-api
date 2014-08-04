class SystemCtrl
  constructor: (@systemCommands) ->

  closeWindow: (request, reply) ->
    @systemCommands.closeWindow()
    reply().code(204)

  mute: (request, reply) ->
    @systemCommands.mute()
    reply().code(204)

  setVolume: (request, reply) ->
    @systemCommands.setVolume(request.payload.level)
    reply().code(204)

  suspend: (request, reply) ->
    @systemCommands.suspend()
    reply().code(204)

module.exports = SystemCtrl
