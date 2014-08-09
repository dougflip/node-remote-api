class SpotifyCmds
  constructor: (@coreApi) ->

  togglePlayPause: ->
    @coreApi.keyboard.sendKeys('space')

  next: ->
    @coreApi.keyboard.sendKeys('ctrl+Right')

  previous: ->
    @coreApi.keyboard.sendKeys('ctrl+Left')

  browseForward: ->
    @coreApi.keyboard.sendKeys('alt+Right')

  browseBack: ->
    @coreApi.keyboard.sendKeys('alt+Left')

  focusSearch: ->
    @coreApi.keyboard.sendKeys('ctrl+l')

  searchArtist: (query) ->
    @focusSearch()
    @coreApi.keyboard.sendText("artist:\"#{query}\"")

  searchAlbum: (query) ->
    @focusSearch()
    @coreApi.keyboard.sendText("album:\"#{query}\"")

  searchTrack: (query) ->
    @focusSearch()
    @coreApi.keyboard.sendText("track:\"#{query}\"")

  searchPlaylist: (query) ->
    @focusSearch()
    @coreApi.keyboard.sendText("playlist:\"#{query}\"")

  searchGenre: (query) ->
    @focusSearch()
    @coreApi.keyboard.sendText("genre:\"#{query}\"")

module.exports = SpotifyCmds
