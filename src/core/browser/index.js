const getCommands = require('./commands');
const ctrl = require('./controller')();

const getConfig = () => {
  return {
    postRoutes: {
      '/browser/launch': ctrl.launch,
      '/browser/search': ctrl.search,
      '/browser/focus-address-bar': ctrl.focusAddressBar,
      '/browser/close': ctrl.close,
      '/browser/close-tab': ctrl.closeTab,
      '/browser/next-tab': ctrl.nextTab,
      '/browser/zoom-in': ctrl.zoomIn,
      '/browser/zoom-out': ctrl.zoomOut,
      '/browser/actual-size': ctrl.actualSize
    }
  };
};

module.exports = {
  getCommands,
  getConfig
};
