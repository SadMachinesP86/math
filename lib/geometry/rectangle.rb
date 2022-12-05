require_relative 'ffi/rectangle'

module Geometry
  class Rectangle
    attr_accessor :width, :height

    def initialize(width, height)
      @width = width
      @height = height
    end

    def area
      FFI::Rectangle.area_rectangle(as_pointer)
    end

    def as_pointer
      FFI::Rectangle.make_rectangle(@width, @height)
    end
  end
end
