# st - simple terminal

This is my fork of the suckless' [st](http://st.suckless.org/).

This fork tries to mimic my alacritty config (which may or may not be public) as
much as possible. Several patches were added (available in the `diffs`
directory).


## Requirements

* c compiler
* make
* Xlib
* fontconfig
* freetype2
* harfbuzz

## Installation

``` sh
make clean && make
make install # possibly as root
```

## New features

* Transparency (requires a compositor).
* Terminal window can have any dimensions.
* Title save and restore.
* Extended keys not throwing an error.
  * Note: nor are they being handled, see comment.
* Dracula color scheme.
* Cursor has the reverse color of current fg color
* Alacritty style vim-mode select
  * Selection works, copying is a WIP.
* Ligatures
* Scrollback with the mouse scroll wheel
* Custom colors for selection

## Credits
Fork of suckless st, which it self is based on Aurélien APTEL
<aurelien dot aptel at gmail dot com> bt source code.

