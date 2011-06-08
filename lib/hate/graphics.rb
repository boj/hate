module Hate
  module Graphics
    require 'util/gl'
    require "ruby-sdl-ffi/sdl"

    include FFI, GL, GLU
    
    class SDLException < RuntimeError
    end

    autoload :Camera,    APP_PATH + '/hate/graphics/camera.rb'
    autoload :Color,     APP_PATH + '/hate/graphics/color.rb'
    autoload :Light,     APP_PATH + '/hate/graphics/light.rb'
    autoload :Manager,   APP_PATH + '/hate/graphics/manager.rb'
    autoload :Shader,    APP_PATH + '/hate/graphics/shader.rb'
    autoload :Shapes,    APP_PATH + '/hate/graphics/shapes.rb'
    autoload :Window,    APP_PATH + '/hate/graphics/window.rb'
  end
end
