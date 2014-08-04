class KeyboardCtrl
  constructor: (@keyboardCommands) ->

  sendKeys: (request, reply) ->
    @keyboardCommands.sendKeys(request.payload.keys)
    reply().code(204)

  sendText: (request, reply) ->
    @keyboardCommands.sendText(request.payload.text)
    reply().code(204)

module.exports = KeyboardCtrl
