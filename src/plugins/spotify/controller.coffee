noContentMethods = [
  'togglePlayPause', 'next', 'previous', 'browseForward', 'browseBack', 'focusSearch'
]

class SpotifyCtrl
  constructor: (baseController, @cmds) ->
    baseController.generateNoContentMethods(this, noContentMethods)

  searchArtist: (request, reply) ->
    @cmds.searchArtist(request.payload.query)
    reply().code(204)

  searchAlbum: (request, reply) ->
    @cmds.searchAlbum(request.payload.query)
    reply().code(204)

  searchTrack: (request, reply) ->
    @cmds.searchTrack(request.payload.query)
    reply().code(204)

  searchPlaylist: (request, reply) ->
    @cmds.searchPlaylist(request.payload.query)
    reply().code(204)

  searchGenre: (request, reply) ->
    @cmds.searchGenre(request.payload.query)
    reply().code(204)

module.exports = SpotifyCtrl
