Commander = require '../commander'
KeyboardCommands = require '../keyboard/commands'

class BrowserCommands
  constructor: (@commander = new Commander, @keyboardCommands = new KeyboardCommands) ->

  launch: (url) ->
    @commander.exec "firefox #{url}"

  search: (searchTerm) ->
    @commander.exec "firefox -search \"#{searchTerm}\""

  focusAddressBar: ->
    @keyboardCommands.sendKeys 'ctrl+l'

  close: ->
    @keyboardCommands.sendKeys 'alt+F4'
  
  closeTab: ->
    @keyboardCommands.sendKeys 'ctrl+F4'

  nextTab: ->
    @keyboardCommands.sendKeys 'ctrl+Tab'

  zoomIn: ->
    @keyboardCommands.sendKeys 'ctrl+Equal'

  zoomOut: ->
    @keyboardCommands.sendKeys 'ctrl+Minus'

  actualSize: ->
    @keyboardCommands.sendKeys 'ctrl+0'

module.exports = BrowserCommands
