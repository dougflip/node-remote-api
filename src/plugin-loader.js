const fs = require('fs-extra');

const PLUGIN_FILE_NAME = 'plugins.json';
const PLUGIN_FILE_ABS_PATH = `./src/var/${PLUGIN_FILE_NAME}`;
const PLUGIN_FILE_REL_PATH = `./var/${PLUGIN_FILE_NAME}`;

const ensurePlugins = () =>{
  if(!fs.existsSync(PLUGIN_FILE_ABS_PATH)) {
    fs.outputJsonSync(PLUGIN_FILE_ABS_PATH, emptyPluginsTemplate = {
      remotes: []
    });
  }
};

const getPlugins = () => {
  ensurePlugins();

  const plugins = require(PLUGIN_FILE_REL_PATH).remotes;
  console.log('Detected the following plugins:', plugins)
  return plugins;
};

const configure = (coreApi) => {
  getPlugins().forEach((remoteName) => {
    const Remote = require(remoteName)

    // TODO: Need to rewrite plugins to to not use "new"
    new Remote(server, coreApi);
  });
};

module.exports = { configure };
