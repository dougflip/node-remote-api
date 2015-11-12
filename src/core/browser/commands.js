const defaultCommander = require('../commander');
const keyCommands = require('../keyboard/commands');
const R = require('ramda');

const browserCommands = function(commander = defaultCommander, keyboard = keyCommands()) {
    return {
        launch: url => commander.exec(`firefox ${url}`),
        search: term => commander.exec(`firefox -search "${term}"`),
        focusAddressBar: R.partial(keyboard.sendKeys, ['ctrl+l']),
        close: R.partial(keyboard.sendKeys, ['alt+F4']),
        closeTab: R.partial(keyboard.sendKeys, ['ctrl+F4']),
        nextTab: R.partial(keyboard.sendKeys, ['ctrl+Tab']),
        zoomIn: R.partial(keyboard.sendKeys, ['ctrl+Equal']),
        zoomOut: R.partial(keyboard.sendKeys, ['ctrl+Minus']),
        actualSize: R.partial(keyboard.sendKeys, ['ctrl+0'])
    }
}

module.exports = browserCommands
