var sys = require('sys');
var exec = require('child_process').exec;

class Commander {
  exec(cmd){
    console.log("Sending command:", cmd);
    return exec(cmd, (error, stdout) => sys.puts(stdout));
  }
}

module.exports = Commander
