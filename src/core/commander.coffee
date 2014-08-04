sys = require('sys')
exec = require('child_process').exec

class Commander
  exec: (cmd) ->
    console.log("Sending command: #{cmd}")
    exec cmd, (error, stdout, stderr) -> sys.puts stdout

module.exports = Commander
