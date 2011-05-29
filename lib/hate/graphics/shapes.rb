module Hate
  module Graphics
    module Shapes
      
      class Square
        
        def initialize(x=0.0, y=0.0, z=0.0)
          @x, @y, @z = x, y, z
        end
        
        def run
          glClear(GL_COLOR_BUFFER_BIT)
          glLoadIdentity
          glTranslatef(@x, @y, @z)
          glutSolidCube(1.0)
          #glFlush
          glutSwapBuffers
        end

      end
      
    end
  end
end
