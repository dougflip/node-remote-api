Commander = require '../commander'
KeyboardCommands = require '../keyboard/commands'

class System
  constructor: (@commander = new Commander, @keyboardCommands = new KeyboardCommands) ->

  closeWindow: ->
    @keyboardCommands.sendKeys('press:Alt_L press:F4 release:F4 release:Alt_L')

  mute: ->
    @commander.exec(buildVolumeCmd(0))

  setVolume: (level) ->
    @commander.exec(buildVolumeCmd(level))

  suspend: ->
    @commander.exec('dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend')

  buildVolumeCmd = (level) ->
    level = 0 if level < 0
    level = 100 if level > 100
    "pactl set-sink-volume 0 -- #{level}%"

module.exports = System
