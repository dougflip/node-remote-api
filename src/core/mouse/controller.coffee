class MouseCtrl
  constructor: (@mouseCommands) ->

  clickAtPolarAndRestore: (request, reply) ->
    @mouseCommands.clickAtPolarAndRestore(request.payload.x, request.payload.y)
    reply().code(204)

  moveRelative: (request, reply) ->
    @mouseCommands.moveRelative(request.payload.x, request.payload.y)
    reply().code(204)

  leftClick: (request, reply) ->
    @mouseCommands.leftClick()
    reply().code(204)

  rightClick: (request, reply) ->
    @mouseCommands.rightClick()
    reply().code(204)

  doubleClick: (request, reply) ->
    @mouseCommands.doubleClick()
    reply().code(204)

module.exports = MouseCtrl
