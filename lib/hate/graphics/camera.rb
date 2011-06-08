module Hate
  module Graphics
    class Camera
      
      attr_accessor :x, :y, :z
      attr_accessor :xl, :yl, :zl
      attr_accessor :default
      
      def translate(x=0.0, y=0.0, z=0.0)
        @x, @y, @z = x, y, z
      end
      
      def initialize(angle=45.0, near=0.1, far=100.0)
        @angle, @near, @far = angle, near, far
        @x, @y, @z    = 0.0, 1.0, 0.0
        @xl, @yl, @zl = 0.0, 1.0, 0.0
        @default = true
        translate
      end
      
      def is_default?
        @default
      end
      
      def reshape(x, y)
        glTranslatef(@x, @y, @z)
        glViewport(0, 0, x, y)
        glMatrixMode(GL_PROJECTION)
        glLoadIdentity
        gluPerspective(@angle, x / y, @near, @far)
        glMatrixMode(GL_MODELVIEW)
      end
      
      def run
        gluLookAt(
          @x, @y, @x,
          @x + @xl, @y + @yl, @z + @zl,
          0.0, 1.0, 0.0
        )
      end
      
    end
  end
end
