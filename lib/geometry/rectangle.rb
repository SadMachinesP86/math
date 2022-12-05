require_relative 'ffi/rectangle'

module Geometry
  class Rectangle
    def initialize(width, height)
      @ptr = FFI::Rectangle.rectangle_make(width, height)
    end

    def area
      FFI::Rectangle.rectangle_area(@ptr)
    end

    def width
      FFI::Rectangle.rectangle_get_width(@ptr)
    end

    def width=(width_to_set)
      FFI::Rectangle.rectangle_set_width(@ptr, width_to_set)
    end

    def height
      FFI::Rectangle.rectangle_get_height(@ptr)
    end

    def height=(height_to_set)
      FFI::Rectangle.rectangle_set_height(@ptr, height_to_set)
    end
  end
end
