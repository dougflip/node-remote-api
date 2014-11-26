node-remote
===========

 A set of core automation scripts exposed over REST. This is the API for [https://github.com/dougflip/node-remote](https://github.com/dougflip/node-remote). Currently this is only targeted at Linux, but there are future plans to run [cross platform](docs/cross-platform.md).

## Prereqs/Setup

In order for any functions that require keyboard or mouse input the following must be installed.
If xdotool isn't installed, the server will still run perfectly fine it will just be missing functionality.

- `sudo apt-get install xdotool` Installs [xdotool](http://tuxradar.com/content/xdotool-script-your-mouse) which allows for easier mouse/keyboard scripting

## Running the Server
Install dependencies

```
npm install
```

Start the server:

```
npm start
```

[localhost:9001](http://localhost:9001) should be up and running at this point.
Check out the [docs](docs/api-routes.md) to see what is now available.

## Using Forever

if you want to keep the server running in the background you can use [forever](https://github.com/nodejitsu/forever):

```
npm run forever
```

** I've been working on my windows machine lately and forever doesn't seem to be working.
Not sure if this is a windows issue or something is actually broken...

## Basic Overview

The above starts up a web server listening on 9001. You should be able to request the API over your local network
by referencing the server machine by ip - something like 192.168.x.x:9001. All of the routes at this point are `POST` requests so you cannot simply navigate to them in a browser. I use [Postman](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en) to interact with the API without running the client.

API requests come in over HTTP. The Node server then issues commands directly to the host machine. Most of these end up being xdotool commands to either simulate keyboard input or mouse input.

## Core Features

NodeRemoteApi ships with a set of core modules that automate basic features.

- System control such as volume and closing windows
- Browser controls such as tab switching and zoom
- Mouse input
- Keyboard input
- See the [docs](docs/api-routes.md) for all available core routes.

## Plugins

Plugins are a work in progress and do exactly what you think - add functionality to NodeRemoteApi.
Check out the [plugin docs](docs/plugins.md) for some detail on where that is headed.

## Branches

I am going to try and keep `master` stable and tested on my actual media machine.
Work will be done against feature branches and integrated into the `dev` branch and then to `master`.

## Running Tests

There are API/integration tests using [supertest](https://github.com/visionmedia/supertest).
To run the tests - 2 step process for now:

1. `npm start` (in console 1) to bring up the server
1. `npm test` (in console 2) to execute the tests
