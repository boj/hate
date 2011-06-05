module Hate
  module Game
    def self.load
      puts "Welcome!"
      
      @camera = Hate::Graphics::Camera.new
      @camera.translate(-1.5, 0.0, 0.0)
      Hate::Graphics::Manager.add_camera(@camera)
      
      #@square = Hate::Graphics::Shapes::Square.new(5.0)
      #@square.translate(0.0, 0.0, -15.0)
      #@square.color(0.0, 0.0, 1.0)
      #Hate::Graphics::Manager.add_object(@square)
      
      @cubes = []
      50.times do |i|
        cube = Hate::Graphics::Shapes::Cube.new(0.5)
        cube.translate(-rand(10) + 5.0, -rand(10) + 5.0, -rand(20).to_f + -5.0)
        cube.rotate((rand(360) + 1).to_f, rand, rand, rand)
        cube.color(rand, rand, rand)
        cube.compile
        Hate::Graphics::Manager.add_object(cube)
        @cubes << cube
      end
      #@cube1 = Hate::Graphics::Shapes::Cube.new(1.0)
      #@cube1.translate(-1.2, 0.0, -7.0)
      #@cube1.rotate(45.0, 0.5, 0.3, 0.1)
      #@cube1.color(0.0, 1.0, 0.0)
      #@cube1.compile
      #Hate::Graphics::Manager.add_object(@cube1)
      #
      #@cube2 = Hate::Graphics::Shapes::Cube.new(0.7)
      #@cube2.translate(1.2, 0.0, -10.0)
      #@cube2.rotate(45.0, 0.5, 0.3, 0.1)
      #@cube2.color(1.0, 0.0, 0.0)
      #@cube2.compile
      #Hate::Graphics::Manager.add_object(@cube2)
      
      ########################################
      # Shader Lights
      ########################################
      v = Hate::Graphics::Shader::Vertex.new(File.dirname(__FILE__) + "/../lib/hate/graphics/shaders/lights/point.vertex")
      f = Hate::Graphics::Shader::Fragment.new(File.dirname(__FILE__) + "/../lib/hate/graphics/shaders/lights/point.fragment")
      @p = Hate::Graphics::Shader::Program.new
      @p.attach(v.shader).attach(f.shader).compile
      Hate::Graphics::Manager.add_shader(@p)
      
      ########################################
      # Hardware Lights
      ########################################
      #@light1 = Hate::Graphics::Light.new
      #Hate::Graphics::Manager.add_light(@light1)
      
      #@light2 = Hate::Graphics::Light.new([1.0, 0.0, 0.0, 1.0], [0.0, 1.0, 1.0, 1.0], [10.0, 10.0, 10.0, 0.0])
      #Hate::Graphics::Manager.add_light(@light2)
      
      @r1 = 0.01
      @r2 = 0.01
      
      @speed = 0.1
      @angle = 0.0
    end
    def self.update
      @r1 = 0.01 if Hate::Core.window.frames % 200 == 0
      @r2 = 0.01 if Hate::Core.window.frames % 100 == 0
    end
    def self.draw
      @cubes.each_with_index do |cube, i|
        if i % 2 == 0
          cube.rotate(cube.ra + rand, 1.0, 0.0, 0.0).compile
        elsif i % 3 == 0   
          cube.rotate(cube.ra + rand, 0.0, 1.0, 0.0).compile
        else
          cube.rotate(cube.ra + rand, 0.0, 0.0, 1.0).compile
        end
      end
      #@cube1.rotate(@cube1.ra + @r1, 0.0, 1.0, 0.0).compile
      #@cube2.rotate(@cube2.ra + @r2, 0.0, 0.0, 1.0).compile
    end
    def self.keypressed(k)
      puts "key: %i" % k
      case k
        when 119
          @camera.x += @camera.xl * @angle
          @camera.z += @camera.zl * @angle
        when 115
          @camera.x -= @camera.xl * @angle
          @camera.z -= @camera.zl * @angle
        when 97
          @angle -= 0.01
          @camera.xl = Math.sin(@angle)
          @camera.zl = -Math.cos(@angle)
        when 100
          @angle += 0.01
          @camera.xl = Math.sin(@angle)
          @camera.zl = -Math.cos(@angle)
        when 27 # Escape
          Hate::Game.quit
      end
    end
    def self.mousepressed(x, y, button)
      puts "%i - %i" % [x, y]
    end
    def self.quit
      puts "Game Over"
    end
  end
end
