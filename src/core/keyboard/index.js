const getCommands = require('./commands');
const ctrl = require('./controller')();

const getConfig = () => {
  return {
    postRoutes: {
      '/keyboard/send-keys': ctrl.sendKeys,
      '/keyboard/send-text': ctrl.sendText
    }
  };
};

module.exports = {
  getCommands,
  getConfig
};
