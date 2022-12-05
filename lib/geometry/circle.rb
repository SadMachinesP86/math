require_relative 'ffi/circle'

module Geometry
  class Circle
    attr_accessor :radius

    def initialize(radius)
      @radius = radius
    end

    def area
      FFI::Circle.area_circle(as_pointer)
    end

    def as_pointer
      FFI::Circle.make_circle(@radius)
    end
  end
end
