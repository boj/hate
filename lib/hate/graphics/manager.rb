module Hate
  module Graphics
    module Manager
      
      @objects = []
      @lights  = []
      @cameras = []
      
      def self.run
        @objects.each do |obj|
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
      
      def self.add_light(obj)
        @lights << obj
      end
      
      def self.remove_light(obj)
        @lights.delete obj
      end
      
      def self.default_light
        return Hate::Graphics::Light.new if @lights.empty?
        @lights.each do |obj|
          return obj if obj.is_default?
        end
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
