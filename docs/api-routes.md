## API Routes

#### Core Routes

- `/browser/launch` (launch may just handle "search" based on the input)
- `/browser/search` (https://developer.mozilla.org/en-US/docs/Mozilla/Command_Line_Options: -search "term")
- `/browser/focus-address-bar`
- `/browser/close`
- `/browser/close-tab`
- `/browser/next-tab`
- `/browser/zoom-in`
- `/browser/zoom-out`
- `/browser/actual-size`
- `/keyboard/send-keys`
- `/keyboard/send-text`
- `/mouse/click-at-polar-and-restore`
- `/mouse/move-relative`
- `/mouse/left-click`
- `/mouse/right-click`
- `/mouse/double-click`
- `/system/close-window`
- `/system/mute`
- `/system/set-volume`
- `/system/suspend`

#### Future Core Routes?

- '/system/open-application'
- '/system/list-windows' (may not be supported by xdotool)
- '/system/switch-window' (alt+tab)

#### Netflix Plugin (http://markwarren.wordpress.com/2010/03/24/netflix-movie-player-keyboard-shortcuts/)

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

#### Spotify Plugin (new)

- `/spotify/play`
- `/spotify/pause`
- `/spotify/next`
- `/spotify/previous`
