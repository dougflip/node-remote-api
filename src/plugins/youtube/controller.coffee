noContentMethods = [
  'launch', 'fullScreen', 'exitFullScreen', 'togglePlayPause', 'frameBackShort', 'frameBack',
  'frameForwardShort', 'frameForward', 'seekToPercentage', 'restart', 'goToBeginning', 'goToEnd'
]

class YoutubeCtrl
  constructor: (baseController, @cmds) ->
    baseController.generateNoContentMethods(this, noContentMethods)

  search: (request, reply) ->
    @cmds.search(request.payload.query)
    reply().code(204)

module.exports = YoutubeCtrl
