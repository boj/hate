module Hate
  module Graphics
    module Shader
      
      class Program
        
        def initialize
          @program = glCreateProgram
        end
        
        def attach(shader)
          glAttachShader(@program, shader)
          self
        end
        
        def compile
          glLinkProgram(@program)
          self
        end
        
        def run
          glUseProgram(@program)
        end
        
      end
      
      class Base
        
        attr_reader :shader
        
        def initialize(file)
          source = []
          source << MemoryPointer.from_string(File.open(file).read)
          arg = MemoryPointer.new(:pointer, source.length)
          source.each_with_index do |p, i|
            arg[i].put_pointer(0, p)
          end

          if self.class == Hate::Graphics::Shader::Vertex
            @shader = glCreateShader(GL_VERTEX_SHADER)
          elsif self.class == Hate::Graphics::Shader::Fragment
            @shader = glCreateShader(GL_FRAGMENT_SHADER)
          end  
          
          glShaderSource(@shader, source.size, arg, nil)
          glCompileShader(@shader)
        end
        
      end
      
      class Vertex < Base
        
      end
      
      class Fragment < Base

      end
      
    end
  end
end
