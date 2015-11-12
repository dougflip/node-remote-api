var defaultCommander = require('../commander');
var keyboardCommands = require('../keyboard/commands');

class System {
  constructor(commander = defaultCommander, keyboard = keyboardCommands()){
    this.commander = commander;
    this.keyboard = keyboard;
  }

  closeWindow(){
    this.keyboard.sendKeys('alt+F4');
  }

  mute(){
    this.commander.exec(this.buildVolumeCmd(0));
  }

  setVolume(level){
    this.commander.exec(this.buildVolumeCmd(level));
  }

  suspend(){
    this.commander.exec('dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend');
  }

  buildVolumeCmd(level){
    if(level < 0) {
      level = 0;
    }
    if(level > 100) {
      level = 100;
    }

    return `amixer -D pulse sset Master ${level}%`;
  }
}

module.exports = System
