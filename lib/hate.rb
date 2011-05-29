$: << APP_PATH = File.dirname(File.expand_path(__FILE__))
Dir["#{APP_PATH}/**/lib"].each { |p| $: << p }

module Hate
  VERSION = "0.0.1"
  
  # Files are loaded on demand.
  autoload :Audio,    APP_PATH + '/hate/audio.rb'
  autoload :Core,     APP_PATH + '/hate/core.rb'
  autoload :Game,     APP_PATH + '/hate/game.rb'
  autoload :Graphics, APP_PATH + '/hate/graphics.rb'
  autoload :Input,    APP_PATH + '/hate/input.rb'
  autoload :Network,  APP_PATH + '/hate/network.rb'
  autoload :Physics,  APP_PATH + '/hate/physics.rb'
  autoload :System,   APP_PATH + '/hate/system.rb'
end
