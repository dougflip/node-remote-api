# API Routes

## Core

#### Browser Remote

- `/browser/launch` (launch may just handle "search" based on the input)
- `/browser/search` (https://developer.mozilla.org/en-US/docs/Mozilla/Command_Line_Options: -search "term")
- `/browser/focus-address-bar`
- `/browser/close`
- `/browser/close-tab`
- `/browser/next-tab`
- `/browser/zoom-in`
- `/browser/zoom-out`
- `/browser/actual-size`

// TODO:

- `/browser/go-back`
- `/browser/go-forward`
- `/browser/start-of-page`
- `/browser/end-of-page`
- `/browser/page-up`
- `/browser/page-down`
- `/browser/open-tab`
- `/browser/navigate-to-url`
- `/browser/maximize`
- `/browser/minimize`

#### Keyboard Remote

- `/keyboard/send-keys`
- `/keyboard/send-text`

#### Mouse Remote
- `/mouse/click-at-polar-and-restore`
- `/mouse/move-relative`
- `/mouse/left-click`
- `/mouse/right-click`
- `/mouse/double-click`

#### System Remote

- `/system/close-window`
- `/system/mute`
- `/system/set-volume`
- `/system/suspend`

Where does the 'super' key fit in? Seems like this could be a useful key for at least Ubunut and Windows.

#### Future Core Routes?

- '/system/open-application'
- '/system/list-windows' (may not be supported by xdotool)
- '/system/switch-window' (alt+tab)

## Plugins

#### Netflix Remote

- `/netflix/play` (PgUp)
- `/netflix/pause` (PgDn)
- `/netflix/full-screen` (f)
- `/netflix/exit-full-screen` (escape)
- `/netflix/search` 
- `/netflix/launch-media-item`
- `/netflix/rewind` (shift + left)
- `/netflix/fast-forward` (shift + right)
- `/netflix/toggle-keyframe-mode` (ctrl + space)
- `/netflix/frame-back` (left - after entering keyframe mode)
- `/netflix/frame-forward` (right - after entering keyframe mode)

[http://markwarren.wordpress.com/2010/03/24/netflix-movie-player-keyboard-shortcuts/](http://markwarren.wordpress.com/2010/03/24/netflix-movie-player-keyboard-shortcuts/)

#### Youtube Remote (implemented, but not tested)

- `/youtube/launch`
- `/youtube/search`
- `/youtube/full-screen`
- `/youtube/exit-full-screen`
- `/youtube/toggle-play-pause`
- `/youtube/frame-back-short` (left)
- `/youtube/frame-back` (ctrl + left)
- `/youtube/frame-forward-short` (right)
- `/youtube/frame-forward` (ctrl + right)
- `/youtube/seek-to-percentage` (numbers 1 - 9)
- `/youtube/restart` (0)
- `/youtube/go-to-beginning` (home)
- `/youtube/go-to-end` (end)

[https://sites.google.com/a/umich.edu/going-google/accessibility/google-keyboard-shortcuts---youtube](https://sites.google.com/a/umich.edu/going-google/accessibility/google-keyboard-shortcuts---youtube)

#### Spotify Remote (implemented, not tested)

- `/spotify/toggle-play-pause` (space)
- `/spotify/next` (ctrl + right)
- `/spotify/previous` (ctrl + left)
- `/spotify/browse-forward` (alt + right)
- `/spotify/browse-back` (alt + left)
- `/spotify/focus-search` (ctrl + l)
- `/spotify/search-artist` (focus -> 'artist:"query"')
- `/spotify/search-album` (focus -> 'album:"query"')
- `/spotify/search-track` (focus -> 'track:"query"')
- `/spotify/search-playlist` (focus -> 'playlist:"query"')
- `/spotify/search-genre` (focus -> 'genre:"query"')

[http://mp3.about.com/od/tutorials/ht/Spotify-Tutorial-How-To-Use-Spotifys-Advanced-Search-Facilities-To-Find-Music.htm](http://mp3.about.com/od/tutorials/ht/Spotify-Tutorial-How-To-Use-Spotifys-Advanced-Search-Facilities-To-Find-Music.htm)

[http://news.spotify.com/us/2008/01/22/searching-spotify/](http://news.spotify.com/us/2008/01/22/searching-spotify/)
