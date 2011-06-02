module Hate
  module Graphics
    require 'util/gl'

    DEFAULT_WIDTH      = 800
    DEFAULT_HEIGHT     = 600
    DEFAULT_COLOR      = nil
    DEFAULT_BACKGROUND = nil
    
    class Window
      include FFI, GL, GLU, GLUT
      
      attr_reader :width, :height
      attr_reader :frames

      def initialize(w=nil, h=nil, title='New Game')
        @width  = w || Hate::Graphics::DEFAULT_WIDTH
        @height = h || Hate::Graphics::DEFAULT_HEIGHT
        
        @frames = 0

        glutInit(
          MemoryPointer.new(:int, 1).put_int(0, 0),
          MemoryPointer.new(:pointer, 1).put_pointer(0, nil)
        )
        
        glutInitDisplayMode(GLUT_RGB | GLUT_DEPTH | GLUT_DOUBLE)
        glutInitWindowSize(@width, @height)
        glutCreateWindow(title)
        
        #glColor4f(1.0, 1.0, 1.0, 0.5)
        #glBlendFunc(GL_SRC_ALPHA,GL_ONE)
        #glEnable(GL_BLEND)
        glEnable(GL_DEPTH_TEST)
        glEnable(GL_CULL_FACE)
        glEnable(GL_COLOR_MATERIAL)
        
        glShadeModel(GL_SMOOTH)
        glClearColor(1.0, 1.0, 1.0, 0.0)
        glClearDepth(1.0)
        glDepthFunc(GL_LEQUAL)
        glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST) # Small performance hit
        
        # Hardware lights
        Hate::Graphics::Manager.lights.each_with_index do |light, i|
          glLightfv(eval("GL_LIGHT%i" % (i + 1)), GL_AMBIENT, light.ambient)
          glLightfv(eval("GL_LIGHT%i" % (i + 1)), GL_DIFFUSE, light.diffuse)
          glLightfv(eval("GL_LIGHT%i" % (i + 1)), GL_POSITION, light.position)
          glEnable(eval("GL_LIGHT%i" % (i + 1)))
        end
        glEnable(GL_LIGHTING) if Hate::Graphics::Manager.lights.size > 0
        
        glutDisplayFunc(method(:display).to_proc)
        glutIdleFunc(method(:idle).to_proc)
        glutReshapeFunc(method(:reshape).to_proc)
        glutKeyboardFunc(method(:key).to_proc)
        glutMouseFunc(method(:mouse).to_proc)
      end

      def display
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
        glLoadIdentity
        Hate::Graphics::Manager.run
        glutSwapBuffers
      end

      def reshape(x, y)
        Hate::Graphics::Manager.default_camera.run(x, y)
      end

      def idle
        Hate::Core::Callbacks.update if @frames % 2 == 0 # Only call update every second cycle
        Hate::Core::Callbacks.draw
        @frames += 1
        display
      end
      
      def key(k, x, y)
        Hate::Core::Callbacks.keypressed(k)
        glutPostRedisplay
      end
      
      def mouse(button, state, x, y)
        Hate::Core::Callbacks.mousepressed(x, y, button)
        glutPostRedisplay
      end
      
      def time
        glutGet(GLUT_ELAPSED_TIME) / 1000.0
      end

      def start
        glutMainLoop
      end

    end

  end
end
