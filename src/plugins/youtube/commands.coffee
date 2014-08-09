class YoutubeCmds
  constructor: (@coreApi) ->

  launch: ->
    @coreApi.browser.launch('https://www.youtube.com/')

  search: (query) ->
    @coreApi.browser.launch("https://www.youtube.com/results?search_query=#{query}")

  fullScreen: ->
    @coreApi.keyboard.sendKeys('f')

  # TODO: I don't think the click is necessary for youtube
  # actually, I think it is causing it to not work - need to test - focus might not even be an issue
  exitFullScreen: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Escape')

  togglePlayPause: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('space')

  frameBackShort: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Left')

  frameBack: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('ctrl+Left')

  frameForwardShort: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('Right')

  frameForward: ->
    @coreApi.mouse.clickAtPolarAndRestore(0, 0)
    @coreApi.keyboard.sendKeys('ctrl+Right')

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
