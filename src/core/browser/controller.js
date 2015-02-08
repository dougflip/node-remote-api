var baseController = require('../base-controller-helper');
var BrowserCmds = require('./commands');

var noContentMethods = [
  'focusAddressBar', 'close', 'closeTab', 'nextTab', 'zoomIn', 'zoomOut', 'actualSize'
];

class BrowserCtrl {
  constructor (cmds = new BrowserCmds()) {
    this.cmds = cmds;
  }

  launch (request, reply) {
    this.cmds.launch(request.payload.url);
    return reply().code(204);
  }

  search (request, reply) {
    this.cmds.search(request.payload.searchTerm);
    return reply().code(204);
  }
}

baseController.generateNoContentMethods(BrowserCtrl.prototype, noContentMethods)

module.exports = BrowserCtrl
