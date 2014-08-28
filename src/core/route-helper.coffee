registerRoutes = (server, ctrl, postHandlers) ->
  for key of postHandlers
    server.route
      method: 'POST'
      path: key
      handler: ctrl[postHandlers[key]].bind(ctrl)

module.exports =
  registerRoutes: registerRoutes
