function generateNoContentMethods(context, config){
  config.forEach((key) => {
    context[key] = function(request, reply){
      this.cmds[key].call(this.cmds);
      return reply().code(204);
    }
  });
}

module.exports = {
  generateNoContentMethods
}
