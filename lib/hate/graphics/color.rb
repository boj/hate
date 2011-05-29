module Hate
  module Graphics
    module Color
      RED = MemoryPointer.new(:float, 4).put_array_of_float(0, [0.8, 0.1, 0.0, 1.0]) 
      GREEN = MemoryPointer.new(:float, 4).put_array_of_float(0, [0.0, 0.8, 0.2, 1.0])
      BLUE = MemoryPointer.new(:float, 4).put_array_of_float(0, [0.2, 0.2, 1.0, 1.0])
    end
  end
end
