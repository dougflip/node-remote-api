node-remote
===========

 A set of core automation scripts exposed over REST. This is the API for [https://github.com/dougflip/node-remote](https://github.com/dougflip/node-remote). Currently this is only targeted at Linux, but there are future plans to run cross platform.

## Prereqs/Setup

- `sudo apt-get install xdotool` Installs [xdotool](http://tuxradar.com/content/xdotool-script-your-mouse) which allows for easier mouse/keyboard scripting
- `npm install -g coffee-script` install CoffeeScript globally

## Running the Server
Install dependencies

```
npm install
```

For regular debugging:

```
npm start
```

When I am actually running it on my media machine I use [forever](https://github.com/nodejitsu/forever):

```
npm install -g forever
forever start -c coffee src/app.coffee
```

Either way [localhost:9001](http://localhost:9001) should be up and running at this point.
Check out the [docs](docs/api-routes.md) to see what is now available.

## Basic Overview

The above starts up a web server listening on 9001. You should be able to request the API over your local network
by referencing the server machine by ip - something like 192.168.x.x:9001. All of the routes at this point are `POST` requests so you cannot simply navigate to them in a browser. I use [Postman](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en) to interact with the API without running the client.

API requests come in over HTTP. The Node server then issues commands directly to the host machine. Most of these end up being xdotool commands to either simulate keyboard input or mouse input.

## Features

- System control such as volume and closing windows
- Browser controls such as tab switching and zoom
- Mouse move and clicking controls
- Keyboard input
- See the [docs](docs/api-routes.md) for all available routes.

## Branches

I am going to try and keep `master` stable and tested on my actual media machine.
So I'll work against the `dev` branch and periodically verify and merge to `master`.

## Running Tests

There are API/integration tests using [supertest](https://github.com/visionmedia/supertest).
To run the tests - 2 step process for now:

1. `npm start` to bring up the server
1. `npm test` to execute the tests
