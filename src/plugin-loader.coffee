fs = require('fs-extra')

PLUGIN_FILE_NAME = 'plugins.json'
PLUGIN_FILE_ABS_PATH = "./src/var/#{PLUGIN_FILE_NAME}"
PLUGIN_FILE_REL_PATH = "./var/#{PLUGIN_FILE_NAME}"

emptyPluginsTemplate = 
  remotes: []

if(!fs.existsSync(PLUGIN_FILE_ABS_PATH))
  fs.outputJsonSync(PLUGIN_FILE_ABS_PATH, emptyPluginsTemplate)

plugins = require(PLUGIN_FILE_REL_PATH).remotes

console.log('Detected the following plugins': plugins)

module.exports =
  getPlugins: -> plugins
