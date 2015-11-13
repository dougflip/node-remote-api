var systemCmds = require('./commands');
var ctrl = require('../base-controller-helper');

module.exports = (cmds = systemCmds()) => {
  return {
    setVolume (req, reply) {
      cmds.setVolume(req.payload.level);
      return reply().code(204);
    },
    closeWindow: ctrl.passthrough(cmds.closeWindow),
    mute: ctrl.passthrough(cmds.mute),
    suspend: ctrl.passthrough(cmds.suspend)
  }
};
