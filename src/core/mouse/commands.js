var Commander = require('../commander');

class MouseCommands {
  constructor (commander = new Commander()) {
    this.commander = commander;
  }
  
  clickAtPolarAndRestore (x, y) {
    return this.commander.exec("xdotool mousemove --polar 0 0 click 1 mousemove restore");
  }

  moveRelative (x, y) {
    return this.commander.exec(`xdotool mousemove_relative -- ${x} ${y}`);
  }

  leftClick () {
    return this.commander.exec("xdotool click 1");
  }

  rightClick () {
    return this.commander.exec("xdotool click 3");
  }

  doubleClick () {
    return this.commander.exec("xdotool click --repeat 2 1");
  }
}

module.exports = MouseCommands;
