module Hate
  module Graphics
    module Shapes
      
      class Base
        
        attr_reader :x, :y, :z
        attr_reader :ra, :rx, :ry, :rz
        attr_reader :color
        
        def translate(x=0.0, y=0.0, z=0.0)
          @x, @y, @z = x, y, z
        end
        
        def rotate(a=0.0, x=0.0, y=0.0, z=0.0)
          @ra, @rx, @ry, @rz = a, x, y, z
        end
        
        def color=(c=Hate::Graphics::Color::BLUE)
          @color = c
        end
        
      end
      
      class Square < Base
        
        def initialize(s=1.0)
          @s = s
          translate
          rotate
        end
        
        def run
          glLoadIdentity
          glTranslatef(@x, @y, @z)
          glRotatef(@ra, @rx, @ry, @rz)
          glutSolidCube(@s)
          #glFlush
          glutSwapBuffers
        end

      end
      
      class Cube < Base
        
        def initialize(s=1.0)
          @s = s
          translate
          rotate
        end
        
        def run
          glLoadIdentity
          glTranslatef(@x, @y, @z)
          glRotatef(@ra, @rx, @ry, @rz)
          glBegin(GL_QUADS)

          glColor3f(0.0, 1.0, 0.0)
          glVertex3f( @s, @s,-@s)
          glVertex3f(-@s, @s,-@s)
          glVertex3f(-@s, @s, @s)
          glVertex3f( @s, @s, @s)
          
          glColor3f(1.0, 0.5, 0.0)
      		glVertex3f( @s,-@s, @s)
      		glVertex3f(-@s,-@s, @s)
      		glVertex3f(-@s,-@s,-@s)
      		glVertex3f( @s,-@s,-@s)
      		
      		glColor3f(1.0, 0.0, 0.0)
      		glVertex3f( @s, @s, @s)
      		glVertex3f(-@s, @s, @s)
      		glVertex3f(-@s,-@s, @s)
      		glVertex3f( @s,-@s, @s)
      		
      		glColor3f(1.0, 1.0, 0.0)
      		glVertex3f( @s,-@s,-@s)
      		glVertex3f(-@s,-@s,-@s)
      		glVertex3f(-@s, @s,-@s)
      		glVertex3f( @s, @s,-@s)
      		
      		glColor3f(0.0, 0.0, 1.0)
      		glVertex3f(-@s, @s, @s)
      		glVertex3f(-@s, @s,-@s)
      		glVertex3f(-@s,-@s,-@s)
      		glVertex3f(-@s,-@s, @s)
      		
      		glColor3f(1.0, 0.0, 1.0)
      		glVertex3f(@s, @s,-@s)
      		glVertex3f(@s, @s, @s)
      		glVertex3f(@s,-@s, @s)
      		glVertex3f(@s,-@s,-@s)
          
          glEnd
          glutSwapBuffers
        end

      end
      
    end
  end
end
