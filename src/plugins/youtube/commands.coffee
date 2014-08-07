class YoutubeCmds
  constructor: (@coreApi) ->

  launch: ->
    @coreApi.browser.launch('https://www.youtube.com/')

  search: (query) ->
    @coreApi.browser.launch("https://www.youtube.com/results?search_query=#{query}")

  fullScreen: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('f')

  exitFullScreen: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Escape')

  togglePlayPause: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('space')

  frameBackShort: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('left')

  frameBack: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('press:Control_L press:Left release:Left release:Control_L')

  frameForwardShort: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('right')

  frameForward: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('press:Control_L press:Right release:Right release:Control_L')

  seekToPercentage: (step) ->
    step = 1 if step < 1
    step = 9 if step > 9
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys(step.toString())

  restart: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys("0")

  goToBeginning: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys("Home")

  goToEnd: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys("End")

module.exports = YoutubeCmds
