module Hate
  module Graphics
    require 'util/gl'

    include FFI, GL, GLU, GLUT

    autoload :Camera,    APP_PATH + '/hate/graphics/camera.rb'
    autoload :Color,     APP_PATH + '/hate/graphics/color.rb'
    autoload :Light,     APP_PATH + '/hate/graphics/light.rb'
    autoload :Manager,   APP_PATH + '/hate/graphics/manager.rb'
    autoload :Shader,    APP_PATH + '/hate/graphics/shader.rb'
    autoload :Shapes,    APP_PATH + '/hate/graphics/shapes.rb'
    autoload :Window,    APP_PATH + '/hate/graphics/window.rb'
  end
end
