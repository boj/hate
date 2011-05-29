module Hate
  module Graphics
    class Camera
      
      attr_accessor :default
      
      def initialize(x=0.0, y=0.0, z=0.0, angle=45.0, near=0.1, far=100.0)
        @x, @y, @z, @angle, @near, @far = x, y, z, angle, near, far
        @default = true
      end
      
      def is_default?
        @default
      end
      
      def run(x, y)
        glTranslatef(@x, @y, @z)
        glViewport(0, 0, x, y)
        glMatrixMode(GL_PROJECTION)
        glLoadIdentity
        gluPerspective(@angle, x / y, @near, @far)
        glMatrixMode(GL_MODELVIEW)
        glLoadIdentity
      end
      
    end
  end
end
