module Hate
  module Graphics
    module Shader
      
      class Program
        
        def initialize
          @program = glCreateProgram
        end
        
        def attach(shader)
          glAttachShader(@program, shader)
        end
        
        def compile
          glLinkProgram(@program)
        end
        
        def run
          glUseProgram(@program)
        end
        
      end
      
      class Vertex
        
        def initialize(file)
          source = File.open(file)
          @shader = glCreateShader(GL_VERTEX_SHADER)
          glShaderSource(source, 1, @shader, nil)
          glCompileShader(@shader)
        end
        
      end
      
      class Fragment
        
        def initialize(file)
          source = File.open(file)
          @shader = glCreateShader(GL_FRAGMENT_SHADER)
          glShaderSource(source, 1, @shader, nil)
          glCompileShader(@shader)
        end
        
      end
      
    end
  end
end
