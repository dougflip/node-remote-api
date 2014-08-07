generateNoContentMethods = (context, config) ->
  for key in config
    context[key] = (request, reply) ->
      @cmds[key].call(@cmds)
      reply().code(204)

module.exports = 
  generateNoContentMethods: generateNoContentMethods
