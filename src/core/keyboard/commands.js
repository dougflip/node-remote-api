const defaultCommander = require('../commander');

module.exports = (commander = defaultCommander) => {
  return {
    sendKeys: keys => commander.exec(`xdotool key ${keys}`),
    sendText: str => commander.exec(`xdotool type '${str}'`)
  }
};
