var defaultCommander = require('../commander');
var KeyboardCommands = require('../keyboard/commands');

class BrowserCommands {
  constructor (commander = defaultCommander, keyboardCommands = new KeyboardCommands()) {
    this.commander = commander;
    this.keyboardCommands = keyboardCommands;
  }

  launch (url) {
    return this.commander.exec `firefox ${url}`;
  }

  search (searchTerm) {
    return this.commander.exec `firefox -search "${searchTerm}"`;
  }

  focusAddressBar() {
    return this.keyboardCommands.sendKeys('ctrl+l');
  }

  close() {
    return this.keyboardCommands.sendKeys('alt+F4');
  }

  closeTab() {
    return this.keyboardCommands.sendKeys('ctrl+F4');
  }

  nextTab() {
    return this.keyboardCommands.sendKeys('ctrl+Tab');
  }

  zoomIn() {
    return this.keyboardCommands.sendKeys('ctrl+Equal');
  }

  zoomOut() {
    return this.keyboardCommands.sendKeys('ctrl+Minus');
  }

  actualSize() {
    return this.keyboardCommands.sendKeys('ctrl+0');
  }
}

module.exports = BrowserCommands
