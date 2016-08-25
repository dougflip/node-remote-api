var defaultCommander = require('../commander');
var keyboardCommands = require('../keyboard/commands');

const ensureLevel = level => {
  if(level < 0) return 0;
  if(level > 100) return 100;
  return level;
};

const buildVolumeCmd = level => `amixer -D pulse sset Master ${ensureLevel(level)}%`;

module.exports = (commander = defaultCommander, keyboard = keyboardCommands()) => {
  return {
    closeWindow: () => keyboard.sendKeys('alt+F4'),
    mute:() => commander.exec(buildVolumeCmd(0)),
    setVolume: level => commander.exec(buildVolumeCmd(level)),
    suspend: () => commander.exec('systemctl suspend')
  };
};
