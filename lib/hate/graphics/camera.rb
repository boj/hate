module Hate
  module Graphics
    class Camera
      
      attr_accessor :default
      
      def initialize(angle=30.0, near=0.5, far=20.0)
        @angle, @near, @far = angle, near, far
        @default = true
      end
      
      def is_default?
        @default
      end
      
      def run(x, y)
        glMatrixMode(GL_PROJECTION)
        glLoadIdentity
        gluPerspective(@angle, x / y, @near, @far)
        glMatrixMode(GL_MODELVIEW)
        glViewport(0, 0, x, y)
      end
      
    end
  end
end
