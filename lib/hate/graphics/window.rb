module Hate
  module Graphics

    DEFAULT_WIDTH      = 800
    DEFAULT_HEIGHT     = 600
    DEFAULT_COLOR      = nil
    DEFAULT_BACKGROUND = nil
    
    class Window
      
      attr_reader :width, :height
      attr_reader :frames

      def initialize(w=nil, h=nil, title='New Game')
        @width  = w || Hate::Graphics::DEFAULT_WIDTH
        @height = h || Hate::Graphics::DEFAULT_HEIGHT
        
        @frames = 0
        
        if SDL.Init(SDL::INIT_EVERYTHING) == 0
           SDL.EnableUNICODE(1)
        else
           throw Main::Graphics::SDLException, "SDL Exception: #{SDL.GetError()}"
        end
        SDL.SetVideoMode(@width, @height, 24, SDL::OPENGL)
        SDL.Init(SDL::INIT_VIDEO)

        glEnable(GL_DEPTH_TEST)
        glEnable(GL_CULL_FACE)
        glEnable(GL_COLOR_MATERIAL)
        
        glShadeModel(GL_SMOOTH)
        glClearColor(1.0, 1.0, 1.0, 0.0)
        glClearDepth(1.0)
        glDepthFunc(GL_LEQUAL)
        #glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST) # Small performance hit
        
        # Hardware lights
        Hate::Graphics::Manager.lights.each_with_index do |light, i|
          glLightfv(eval("GL_LIGHT%i" % (i + 1)), GL_AMBIENT, light.ambient)
          glLightfv(eval("GL_LIGHT%i" % (i + 1)), GL_DIFFUSE, light.diffuse)
          glLightfv(eval("GL_LIGHT%i" % (i + 1)), GL_POSITION, light.position)
          glEnable(eval("GL_LIGHT%i" % (i + 1)))
        end
        glEnable(GL_LIGHTING) if Hate::Graphics::Manager.lights.size > 0
      end

      def draw
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
        glLoadIdentity
        Hate::Core::Callbacks.draw
        Hate::Graphics::Manager.run
        SDL.GL_SwapBuffers()
        @frames += 1
      end

      def reshape(x, y)
        Hate::Graphics::Manager.default_camera.reshape(x, y)
      end

      def update
        until (event = SDL::PollEvent()).nil?
          events(event)
        end
        reshape(@width, @height)
        Hate::Core::Callbacks.update if @frames % 2 == 0 # Only call update every second cycle
      end
      
      def events(event)
        case event.type
        when SDL::KEYDOWN
          Hate::Input::Keyboard.pressed(event.keysym.sym)
        when SDL::KEYUP
          Hate::Input::Keyboard.released(event.keysym.sym)
        when SDL::MOUSEBUTTONDOWN
          Hate::Input::Mouse.pressed(event.x, event.y, event.button)
        when SDL::MOUSEBUTTONUP
          Hate::Input::Mouse.released(event.x, event.y, event.button)
        when SDL::VIDEORESIZE
          reshape(event.w, event.h)
        end
      end
      
      def time
        
      end

      def start
        loop do
          update
          draw
        end
      end
      
      def quit
        SDL.QuitSubSystem(SDL::INIT_VIDEO)
        SDL.Quit
      end

    end

  end
end
