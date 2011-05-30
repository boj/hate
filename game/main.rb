module Hate
  module Game
    def self.load
      puts "Welcome!"
      
      @camera = Hate::Graphics::Camera.new
      @camera.translate(-1.5, 0.0, -6.0)
      Hate::Graphics::Manager.add_camera(@camera)
      
      #@square = Hate::Graphics::Shapes::Square.new(5.0)
      #@square.translate(0.0, 0.0, -10.0)
      #Hate::Graphics::Manager.add_object(@square)
      
      @cube1 = Hate::Graphics::Shapes::Cube.new(1.0)
      @cube1.translate(-1.2, 0.0, -7.0)
      @cube1.rotate(45.0, 0.5, 0.3, 0.1)
      Hate::Graphics::Manager.add_object(@cube1)
      
      @cube2 = Hate::Graphics::Shapes::Cube.new(0.7)
      @cube2.translate(1.2, 0.0, -7.0)
      @cube2.rotate(45.0, 0.5, 0.3, 0.1)
      Hate::Graphics::Manager.add_object(@cube2)
      
      @light1 = Hate::Graphics::Light.new
      Hate::Graphics::Manager.add_light(@light1)
      
      @light2 = Hate::Graphics::Light.new([1.0, 0.5, 0.0, 1.0], [0.0, 1.0, 1.0, 1.0], [10.0, 10.0, 10.0, 0.0])
      Hate::Graphics::Manager.add_light(@light2)
      
      @rotate = 0.1
    end
    def self.update
      
    end
    def self.draw
      @cube1.rotate(@cube1.ra + @rotate, 0.5, 0.3, 0.1)
    end
    def self.quit
      puts "Game Over"
    end
  end
end
