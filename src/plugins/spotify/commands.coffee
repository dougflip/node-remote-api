class SpotifyCmds
  constructor: (@coreApi) ->

  togglePlayPause: ->
    @coreApi.keyboard.sendKeys('space')

  next: ->
    @coreApi.keyboard.sendKeys('press:Control_L press:Right release:Right release:Control_L')

  previous: ->
    @coreApi.keyboard.sendKeys('press:Control_L press:Left release:Left release:Control_L')

  browseForward: ->
    @coreApi.keyboard.sendKeys('press:Alt_L press:Right release:Right release:Alt_L')

  browseBack: ->
    @coreApi.keyboard.sendKeys('press:Alt_L press:Left release:Left release:Alt_L')

  focusSearch: ->
    @coreApi.keyboard.sendKeys('press:Control_L press:l release:l release:Control_L')

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
