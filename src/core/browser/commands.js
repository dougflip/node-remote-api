const defaultCommander = require('../commander');
const keyCommands = require('../keyboard/commands');

module.exports = (commander = defaultCommander, keyboard = keyCommands()) => {
    return {
        launch: url => commander.exec(`firefox ${url}`),
        search: term => commander.exec(`firefox -search "${term}"`),
        focusAddressBar: () => keyboard.sendKeys('ctrl+l'),
        close: () => keyboard.sendKeys('alt+F4'),
        closeTab: () => keyboard.sendKeys('ctrl+F4'),
        nextTab: () => keyboard.sendKeys('ctrl+Tab'),
        zoomIn: () => keyboard.sendKeys('ctrl+Equal'),
        zoomOut: () => keyboard.sendKeys('ctrl+Minus'),
        actualSize: () => keyboard.sendKeys('ctrl+0')
    }
}
