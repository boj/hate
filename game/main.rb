module Hate
  module Game
    def self.load
      puts "Welcome!"
      square = Hate::Graphics::Shapes::Square.new(0.0, 0.0, -5.0)
      Hate::Graphics::Manager.add_object(square)
    end
    def self.update
      
    end
    def self.draw
      
    end
    def self.quit
      puts "Game Over"
    end
  end
end
