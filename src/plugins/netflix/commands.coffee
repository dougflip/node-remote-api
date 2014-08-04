BASE_SEARCH_URL = 'http://movies.netflix.com/WiSearch?v1='
BASE_MEDIA_URL = 'http://movies.netflix.com/WiPlayer?movieid='

class NetflixCommands
  constructor: (@coreApi) ->

  search: (searchTerm) ->
    @coreApi.browser.launch(BASE_SEARCH_URL + encodeURIComponent(searchTerm))

  launchMediaItem: (mediaId) ->
    @coreApi.browser.launch(BASE_MEDIA_URL + mediaId)

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
    @coreApi.keyboard.sendKeys('press:Shift_L press:Left release:Left release:Shift_L')

  fastForward: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('press:Shift_L press:Right release:Right release:Shift_L')

  toggleKeyframeMode: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('press:Control_L press:space release:space release:Control_L')

  frameBack: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Left')

  frameForward: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Right')

module.exports = NetflixCommands
