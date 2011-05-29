module Hate
  module Graphics
    class Light
      
      attr_accessor :diffuse, :position
      attr_accessor :default

      def initialize(diffuse=[1.0, 0.0, 0.0, 1.0], position=[1.0, 1.0, 1.0, 0.0])
        @diffuse  = MemoryPointer.new(:float, 4).put_array_of_float(0, diffuse)
        @position = MemoryPointer.new(:float, 4).put_array_of_float(0, position)
        @default  = true
      end

      def is_default?
        @default
      end
      
    end
  end
end
