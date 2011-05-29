module Hate
  module Graphics

    DEFAULT_WIDTH      = 480
    DEFAULT_HEIGHT     = 320
    DEFAULT_COLOR      = nil
    DEFAULT_BACKGROUND = nil
    
    class Window
      include FFI, GL, GLU, GLUT
      
      attr_reader :width, :height
      attr_accessor :light

      def initialize(w=nil, h=nil, title='')
        @width  = Hate::Graphics::DEFAULT_WIDTH if w.nil?
        @height = Hate::Graphics::DEFAULT_HEIGHT if h.nil?
        
        @light = {
          :diffuse  => nil,
          :position => nil
        }

        glutInit(
          MemoryPointer.new(:int, 1).put_int(0, 0),
          MemoryPointer.new(:pointer, 1).put_pointer(0, nil)
        )
      end

      def display
        glClear(GL_COLOR_BUFFER_BIT)
        glLoadIdentity()
        glTranslatef(0.0, 0.0, -5.0)
        glutSolidCube(1.0)
        glFlush
        glutSwapBuffers
      end

      def reshape(x, y)
        glMatrixMode(GL_PROJECTION)
        glLoadIdentity
        gluPerspective(30.0, x / y, 0.5, 20.0)
        glMatrixMode(GL_MODELVIEW)
        glViewport(0, 0, x, y)
      end

      def idle
        Hate::Core::Callbacks.update
        Hate::Core::Callbacks.draw
        display
      end

      def start(title='New Game')
        glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB)
        glutInitWindowSize(800, 600)
        glutCreateWindow(title)
        glLightfv(GL_LIGHT0, GL_DIFFUSE, @light[:diffuse])
        glLightfv(GL_LIGHT0, GL_POSITION, @light[:position])
        glEnable(GL_LIGHT0)
        glEnable(GL_LIGHTING)
        glEnable(GL_CULL_FACE)
        glShadeModel(GL_SMOOTH)
        glClearColor(0.0, 0.0, 0.0, 0.0)
        glutDisplayFunc(method(:display).to_proc)
        glutIdleFunc(method(:idle).to_proc)
        glutReshapeFunc(method(:reshape).to_proc)
        glutMainLoop
      end

    end

  end
end
