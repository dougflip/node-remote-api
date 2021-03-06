var defaultCommander = require('../commander');

module.exports = (commander = defaultCommander) => {
  return {
    clickAtPolarAndRestore: (x,y) => commander.exec(`xdotool mousemove --polar ${x} ${y} click 1 mousemove restore`),
    moveRelative: (x,y) => commander.exec(`xdotool mousemove_relative -- ${x} ${y}`),
    leftClick: () => commander.exec("xdotool click 1"),
    rightClick: () => commander.exec("xdotool click 3"),
    doubleClick: () => commander.exec("xdotool click --repeat 2 1"),
    scrollUp: () => commander.exec("xdotool click 4"),
    scrollDown: () => commander.exec("xdotool click 5")
  }
};
