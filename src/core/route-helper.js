function registerRoutes(server, ctrl, postHandlers){
  for(let key in postHandlers) {
    server.route({
      method: 'POST',
      path: key,
      handler: ctrl[postHandlers[key]].bind(ctrl)
    });
  }
}

module.exports = {
  registerRoutes
};
