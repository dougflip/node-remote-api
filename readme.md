Node Remote API
===========

A set of core automation scripts exposed over HTTP. Currently only targeted at Linux (Ubuntu),
but there are [future plans to run cross platform](docs/cross-platform.md).

## Initial Setup

- install [Node](https://nodejs.org/) >=6.0.0, [nvm](https://github.com/creationix/nvm) is nice for this
- `sudo apt-get install xdotool` - [xdotool](https://github.com/jordansissel/xdotool) is awesome and used for controlling the mouse and keyboard
- `npm install` - to install dependencies

## Starting the Server

```
npm start
```

[localhost:9001](http://localhost:9001) should be up and running at this point. Try this:

```
curl http://localhost:9001/system/get-volume
```

## Core Features

NodeRemoteApi ships with a set of core modules that automate basic features.

- System control such as volume and closing windows
- Browser controls such as tab switching and zoom
- Mouse input
- Keyboard input
- See the [docs](docs/api-routes.md) for all available core routes.

## Plugins

Plugins are a work in progress and do exactly what you think - add functionality to Node Remote API.
Check out the [plugin docs](docs/plugins.md) for some detail on where that is headed.

## Running Tests

There are API/integration tests using [supertest](https://github.com/visionmedia/supertest).
To run the tests - 2 step process for now:

1. `npm run test:serve` (in console 1) to bring up the server in test mode
1. `npm test` (in console 2) to execute the tests

## Running with systemd

This setup is based on [running-node-js-linux-systemd](https://blog.codeship.com/running-node-js-linux-systemd/)

Use the sample unit file [node-remote-api@.service](node-remote-api@.service) as a basis for a
file saved at `/etc/systemd/system/node-remote-api@.service`

```
systemctl daemon-reload
systemctl enable node-remote-api@1
systemctl start node-remote-api@1
```
