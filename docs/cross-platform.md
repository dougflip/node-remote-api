Someday I'd like to get this running on Windows and OSX.
Right now, the idea is that the bulk of the code that needs to be ported exists in the Command layer.
So the entire Core API will need to provide commands for each OS.

The Core API will probably also provide method(s) to help plugins load the proper commands.
For example, maybe commands will end in a suffix of '-linux', '-windows', '-osx'
and the Core API will give you a method to 'require' the code module without the extension.

Just as an example:
```
coreApi.requireForOS('./commands')
```

This would then look to require './commands-linux' or './commands-windows' or '/.commands-osx'
depending on which platform the code was running.

I would probably also set up some kind of exception handling or promise rejection or return value
to indicate when an action is not supported by that OS.
So if you ask to launch Spotify on Windows and there is no implementation of that (just as an example)
then the command could easily indicate this and result in a specific response being rendered.

Just some ideas...
