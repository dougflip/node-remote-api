SpotifyCmds = require('./commands')
SpotifyCtrl = require('./controller')

postHandlers = 
  '/spotify/toggle-play-pause': 'togglePlayPause'
  '/spotify/next': 'next'
  '/spotify/previous': 'previous'
  '/spotify/browse-forward': 'browseForward'
  '/spotify/browse-back': 'browseBack'
  '/spotify/focus-search': 'focusSearch'
  '/spotify/search-artist': 'searchArtist'
  '/spotify/search-album': 'searchAlbum'
  '/spotify/search-track': 'searchTrack'
  '/spotify/search-playlist': 'searchPlaylist'
  '/spotify/search-genre': 'searchGenre'

class SpotifyRemote
  constructor: (server, coreApi) ->
    ctrl = new SpotifyCtrl(coreApi.baseController, new SpotifyCmds(coreApi))
    coreApi.routeHelper.registerRoutes(server, ctrl, postHandlers)

module.exports = SpotifyRemote
