var R = require('ramda');

// Deprecated
// Existing plugins stil use this, but should migrate to `passthrough`
function generateNoContentMethods(context, config){
  config.forEach((key) => {
    context[key] = function(request, reply){
      this.cmds[key].call(this.cmds);
      return reply().code(204);
    }
  });
}

const passthrough = R.curry((cmdFn, req, reply) => {
    cmdFn();
    return reply().code(204);
});

module.exports = {
  generateNoContentMethods,
  passthrough
}
