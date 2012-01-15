# What is Squash?

Squash is going to be a 2D rendering engine for HTML 5.

It is written in CoffeeScript.

## What should I call it?!

I actually don't really like the name Squash. But I couldn't find
another name for it. So I would like suggestions for better names.

Since sprites are a central part of the rendering engine, I stuck
with Squash because it is a danish soft drink (though it is made with
oranges and has no similarity to Sprite).

## Progress

So far I've got basic rendering of sprites and redrawing up and running. See under
**usage** how to do that.

Next up is setting backgrounds on scenes. The way I imagine this is done
is something like this:

```coffeescript
tiles =
  'FF0000': new Squash.Tile(sprite_sheet, offset_x, offset_y, width, height)
  '00FF00': new Squash.Tile(sprite_sheet, offset_x_2, offset_y_2, width, height)
map = new Squash.Map '/images/map.png', tiles
scene.setBackground map
```

As always - since this hasn't been coded up yet - feel free to suggest improvements!

## Usage

```coffeescript
Squash = require 'squash'
canvas = document.createElement 'canvas'
screen = new Squash.Screen canvas
scene = screen.buildScene

sprite_sheet = new Image
sprite_sheet.src = '/images/sprite_sheet.png'
sprite = new Squash.Sprite sprite_sheet, offset_x, offset_y, width, height
sprite.setPosition x, y

scene.addSprite sprite

timer = screen.getTimer()
@ms = 0
timer.registerCallback (timeSinceLastTick) =>
  if @ms + timeSinceLastTick > 1000
    @ms = 0
    sprite.move 10, 0
  else
    @ms += timeSinceLastTick
timer.start()
```

## License

Copyright (c) 2011, Rasmus Bang Grouleff

All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
