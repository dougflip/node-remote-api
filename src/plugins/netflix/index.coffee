NetflixCommands = require('./commands')
NetflixCtrl = require('./controller')

postHandlers = 
  '/netflix/search': 'search'
  '/netflix/launch-media-item': 'launchMediaItem'
  '/netflix/toggle-play-pause': 'togglePlayPause'
  '/netflix/play': 'play'
  '/netflix/pause': 'pause'
  '/netflix/full-screen': 'fullScreen'
  '/netflix/exit-full-screen': 'exitFullScreen'
  '/netflix/rewind': 'rewind'
  '/netflix/fast-forward': 'fastForward'
  '/netflix/toggle-keyframe-mode': 'toggleKeyframeMode'
  '/netflix/frame-back': 'frameBack'
  '/netflix/frame-forward': 'frameForward'

class NetflixRemote
  constructor: (server, coreApi) ->
    ctrl = new NetflixCtrl(coreApi.baseController, new NetflixCommands(coreApi))
    @registerRoutes(server, ctrl)

  registerRoutes: (server, ctrl) ->
    for key of postHandlers
      server.route
        method: 'POST'
        path: key
        handler: ctrl[postHandlers[key]].bind(ctrl)

module.exports = NetflixRemote
