Commander = require '../commander'
KeyboardCommands = require '../keyboard/commands'

class BrowserCommands
  constructor: (@commander = new Commander, @keyboardCommands = new KeyboardCommands) ->

  launch: (url) ->
    @commander.exec "firefox #{url}"

  search: (searchTerm) ->
    @commander.exec "firefox -search \"#{searchTerm}\""

  focusAddressBar: ->
    @keyboardCommands.sendKeys 'press:Control_L press:l release:l release:Control_L'

  close: ->
    @keyboardCommands.sendKeys 'press:Alt_L press:F4 release:F4 release:Alt_L'
  
  closeTab: ->
    @keyboardCommands.sendKeys 'press:Control_L press:F4 release:Control_L release:F4'

  nextTab: ->
    @keyboardCommands.sendKeys 'press:Control_L press:Tab release:Control_L release:Tab'

  zoomIn: ->
    @keyboardCommands.sendKeys 'press:Control_L press:equal release:Control_L release:equal'

  zoomOut: ->
    @keyboardCommands.sendKeys 'press:Control_L press:minus release:Control_L release:minus'

  actualSize: ->
    @keyboardCommands.sendKeys 'press:Control_L press:0 release:Control_L release:0'

module.exports = BrowserCommands
