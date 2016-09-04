const getCommands = require('./commands');
const ctrl = require('./controller')();

const getConfig = () => {
  return {
    getRoutes: {
      '/system/get-volume': ctrl.getVolume
    },
    postRoutes: {
      '/system/close-window': ctrl.closeWindow,
      '/system/mute': ctrl.mute,
      '/system/set-volume': ctrl.setVolume,
      '/system/suspend': ctrl.suspend
    }
  };
};

module.exports = {
  getCommands,
  getConfig
}
