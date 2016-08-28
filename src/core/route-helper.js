const R = require('ramda');

const addRoute = (server, path, method, handler) => server.route({ method, path, handler });

/**
* Takes a key/value of routePath -> handler method and registers them with the server.
* This is just a helper provided to controllers to make registering GET/POST endpoints easier.
*/
const addRoutes = R.curry((server, postHandlers, getHandlers = {}) => {
  R.keys(postHandlers)
    .forEach(k => addRoute(server, k, 'POST', postHandlers[k]));

  R.keys(getHandlers)
    .forEach(k => addRoute(server, k, 'GET', getHandlers[k]));
});

module.exports = { addRoutes };;
