var MouseCmds = require('./commands');
var baseController = require('../base-controller-helper');

var noContentMethods = [
  'leftClick', 'rightClick', 'doubleClick'
];

class MouseCtrl {
  constructor (cmds = new MouseCmds()) {
    this.cmds = cmds;
  }

  clickAtPolarAndRestore (request, reply) {
    this.cmds.clickAtPolarAndRestore(request.payload.x, request.payload.y);
    return reply().code(204);
  }

  moveRelative (request, reply) {
    this.cmds.moveRelative(request.payload.x, request.payload.y);
    return reply().code(204);
  }
}

baseController.generateNoContentMethods(MouseCtrl.prototype, noContentMethods)

module.exports = MouseCtrl
