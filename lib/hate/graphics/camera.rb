module Hate
  module Graphics
    class Camera
      
      attr_accessor :x, :y, :z
      attr_accessor :xl, :yl, :zl
      attr_accessor :default

      def initialize(angle=45.0, near=0.1, far=100.0)
        @angle, @near, @far = angle, near, far
        @x, @y, @z    = 0.0, 1.0, 0.0
        @xl, @yl, @zl = 0.0, 1.0, -1.0
        @default = true
      end
      
      def is_default?
        @default
      end
      
      def reshape(x, y)
        glMatrixMode(GL_PROJECTION)
        glLoadIdentity
        glViewport(0, 0, x, y)
        gluPerspective(@angle, x / y, @near, @far)
        glMatrixMode(GL_MODELVIEW)
      end
      
      def run
        gluLookAt(
          @x, @y, @z,
          @x + @xl, 1.0, @z + @zl,
          0.0, 1.0, 0.0
        )
      end
      
    end
  end
end
