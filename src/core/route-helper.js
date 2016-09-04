const R = require('ramda');

const addRoute = (server, path, method, handler) => server.route({ method, path, handler });

/**
* Registers routes to the server based on a configuration of key/values.
* The keys are the route "path" and the value is the handler function.
*/
const configureRoutes = (server, { getRoutes, postRoutes }) => {
  R.keys(postRoutes)
    .forEach(path => addRoute(server, path, 'POST', postRoutes[path]));

  R.keys(getRoutes)
    .forEach(path => addRoute(server, path, 'GET', getRoutes[path]));
};

module.exports = { configureRoutes };
