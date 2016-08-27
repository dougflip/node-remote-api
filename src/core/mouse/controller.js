var mouseCmds = require('./commands');
var ctrl = require('../base-controller-helper');

module.exports = (cmds = mouseCmds()) => {
  return {
    clickAtPolarAndRestore (req, reply) {
      cmds.clickAtPolarAndRestore(req.payload.x, req.payload.y);
      return reply().code(204);
    },
    moveRelative (req, reply) {
      cmds.moveRelative(req.payload.x, req.payload.y);
      return reply().code(204);
    },
    leftClick: ctrl.passthrough(cmds.leftClick),
    rightClick: ctrl.passthrough(cmds.rightClick),
    doubleClick: ctrl.passthrough(cmds.doubleClick),
    scrollUp: ctrl.passthrough(cmds.scrollUp),
    scrollDown: ctrl.passthrough(cmds.scrollDown)
  }
};
