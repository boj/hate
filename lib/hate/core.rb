require 'rubygems'
require 'util/trollop'
require 'ffi-opengl'

include FFI, GL, GLU, GLUT

module Hate
  module Core
    
    def self.trapcc
      trap('INT') do
        self.halt
      end
    end
    
    def self.halt
      Hate::Core::Callbacks.quit
      puts "Goodbye!"
      exit
    end
    
    def self.options
      opts = Trollop::options do
        version "Hate %s (c) 2011 Brian Jones" % Hate::VERSION
        banner <<-EOS
        Hate 3d - A Ruby 3d Game Engine

        Usage:
          hate [options] <game main.rb>

        Options:
        EOS
      end
      Trollop::die "No main.rb specified!" if ARGV[0].nil?
    end
    
    def self.load
      # Load main.rb
      begin
        require ARGV[0]
      rescue LoadError
        require "./" + ARGV[0]
      end

      # Call #load
      Hate::Core::Callbacks.load
    end

    def self.run
      trapcc  # Trap CTRL-C
      options # Load cli options
      load    # Load user game

      game = Hate::Graphics::Window.new
      game.start
    end
    
    # Callbacks are overridden by the user in Core::Game
    module Callbacks
      
      # Initializes pre-game logic.
      def self.load
        Hate::Game.load if Hate::Game.respond_to?('load')
      end
      
      # Called every other tick to update game logic.
      def self.update
        Hate::Game.update if Hate::Game.respond_to?('update')
      end
      
      # Called each tick to update interface logic.
      def self.draw
        Hate::Game.draw if Hate::Game.respond_to?('draw')
      end
      
      # Called when a mouse button is pressed down.
      def self.mousepressed(x, y, button)
        Hate::Game.mousepressed(x, y, button) if Hate::Game.respond_to?('mousepressed')
      end
      
      # Called when a mouse button is let up.
      def self.mousereleased(x, y, button)
        Hate::Game.mousereleased(x, y, button) if Hate::Game.respond_to?('mousereleased')
      end
      
      # Called when a key is pressed down.
      def self.keypressed(key)
        Hate::Game.keypressed(key) if Hate::Game.respond_to?('keypressed')
      end
      
      # Called when a key is let up.
      def self.keyreleased(key)
        Hate::Game.keyreleased(key) if Hate::Game.respond_to?('keyreleased')
      end
      
      # Called when the game is quit.
      def self.quit
        Hate::Game.quit if Hate::Game.respond_to?('quit')
      end

    end
    
  end
end
