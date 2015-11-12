const defaultCommander = require('../commander');
const KeyboardCommands = require('../keyboard/commands');
const R = require('ramda');

const browserCommands = function(commander = defaultCommander, keyboardCommands = new KeyboardCommands()) {
    return {
        launch: url => commander.exec(`firefox ${url}`),
        search: term => commander.exec(`firefox -search "${term}"`),
        focusAddressBar: R.partial(commander.exec, ['ctrl+l']),
        close: R.partial(commander.exec, ['alt+F4']),
        closeTab: R.partial(commander.exec, ['ctrl+F4']),
        nextTab: R.partial(commander.exec, ['ctrl+Tab']),
        zoomIn: R.partial(commander.exec, ['ctrl+Equal']),
        zoomOut: R.partial(commander.exec, ['ctrl+Minus']),
        actualSize: R.partial(commander.exec, ['ctrl+0'])
    }
}

module.exports = browserCommands
