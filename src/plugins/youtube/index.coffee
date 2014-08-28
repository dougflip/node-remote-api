YoutubeCommands = require('./commands')
YoutubeCtrl = require('./controller')

postHandlers = 
  '/youtube/launch': 'launch'
  '/youtube/search': 'search'
  '/youtube/full-screen': 'fullScreen'
  '/youtube/exit-full-screen': 'exitFullScreen'
  '/youtube/toggle-play-pause': 'togglePlayPause'
  '/youtube/frame-back-short': 'frameBackShort'
  '/youtube/frame-back': 'frameBack'
  '/youtube/frame-forward-short': 'frameForwardShort'
  '/youtube/frame-forward': 'frameForward'
  '/youtube/seek-to-percentage': 'seekToPercentage'
  '/youtube/restart': 'restart'
  '/youtube/go-to-beginning': 'goToBeginning'
  '/youtube/go-to-end': 'goToEnd'

class YoutubeRemote
  constructor: (server, coreApi) ->
    ctrl = new YoutubeCtrl(coreApi.baseController, new YoutubeCommands(coreApi))
    coreApi.routeHelper.registerRoutes(server, ctrl, postHandlers)

module.exports = YoutubeRemote
