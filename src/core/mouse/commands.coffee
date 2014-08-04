Commander = require '../commander'

class MouseCommands
  constructor: (@commander = new Commander) ->
  
  clickAtPolarAndRestore: (x, y) ->
    @commander.exec("xdotool mousemove --polar 0 0 click 1 mousemove restore")

  moveRelative: (x, y) ->
    @commander.exec("xdotool mousemove_relative -- #{x} #{y}")

  leftClick: ->
    @commander.exec("xdotool click 1")

  rightClick: ->
    @commander.exec("xdotool click 3")

  doubleClick: ->
    @commander.exec("xdotool click --repeat 2 1")

module.exports = MouseCommands;
