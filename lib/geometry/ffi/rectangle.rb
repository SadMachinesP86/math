require 'fiddle/import'

module Geometry
  module FFI
    module Rectangle
      extend Fiddle::Importer
      dlload File.expand_path('libgeometry.so', __dir__)

      extern '*Rectangle rectangle_make(float width, float height)'
      extern 'float rectangle_area(struct rectangle*)'
      extern 'float rectangle_get_width(struct rectangle*)'
      extern 'void rectangle_set_width(struct rectangle*, float width)'
      extern 'float rectangle_get_height(struct rectangle*)'
      extern 'void rectangle_set_height(struct rectangle*, float width)'
    end
  end
end
