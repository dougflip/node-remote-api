node-remote
===========

This is a rewrite of [https://github.com/dougflip/node-remote](https://github.com/dougflip/node-remote).
Basically splitting out just the server portion into an API.

## Getting Started

- Install [xdotool](http://tuxradar.com/content/xdotool-script-your-mouse)
- Install latest of [Node](http://nodejs.org/)
- `npm install -g coffee-script` install CoffeeScript globally

## Running the Server
Install dependencies

```
npm install
```

For regular debugging you can just fire up the app with coffee:

```
coffee src/app.coffee
```

When I am actually running it on my media machine I use [forever](https://github.com/nodejitsu/forever):

```
npm install -g forever
forever start -c coffee src/app.coffee
```

Either way [localhost:9000](http://localhost:9000) should be up and running at this point.
Check out the [docs](docs/api-routes.md) to see what is now available.

## Basic Overview

The above starts up a web server listening on 9000.  
You should be able to request the API over your local network
by referencing the server machine by ip - something like 192.168.x.x:9000.

API requests come in over HTTP.  
The Node server then issues commands directly to the host machine.  
Most of these end up being xdotool commands.

## Features

- System control such as volume and closing windows
- Browser controls
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
