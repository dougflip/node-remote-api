const defaultCommander = require('../commander');
const R = require('ramda');

const keyCommands = (commander = defaultCommander) => {
  return {
    sendKeys: keys => commander.exec(`xdotool key ${keys}`),
    sendText: str => commander.exec(`xdotool type '${str}'`)
  }
};

module.exports = keyCommands;
