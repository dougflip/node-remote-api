noContentMethods = [
  'launch', 'fullScreen', 'exitFullScreen', 'togglePlayPause', 'frameBackShort', 'frameBack',
  'frameForwardShort', 'frameForward', 'restart', 'goToBeginning', 'goToEnd'
]

class YoutubeCtrl
  constructor: (baseController, @cmds) ->
    baseController.generateNoContentMethods(this, noContentMethods)

  search: (request, reply) ->
    @cmds.search(request.payload.query)
    reply().code(204)

  seekToPercentage: (request, reply) ->
    @cmds.search(request.payload.step)
    reply().code(204)

module.exports = YoutubeCtrl
