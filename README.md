# Hate 3d

A Ruby 3d OpenGL game library inspired by the Lua [Love](http://love2d.org/) project, a fun little 2d game engine.

The project name `hate` is a parody of the inspiration.

Other inspirational Ruby game projects worth checking out (and much, much more feature complete, albeit only 2d).

* [Rubygame](http://rubygame.org/)
* [Gosu](http://www.libgosu.org/)

## Installation

    gem install hate
  
## Usage

Your game requires a `main.rb` file at the root of your game directory which `hate` will execute.  There is an example game located in the example folder which shows how the basic methods of the system work.  At the moment you must wrap all the methods in a module like so.

    module Hate
      module Game
        # methods
      end
    end

### Core Methods

These are predefined and overridable methods which the engine implements.  Any logic you write within them will get execute by the engine.

__self.load__

Anything defined in here is initially loaded at system startup.

__self.update__

Anything in here gets called every second draw call.  In theory physics and non draw frame game updates would go in here.

__self.draw__

Draw logic for all of the objects in your scene.

__self.keypressed(k)__

Any keys which have been pressed by the user as a byte character.

__self.mousepressed(x, y, button)__

The x, y position and button pressed for the mouse.

__self.mousemotion(x, y, xr, yr, state)__

The x, y position, x, y position at click, and button state of the mouse.

__self.quit__

The quit callback.

## Support

Currently this has only been tested on OSX using MRI 1.8.7 and MRI 1.9.2.  Unfortunately ffi-opengl under Rubinius and jRuby doesn't seem to be operational.

## Known Issues

* Quit doesn't exit cleanly.
* The framerate slows down when the mouse is moved.
* The framerate isn't locked to a constant rate.
* The full system isn't currently implemented, and the engine is a continual work in progress.

## Authors

Brian 'bojo' Jones <mojobojo@gmail.com>

## License

The MIT License
 
Copyright (c) 2011 Brian Jones
 
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
 
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
