class NetflixCtrl
  constructor: (@netflixCommands) ->

  search: (request, reply) ->
    @netflixCommands.search(request.payload.searchTerm)
    reply().code(204)

  launchMediaItem: (request, reply) ->
    @netflixCommands.launchMediaItem(request.payload.mediaId)
    reply().code(204)

  play: (request, reply) ->
    @netflixCommands.play()
    reply().code(204)

  pause: (request, reply) ->
    @netflixCommands.pause()
    reply().code(204)

  fullScreen: (request, reply) ->
    @netflixCommands.fullScreen()
    reply().code(204)

  exitFullScreen: (request, reply) ->
    @netflixCommands.exitFullScreen()
    reply().code(204)

  rewind: (request, reply) ->
    @netflixCommands.rewind()
    reply().code(204)

  fastForward: (request, reply) ->
    @netflixCommands.fastForward()
    reply().code(204)

  toggleKeyframeMode: (request, reply) ->
    @netflixCommands.toggleKeyframeMode()
    reply().code(204)

  frameBack: (request, reply) ->
    @netflixCommands.frameBack()
    reply().code(204)

  frameForward: (request, reply) ->
    @netflixCommands.frameForward()
    reply().code(204)

module.exports = NetflixCtrl
