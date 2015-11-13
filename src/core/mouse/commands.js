var defaultCommander = require('../commander');

module.exports = (commander = defaultCommander) => {
  return {
    clickAtPolarAndRestore: (x,y) => commander.exec(`xdotool mousemove --polar ${x} ${y} click 1 mousemove restore`),
    moveRelative: (x,y) => commander.exec(`xdotool mousemove_relative -- ${x} ${y}`),
    leftClick: () => commander.exec("xdotool click 1"),
    rightClick: () => commander.exec("xdotool click 2"),
    doubleClick: () => commander.exec("xdotool click --repeat 2 1")
  }
};
