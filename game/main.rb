module Hate
  module Game
    def self.load
      puts "Welcome!"
      
      @camera = Hate::Graphics::Camera.new(-1.5, 0.0, -6.0)
      Hate::Graphics::Manager.add_camera(@camera)
      
      #@square = Hate::Graphics::Shapes::Square.new(0.5)
      #@square.translate(0.0, 0.0, -5.0)
      #Hate::Graphics::Manager.add_object(@square)
      
      @cube = Hate::Graphics::Shapes::Cube.new(1.0)
      @cube.translate(0.0, 0.0, -7.0)
      @cube.rotate(45.0, 0.5, 0.3, 0.1)
      Hate::Graphics::Manager.add_object(@cube)
      
      @rotate = 0.02
    end
    def self.update
      
    end
    def self.draw
      @cube.rotate(@cube.ra + @rotate, 0.5, 0.3, 0.1)
    end
    def self.quit
      puts "Game Over"
    end
  end
end
