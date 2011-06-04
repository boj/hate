module Hate
  module Input
    module Keyboard
      
      @key_states = Array.new(256)
      
      def self.pressed(k, x, y)
        @key_states[k] = true
        Hate::Core::Callbacks.keypressed(k)
      end
      
      def self.released(k, x, y)
        @key_states[k] = false
        Hate::Core::Callbacks.keyreleased(k)
      end
      
    end
    
    module Mouse
      
      def self.pressed(x, y, button)
        Hate::Core::Callbacks.mousepressed(x, y, button)
      end
      
      def self.released(x, y, button)
        Hate::Core::Callbacks.mousereleased(x, y, button)
      end
      
    end
  end
end
