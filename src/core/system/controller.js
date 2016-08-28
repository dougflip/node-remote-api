const Hapi = require('hapi');
const systemCmds = require('./commands');
const ctrl = require('../base-controller-helper');

module.exports = (cmds = systemCmds()) => {
  return {
    getVolume (req, reply) {
      return cmds.getVolume()
        .then(volume => reply(JSON.stringify({ volume })))
        .catch(err => {
          const result = Hapi.error.internal('Unable to retrieve the current volume', err);
          reply(result);
        });
    },
    setVolume (req, reply) {
      cmds.setVolume(req.payload.level);
      return reply().code(204);
    },
    closeWindow: ctrl.passthrough(cmds.closeWindow),
    mute: ctrl.passthrough(cmds.mute),
    suspend: ctrl.passthrough(cmds.suspend)
  }
};
