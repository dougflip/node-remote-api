var R = require('ramda');
var defaultCommander = require('../commander');
var keyboardCommands = require('../keyboard/commands');

const ensureLevel = R.clamp(0, 100);

const buildVolumeCmd = level => `amixer -D pulse sset Master ${ensureLevel(level)}%`;

const rgxVolume = /\[(\d\d?\d?)%\]/;
const parseVolumeOutput = stdout => parseInt(rgxVolume.exec(stdout)[1]);

module.exports = (commander = defaultCommander, keyboard = keyboardCommands()) => {

  const getVolume = () => {
    return commander.exec('amixer -D pulse sget Master', { stdout: '[0%]' })
      .then(parseVolumeOutput);
  };

  return {
    closeWindow: () => keyboard.sendKeys('alt+F4'),
    mute:() => commander.exec(buildVolumeCmd(0)),
    getVolume: getVolume,
    setVolume: level => commander.exec(buildVolumeCmd(level)),
    suspend: () => commander.exec('systemctl suspend')
  };
};
