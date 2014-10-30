## The Design

The Node Remote API repository will focus solely on a "core" API.
At the moment this includes bindings for browser, keyboard, mouse, and system.
These are functions that would make sense for every installation of Node Remote
and which plugins can be built upon.

In contrast, plugins are pieces of code that not every user will need (or want to use).
Netflix is a good example of a plugin.
Not everyone has Netflix (or maybe they have it, but they don't want to use it via Node Remote).
As such, a module called node-remote-api-netflix will exist on npm which can be "plugged in" to Node Remote.

This architecture will help to make the code base scale as every specialized feature will be developed as a plugin.
In this way, developers can write very tailored modules to fit their needs.
Core modules will only be added if they address very basic/global functionality, but a plugin can be written for any (and hopefully any) situation.

## The Current Status

Right now, we are moving towards this plugin architecture, but it is still very much a work in progress.
The plugins folder has been removed from this source, but the `require` statements to pull in the plugins are still hard coded at this point. Once I decide how plugins will be "looked up" I will remove the hard coded lines.

Locally, I am using `npm link` to reference those plugins - they haven't even been published to GitHub yet alone NPM yet. I want to work through the hurdles before publishing anything.

## The Future

The vision (as of now anyway) is to use npm to install plugins.
Here is how I see it now:

1. Node Remote API will be installed as a global through npm - something like `npm install -g node-remote-api`
1. The installed module will provide a command line API to start the server - something like `node-remote start`
1. The installed module will also provide an "install plugin" command - something like `node-remote install node-remote-api-netflix`?
  - this will npm install the module behind scenes
  - may also "store/record" that the plugin is installed so the server can require it on start up
  - I guess this means I will need an "uninstall" command as well?

This npm approach could be real cool because then you don't need to git clone the repo.
If you wanted to "install" the server you will just npm install it and then start it.
The added benefit being you can also install a plugin through the same kind of CLI API.
Again, this is just the vision at this point so it is subject to change.

## The Plan

Right now I am thinking about rolling this out in a few different steps

1. First, I'd like to just move the plugin "requiring" out of the code.
    - Still use `git clone` to install the API
    - Still use `npm install` to pull in a plugin (i.e. npm install node-remote-api-netflix)
    - Manually edit a plugins.json file to record the plugin (NodeRemoteApi will read this file on startup)
1. The next iteration would be to automate the plugins.json file
    - Create a task like `npm run install-plugin node-remote-api-netflix`
    - This runs npm install and writes to the plugin.json file behind the scenes
1. The end goal is to install NodeRemoteApi directly from npm (probably as a global)
    - Then create commands like `node-remote start`, `node-remote install node-remote-api-netflix`, etc.

I am OK with having the manual versions (options 1 and 2) for a while until I make sure this approach is what I want.
At somepoint, I also have to do similar things to the client as well... 
