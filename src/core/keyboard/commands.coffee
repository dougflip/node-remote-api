Commander = require '../commander'
keystroke   = require './keystroke'

class KeyCommands
  constructor: (@commander = new Commander) ->

  sendKeys: (keys) ->
    return null unless areKeysValid keys
    
    @commander.exec(
      buildCommand(buildKeystrokes keys.split(' '))
    )

  sendText: (str) ->
    return null unless str?
    
    @commander.exec(buildCommand(["String #{str}"]))

  areKeysValid = (keys) ->
    keys? && keys.length > 0

  buildKeystrokes = (keys) ->
    keys.map (x) -> keystroke.create x

  buildCommand = (keys) ->
    "printf \"#{keys.join("\\n")}\" | xmacroplay \"$DISPLAY\""

module.exports = KeyCommands
