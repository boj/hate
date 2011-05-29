module Hate
  module Graphics

    DEFAULT_WIDTH      = 800
    DEFAULT_HEIGHT     = 600
    DEFAULT_COLOR      = nil
    DEFAULT_BACKGROUND = nil
    
    class Window
      include FFI, GL, GLU, GLUT
      
      attr_reader :width, :height
      attr_reader :frames

      def initialize(w=nil, h=nil, title='')
        @width  = w || Hate::Graphics::DEFAULT_WIDTH
        @height = h || Hate::Graphics::DEFAULT_HEIGHT
        
        @frames = 0

        glutInit(
          MemoryPointer.new(:int, 1).put_int(0, 0),
          MemoryPointer.new(:pointer, 1).put_pointer(0, nil)
        )
      end

      def display
        Hate::Graphics::Manager.run
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

      def start(title='New Game')
        glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB)
        glutInitWindowSize(@width, @height)
        glutCreateWindow(title)
        glLightfv(GL_LIGHT0, GL_DIFFUSE, Hate::Graphics::Manager.default_light.diffuse)
        glLightfv(GL_LIGHT0, GL_POSITION, Hate::Graphics::Manager.default_light.position)
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
