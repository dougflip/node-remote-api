var exec = require('child_process').exec;

/**
* Runs the provided `cmd` string against the shell.
* Returns a promise that will resolve with stdout or reject with an error.
* The error may be from Node land or it may be the stdout from the command that was executed.
*
* The optional `testModeOptions` object is used to indicate the response you want when
*   the system is running in test mode (commands are not actually executed).
* I'm not sure if this will always be how I handle this, but it works for now.
*/
module.exports = {
    exec: (cmd, testModeOptions = {}) => {
        if(!!process.env.NRA_TEST_MODE) {
          console.log('Command received in TEST MODE', cmd);
          return Promise.resolve(testModeOptions.stdout || cmd);
        }

        console.log("Sending command:", cmd);
        return new Promise((resolve, reject) => {
          exec(cmd, (error, stdout, stderror) => {
            if(error) {
              return reject(error);
            }
            if(stderror) {
              return reject(new Error(stderror));
            }

            return resolve(stdout);
          });
        });
    }
};
