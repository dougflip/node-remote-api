const R = require('ramda');

const addRoute = (server, path, handler) => {
  server.route({ method: 'POST', path, handler });
};

const addRoutes = R.curry((server, postHandlers) => {
  R.keys(postHandlers)
    .forEach(k => addRoute(server, k, postHandlers[k]));
});

module.exports = { addRoutes };;
