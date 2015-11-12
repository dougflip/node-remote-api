var ctrl = require('../base-controller-helper');
var browserCmds = require('./commands');

const browserCtrl = (cmds = browserCmds()) => {
    return {
        launch(req, reply) {
            cmds.launch(req.payload.url);
            return reply().code(204);
        },
        search(req, reply) {
            cmds.search(req.payload.searchTerm);
            return reply().code(204);
        },
        focusAddressBar: ctrl.passthrough(cmds.focusAddressBar),
        close: ctrl.passthrough(cmds.close),
        closeTab: ctrl.passthrough(cmds.closeTab),
        nextTab: ctrl.passthrough(cmds.nextTab),
        zoomIn: ctrl.passthrough(cmds.zoomIn),
        zoomOut: ctrl.passthrough(cmds.zoomOut),
        actualSize: ctrl.passthrough(cmds.actualSize)
    };
};

module.exports = browserCtrl;
