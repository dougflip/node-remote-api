# API Routes

## Core

#### Browser

- `/browser/launch` (launch may just handle "search" based on the input)
- `/browser/search` (https://developer.mozilla.org/en-US/docs/Mozilla/Command_Line_Options: -search "term")
- `/browser/focus-address-bar`
- `/browser/close`
- `/browser/close-tab`
- `/browser/next-tab`
- `/browser/zoom-in`
- `/browser/zoom-out`
- `/browser/actual-size`

#### Keyboard

- `/keyboard/send-keys`
- `/keyboard/send-text`

#### Mouse
- `/mouse/click-at-polar-and-restore`
- `/mouse/move-relative`
- `/mouse/left-click`
- `/mouse/right-click`
- `/mouse/double-click`
- `/mouse/scroll-up`
- `/mouse/scroll-down`

#### System

- `/system/close-window`
- `/system/mute`
- `/system/get-volume` (GET request)
- `/system/set-volume`
- `/system/suspend`
