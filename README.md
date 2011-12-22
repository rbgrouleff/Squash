# What is Squash?

Squash is going to be a 2D rendering engine for HTML 5.

It is written in CoffeeScript.

## What should I call it?!

I actually don't really like the name Squash. But I couldn't find
another name for it. So I would like suggestions for better names.

Since sprites are a central part of the rendering engine, I stuck
with Squash because it is a danish soft drink (though it is made with
oranges and has no similarity to Sprite).

## Usage

Since I haven't written any code yet, this is just a vague sketch of how
I imagine it should be used.

Feel free to suggest improvements!

```coffeescript
canvas = document.createElement 'canvas'
screen = new Screen canvas
scene = Screen.buildScene 'map.gif', ['texture1.gif', 'texture2.gif]
sprite = new Sprite 'sprites.gif', offset_x, offset_y, width, height
scene.render sprite, x_pos, y_pos
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
