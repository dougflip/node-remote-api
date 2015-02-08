var SystemCmds = require('./commands');
var baseController = require('../base-controller-helper');

var noContentMethods = [
  'closeWindow', 'mute', 'suspend'
]

class SystemCtrl {
  constructor(cmds = new SystemCmds){
    this.cmds = cmds;
  }

  setVolume(request, reply){
    this.cmds.setVolume(request.payload.level);
    return reply().code(204);
  }
}

baseController.generateNoContentMethods(SystemCtrl.prototype, noContentMethods)

module.exports = SystemCtrl
