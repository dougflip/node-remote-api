var defaultCommander = require('../commander');

class KeyCommands {
  constructor (commander = defaultCommander) {
    this.commander = commander;
  }

  // examples:  "alt+r", "Control_L+J", "ctrl+alt+n", "BackSpace"
  // http://www.semicomplete.com/projects/xdotool/xdotool.xhtml
  sendKeys (keys) {
    return this.commander.exec(`xdotool key ${keys}`);
  }

  sendText (str) {
    return this.commander.exec(`xdotool type '${str}'`);
  }
}

module.exports = KeyCommands;
