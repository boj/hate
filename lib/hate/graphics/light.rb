module Hate
  module Graphics
    class Light
      
      attr_accessor :ambient, :diffuse, :position

      def initialize(a=[0.0, 0.5, 1.0, 1.0], d=[1.0, 1.0, 1.0, 1.0], p=[0.0, 0.0, 0.0, 0.0])
        @ambient  = MemoryPointer.new(:float, 4).put_array_of_float(0, a)
        @diffuse  = MemoryPointer.new(:float, 4).put_array_of_float(0, d)
        @position = MemoryPointer.new(:float, 4).put_array_of_float(0, p)
      end
      
      def run
        
      end
      
    end
  end
end
