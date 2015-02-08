var KeyboardCmds = require('./commands');

class KeyboardCtrl {
  constructor (keyboardCommands = new KeyboardCmds()) {
    this.keyboardCommands = keyboardCommands;
  }

  sendKeys (request, reply) {
    this.keyboardCommands.sendKeys(request.payload.keys);
    return reply().code(204);
  }

  sendText (request, reply) {
    this.keyboardCommands.sendText(request.payload.text);
    return reply().code(204);
  }
}

module.exports = KeyboardCtrl
