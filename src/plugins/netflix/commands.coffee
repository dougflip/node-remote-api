BASE_SEARCH_URL = 'http://movies.netflix.com/WiSearch?v1='
BASE_MEDIA_URL = 'http://movies.netflix.com/WiPlayer?movieid='

class NetflixCommands
  constructor: (@coreApi) ->

  search: (searchTerm) ->
    @coreApi.browser.launch(BASE_SEARCH_URL + encodeURIComponent(searchTerm))

  launchMediaItem: (mediaId) ->
    @coreApi.browser.launch(BASE_MEDIA_URL + mediaId)

  togglePlayPause: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Space')

  play: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Prior') # page up

  pause: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Next') # page down

  fullScreen: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('f')

  exitFullScreen: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Escape')

  rewind: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('shift+Left')

  fastForward: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('shift+Right')

  toggleKeyframeMode: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('ctrl+space')

  frameBack: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Left')

  frameForward: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Right')

module.exports = NetflixCommands
