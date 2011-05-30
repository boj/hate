module Hate
  module Graphics
    class Camera
      
      attr_reader :x, :y, :z
      attr_accessor :default
      
      def translate(x=0.0, y=0.0, z=0.0)
        @x, @y, @z = x, y, z
      end
      
      def initialize(angle=45.0, near=0.1, far=100.0)
        @angle, @near, @far = angle, near, far
        @default = true
        translate
      end
      
      def is_default?
        @default
      end
      
      def run(x, y)
        glLoadIdentity
        glTranslatef(@x, @y, @z)
        glViewport(0, 0, x, y)
        glMatrixMode(GL_PROJECTION)
        glLoadIdentity
        gluPerspective(@angle, x / y, @near, @far)
        glMatrixMode(GL_MODELVIEW)
      end
      
    end
  end
end
