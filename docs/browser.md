The browser is another interesting area.
I want to keep this as a core API because I am sure plugins will need it.
But I think I need a way to specify which browser you want to use.
Currently, this is just hard coded on the server side to use Firefox (because that works for Netflix).

My thought right now is that I would have a generic browser API.
So any specific browser instance would need to implement things like "launch", "search", "close-tab", etc.
But then a configuration to NodeRemoteApi would decide which browser was actually used behind the scenes.
So there would **not** be routes like `/chrome/launch` or `/firefox/launch`, but instead just one `/browser/launch`.
So maybe setting an env variable, NODE_REMOTE_API_BROWSER=chrome for example, would use Chrome.

Another thought would be to have a listing of supported browers and somehow pass this when you access a command.
So thinking in terms of a UI - there could be a select list of installed browsers and whichever
is selected is passed along when a command needs to use a browser.
This would be necessary if we wanted to support a use case like:
"My normal browser of choice is Chrome, but for Netflix **only** use Firefox".
So in the UI you could select that you want to use Firefox on the Netflix screen,
but all other browser requests would use Chrome.
I don't think I need to care about this quite yet, but it is something to think about.
