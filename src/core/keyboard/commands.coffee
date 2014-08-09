Commander = require '../commander'

class KeyCommands
  constructor: (@commander = new Commander) ->

  # examples:  "alt+r", "Control_L+J", "ctrl+alt+n", "BackSpace"
  # http://www.semicomplete.com/projects/xdotool/xdotool.xhtml
  sendKeys: (keys) ->
    @commander.exec("xdotool key #{keys}")

  sendText: (str) ->
    @commander.exec("xdotool type '#{str}'")

module.exports = KeyCommands
