require_relative 'ffi/circle'

module Geometry
  class Circle
    def initialize(radius)
      @ptr = FFI::Circle.circle_make(radius)
    end

    def area
      FFI::Circle.circle_area(@ptr)
    end

    def radius
      FFI::Circle.circle_get_radius(@ptr)
    end

    def radius=(radius_to_set)
      FFI::Circle.circle_set_radius(@ptr, radius_to_set)
    end
  end
end
