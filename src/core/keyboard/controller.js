var keyboardCmds = require('./commands');

module.exports = (cmds = keyboardCmds()) => {
  return {
    // examples:  "alt+r", "Control_L+J", "ctrl+alt+n", "BackSpace"
    // http://www.semicomplete.com/projects/xdotool/xdotool.xhtml
    sendKeys(req, reply) {
      cmds.sendKeys(req.payload.keys);
      return reply().code(204);
    },
    sendText(req, reply) {
      cmds.sendText(req.payload.text);
      return reply().code(204);
    }
  };
};
