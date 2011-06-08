module Hate
  module Graphics
    module Manager
      
      @objects = []
      @shaders = []
      @lights  = []
      @cameras = []
      
      def self.lights
        @lights
      end
      
      def self.run
        @cameras.each do |obj|
          obj.run
        end

        @objects.each do |obj|
          obj.run
        end
        
        @shaders.each do |obj|
          obj.run
        end
        
        @lights.each do |obj|
          obj.run
        end
      end
      
      def self.add_object(obj)
        @objects << obj
      end
      
      def self.remove_object(obj)
        @objects.delete obj
      end
      
      def self.add_shader(obj)
        @shaders << obj
      end
      
      def self.remove_shader(obj)
        @shaders.delete obj
      end
      
      def self.add_light(obj)
        @lights << obj
      end
      
      def self.remove_light(obj)
        @lights.delete obj
      end
      
      def self.add_camera(obj)
        @cameras << obj
      end
      
      def self.remove_camera(obj)
        @cameras.delete obj
      end
      
      def self.default_camera
        return Hate::Graphics::Camera.new if @cameras.empty?
        @cameras.each do |obj|
          return obj if obj.is_default?
        end
      end
      
    end
  end
end
