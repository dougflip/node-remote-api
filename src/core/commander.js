var sys = require('sys');
var exec = require('child_process').exec;

class Commander {
  exec(cmd){
    if(!!process.env.NRA_TEST_MODE)
      return console.log('Command received in TEST MODE', cmd);

    console.log("Sending command:", cmd);
    return exec(cmd, (error, stdout) => sys.puts(stdout));
  }
}

module.exports = Commander
