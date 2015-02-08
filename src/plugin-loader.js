var fs = require('fs-extra');

const PLUGIN_FILE_NAME = 'plugins.json';
const PLUGIN_FILE_ABS_PATH = `./src/var/${PLUGIN_FILE_NAME}`;
const PLUGIN_FILE_REL_PATH = `./var/${PLUGIN_FILE_NAME}`;

var emptyPluginsTemplate = {
  remotes: []
}

if(!fs.existsSync(PLUGIN_FILE_ABS_PATH)) {
  fs.outputJsonSync(PLUGIN_FILE_ABS_PATH, emptyPluginsTemplate)
}

var plugins = require(PLUGIN_FILE_REL_PATH).remotes

console.log('Detected the following plugins:', plugins)

module.exports = {
  getPlugins: () => plugins
}
