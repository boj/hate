module Hate
  module Graphics
    module Shapes
      
      class Base
        
        attr_accessor :memory, :size
        attr_reader :x, :y, :z
        attr_reader :ra, :rx, :ry, :rz
        attr_reader :c
        
        def translate(x=0.0, y=0.0, z=0.0)
          @x, @y, @z = x, y, z
          self
        end
        
        def rotate(a=0.0, x=0.0, y=0.0, z=0.0)
          @ra, @rx, @ry, @rz = a, x, y, z
          self
        end
        
        def color(r=0.0, g=0.0, b=0.0)
          @c = [r, g, b]
          self
        end
        
      end
      
      class Square < Base
        
        def initialize(s=1.0)
          @size = s
          translate
          rotate
          color
        end
        
        def run
          glLoadIdentity
          glTranslatef(@x, @y, @z)
          glRotatef(@ra, @rx, @ry, @rz)
          glColor3f(@c[0], @c[1], @c[2])
          glutSolidCube(@size)
        end

      end
      
      class Cube < Base
        
        def initialize(s=1.0)
          @size = s
          translate
          rotate
          color
        end
        
        def build
          glPushMatrix
          glTranslatef(@x, @y, @z)
          glRotatef(@ra, @rx, @ry, @rz)
          glColor3f(@c[0], @c[1], @c[2])
          
          glBegin(GL_QUADS)
          
          glNormal3f(0.0, 0.0, 1.0)
          glVertex3f( @size, @size,-@size)
          glVertex3f(-@size, @size,-@size)
          glVertex3f(-@size, @size, @size)
          glVertex3f( @size, @size, @size)
          
          glNormal3f(0.0, 0.0, -1.0)
      		glVertex3f( @size,-@size, @size)
      		glVertex3f(-@size,-@size, @size)
      		glVertex3f(-@size,-@size,-@size)
      		glVertex3f( @size,-@size,-@size)
      		
      		glNormal3f(0.0, 1.0, 0.0)
      		glVertex3f( @size, @size, @size)
      		glVertex3f(-@size, @size, @size)
      		glVertex3f(-@size,-@size, @size)
      		glVertex3f( @size,-@size, @size)
          
          glNormal3f(0.0, -1.0, 0.0)
      		glVertex3f( @size,-@size,-@size)
      		glVertex3f(-@size,-@size,-@size)
      		glVertex3f(-@size, @size,-@size)
      		glVertex3f( @size, @size,-@size)
      		
      		glNormal3f(1.0, 0.0, 0.0)
      		glVertex3f(-@size, @size, @size)
      		glVertex3f(-@size, @size,-@size)
      		glVertex3f(-@size,-@size,-@size)
      		glVertex3f(-@size,-@size, @size)
      		
      		glNormal3f(-1.0, 0.0, 0.0)
      		glVertex3f(@size, @size,-@size)
      		glVertex3f(@size, @size, @size)
      		glVertex3f(@size,-@size, @size)
      		glVertex3f(@size,-@size,-@size)
          
          glEnd
          
          glPopMatrix
        end
        
        def compile
          @memory = glGenLists(1) if @memory.nil?
          glNewList(@memory, GL_COMPILE)
          build
          glEndList
        end
        
        def run
          glLoadIdentity
          @memory.nil? ? build : glCallList(@memory)
        end

      end
      
    end
  end
end
